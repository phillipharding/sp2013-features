<!-- _lcid="1033" _version="15.0.4631" _dal="1" -->
<!-- _LocalBinding -->
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Assembly Name="Microsoft.Office.Policy.Pages, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SearchWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Sharepoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint.ApplicationPages, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" Inherits="Microsoft.Office.Server.Discovery.WebControls.DiscoveryGlobalControl" %>
<SharePoint:ScriptBlock runat="server">
	function DGCmarkEDiscoveryLoaded()
	{
		Discovery.DiscoverySearchGlobalControl.registerOnSDP();
	}
	function DGCloadEDiscovery()
	{
		EnsureScript('EDiscovery.DiscoverySearchControls.js', 'undefined', null);
		ExecuteOrDelayUntilScriptLoaded(DGCmarkEDiscoveryLoaded, 'EDiscovery.DiscoverySearchControls.js');
	}
	var app = Sys.Application;
	app.add_load(DGCloadEDiscovery);
	var g_discoverySavingWaitScreen = null;
	function DGCshowSavingWaitScreen()
	{
		var clientSideValidated = true;
		if(typeof g_discoveryAuthorsResolved != 'undefined' && g_discoveryAuthorsResolved != null)
		{
			clientSideValidated = g_discoveryAuthorsResolved;
			if(!clientSideValidated)
			{
				var authorFilterElementId = <%SPHttpUtility.WriteAddQuote(SPHttpUtility.NoEncode(AuthorFilter.ClientID), this.Page);%>;
				var authorFilterElement = document.getElementById(authorFilterElementId);
				if(typeof authorFilterElement != 'undefined' && authorFilterElement != null)
				{
					var inputElements = authorFilterElement.getElementsByTagName('INPUT');
					if(inputElements != null)
					{
						for(var i = 0; i < inputElements.length; i++)
						{
							var inputEl = inputElements[i];
							if(inputEl.type != 'hidden')
							{
								if(inputEl.value != '')
								{
									inputEl.focus();
								}
								break;
							}
						}
					}
				}
			}
		}
		if(clientSideValidated)
		{
			var nameBoxElementId = <%SPHttpUtility.WriteAddQuote(SPHttpUtility.NoEncode(NameBox.ClientID), this.Page);%>;
			var nameBoxElement = document.getElementById(nameBoxElementId);
			if(typeof nameBoxElement != 'undefined' && nameBoxElement != null)
			{
				clientSideValidated = nameBoxElement.value != '';
			}
		}
		if(clientSideValidated)
		{
			var waitScreenTitleElementId = <%SPHttpUtility.WriteAddQuote(SPHttpUtility.NoEncode(saveWaitScreenTitleHolder.ClientID), this.Page);%>;
			var waitScreenTitle = document.getElementById(waitScreenTitleElementId).value;
			g_discoverySavingWaitScreen = SP.UI.ModalDialog.showWaitScreenWithNoClose(waitScreenTitle, '', null, 300);
		}
	}
</SharePoint:ScriptBlock>
			<asp:HiddenField runat='server' ID="Discovery_SPRefinements_Hidden" />
			<asp:HiddenField runat='server' ID="Discovery_EXRefinements_Hidden" />
			<asp:HiddenField runat='server' ID="Discovery_Deduplication_Hidden" />
			<asp:HiddenField runat='server' ID="Discovery_Stemming_Hidden" />
			<asp:Button runat="server" id="DiscoveryExportButton" onclick="ExportButton_Click" text="<%$Resources:dlcpolicy, sourceGroupExport%>" class="ms-dnd-progressButton" UseSubmitBehavior="false" />
			<asp:Label AssociatedControlId="DiscoveryExportButton" class="ms-hide" Text="<%$Resources:dlcpolicy, sourceGroupExport%>" runat="server"/>
			<asp:UpdatePanel ID="SaveQueryPanel" class="ms-displayInline" runat="server">
				<ContentTemplate>
				   <asp:Button runat="server" id="DiscoverySaveButton" onclientclick="DGCshowSavingWaitScreen();" onclick="SaveButton_Click" text="<%$Resources:dlcpolicy, sourceGroupSave%>" class="ms-dnd-progressButton" UseSubmitBehavior="false"/>
				   <asp:Label AssociatedControlId="DiscoverySaveButton" class="ms-hide" Text="<%$Resources:dlcpolicy, sourceGroupSave%>" runat="server"/>
				</ContentTemplate>
			</asp:UpdatePanel>
			<asp:Button runat="server" class="ms-ButtonHeightWidth" Text="<%$Resources:dlcpolicy, ediscoverysearch_close%>" id="btnCancel" onclick="CancelButton_Click" UseSubmitBehavior="false" CausesValidation="False"/>
			<asp:Label AssociatedControlId="btnCancel" class="ms-hide" Text="<%$Resources:dlcpolicy, ediscoverysearch_close%>" runat="server"/>
			<input type="hidden" id="saveWaitScreenTitleHolder" value="<%$Resources:dlcpolicy, discoverySearchSavingWaitScreen_Title%>" runat="server"/>
			<SharePoint:PageRenderMode runat="server" RenderModeType="Standard" />
