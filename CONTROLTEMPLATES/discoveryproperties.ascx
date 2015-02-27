<!-- _lcid="1033" _version="15.0.4631" _dal="1" -->
<!-- _LocalBinding -->
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Assembly Name="Microsoft.Office.Policy.Pages, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SearchWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Sharepoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint.ApplicationPages, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" Inherits="Microsoft.Office.Server.Discovery.WebControls.DiscoveryProperties" %>
<script>
	function DPropmarkEDiscoveryLoaded() {
		Discovery.DiscoveryProperties.registerOnSDP();
		window.setTimeout(Discovery.DiscoveryProperties.showGhostText,1000);
	}
	function DProploadEDiscovery() {
		EnsureScript('EDiscovery.DiscoverySearchControls.js', 'undefined', null);
		ExecuteOrDelayUntilScriptLoaded(DPropmarkEDiscoveryLoaded, 'EDiscovery.DiscoverySearchControls.js');
	}
	var g_discoveryAuthorsResolved = false;
	function DPropEnsureAuthorsResolved(authorFilterTopLevelElementId, allUserInfo)
	{
		if(typeof allUserInfo != 'undefined' && allUserInfo != null)
		{
			g_discoveryAuthorsResolved = true;
			var authorFilterTopLevelElement = document.getElementById(authorFilterTopLevelElementId);
			var haveUserInfoElement = typeof authorFilterTopLevelElement != 'undefined' && authorFilterTopLevelElement != null &&
				authorFilterTopLevelElement.firstChild != null && typeof authorFilterTopLevelElement.firstChild.value != 'undefined'
			if(haveUserInfoElement)
			{
				g_discoveryAuthorsResolved = authorFilterTopLevelElement.firstChild.value == "[]";
			}
			for(var user in allUserInfo)
			{
				g_discoveryAuthorsResolved = allUserInfo[user].Resolved;
				if(!g_discoveryAuthorsResolved)
				{
					break;
				}
			}
		}
		var discoverySearchButtonId = <%SPHttpUtility.WriteAddQuote(SPHttpUtility.NoEncode(DiscoveySearchButton.ClientID), this.Page);%>;
		var discoveryButtonEl = document.getElementById(discoverySearchButtonId);
		if(typeof discoveryButtonEl != 'undefined' && discoveryButtonEl != null)
		{
			discoveryButtonEl.disabled = !g_discoveryAuthorsResolved;
		}
	}
	var app = Sys.Application;
	app.add_load(DProploadEDiscovery);
</script>
<div class="edisc-FilterControl">
	<div class="edisc-Container">
		 <asp:TextBox ID="Discovery_Search_Textarea"
			 TextMode="Multiline"
			 Rows="5"
			 Wrap="True"
			 ToolTip= "<%$Resources:dlcpolicy,ediscovery_query_tooltip%>"
			 CSSClass="edisc-SearchBox"
			 placeholder="<%$Resources:dlcpolicy, ediscoverysearch_searchbox_text%>"
			 runat="server"/>
		<div class="ms-hide">
			<SearchWC:SearchBoxScriptWebPart
				id="Discovery_Searchbox"
				runat="server"
				AllowEmptySearch="True"
				FrameType="None"
				SetFocusOnPageLoad="true"
				RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Search/Control_Blank.js"
				QueryGroupNamesJson="[&quot;Discovery_Sharepoint&quot;,&quot;Discovery_Exchange&quot;]"
				UpdatePageTitle="False"
				MaintainQueryState="True" />
		</div>
		<div class="ms-clear edisc-Warning">
			<span id="discovery_properties_warning" class="ms-hide"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:dlcpolicy, ediscovery_boolean_warning%>" EncodeMethod='HtmlEncode'/></span>
			<SharePoint:FormattedString id="helptopic_WSSEndUser_DiscoverySearchSyntaxTips" FormatText="<%$Resources:wss,helptopic_link%>" EncodeMethod="NoEncode" runat="server"> <SharePoint:EncodedLiteral runat="server" text="<%$Resources:dlcpolicy, CSH_DiscoverySearchSyntaxTips%>" EncodeMethod='HtmlEncode'/> <SharePoint:EncodedLiteral runat="server" text='WSSEndUser_DiscoverySearchSyntaxTips' EncodeMethod='EcmaScriptStringLiteralEncode'/> </SharePoint:FormattedString>
		</div>
	</div>
	<div class="edisc-Container edisc-FilterProperties">
		<div class="edisc-DatePicker">
			<SharePoint:EncodedLiteral runat="server" text="<%$Resources:dlcpolicy, auditcustquery_datesStart%>" EncodeMethod='HtmlEncode'/>
			<Sharepoint:DateTimeControl
					id="Discovery_Start_Date"
					DateOnly = "true"
					CssClassTextBox="edisc-DateBox"
					ToolTip = "<%$Resources:dlcpolicy, ediscovery_startdate_tooltip%>"
					runat="server"/>
		</div>
		<div  class="edisc-DatePicker">
			<SharePoint:EncodedLiteral runat="server" text="<%$Resources:dlcpolicy, auditcustquery_datesEnd%>" EncodeMethod='HtmlEncode'/>
			<Sharepoint:DateTimeControl
				id="Discovery_End_Date"
				DateOnly = "true"
				CssClassTextBox="edisc-DateBox"
				ToolTip = "<%$Resources:dlcpolicy, ediscovery_enddate_tooltip%>"
				runat="server"/>
		</div>
		<div id="peoplePickerDiv" class="edisc-PeoplePicker" runat="server">
			<SharePoint:EncodedLiteral runat="server" text="<%$Resources:dlcpolicy, ediscoverysearch_author%>" EncodeMethod='HtmlEncode'/><br />
			<Sharepoint:ClientPeoplePicker
				id="Discovery_People_Picker"
				Required="false"
				AllowEmailAddresses="true"
				ValidationEnabled="true"
				OnValueChangedClientScript="DPropEnsureAuthorsResolved"
				OnUserResolvedClientScript="DPropEnsureAuthorsResolved"
				OnControlValidateClientScript="DPropEnsureAuthorsResolved"
				runat="server"
				Rows="1"
				AllowMultipleEntities="true"
				Title = "<%$Resources:dlcpolicy, ediscovery_author_tooltip%>"
				width=358
				/>
		</div>
		<div id="domainFilteringDiv" class="edisc-DomainIncludedSpacing" runat="server">
			<SharePoint:EncodedLiteral runat="server" text="<%$Resources:dlcpolicy, ediscoverysearch_domain%>" EncodeMethod='HtmlEncode'/><br />
			<asp:TextBox id="Discovery_Domain_Textarea" columns="51" runat="server"/>
		</div>
		<div style="padding-top:10px;">
			<asp:Button runat="server" id="DiscoveySearchButton" OnClientClick="Discovery.DiscoveryProperties.search();return;" class="discovery-execute-button" UseSubmitBehavior="false" />
			<asp:Label AssociatedControlId="DiscoveySearchButton" class="ms-hide" id="DiscoveySearchButtonLabel" runat="server"/>
			<div class="edisc-AdvancedLink">
				<a id="advancedOptionsLink" href="javascript:{}" onclick="Discovery.DiscoveryProperties.showAdvancedOptionsDialog()" runat="server"></a>
			</div>
		</div>
	</div>
</div>
<SharePoint:PageRenderMode runat="server" RenderModeType="Standard" />
