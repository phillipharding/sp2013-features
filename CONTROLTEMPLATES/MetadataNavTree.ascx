<!-- _lcid="1033" _version="15.0.4631" _dal="1" -->
<!-- _LocalBinding -->
<%@ Control Language="C#" Inherits="Microsoft.Office.Server.WebControls.MetaDataNavTree,Microsoft.Office.DocumentManagement,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="OfficeServer" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.DocumentManagement, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Import Namespace="Microsoft.SharePoint.WebControls" %>
<%@ Import Namespace="Microsoft.Office.DocumentManagement.MetadataNavigation" %>
<asp:Panel id="TreeLabelPanel" runat="server" Visible="False" style="padding: 5px 1px;">
	<h3 class="ms-navheader ms-treeviewlabel ms-standardheader" >
		<SharePoint:EncodedLiteral runat="server" text="<%$Resources:dlcdm, MDN_Tree_Label_Configure_Settings_Here%>" EncodeMethod='HtmlEncode'/>
	</h3>
</asp:Panel>
<OfficeServer:NavResizerControl runat="server" ID="NavResizer" ResizeTargetControlName="TreeViewRememberScroll">
	<SharePoint:SPHierarchyDataSourceControl runat="server"
		ID="TreeViewDataSource"
		RootContextObject="Web"
		IncludeDiscussionFolders="true"
		ShowListChildren="true" />
	<OfficeServer:MetadataHierarchyDataSourceControl runat="server"
		ID="MetadataTreeViewDataSource"
		SPHierarchyDataSourceId="TreeViewDataSource" />
	<SharePoint:SPRememberScroll runat="server" id="TreeViewRememberScroll" onscroll="javascript:_spRecordScrollPositions(this);" style="overflow: auto;" >
		<SharePoint:SPTreeView runat="server"
			ID="WebTreeView"
			ShowLines="false"
			DataSourceID="MetadataTreeViewDataSource"
			ExpandDepth="0"
			SelectedNodeStyle-CssClass="ms-tv-selected"
			NodeStyle-CssClass="ms-tv-item"
			NodeStyle-HorizontalPadding="2"
			SkipLinkText=""
			NodeIndent="12"
			ExpandImageUrl="/_layouts/15/images/MDNCollapsed.png?rev=23"
			ExpandImageUrlRtl="/_layouts/15/images/tvclosedrtl.png?rev=23"
			CollapseImageUrl="/_layouts/15/images/MDNExpanded.png?rev=23"
			CollapseImageUrlRtl="/_layouts/15/images/tvopenrtl.png?rev=23"
			NoExpandImageUrl="/_layouts/15/images/tvblank.gif?rev=23"
			AutoExpandSelectedNode="true"
			>
		</SharePoint:SPTreeView>
	</SharePoint:SPRememberScroll>
</OfficeServer:NavResizerControl>
<OfficeServer:KeyFiltersControl runat="server" ID="ListViewKeyFilters" TemplateName="KeyFiltersControl" AlternateTemplateName="KeyFiltersCompositeFieldDefault" />
