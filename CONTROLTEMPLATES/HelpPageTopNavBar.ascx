<%@ Control Language="C#"   AutoEventWireup="false" %>
<%@Assembly Name="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@Register TagPrefix="SharePoint" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.WebControls"%>
<%@Register TagPrefix="Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.Utilities"%>
<%@Register TagPrefix="SPHelp" Assembly="Microsoft.SharePoint.ApplicationPages" namespace="Microsoft.SharePoint.Help.WebControls"%>
<%@ Register TagPrefix="wssuc" TagName="ToolBar" src="~/_controltemplates/15/ToolBar.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="~/_controltemplates/15/ToolBarButton.ascx" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<asp:PlaceHolder runat="server">
	<script type="text/javascript">
		function TopNavSettings()
		{
			this.currentSearchUrl = "help.aspx?Search={QUERYTEXT}&Key=HelpHome";
			this.defaultSearchText;
			this.fLargeText = false;
			this.selectedToggleClass = '';
			this.unselectedToggleClass = '';
		}
		var topNavSettings = new TopNavSettings();
		if (typeof(defaultSearchUrl) != "undefined")
		{
			topNavSettings.currentSearchUrl = defaultSearchUrl;
		}
		function HelpContentFrameFocus()
		{
			var contentFrame = document.getElementById("help_contentFrame");
			contentFrame.contentWindow.focus();
		}
		function HelpBack()
		{
			var contentFrame = document.getElementById("help_contentFrame");
			if (contentFrame.contentWindow.postMessage)
			{
				contentFrame.contentWindow.postMessage('help_historyBack','*');
			}
			else
			{
				contentFrame.contentWindow.focus();
				history.back();
			}
		}
		function HelpForward()
		{
			var contentFrame = document.getElementById("help_contentFrame");
			if (contentFrame.contentWindow.postMessage)
			{
				contentFrame.contentWindow.postMessage("help_historyForward","*");
			}
			else
			{
				contentFrame.contentWindow.focus();
				history.forward();
			}
		}
		function HelpHome(strKeyword)
		{
			HelpSelectSourceByKeyword(strKeyword);
		}
		function HelpPrint()
		{
			HelpContentFrameFocus();
			window.print();
		}
		function IsOfflineSearch()
		{
			return topNavSettings.currentSearchUrl.search(/help.aspx|\/help.aspx/i) == 0;
		}
		function HelpToggleTextSize()
		{
			topNavSettings.fLargeText = !(topNavSettings.fLargeText);
			var textSizeBtn = GetElementsByClassName('help_textSizeBtn')[0];
			if (textSizeBtn != null)
			{
				var strClass = RemoveBaseClass(textSizeBtn.className, 'ms-HPtopNavBtn');
				if (topNavSettings.fLargeText)
				{
					strClass += (' ' + topNavSettings.selectedToggleClass);
				}
				else
				{
					strClass += (' ' + topNavSettings.unselectedToggleClass);
				}
				textSizeBtn.className = strClass;
			}
			ApplyTextSize();
		}
		function HelpSearch(strStringToSearchFor)
		{
			if (IsOfflineSearch())
			{
				return true;
			}
			var nMaxLengthSearchString = 256;
			var strLocationHref = "";
			if (typeof(strStringToSearchFor) == "undefined")
			{
				return true;
			}
			if (strStringToSearchFor.length <= 0 || strStringToSearchFor == topNavSettings.defaultSearchText)
			{
				return true;
			}
			strStringToSearchFor = TrimWhiteSpaces(strStringToSearchFor);
			if (strStringToSearchFor.length == 0)
			{
				return true;
			}
			strStringToSearchFor = strStringToSearchFor.substr(0,nMaxLengthSearchString);
			strStringToSearchFor = encodeURIComponent(strStringToSearchFor);
			if ((typeof(topNavSettings.currentSearchUrl) == "undefined")
				|| (topNavSettings.currentSearchUrl == null))
			{
				return true;
			}
			var contentFrame=document.getElementById("help_contentFrame");
			strLocationHref = topNavSettings.currentSearchUrl.replace("{QUERYTEXT}", strStringToSearchFor);
			contentFrame.src=strLocationHref;
		}
		function HelpSearchTextEnterKey(theOnKeyPressEvent,searchString)
		{
			if (theOnKeyPressEvent && theOnKeyPressEvent.keyCode == 13)
			{
				HelpSearch(searchString);
				return false;
			}
			else
			{
				return true;
			}
		}
		function RemoveBaseClass(strClass, strToRemove)
		{
			if (typeof(strClass) != 'string'
				|| typeof(strToRemove) != 'string')
			{
				return null;
			}
			var pattern = new RegExp("\\b" + strToRemove + "\\S+", "g");
			strClass = strClass.replace(pattern, "");
			strClass = strClass.trim();
			strClass = strClass.replace(/\s+/g, " ");
			return strClass;
		}
		function GetClassString(strClasses, strClassBase, strAppKey)
		{
			if (typeof(strClasses) != 'string'
				|| typeof(strClassBase) != 'string'
				|| typeof(strAppKey) != 'string')
			{
				return null;
			}
			strClasses = RemoveBaseClass(strClasses, strClassBase);
			return strClasses + " " + strClassBase + strAppKey;
		}
		function SetAppSpecificClass(obj, strClassBase, strAppKey)
		{
			if (obj == null
				|| typeof(strClassBase) != 'string'
				|| typeof(strAppKey) != 'string')
			{
				return;
			}
			var strClass = obj.className;
			if (strClass != null)
			{
				obj.className = GetClassString(strClass, strClassBase, strAppKey);
			}
		}
		function ApplyAppStyles(strAppKeyword)
		{
			if (typeof(strAppKeyword) != 'string')
			{
				return;
			}
			var strAppKey;
			switch(strAppKeyword.toUpperCase())
			{
			case 'XLWAENDUSER':
				strAppKey = "Excel";
				break;
			case 'ONWAENDUSER':
				strAppKey = "OneNote";
				break;
			case 'PPWAENDUSER':
				strAppKey = "PowerPoint";
				break;
			case 'WDWAENDUSER':
				strAppKey = "Word";
				break;
			default:
				strAppKey = "Generic";
			}
			topNavSettings.selectedToggleClass = "ms-HPtopNavBtnSelected" + strAppKey;
			topNavSettings.unselectedToggleClass = "ms-HPtopNavBtn" + strAppKey;
			SetAppSpecificClass(document.getElementById(menuTitleId), "ms-HPtopNavTitle", strAppKey);
			var topNavBtns = GetElementsByClassName("ms-HPtopNavBtn");
			if (topNavBtns != null)
			{
				for (var i = 0; i < topNavBtns.length; i++)
				{
					SetAppSpecificClass(topNavBtns[i], "ms-HPtopNavBtn", strAppKey);
				}
			}
			var sourcesMenu = document.getElementById("zz1_HelpSourcesMenu_t");
			if (sourcesMenu != null)
			{
				sourcesMenu.setAttribute("hoveractive",
					GetClassString(sourcesMenu.getAttribute("hoveractive"), "ms-HPtopNavMenuActiveHover", strAppKey));
			}
		}
		if (typeof(ApplyAppStylesOnLoad) != "undefined")
		{
			ApplyAppStylesOnLoad = function()
			{
				ApplyAppStyles(contextProductKeyword);
			}
		}
		function HelpSelectSource(strTargetBrowseUrl, strTargetSearchUrl, strTitle)
		{
			var contentFrame=document.getElementById("help_contentFrame");
			if (strTargetBrowseUrl)
			{
				topNavSettings.currentSearchUrl=strTargetSearchUrl;
				contentFrame.src=strTargetBrowseUrl;
			}
			if(strTitle && typeof(menuTitleId) != 'undefined')
			{
				var menuTitle=document.getElementById(menuTitleId);
				if(menuTitle)
				{
					menuTitle.innerHTML = strTitle;
				}
			}
		}
		function HelpSelectSourceByKeyword(strKeyword)
		{
			if (typeof(helpItems) == 'undefined')
			{
				return;
			}
			if ((typeof(helpItems[strKeyword])== 'undefined')||(helpItems[strKeyword]== null))
			{
				return;
			}
			var strTargetBrowseUrl;
			var strTargetSearchUrl;
			var strTitle;
			try
			{
				var strTargetBrowseUrl = helpItems[strKeyword][0];
				var strTargetSearchUrl = helpItems[strKeyword][1];
				var strTitle = helpItems[strKeyword][2];
				HelpSelectSource(strTargetBrowseUrl,strTargetSearchUrl, strTitle);
				ApplyAppStyles(strKeyword);
				SetDefaultSearchText();
			}
			catch(err)
			{
				return;
			}
		}
		function GetSearchText()
		{
			var searchString=document.getElementById("<%=searchText.ClientID%>");
			return searchString.value;
		}
		function SetDefaultSearchText()
		{
			var searchTextBox = document.getElementById('<%=searchText.ClientID%>');
			if (searchTextBox == null)
			{
				return;
			}
			var searchTextBoxCnt = GetElementsByClassName('ms-HPtopNavSearchBoxCnt')[0];
			var searchTextBoxCntDisabledClass = 'ms-HPtopNavSearchBoxCntDisabled';
			searchTextBoxCnt.className = searchTextBoxCnt.className.replace(searchTextBoxCntDisabledClass, '');
			if (IsOfflineSearch())
			{
				topNavSettings.defaultSearchText = defaultSearchTextOffline;
				searchTextBox.disabled = true;
				searchTextBoxCnt.className += ' ' + searchTextBoxCntDisabledClass;
			}
			else
			{
				topNavSettings.defaultSearchText = defaultSearchTextOnline;
				searchTextBox.disabled = false;
			}
			searchTextBox.alt = topNavSettings.defaultSearchText;
			searchTextBox.value = topNavSettings.defaultSearchText;
		}
		function OnSearchFocus()
		{
			var searchTextBox = document.getElementById('<%=searchText.ClientID%>');
			if (searchTextBox.value == topNavSettings.defaultSearchText)
			{
				searchTextBox.value = '';
			}
		}
		function OnSearchBlur()
		{
			var searchTextBox = document.getElementById('<%=searchText.ClientID%>');
			if (searchTextBox.value == '')
			{
				searchTextBox.value = topNavSettings.defaultSearchText;
			}
		}
	</script>
	<div id="help_topNav">
		<div class="ms-HPtopNavHeader">
			<SPHelp:HelpSources id="HelpSources" runat="server"/>
		</div>
		<div class="ms-HPtopNavToolbar" id="toolbar">
			<a class="ms-HPtopNavToolbarItem ms-HPtopNavBtn" href='javascript:HelpBack();' title="<%$Resources:wss, HelpUITitleBack%>" runat="server">
				<span class="ms-HPNavBackImgSpan">
					<SPHelp:ClusteredHelpImage
						runat = "server"
						OffsetX = 32
						OffsetY = 0
						Width = 16
						Height = 16
						AlternateText = "<%$Resources:wss, HelpUITitleBack%>"
					/>
				</span>
			</a>
			<a class="ms-HPtopNavToolbarItem ms-HPtopNavBtn" href='javascript:HelpForward();' title="<%$Resources:wss, HelpUITitleForward%>" runat="server">
				<SPHelp:ClusteredHelpImage
					runat = "server"
					OffsetX = 0
					OffsetY = 0
					Width = 16
					Height = 16
					AlternateText = "<%$Resources:wss, HelpUITitleForward%>"
				/>
			</a>
			<a class="ms-HPtopNavToolbarItem ms-HPtopNavBtn" href="javascript:HelpHome('HelpContents');" title="<%$Resources:wss, HelpUITitleHome%>" runat="server">
				<SPHelp:ClusteredHelpImage
					runat = "server"
					OffsetX = 32
					OffsetY = 16
					Width = 16
					Height = 16
					AlternateText = "<%$Resources:wss, HelpUITitleHome%>"
				/>
			</a>
			<a class="ms-HPtopNavToolbarItem ms-HPtopNavBtn" href='javascript:HelpPrint();' title="<%$Resources:wss, HelpUITitlePrint%>" runat="server">
				<SPHelp:ClusteredHelpImage
					runat = "server"
					OffsetX = 16
					OffsetY = 0
					Width = 16
					Height = 16
					AlternateText = "<%$Resources:wss, HelpUITitlePrint%>"
				/>
			</a>
			<a class="ms-HPtopNavToolbarItem ms-HPtopNavBtn help_textSizeBtn" href='javascript:HelpToggleTextSize();' title="<%$Resources:wss, HelpUITitleTextSize%>" runat="server">
				<SPHelp:ClusteredHelpImage
					runat = "server"
					OffsetX = 16
					OffsetY = 16
					Width = 16
					Height = 16
					AlternateText = "<%$Resources:wss, HelpUITitleTextSize%>"
				/>
			</a>
			<div class="ms-HPtopNavToolbarItem" id="searchBox">
				<div class="ms-HPtopNavSearchBoxCnt">
					<input type="text" class="ms-HPtopNavSearchBox" title="<%$Resources:wss, HelpUITitleSearch%>" onkeypress="return HelpSearchTextEnterKey(event,GetSearchText());" onFocus="OnSearchFocus();" onBlur="OnSearchBlur();" id="searchText" runat="server" maxLength="256" />
					<a class="ms-HPtopNavBtn ms-HPtopNavSearchBtn" href="javascript:;" onclick="HelpSearch(GetSearchText());" title="<%$Resources:wss, HelpUITitleSearch%>" runat="server">
						<SPHelp:ClusteredHelpImage
							runat = "server"
							OffsetX = 0
							OffsetY = 16
							Width = 16
							Height = 16
							AlternateText = "<%$Resources:wss, HelpUITitleSearch%>"
						/>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div style="clear: both"/>
</asp:PlaceHolder>
