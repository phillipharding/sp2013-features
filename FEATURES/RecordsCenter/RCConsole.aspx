<%@ Assembly Name="Microsoft.Office.DocumentManagement, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Assembly Name="Microsoft.Office.Policy.Pages, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Assembly Name="Microsoft.Office.Policy, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Page language="C#" MasterPageFile="~masterurl/default.master"    Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"  %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,multipages_homelink_text%>" EncodeMethod="HtmlEncode"/> - <SharePoint:ProjectProperty Property="Title" runat="server"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageImage" runat="server">&#160;</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
	<SharePoint:ProjectProperty Property="Title" runat="server"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderTitleAreaClass" runat="server" />
<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
	<SharePoint:StyleBlock runat="server">
	.s4-nothome { display:none; }
	.rclink { padding-below:10px; }
	</SharePoint:StyleBlock>
	<SharePoint:ScriptBlock runat="server">
	  function showHideError()
	  {
		var docIdEnabled = "<%= Microsoft.Office.DocumentManagement.DocumentId.IsFeatureEnabled(SPContext.Current.Site) %>";
		var iprEnabled = "<%= Microsoft.Office.RecordsManagement.RecordsRepository.Records.IsInPlaceRecordsEnabled(SPContext.Current.Site) %>";
		var errSpan = document.getElementById("errFeatureDisabled");
		if(errSpan != null)
		{
			var bDocDisabled = (docIdEnabled.toLowerCase() == "false");
			var bIprDisabled = (iprEnabled.toLowerCase() == "false");
			var showErr =  bDocDisabled || bIprDisabled;
			errSpan.style.display = showErr ? "inline" : "none";
			if(showErr)
			{
				var docObj = document.getElementById("featureDoc");
				var iprObj = document.getElementById("featureIpr");
				docObj.style.display = bDocDisabled ? "inline" : "none";
				iprObj.style.display = bIprDisabled ? "inline" : "none";
			}
		}
	  }
	  function getFilePlanReportLink()
	  {
		  var listGuid = "<%= getRecordListID() %>";
		  var serverRelativeUrl = "<%= SPContext.Current.Web.ServerRelativeUrl %>";
		  if (serverRelativeUrl.length >= 1 && serverRelativeUrl.charAt(serverRelativeUrl.length - 1) != "/")
		  {
			  serverRelativeUrl += "/";
		  }
		  if(listGuid && listGuid != "")
		  {
			  return STSNavigate(serverRelativeUrl + "_layouts/15/customizereport.aspx?Category=FilePlan&backtype=list&List=" + listGuid);
		  }
		  return STSNavigate(serverRelativeUrl + "_layouts/15/create.aspx");
	  }
	</SharePoint:ScriptBlock>
	<script language="C#" runat="server">
		protected override void OnLoad(EventArgs e)
		{
			base.OnLoad(e);
			if(!SPContext.Current.Web.DoesUserHavePermissions(SPBasePermissions.ManageWeb))
			{
				SPUtility.HandleAccessDenied(new UnauthorizedAccessException());
			}
		}
		protected string getRecordListID()
		{
			string listGuid = string.Empty;
			SPWeb web = SPContext.Current.Web;
			string recordsUrlResourceString = "$Resources:dlccore,RecordsLib_ListFolder;";
			string recordsListUrlName = SPUtility.GetLocalizedString(recordsUrlResourceString, null , web.Language);
			try
			{
				SPList list = web.GetList(SPUrlUtility.CombineUrl(web.ServerRelativeUrl, recordsListUrlName));
				if(list != null)
					listGuid = list.ID.ToString();
			}
			catch { }
			return listGuid;
		}
	</script>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server">
	<SharePoint:EncodedLiteral runat="server" text="<%$Resources:dlcpolicy, recordscenterconsole_desc%>" EncodeMethod='HtmlEncode'/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
		<table cellpadding="0" cellspacing="10" border="0" width="100%" style="margin:10px;">
			<tr>
				<td class="ms-pagetitle" colspan="2">
					<img src="/_layouts/15/images/rccicon.png?rev=23" alt="<%$Resources:dlcpolicy, recordscenterconsole_title%>" style="vertical-align: middle;" runat="server"/>
					<SharePoint:EncodedLiteral runat="server" text="<%$Resources:dlcpolicy, recordscenterconsole_title%>" EncodeMethod='HtmlEncode'/>
					<hr />
				</td>
			</tr>
			<tr>
				<td id="_invisibleIfEmpty" name="_invisibleIfEmpty" valign="top" height="100%"> <WebPartPages:WebPartZone runat="server" Title="loc:CenterColumn" ID="CenterColumn" PartChromeType="TitleOnly" AllowCustomization="true" AllowPersonalization="false"/> </td>
				<td id="_invisibleIfEmpty" name="_invisibleIfEmpty" valign="top" height="100%"> <WebPartPages:WebPartZone runat="server" Title="loc:RightColumn" ID="RightColumn" PartChromeType="TitleOnly" AllowCustomization="true" AllowPersonalization="false"/> </td>
			</tr>
			<SharePoint:ScriptBlock runat="server">if(typeof(MSOLayout_MakeInvisibleIfEmpty) == "function") {MSOLayout_MakeInvisibleIfEmpty();}</SharePoint:ScriptBlock>
		</table>
</asp:Content>
