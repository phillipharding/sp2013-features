<%@ Control Language="C#" Inherits="Microsoft.SharePoint.Taxonomy.TaxonomyItemPicker,Microsoft.SharePoint.Taxonomy,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    %>
<%@Assembly Name="Microsoft.SharePoint.Taxonomy, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Taxonomy" Namespace="Microsoft.SharePoint.Taxonomy" Assembly="Microsoft.SharePoint.Taxonomy, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Osrv" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<br />
<asp:Label id="termSetSearchBoxLabel" Text="<%$Resources:taxonomy,taxonomyItemPicker_FindLabel%>" runat="server" />
<br />
<wssawc:InputFormTextBox title="<%$Resources:taxonomy, taxonomyItemPicker_FindHoverText%>" CssClass="ms-input" ID="termSetSearchBox" Columns="35" Runat="server" onkeydown="if (event.keyCode == 13) { event.preventDefault(); event.stopPropagation(); Microsoft.SharePoint.Taxonomy.TaxonomyItemPickerScript.executeFindTermSet(); }" />
<a href="javascript:Microsoft.SharePoint.Taxonomy.TaxonomyItemPickerScript.executeFindTermSet();" id="findLink"><img src="/_layouts/15/images/RTE2FIND.gif" Title="<%$Resources:taxonomy,taxonomyItemPicker_FindButtonText%>" runat="server" /></a>
<a href="javascript:resetTextBox();" id="resetLink"><img src="/_layouts/15/images/refresh.gif" Title="<%$Resources:taxonomy,taxonomyItemPicker_ResetButtonText%>" runat="server" /></a>
<br />
<div id="taxonomyItemPickerTreeContainer" class="FrameForTrees">
	<div id="taxonomyItemPickerTreeControl" class="MetadataTreeControlTree"></div>
</div>
<div style="display:none;">
	<input id="taxonomyItemPickerTermStoreId" runat="server" type="hidden" value="" />
	<input id="taxonomyItemPickerGroupId" runat="server" type="hidden" value="" />
	<input id="taxonomyItemPickerTermSetId" runat="server" type="hidden" value="" />
	<input id="taxonomyItemPickerTermPath" runat="server" type="hidden" value="" />
	<input id="taxonomyItemPickerOptions" runat="server" type="hidden" value="" />
</div>
<Osrv:DelegateValidationControl id="taxonomyItemPickerValidator" IsInputForm="True" runat="server" />
<SharePoint:CssRegistration runat="server" name="termstoremanager.css" />
