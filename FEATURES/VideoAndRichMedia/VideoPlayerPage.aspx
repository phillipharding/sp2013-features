<%@ Page language="C#" MasterPageFile="~masterurl/default.master"  inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"     %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="OfficeServer" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.DocumentManagement, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePointPortalWebControls" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePointTaxonomy" Namespace="Microsoft.SharePoint.Taxonomy" Assembly="Microsoft.SharePoint.Taxonomy, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePointWebControls:TextField  FieldName="Title" ControlMode="Display" runat="server"/>
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
	<span id="idParentFolderName">&#160;</span>
	<span class="ms-pageTitle-separatorSpan">
		<SharePoint:ClusteredDirectionalSeparatorArrow runat="server" />
	</span>
	<span id="idDocsetName">&#160;</span>
</asp:Content>
<asp:Content contentplaceholderid="PlaceHolderAdditionalPageHead" runat="server">
<SharePoint:StyleBlock runat="server">
	#sideNavBox
	{
		display: none;
	}
	.ms-csrlistview-controldiv {
		display: none;
	}
	.ms-viewheadertr {
		display: none;
	}
	.ms-list-emptyText-compact {
		display: none;
	}
	.ms-InlineSearch-DivBaseline {
		display: none;
	}
	.ms-vb-imgFirstCell {
		display: none;
	}
	.ms-list-addnew {
		padding-top: 0px;
		padding-bottom: 8px;
	}
	.ms-webpartzone-cell {
		margin-top: 0px;
		margin-bottom: 0px;
	}
	.ms-textXLarge {
		font-size: 13px;
	}
	.ms-list-addnew-imgSpan {
		height: 16px;
		width: 16px;
	}
	.ms-list-addnew-img {
		left: -127px;
		top: -182px;
	}
	#contentBox {
		margin: 0px;
	}
	.TextGreyStyle {
		color: #525051;
	}
	h1 {
		margin-bottom: 6px;
	}
	h3 {
		margin-bottom: 8px;
	}
	.RatingSectionStyle {
		vertical-align: bottom;
	}
	.DivSectionStyle {
		margin-top: 20px;
	}
	.FieldSectionBottomStyle {
		margin-bottom: 12px;
	}
	.FieldSectionTopStyle {
		margin-top: 12px;
	}
	.FieldSectionStyle {
		margin-top: 24px;
	}
</SharePoint:StyleBlock>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
	<OfficeServer:VideoPlayerPageControl runat="server" ID="idVideoSet"/>
	<div class="ms-displayInlineBlock ms-verticalAlignTop" style="width: 20px;">
	</div>
	<div class="ms-displayInlineBlock ms-verticalAlignTop" style="min-width: 960px;">
		<div class="ms-displayInlineBlock ms-verticalAlignTop" style="width: 700px;">
			<div>
				<WebPartPages:WebPartZone runat="server" PartChromeType="None" id="WebPartZone_PlayerAndSocial" LayoutOrientation="vertical" AllowPersonalization="false" AllowCustomization="true">
					<ZoneTemplate></ZoneTemplate>
				</WebPartPages:WebPartZone>
			</div>
			<div id="idVideoSetMiscContainer">
				<asp:PlaceHolder ID="idPlayerPageMisc" runat="server"/>
			</div>
			<div class="DivSectionStyle">
				<div class="ms-displayInlineBlock">
					<div id="idVideoSetCreatedDateContainer" runat="server">
						<div class="ms-displayInlineBlock"><asp:Label Text='<%$Resources:dlcdm,VideoPlayerPage_Created%>' runat="server"/></div>
						<div class="ms-displayInlineBlock"><asp:Label id="idVideoSetCreatedDate" runat="server"/></div>
					</div>
				</div>
				<div class="ms-displayInlineBlock">
					<div id="idVideoSetRatingContainer" runat="server">
						&#160;&#160;<span class="ms-soften">|</span>&#160;&#160;
						<div class="ms-displayInlineBlock RatingSectionStyle"><asp:Label Text='<%$Resources:dlcdm,VideoPlayerPage_Rating%>' runat="server"/></div>
						<div class="ms-displayInlineBlock RatingSectionStyle"><SharePointPortalWebControls:AverageRatingFieldControl FieldName=5a14d1ab-1513-48c7-97b3-657a5ba6c742 runat="server"/></div>
					</div>
				</div>
				<div class="ms-displayInlineBlock">
					<div id="idVideoSetViewCountContainer" runat="server">
						&#160;&#160;<span class="ms-soften">|</span>&#160;&#160;
						<div class="ms-displayInlineBlock"><asp:Label Text='<%$Resources:dlcdm,VideoPlayerPage_View%>' runat="server"/></div>
						<div class="ms-displayInlineBlock"><asp:Label id="idVideoSetViewCount" runat="server"/></div>
					</div>
				</div>
			</div>
			<div id="idVideoSetDescriptionContainer" class="TextGreyStyle DivSectionStyle">
				<SharePointWebControls:FieldValue FieldName="VideoSetDescription" ControlMode="Display" runat="server"/>
			</div>
			<div class="DivSectionStyle">
				<WebPartPages:WebPartZone runat="server" PartChromeType="None" id="WebPartZone_Extention" AllowPersonalization="false" AllowCustomization="true">
					<ZoneTemplate></ZoneTemplate>
				</WebPartPages:WebPartZone>
			</div>
		</div>
		<div class="ms-displayInlineBlock ms-verticalAlignTop" style="width: 40px;">
		</div>
		<div class="ms-displayInlineBlock ms-verticalAlignTop" style="width: 220px;">
			<div id="idVideoSetOwnerContainer" class="FieldSectionBottomStyle">
				<h3><SharePointWebControls:UserField FieldName="VideoSetOwner" ControlMode="Display" NoCAML="true" runat="server"/></h3>
			</div>
			<hr/>
			<div class="FieldSectionTopStyle">
				<h3><asp:Label Text='<%$Resources:dlcdm,VideoPlayerPage_Related%>' class="TextGreyStyle" runat="server"/></h3>
				<WebPartPages:WebPartZone runat="server" PartChromeType="None" id="WebPartZone_Related" LayoutOrientation="vertical" AllowPersonalization="false" AllowCustomization="true">
					<ZoneTemplate></ZoneTemplate>
				</WebPartPages:WebPartZone>
			</div>
			<div id="idVideoSetKeywordsContainer" class="FieldSectionStyle FieldSectionBottomStyle" runat="server">
				<h3><asp:Label Text='<%$Resources:dlcdm,VideoPlayerPage_Keywords%>' class="TextGreyStyle" runat="server"/></h3>
				<SharePointTaxonomy:TaxonomyFieldControl FieldName=23F27201-BEE3-471e-B2E7-B64FD8B7CA38 runat="server"/>
			</div>
			<div id="idVideoSetPeopleContainer" class="FieldSectionStyle FieldSectionBottomStyle" runat="server">
				<h3><asp:Label Text='<%$Resources:dlcdm,VideoPlayerPage_People%>' class="TextGreyStyle" runat="server"/></h3>
				<SharePointWebControls:UserField FieldName="PeopleInMedia" runat="server"/>
			</div>
			<hr/>
			<div id="idVideoSetDownloadContainer" class="FieldSectionTopStyle">
				<asp:PlaceHolder ID="idPlayerPageDownload" runat="server"/>
			</div>
			<div id="idVideoSetShareContainer" class="FieldSectionStyle">
				<asp:PlaceHolder ID="idPlayerPageShare" runat="server"/>
			</div>
		</div>
	</div>
</asp:Content>
