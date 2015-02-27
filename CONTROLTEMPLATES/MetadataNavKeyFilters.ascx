<!-- _lcid="1033" _version="15.0.4631" _dal="1" -->
<!-- _LocalBinding -->
<%@ Control Language="C#"   AutoEventWireup="false" compilationMode="Always" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="OfficeServer" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.DocumentManagement, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<SharePoint:RenderingTemplate id="KeyFiltersControl" runat="server">
	<Template>
		<div class="ms-KFMenu" id="idKeyFiltersContainer">
			  <asp:Panel id="FilterFormContainer" runat="server" >
				<div class="ms-KFHeadV3 ms-KFHead">
					<h3 id="idKeyFiltersTitle" class="ms-textLarge"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:dlcdm, MetadataNav_KeyFiltersControl_ControlHeading%>" EncodeMethod='HtmlEncode'/></h3>
					<div id="idKeyFiltersHeader" class="ms-noWrap">
						<button id="KeyFiltersApplyAllButton" class="ms-KFButton" runat="server" onclick="javascript:_mdnSubmitKeyFilters(false); return false;"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:dlcdm, MetadataNav_KeyFiltersControl_ApplyButton%>" EncodeMethod='HtmlEncode'/></button>
						<button id="KeyFiltersClearAllButton" class="ms-KFButton" runat="server" onclick="javascript:_mdnSubmitKeyFilters(true); return false;"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:dlcdm, MetadataNav_KeyFiltersControl_ClearButton%>" EncodeMethod='HtmlEncode'/></button>
					</div>
				</div>
			  </asp:Panel>
		</div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="KeyFiltersCompositeFieldDefault" runat="server">
	<Template>
		<div class="ms-KFLabelAndBodyContainer">
			<h3 class="ms-standardheader ms-KFLabel"><img ID="FilterActiveIndicatorIcon" src="/_layouts/15/images/MDNAppliedFilter.png?rev=23" Width="16" Height="16" Visible="False" alt="" runat="server" />
				<SharePoint:FieldLabel runat="server">
					<CustomTemplate>
						<span><SharePoint:FieldProperty PropertyName="Title" runat="server"/></span>
					</CustomTemplate>
					<CustomAlternateTemplate>
						<span><SharePoint:FieldProperty PropertyName="Title" runat="server"/><span class="ms-formvalidation"> *</span></span>
					</CustomAlternateTemplate>
				</SharePoint:FieldLabel>
			</h3>
			<div class="ms-KFBody ms-KFBodyGeneralFilter">
				<SharePoint:FormField ID="FilterValueControl" runat="server"/>
			</div>
		</div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="KeyFiltersCompositeFieldRangeCapable" runat="server">
	<Template>
		<div class="ms-KFLabelAndBodyContainer">
			<h3 class="ms-standardheader ms-KFLabel"><img ID="FilterActiveIndicatorIcon" src="/_layouts/15/images/MDNAppliedFilter.png?rev=23" Width="16" Height="16" Visible="False" alt="" runat="server" />
				<SharePoint:FieldLabel runat="server">
					<CustomTemplate>
						<SharePoint:FieldProperty PropertyName="Title" runat="server"/>
					</CustomTemplate>
					<CustomAlternateTemplate>
						<SharePoint:FieldProperty PropertyName="Title" runat="server"/><span class="ms-formvalidation"> *</span>
					</CustomAlternateTemplate>
				</SharePoint:FieldLabel>
			</h3>
			<div class="ms-KFBody ms-KFBodyRangeCapableFilter">
				<asp:DropDownList  class="ms-KFOperationDropdown" ID="FilterValueOperatorControl" runat="server"/>
				<SharePoint:FormField ID="FilterValueControl" runat="server"/>
			</div>
		</div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="KeyFiltersCompositeFieldUser" runat="server">
	<Template>
		<div class="ms-KFLabelAndBodyContainer">
			<h3 class="ms-standardheader ms-KFLabel"><img ID="FilterActiveIndicatorIcon" src="/_layouts/15/images/MDNAppliedFilter.png?rev=23" Width="16" Height="16" Visible="False" alt="" runat="server" />
				<SharePoint:FieldLabel runat="server">
					<CustomTemplate>
						<span><SharePoint:FieldProperty PropertyName="Title" runat="server"/></span>
					</CustomTemplate>
					<CustomAlternateTemplate>
						<span><SharePoint:FieldProperty PropertyName="Title" runat="server"/><span class="ms-formvalidation"> *</span></span>
					</CustomAlternateTemplate>
				</SharePoint:FieldLabel>
			</h3>
			<div class="ms-KFBody ms-KFBodyUserFilter">
				<SharePoint:UserField ID="FilterValueControl" runat="server" AugmentEntitiesFromUserInfo="true"/>
			</div>
		</div>
	</Template>
</SharePoint:RenderingTemplate>
