<!-- _lcid="1033" _version="15.0.4631" _dal="1" -->
<!-- _LocalBinding -->
<%@ Control Language="C#"    compilationMode="Always" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Discovery" Namespace="Microsoft.Office.Server.Discovery.CodeBehind" Assembly="Microsoft.Office.Policy.Pages, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="ToolBar" src="ToolBar.ascx" %>
<SharePoint:RenderingTemplate id="DiscoveryTemplate" runat="server">
	<Template>
		<table width="100%">
			<tr>
				<td width="100%">
					<span id='part1'>
						<SharePoint:InformationBar runat="server"/>
						<div id="listFormToolBarTop">
						<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbltop" RightButtonSeparator="&amp;#160;" runat="server">
								<Template_RightButtons>
									<SharePoint:NextPageButton runat="server"/>
									<Discovery:SourceSaveButton runat="server"/>
									<SharePoint:GoBackButton runat="server"/>
								</Template_RightButtons>
						</wssuc:ToolBar>
						</div>
						<SharePoint:FormToolBar runat="server"/>
						<SharePoint:ItemValidationFailedMessage runat="server"/>
						<table class="ms-formtable" style="margin-top: 8px;" border="0" cellpadding="0" cellspacing="0" width="100%">
						<SharePoint:ChangeContentType runat="server"/>
						<SharePoint:FolderFormFields runat="server"/>
						<Discovery:SourcePageContentTypeControl id="contentTypePicker" runat="server" />
						<Discovery:SourcePagePickerControl id="sourcePicker" runat="server" />
						<SharePoint:ListFieldIterator runat="server"/>
						<SharePoint:ApprovalStatus runat="server"/>
						<SharePoint:FormComponent TemplateName="AttachmentRows" ComponentRequiresPostback="false" runat="server"/>
						</table>
						<table cellpadding="0" cellspacing="0" width="100%"><tr><td class="ms-formline"><img src="/_layouts/15/images/blank.gif" width='1' height='1' alt="" /></td></tr></table>
						<table cellpadding="0" cellspacing="0" width="100%" style="padding-top: 7px"><tr><td width="100%">
						<SharePoint:ItemHiddenVersion runat="server"/>
						<SharePoint:ParentInformationField runat="server"/>
						<SharePoint:InitContentType runat="server"/>
						<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
								<Template_Buttons>
									<SharePoint:CreatedModifiedInfo runat="server"/>
								</Template_Buttons>
								<Template_RightButtons>
									<Discovery:SourceRetryPreservationButton runat="server"/>
									<Discovery:SourceRevalidateButton runat="server"/>
									<Discovery:SourceSaveButton runat="server"/>
									<SharePoint:GoBackButton runat="server"/>
								</Template_RightButtons>
						</wssuc:ToolBar>
						</td></tr></table>
					</span>
				</td>
				<td valign="top">
					<SharePoint:DelegateControl runat="server" ControlId="RelatedItemsPlaceHolder"/>
				</td>
			</tr>
		</table>
		<SharePoint:AttachmentUpload runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
