<%@ Control Language="C#"   AutoEventWireup="false" %>
<%@Assembly Name="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@Register TagPrefix="SharePoint" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.WebControls"%>
<%@Register TagPrefix="ApplicationPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.ApplicationPages.WebControls"%>
<%@Register TagPrefix="SPHttpUtility" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.Utilities"%>
<%@ Register TagPrefix="wssuc" TagName="ToolBar" src="~/_controltemplates/15/ToolBar.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="~/_controltemplates/15/ToolBarButton.ascx" %>
<SharePoint:RenderingTemplate id="FieldLabelDefault" runat="server">
	<Template>
		<nobr><SharePoint:FieldProperty PropertyName="Title" runat="server"/></nobr>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="FieldLabelRequired" runat="server">
	<Template>
		<nobr><SharePoint:FieldProperty PropertyName="Title" runat="server"/><span class="ms-accentText" title="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,requiredfld_tooltip%>' EncodeMethod='HtmlEncode'/>" > *</span></nobr>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="FieldLabelForDisplay" runat="server">
	<Template><a name="SPBookmark_<SharePoint:FieldProperty PropertyName='InternalName' runat='server'/>"></a><SharePoint:FieldProperty PropertyName="Title" runat="server"/></Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CompositeField" runat="server">
	<Template>
		<td nowrap="true" valign="top" width="113px" class="ms-formlabel"><h3 class="ms-standardheader"><SharePoint:FieldLabel runat="server"/></h3></td>
		<td valign="top" width="350px" class="ms-formbody">
		<!-- FieldName="<SharePoint:FieldProperty PropertyName="Title" runat="server"/>"
			 FieldInternalName="<SharePoint:FieldProperty PropertyName="InternalName" runat="server"/>"
			 FieldType="SPField<SharePoint:FieldProperty PropertyName="Type" runat="server"/>"
		  -->
			<SharePoint:FormField runat="server"/>
			<SharePoint:FieldDescription runat="server"/>
			<SharePoint:AppendOnlyHistory runat="server"/>
		</td>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="DisplayCompositeField" runat="server">
	<Template>
		<td nowrap="true" valign="top" width="113px" class="ms-formlabel"><h3 class="ms-standardheader"><SharePoint:FieldLabel runat="server"/></h3></td>
		<td valign="top" class="ms-formbody" width="350px" id="SPField<SharePoint:FieldProperty PropertyName='Type' runat='server'/>">
		<!-- FieldName="<SharePoint:FieldProperty PropertyName="Title" runat="server"/>"
			 FieldInternalName="<SharePoint:FieldProperty PropertyName="InternalName" runat="server"/>"
			 FieldType="SPField<SharePoint:FieldProperty PropertyName="Type" runat="server"/>"
		  -->
			<SharePoint:FormField runat="server"/>
			<SharePoint:AppendOnlyHistory runat="server"/>
		</td>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="ListFieldIterator" runat="server">
	<Template>
		<tr><SharePoint:CompositeField runat="server"/></tr>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="DividingListFieldIterator" runat="server">
	<Template>
		<tr><SharePoint:CompositeField runat="server"/></tr>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="SpecifiedListFieldIterator" runat="server">
	<Template>
		<tr><SharePoint:CompositeField runat="server"/></tr>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="TaskListFieldIterator" runat="server">
	<Template>
		<tr><SharePoint:CompositeField runat="server"/></tr>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CSRListFieldIterator" runat="server">
	<Template>
		<SharePoint:CSRFormField id="ClientFormField" runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="TwoRowCompositeField" runat="server">
	<Template>
		<tr>
		  <td valign="top" width="90%" class="ms-formlabel">
			<SharePoint:FieldLabel runat="server">
				<CustomTemplate>
					<SharePoint:FieldProperty PropertyName="Title" runat="server"/>
				</CustomTemplate>
				<CustomAlternateTemplate>
					<SharePoint:FieldProperty PropertyName="Title" runat="server"/><span class="ms-accentText" title="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,requiredfld_tooltip%>' EncodeMethod='HtmlEncode'/>" > *</span>
				</CustomAlternateTemplate>
			</SharePoint:FieldLabel>
		  </td>
		</tr>
		<tr>
		  <td valign="top" width="90%" class="ms-formbody">
		  <!-- FieldName="<SharePoint:FieldProperty PropertyName="Title" runat="server"/>"
			 FieldInternalName="<SharePoint:FieldProperty PropertyName="InternalName" runat="server"/>"
			 FieldType="SPField<SharePoint:FieldProperty PropertyName="Type" runat="server"/>"
		  -->
			<SharePoint:FormField runat="server"/>
			<SharePoint:FieldDescription runat="server"/>
		  </td>
		</tr>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="TwoRowFieldIterator" runat="server">
	<Template>
		<SharePoint:CompositeField TemplateName="TwoRowCompositeField" runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="PropertyIterator" runat="server">
	<Template>
		<tr>
		<td nowrap="true" valign="top" class="ms-authoringcontrols">
			<SharePoint:FieldLabel runat="server"/> &#160;
		</td>
		<td valign="top" class="ms-authoringcontrols">
			<SharePoint:FormField runat="server"/>
			<SharePoint:FieldDescription runat="server"/>
		</td>
		</tr>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GenericForm" runat="server">
	<Template>
		<table class="ms-formtable" border="0" cellpadding="2">
			<SharePoint:ListFieldIterator runat="server"/>
		</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CSRListForm" runat="server">
	<Template>
		<SharePoint:FormToolBar runat="server"/>
		<SharePoint:CSRListFieldIterator runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="ListForm" runat="server">
	<Template>
		<table>
			<tr>
				<td>
					<span id='part1'>
						<SharePoint:InformationBar runat="server"/>
						<div id="listFormToolBarTop">
						<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbltop" RightButtonSeparator="&amp;#160;" runat="server">
								<Template_RightButtons>
									<SharePoint:NextPageButton runat="server"/>
									<SharePoint:SaveButton runat="server"/>
									<SharePoint:GoBackButton runat="server"/>
								</Template_RightButtons>
						</wssuc:ToolBar>
						</div>
						<SharePoint:FormToolBar runat="server"/>
						<SharePoint:ItemValidationFailedMessage runat="server"/>
						<table class="ms-formtable" style="margin-top: 8px;" border="0" cellpadding="0" cellspacing="0" width="100%">
						<SharePoint:ChangeContentType runat="server"/>
						<SharePoint:FolderFormFields runat="server"/>
						<SharePoint:ListFieldIterator runat="server"/>
						<SharePoint:ApprovalStatus runat="server"/>
						<SharePoint:FormComponent TemplateName="AttachmentRows" ComponentRequiresPostback="false" runat="server"/>
						</table>
						<table cellpadding="0" cellspacing="0" width="100%" style="padding-top: 7px"><tr><td width="100%">
						<SharePoint:ItemHiddenVersion runat="server"/>
						<SharePoint:ParentInformationField runat="server"/>
						<SharePoint:InitContentType runat="server"/>
						<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
								<Template_Buttons>
									<SharePoint:CreatedModifiedInfo runat="server"/>
								</Template_Buttons>
								<Template_RightButtons>
									<SharePoint:SaveButton runat="server"/>
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
<SharePoint:RenderingTemplate id="TaskForm" runat="server">
	<Template>
		<table>
			<tr>
				<td style="height:350px; vertical-align:top">
					<span id='part1'>
						<SharePoint:EditDatesSelector RenderInEditDatesMode="false" runat="server">
							<SharePoint:InformationBar runat="server"/>
							<div id="listFormToolBarTop">
								<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbltop" RightButtonSeparator="&amp;#160;" runat="server">
										<Template_RightButtons>
											<SharePoint:NextPageButton runat="server"/>
											<SharePoint:SaveButton runat="server"/>
											<SharePoint:GoBackButton runat="server"/>
										</Template_RightButtons>
								</wssuc:ToolBar>
							</div>
							<SharePoint:FormToolBar runat="server"/>
						</SharePoint:EditDatesSelector>
						<SharePoint:ItemValidationFailedMessage runat="server"/>
						<SharePoint:EditDatesSelector RenderInEditDatesMode="true" runat="server">
							<div><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,BeautifulTimeline_HelperText%>" EncodeMethod='HtmlEncode'/></div>
						</SharePoint:EditDatesSelector>
						<table class="ms-formtable" style="margin-top: 8px;" border="0" cellpadding="0" cellspacing="0" width="100%">
							<SharePoint:EditDatesSelector RenderInEditDatesMode="false" runat="server">
								<SharePoint:ChangeContentType runat="server"/>
								<SharePoint:FolderFormFields runat="server"/>
								<SharePoint:TaskListFieldIterator TopFields="Title;#StartDate;#DueDate;#AssignedTo;#PercentComplete;#RelatedItems;#Description" runat="server"/>
								<SharePoint:ApprovalStatus runat="server"/>
								<SharePoint:FormComponent TemplateName="AttachmentRows" ComponentRequiresPostback="false" runat="server"/>
							</SharePoint:EditDatesSelector>
							<SharePoint:EditDatesSelector RenderInEditDatesMode="true" runat="server">
								<SharePoint:SpecifiedListFieldIterator ShownFields="StartDate;#DueDate" runat="server"/>
							</SharePoint:EditDatesSelector>
						</table>
						<table cellpadding="0" cellspacing="0" width="100%" style="padding-top: 7px"><tr><td width="100%">
							<SharePoint:EditDatesSelector RenderInEditDatesMode="false" runat="server">
								<SharePoint:ItemHiddenVersion runat="server"/>
								<SharePoint:ParentInformationField runat="server"/>
								<SharePoint:InitContentType runat="server"/>
							</SharePoint:EditDatesSelector>
							<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
								<Template_Buttons>
									<SharePoint:EditDatesSelector RenderInEditDatesMode="false" runat="server">
										<SharePoint:CreatedModifiedInfo runat="server"/>
									</SharePoint:EditDatesSelector>
								</Template_Buttons>
								<Template_RightButtons>
									<SharePoint:SaveButton runat="server"/>
									<SharePoint:GoBackButton runat="server"/>
								</Template_RightButtons>
						</wssuc:ToolBar>
						</td></tr></table>
					</span>
				</td>
				<SharePoint:EditDatesSelector RenderInEditDatesMode="false" runat="server">
					<td valign="top">
						<SharePoint:DelegateControl runat="server" ControlId="RelatedItemsPlaceHolder"/>
					</td>
				</SharePoint:EditDatesSelector>
			</tr>
		</table>
		<SharePoint:EditDatesSelector RenderInEditDatesMode="false" runat="server">
			<SharePoint:AttachmentUpload runat="server"/>
		</SharePoint:EditDatesSelector>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="BlogCommentsForm" runat="server">
	<Template>
		<table width="275" cellpadding="0" cellspacing="0" border="0">
				<tr><td><h3 class="ms-CommentHeader"><asp:Label id="BlogCommentsFormTitle" runat="server" Visible="true" Text="<%$Resources:wss,comments_AddComment%>"/></h3></td></tr>
		<tr><td>
		<span id='part1' style="padding-top: 10px">
			<SharePoint:InformationBar runat="server"/>
			<SharePoint:ItemValidationFailedMessage runat="server"/>
			<table class="ms-formtable" border="0" cellpadding="0" cellspacing="0" width="100%">
			<SharePoint:ChangeContentType runat="server"/>
			<SharePoint:FolderFormFields runat="server"/>
			<SharePoint:ListFieldIterator runat="server" ExcludeFields="PostTitle"/>
			<SharePoint:ApprovalStatus runat="server"/>
			<SharePoint:FormComponent TemplateName="AttachmentRows" ComponentRequiresPostback="false" runat="server"/>
			</table>
			<table cellpadding="0" cellspacing="0" width="100%" style="padding-top: 10px"><tr><td width="100%">
			<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
					<Template_RightButtons>
						<SharePoint:SubmitCommentButton CssClass="ms-ButtonHeightWidth2" runat="server" Text="<%$Resources:wss,tb_submitcomment%>"/>
					</Template_RightButtons>
			</wssuc:ToolBar>
			<SharePoint:InitContentType runat="server"/>
			<SharePoint:ItemHiddenVersion runat="server"/>
			</td></tr></table>
		</span>
		</td></tr></table>
		<SharePoint:AttachmentUpload runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="BlogForm" runat="server">
	<Template>
		<span id='part1'>
			<SharePoint:InformationBar runat="server"/>
			<div id="listFormToolBarTop">
			<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbltop" RightButtonSeparator="&amp;#160;" runat="server">
					<Template_RightButtons>
						<SharePoint:SaveAsDraftButton Text="<%$Resources:wss,tb_saveasdraft%>" runat="server"/>
						<SharePoint:PublishButton Text="<%$Resources:wss,tb_publish%>" runat="server"/>
						<SharePoint:GoBackButton runat="server"/>
					</Template_RightButtons>
			</wssuc:ToolBar>
			</div>
			<SharePoint:FormToolBar runat="server"/>
			<SharePoint:ItemValidationFailedMessage runat="server"/>
			<table class="ms-formtable" style="margin-top: 8px;" border="0" cellpadding="0" cellspacing="0" width="100%">
			<SharePoint:ChangeContentType runat="server"/>
			<SharePoint:FolderFormFields runat="server"/>
			<SharePoint:ListFieldIterator runat="server"/>
			<SharePoint:ApprovalStatus runat="server"/>
			<SharePoint:FormComponent TemplateName="AttachmentRows" ComponentRequiresPostback="false" runat="server"/>
			</table>
			<table cellpadding="0" cellspacing="0" width="100%" style="margin-top: 10px;"><tr><td class="ms-formline"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></td></tr></table>
			<table cellpadding="0" cellspacing="0" width="100%" style="padding-top: 7px"><tr><td width="100%">
			<SharePoint:ItemHiddenVersion runat="server"/>
			<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
					<Template_Buttons>
						<SharePoint:InitContentType runat="server"/>
						<SharePoint:CreatedModifiedInfo runat="server"/>
					</Template_Buttons>
					<Template_RightButtons>
						<SharePoint:SaveAsDraftButton Text="<%$Resources:wss,tb_saveasdraft%>" runat="server"/>
						<SharePoint:PublishButton Text="<%$Resources:wss,tb_publish%>" runat="server"/>
						<SharePoint:GoBackButton runat="server"/>
					</Template_RightButtons>
			</wssuc:ToolBar>
			</td></tr></table>
		</span>
		<SharePoint:AttachmentUpload runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="SurveyForm" runat="server">
	<Template>
		<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbltop" RightButtonSeparator="&amp;#160;" runat="server">
			<Template_RightButtons>
				<SharePoint:NextPageButton runat="server"/>
				<SharePoint:SaveButton Text="<%$Resources:wss,tb_survey_save%>" accesskey="<%$Resources:wss,tb_survey_save_AK%>" runat="server"/>
				<SharePoint:MultiPageGoBackButton runat="server"/>
			 </Template_RightButtons>
		</wssuc:ToolBar>
		<SharePoint:FormToolBar runat="server"/>
		<SharePoint:ItemValidationFailedMessage runat="server"/>
		<table class="ms-formtable" style="margin-top: 8px;" border="0" cellpadding="0" cellspacing="0" width="100%">
		<SharePoint:SurveyFieldIterator runat="server"/>
		</table>
		<table cellpadding="0" cellspacing="0" width="100%"><tr><td class="ms-formline"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></td></tr></table>
		<table cellpadding="0" cellspacing="0" width="100%" style="padding-top: 7px"><tr><td width="100%">
		<SharePoint:ItemHiddenVersion runat="server"/>
		<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
				<Template_Buttons>
						<SharePoint:InitContentType runat="server"/>
						<SharePoint:CreatedModifiedInfo runat="server"/>
				</Template_Buttons>
				<Template_RightButtons>
					<SharePoint:NextPageButton runat="server"/>
					<SharePoint:SaveButton Text="<%$Resources:wss,tb_survey_save%>" accesskey="<%$Resources:wss,tb_survey_save_AK%>" runat="server"/>
					<SharePoint:MultiPageGoBackButton runat="server"/>
				</Template_RightButtons>
		</wssuc:ToolBar>
		</td></tr></table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="AttendeesEditForm" runat="server">
	<Template>
		<span id='part1'>
			<SharePoint:InformationBar runat="server"/>
			<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbltop" RightButtonSeparator="&amp;#160;" runat="server">
					<Template_RightButtons>
						<SharePoint:NextPageButton runat="server"/>
						<SharePoint:SaveButton runat="server"/>
						<SharePoint:GoBackButton runat="server"/>
					</Template_RightButtons>
			</wssuc:ToolBar>
			<SharePoint:FormToolBar runat="server"/>
			<table class="ms-formtable" style="margin-top: 8px;" border="0" cellpadding="0" cellspacing="0" width="100%">
			<SharePoint:ChangeContentType runat="server"/>
			<SharePoint:FolderFormFields runat="server"/>
			<SharePoint:ListFieldIterator runat="server"/>
			<SharePoint:ApprovalStatus runat="server"/>
			<SharePoint:FormComponent TemplateName="AttachmentRows" ComponentRequiresPostback="false" runat="server"/>
			</table>
			<table cellpadding="0" cellspacing="0" width="100%"><tr><td class="ms-formline"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></td></tr></table>
			<SharePoint:AttendeeEmailResponse runat="server"/>
			<table cellpadding="0" cellspacing="0" width="100%" style="padding-top: 7px"><tr><td width="100%">
			<SharePoint:ItemHiddenVersion runat="server"/>
			<SharePoint:ParentInformationField runat="server"/>
			<SharePoint:InitContentType runat="server"/>
			<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
					<Template_Buttons>
						<SharePoint:CreatedModifiedInfo runat="server"/>
					</Template_Buttons>
					<Template_RightButtons>
						<SharePoint:SaveButton runat="server"/>
						<SharePoint:GoBackButton runat="server"/>
					</Template_RightButtons>
			</wssuc:ToolBar>
			</td></tr></table>
		</span>
		<SharePoint:AttachmentUpload runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="AttendeeEmailResponse" runat="server">
	<Template>
		<table width="100%">
			<tr><td class="ms-descriptiontext" colspan="2">
				<asp:CheckBox id="cbSendEmail" runat="server"/>
			</td></tr>
			<tr><td colspan="2">
				<table bgcolor="#D4D0C8" cellpadding="5" width="100%">
					<COLGROUP><COL width="1" /></COLGROUP>
					<tr>
						<td nowrap="nowrap" class="ms-descriptiontext" align="right"><nobr>
							<asp:Label id="lblSubjectTitle" runat="server" />
						</nobr></td>
						<td class="ms-descriptiontext">
							<asp:Label id="lblSubject" runat="server" />
						</td>
					</tr>
					<tr>
						<td nowrap="nowrap" class="ms-descriptiontext" align="right" valign="top"><nobr>
							<asp:Label id="lblBodyTitle" runat="server" />
						</nobr></td>
						<td class="ms-descriptiontext">
							<asp:Label id="lblBody" runat="server" /><br/>
							<asp:TextBox id="txtEmailBody" TextMode="multiline" title="<%$Resources:wss,mws_mtgAttendeeEmailBody%>" Wrap="true" rows="8" class="ms-long" style="width:100%;" runat="server" />
						</td>
					</tr>
				</table>
			</td></tr>
		</table>
		<input type="hidden" id="MtgAttendeeEmailBodyPhrase" name="MtgAttendeeEmailBodyPhrase"/>
		<input type="hidden" id="MtgAttendeeEmailSubjectPhrase" name="MtgAttendeeEmailSubjectPhrase"/>
		<input type="hidden" id="OWS:Status:Dropdown" name="OWS:Status:Dropdown"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="AttachmentRows" runat="server">
	<Template>
		<tr id="idAttachmentsRow">
			<SharePoint:CompositeField FieldName="Attachments" runat="server"/>
			<SharePoint:ScriptBlock runat="server">
				if (typeof ShowAttachmentRows == "function")
					ShowAttachmentRows();
			</SharePoint:ScriptBlock>
		</tr>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="AttachmentUpload" runat="server">
	<Template>
		<input type="hidden" name='attachmentsToBeRemovedFromServer'/>
		<input type="hidden" name='RectGifUrl' value="/_layouts/15/images/rect.gif?rev=23"/>
		<span id='partAttachment' style='display:none'>
		<table cellspacing="0" cellpadding="0" border="0" width="100%">
		<tbody>
		<tr>
			<td class="ms-descriptiontext" style="padding-bottom: 8px;" colspan="4" valign="top">
			<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,form_attachments_description%>" EncodeMethod='HtmlEncode'/>
			</td>
		</tr>
		<tr>
		<td width="190px" class="ms-formlabel" valign="top" height="50px"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,form_attachments_name%>" EncodeMethod='HtmlEncode'/></td>
		<td class="ms-formbody" valign="bottom" height="15" id="attachmentsOnClient">
			<span dir="ltr">
			 <input type="file" name="fileupload0" id="onetidIOFile" class="ms-fileinput" size="56" title="Name"></input>
			</span>
		</td>
		</tr>
		<tr>
			<td class="ms-formline" colspan="4" height="1"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></td>
		</tr>
		<tr>
			<td colspan="4" height="10"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></td>
		</tr>
		<tr>
		<td class="ms-attachUploadButtons" colspan="4">
			<input class="ms-ButtonHeightWidth" id="attachOKbutton" type="BUTTON" onclick='OkAttach()' value="OK"/>
			<span id="idSpace" class="ms-SpaceBetButtons"></span>
			<input class="ms-ButtonHeightWidth" id="attachCancelButton" type="BUTTON" onclick='CancelAttach()' value="<%$Resources:wss,form_cancel%>" accesskey="<%$Resources:wss,form_cancel_ak%>" runat="server" />
		</td>
		</tr>
		</tbody>
		</table>
		<SharePoint:ScriptBlock runat="server">
			if (document.getElementById("onetidIOFile") != null)
				document.getElementById("onetidIOFile").title = "<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,form_attachments_name%>' EncodeMethod='EcmaScriptStringLiteralEncode'/>";
			if (document.getElementById("attachOKbutton") != null)
				document.getElementById("attachOKbutton").value = "<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,form_ok%>' EncodeMethod='EcmaScriptStringLiteralEncode'/>";
		</SharePoint:ScriptBlock>
		</span>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CSRAttachmentUpload" runat="server">
	<Template>
		<div id="csrAttachmentUploadDiv"></div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="RequiredFieldMessage" runat="server">
	<Template>
		<span id="reqdFldTxt" style="white-space: nowrap;padding-right: 3px;" class="ms-descriptiontext"><asp:literal runat="server" text="<%$Resources:wss,form_required_field%>" /></span>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CreatedModifiedInfo" runat="server">
	<Template>
		<table cellpadding="0" cellspacing="0">
		  <tr><td nowrap="nowrap" class="ms-descriptiontext" id="onetidinfoblock1">
				<SharePoint:FormAuthorEditorFormattedString
					UserOnlyFormatText="<%$Resources:wss,form_createdby_user%>"
					AppOnlyFormatText="<%$Resources:wss,form_createdby_app%>"
					UserAppFormatText="<%$Resources:wss,form_createdby_user_app%>"
					IsAuthorField="true"
					runat="server">
					<SharePoint:FormField ControlMode="Display" FieldName="Created" DisableInputFieldLabel="true" runat="server"/>
					<SharePoint:FormField ControlMode="Display" FieldName="Author" DisableInputFieldLabel="true" runat="server"/>
					<SharePoint:CreationType runat="server"/>
					<SharePoint:FormAppInfo ControlMode="Display" FieldName="AppAuthor" runat="server" />
				</SharePoint:FormAuthorEditorFormattedString>
			</td></tr>
			<tr><td nowrap="nowrap" class="ms-descriptiontext" id="onetidinfoblock2">
				<SharePoint:FormAuthorEditorFormattedString
					UserOnlyFormatText="<%$Resources:wss,form_modifiedby_user%>"
					AppOnlyFormatText="<%$Resources:wss,form_modifiedby_app%>"
					UserAppFormatText="<%$Resources:wss,form_modifiedby_user_app%>"
					IsAuthorField="false"
					runat="server">
					<SharePoint:FormField ControlMode="Display" FieldName="Modified" DisableInputFieldLabel="true" runat="server"/>
					<SharePoint:FormField ControlMode="Display" FieldName="Editor" DisableInputFieldLabel="true" runat="server"/>
					<SharePoint:FormAppInfo ControlMode="Display" FieldName="AppEditor" runat="server" />
				</SharePoint:FormAuthorEditorFormattedString>
			</td></tr>
		</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CreatedModifiedVersionInfo" runat="server">
	<Template>
		<table cellpadding="0" cellspacing="0">
		<tr><td class="ms-descriptiontext" id="onetidinfoblockV"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,form_version%>" EncodeMethod='HtmlEncode'/>
			<SharePoint:FormField ControlMode="Display" FieldName="_UIVersionString" runat="server"/>
		   </td></tr>
		  <tr><td nowrap="nowrap" class="ms-descriptiontext" id="onetidinfoblock1">
				<SharePoint:FormAuthorEditorFormattedString
					UserOnlyFormatText="<%$Resources:wss,form_createdby_user%>"
					AppOnlyFormatText="<%$Resources:wss,form_createdby_app%>"
					UserAppFormatText="<%$Resources:wss,form_createdby_user_app%>"
					IsAuthorField="true"
					runat="server">
					<SharePoint:FormField ControlMode="Display" FieldName="Created" runat="server"/>
					<SharePoint:FormField ControlMode="Display" FieldName="Author" runat="server"/>
					<SharePoint:CreationType runat="server"/>
					<SharePoint:FormAppInfo ControlMode="Display" FieldName="AppAuthor" runat="server" />
				</SharePoint:FormAuthorEditorFormattedString>
			</td></tr>
			<tr><td nowrap="nowrap" class="ms-descriptiontext" id="onetidinfoblock2">
				<SharePoint:FormAuthorEditorFormattedString
					UserOnlyFormatText="<%$Resources:wss,form_modifiedby_user%>"
					AppOnlyFormatText="<%$Resources:wss,form_modifiedby_app%>"
					UserAppFormatText="<%$Resources:wss,form_modifiedby_user_app%>"
					IsAuthorField="false"
					runat="server">
					<SharePoint:FormField ControlMode="Display" FieldName="Modified" runat="server"/>
					<SharePoint:FormField ControlMode="Display" FieldName="Editor" runat="server"/>
					<SharePoint:FormAppInfo ControlMode="Display" FieldName="AppEditor" runat="server" />
				</SharePoint:FormAuthorEditorFormattedString>
			</td></tr>
		</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CreatedVersionInfo" runat="server">
	<Template>
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr><td class="ms-descriptiontext" id="onetidinfoblockV"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,form_version%>" EncodeMethod='HtmlEncode'/> <SharePoint:FormField ControlMode="Display" FieldName="_UIVersionString" runat="server"/> </td></tr>
			<tr><td nowrap="nowrap" class="ms-descriptiontext" id="onetidinfoblock1">
				<SharePoint:FormAuthorEditorFormattedString
					UserOnlyFormatText="<%$Resources:wss,form_createdby_user%>"
					AppOnlyFormatText="<%$Resources:wss,form_createdby_app%>"
					UserAppFormatText="<%$Resources:wss,form_createdby_user_app%>"
					IsAuthorField="true"
					runat="server">
					<SharePoint:FormField ControlMode="Display" FieldName="Modified" runat="server"/>
					<SharePoint:FormField ControlMode="Display" FieldName="Editor" runat="server"/>
					<SharePoint:CreationType runat="server"/>
					<SharePoint:FormAppInfo ControlMode="Display" FieldName="AppEditor" runat="server" />
				</SharePoint:FormAuthorEditorFormattedString>
		   </td></tr>
		</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="DocumentTransformersInfo" runat="server">
	<Template>
		<table id="doctransforms" runat="server" border="0" cellpadding="2" cellspacing="0" width="100%"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="InformationBar" runat="server">
	<Template>
		<SharePoint:GenericInformationBar runat="server">
			<Template_Controls>
				<SharePoint:FileUploadedMessage runat="server"/>
				<SharePoint:ApprovalMessage runat="server"/>
				<SharePoint:EmailCalendarMessage runat="server"/>
				<Sharepoint:CopySourceInfo runat="server" />
				<Sharepoint:AssignToEmailMessage runat="server" />
			</Template_Controls>
		</SharePoint:GenericInformationBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="ApprovalStatus" runat="server">
	<Template>
	   <tr>
		<td nowrap="true" valign="top" class="ms-formlabel"><SharePoint:FieldLabel FieldName="_ModerationStatus" runat="server"/></td>
		<td valign="top" class="ms-formbody">
		<SharePoint:FormField ControlMode="Display" FieldName="_ModerationStatus" runat="server"/>
		<br/>
		<SharePoint:FormField ControlMode="Display" FieldName="_ModerationComments" runat="server"/>
		</td>
	   </tr>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="ChangeContentType" runat="server">
	<Template>
		<tr>
		<td nowrap="true" valign="top" class="ms-formlabel"><h3 class="ms-standardheader"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,form_content_type%>" EncodeMethod='HtmlEncode'/></h3></td>
		<td valign="top" class="ms-formbody"><asp:DropDownList id="ContentTypeChoice" ToolTip="<%$Resources:wss,form_content_type%>" runat="server"/><br/>
		<asp:Label id="ContentTypeDescription" runat="server"/></td>
		</tr>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="InitContentType" runat="server">
	<Template>
		<table cellpadding="0" cellspacing="0">
		<tr><td nowrap="nowrap" class="ms-descriptiontext"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,form_content_type%>" EncodeMethod='HtmlEncode'/>: <asp:Label id="InitContentType" runat="server" /></td></tr>
		</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="ItemHiddenVersion" runat="server">
	<Template>
		<input id="owshiddenversion" type="HIDDEN" name="owshiddenversion" runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="WikiMiniConsole" runat="server">
	<Template>
		<div style="position:relative;top:0;left:0;">
		<div class="ms-wikieditouter ms-wikieditsecond ms-wikieditthird">
					<!-- this is for the orange cast inside the menu -->
					<table class="ms-wikieditorange" cellspacing="0" cellpadding="0" border="0" width="100%">
					<tr>
						<td class="ms-wikieditorangeinnera" style=";width:100%;">&#160;</td>
					</tr>
					<tr><td>
						<wssuc:ToolBar CssClass="ms-wikitoolbar" runat="server">
						<Template_Buttons>
							<SharePoint:WikiEditItemButton Text= "<%$Resources:wss,siteactions_wikieditpage%>" runat="server"/>
							<SharePoint:WikiPageHistoryButton Text= "<%$Resources:wss,versiondiff_sitemaptitle%>" ButtonID="WikiPageHistory" RibbonCommand="Ribbon.WikiPageTab.Manage.Versions.Menu.Versions.VersionDiff" runat="server"/>
							<SharePoint:WikiIncomingLinksButton Text= "<%$Resources:wss,siteactions_viewincominglinks%>" ButtonID="WikiIncomingLinks" RibbonCommand="Ribbon.WikiPageTab.PageActions.IncomingLinks" runat="server"/>
						</Template_Buttons>
						</wssuc:ToolBar>
					</td></tr></table>
		</div></div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="BackLinksDisplay" runat="server">
	<Template>
		<table border="0" cellpadding="0px" cellspacing="0px" style="width: 100%; padding: 0px 11px 0px 11px;">
			<SharePoint:BackLinksIterator id="BackLinksIterator" runat="server"/>
		</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="BackLinksIterator" runat="server">
	<Template>
		<tr style="padding-top: 11px">
			<td class="ms-vb"><asp:HyperLink id="BackLink" runat="server"/></td>
		</tr>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="RecentChangesMenu" runat="server">
	<Template>
		<div class="ms-quicklaunchouter ms-core-sideNavBox-removeLeftMargin">
			<div class="ms-core-listMenu-verticalBox">
				<ul class="root ms-core-listMenu-root static">
					<li class="static">
						<asp:HyperLink id="RecentChangesHeaderLink" runat="server" class="static menu-item ms-core-listMenu-item"><span class="additional-background"><span class="menu-item-text"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,recent_changes_15%>" EncodeMethod='HtmlEncode'/></span></span></asp:HyperLink>
						<ul class="static" style="margin-bottom: 0px;">
							<SharePoint:RecentChangesIterator id="RecentChangesIterator" runat="server"/>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<hr class="ms-core-listMenu-separatorLine" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="RecentChangesMenuV4" runat="server">
	<Template>
		<div class="ms-quicklaunchouter">
			<div class="ms-quickLaunch s4-ql s4-recentchanges">
				<div class="menu vertical menu-vertical">
					<ul class="root static" style="margin: 0px;">
						<li class="static">
							<asp:HyperLink id="RecentChangesHeaderLink" runat="server" class="static menu-item"><span class="additional-background"><span class="menu-item-text"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,recent_changes%>" EncodeMethod='HtmlEncode'/></span></span></asp:HyperLink>
							<ul class="static" style="margin-bottom: 0px;">
								<SharePoint:RecentChangesIterator id="RecentChangesIterator" Version="4" runat="server"/>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="RecentChangesIterator" runat="server">
	<Template>
		<li class="static">
			<asp:HyperLink id="RecentChange" runat="server" class="static menu-item ms-core-listMenu-item"/>
		</li>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="RecentChangesIteratorV4" runat="server">
	<Template>
		<li class="static">
			<asp:HyperLink id="RecentChange" runat="server" class="static menu-item"/>
		</li>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="DiffSelectorMenu" runat="server">
	<Template>
		<div class="ms-laction" style="width:100%; border-top: none; padding-left: 0px;">
			<div class="s4-ql ms-ql-additionaltopsection">
				<div class="menu vertical menu-vertical">
					<ul class="root static">
						<li class="static">
							<span class="static menu-item">
								<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,versions%>" EncodeMethod='HtmlEncode'/>
							</span>
							<ul class="static" id="DiffSelectorTable">
								<SharePoint:DiffSelectorIterator id="DiffSelectorIterator" runat="server"/>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="DiffSelectorMenuV3" runat="server">
	<Template>
		<div class="ms-laction" style="width:100%">
			<div class="ms-lactionheader">
				<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,versions%>" EncodeMethod='HtmlEncode'/>
			</div>
			<div>
				<table id="DiffSelectorTable" class="ms-lactiontable" cellpadding="0" cellspacing="0" border="0">
					<SharePoint:DiffSelectorIterator id="DiffSelectorIterator" runat="server"/>
				</table>
			</div>
		</div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="LastModifyUser" runat="server">
	<Template>
	  <SharePoint:FormattedString FormatText="<%$Resources:wss,wikidiff_lastmodifiedby%>" runat="server">
		<SharePoint:FormField id="modifiedFieldCtrl" ControlMode="Display" FieldName="Modified" runat="server"/>
		<SharePoint:UserField id="editorFieldCtrl" ControlMode="Display" FieldName="Editor" runat="server"/>
	  </SharePoint:FormattedString>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="DiffSelectorIterator" runat="server">
	<Template>
		<li class="static">
			<asp:HyperLink id="DiffVersion" runat="server" class="static menu-item" />
		</li>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="DiffSelectorIteratorV3" runat="server">
	<Template>
		<asp:TableRow runat="server">
			<asp:TableCell  id="DiffVersionCell" runat="server">
				<table cellpadding="0" cellspacing="0">
					<tr>
						<td class="ms-lactionitem"><asp:HyperLink id="DiffVersion" runat="server"/></td>
					</tr>
				</table>
			</asp:TableCell>
		</asp:TableRow>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="DiffSelectorDropdownList" runat="server">
	<Template>
		<asp:TableRow runat="server">
			<asp:TableCell runat="server">
				<table cellpadding="0" cellspacing="0" style="margin-left: 11px;">
					<tr>
						<td class="ms-lactionitem"><asp:Label id="VersionDiffDropDownListLabel" TEXT="<%$Resources:wss,wikidiff_comparetext%>" runat="server"/></td>
					</tr>
					<tr>
						<td class="ms-lactionitem"><asp:DropDownList id="VersionDiffDropDownList" runat="server"/></td>
					</tr>
				</table>
			</asp:TableCell>
		</asp:TableRow>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="DiffSelectorDropdownListV3" runat="server">
	<Template>
		<asp:TableRow runat="server">
			<asp:TableCell runat="server">
				<table cellpadding="0" cellspacing="0">
					<tr>
						<td class="ms-lactionitem"><asp:Label id="VersionDiffDropDownListLabel" TEXT="<%$Resources:wss,wikidiff_comparetext%>" runat="server"/></td>
					</tr>
					<tr>
						<td class="ms-lactionitem"><asp:DropDownList id="VersionDiffDropDownList" runat="server"/></td>
					</tr>
				</table>
			</asp:TableCell>
		</asp:TableRow>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="VersionDiffIterator" runat="server">
	<Template>
		<div class="ms-wikicontent ms-diffmargin">
			<SharePoint:VersionDiff id="VersionDiffControl" runat="server" />
		</div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="VersionDiffIteratorV3" runat="server">
	<Template>
		<div class="ms-wikicontent">
			<SharePoint:VersionDiff id="VersionDiffControl" runat="server" />
			<p></p>
		</div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="VersionDiffField" runat="server">
	<Template>
		<span class="ms-wikifieldheader">
			<asp:Label id="VersionDiffFieldTitle" runat="server" />
		</span>
		<div class="ms-partline" style="height: 1px; width:100%; margin-bottom:10px;"></div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="WikiReport" runat="server">
	<Template>
		<table border="0" cellpadding="0" cellspacing="0" width="100%" class="ms-v4propertysheetspacing">
			<SharePoint:WikiReportIterator id="WikiReportIterator" runat="server"/>
		</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="WikiReportIterator" runat="server">
	<Template>
		<tr>
			<td>
				<p>
					<asp:HyperLink id="ReportLink" runat="server"/><br />
					<span class="ms-descriptiontext">
						<SharePoint:FormattedString FormatText="<%$Resources:wss,form_modifiedby%>" runat="server">
							<asp:Label id="ReportChangeTime" runat="server"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,unknown_time%>" EncodeMethod='HtmlEncode'/></asp:Label>
							<asp:Label id="ReportChangeEditor" runat="server"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,unknown_user%>" EncodeMethod='HtmlEncode'/></asp:Label>
						</SharePoint:FormattedString>
					</span>
				</p>
				<p>
				</p>
			</td>
		</tr>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="DocumentLibraryFormCore" runat="server">
	<Template>
			<table class="ms-formtable" style="margin-top: 8px;" border="0" cellpadding="0" id="formTbl" cellspacing="0" width="100%">
			<SharePoint:ItemValidationFailedMessage runat="server"/>
			<SharePoint:ChangeContentType runat="server"/>
			<SharePoint:DocumentLibraryFields runat="server"/>
			<SharePoint:ApprovalStatus runat="server"/>
			</table>
			<SharePoint:WebPartPageMaintenanceMessage runat="server"/>
			<SharePoint:DocumentTransformersInfo runat="server"/>
			<table cellpadding="0" cellspacing="0" width="100%" style="padding-top: 7px"><tr><td width="100%">
			<SharePoint:ItemHiddenVersion runat="server"/>
			<SharePoint:InitContentType runat="server"/>
			<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
				<Template_Buttons>
					<SharePoint:CreatedModifiedInfo runat="server"/>
				</Template_Buttons>
				<Template_RightButtons>
					<SharePoint:SaveButton runat="server"/>
					<SharePoint:GoBackButton runat="server"/>
				</Template_RightButtons>
			</wssuc:ToolBar>
			</td></tr></table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="DocumentLibraryForm" runat="server">
	<Template>
			<SharePoint:InformationBar runat="server"/>
			<div id="listFormToolBarTop">
			<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbltop" RightButtonSeparator="&amp;#160;" runat="server">
				<Template_RightButtons>
					<SharePoint:SaveButton runat="server"/>
					<SharePoint:GoBackButton runat="server"/>
				</Template_RightButtons>
			</wssuc:ToolBar>
			</div>
			<SharePoint:FormToolBar runat="server"/>
			<table width="100%">
				<tr>
					<td valign="top" width="100%">
						<SharePoint:FormComponent TemplateName="DocumentLibraryFormCore" ComponentRequiresPostback="false" runat="server"/>
					</td>
					<td valign="top">
						<SharePoint:DelegateControl runat="server" ControlId="RelatedItemsPlaceHolder"/>
					</td>
				</tr>
			</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="WebPartPageMaintenanceMessage" runat="server">
	<Template>
		<table width="100%">
			<tr>
			<td class="ms-formbody" valign="top">
				<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,doclibtemplates_web_part_page_maintenance_message%>" EncodeMethod='HtmlEncode'/><br />
				<asp:HyperLink id="WebPartMaintenancePageLink"
				  NavigateUrl=""
				  Text="<%$Resources:wss,doclibtemplates_web_part_page_maintenance_link_text%>"
				  rel="sp_DialogLinkNavigate"
				  runat="server"/>
			</td>
			</tr>
		</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="FileFormFields" runat="server">
	<Template>
			<SharePoint:ListFieldIterator runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="FolderFormFields" runat="server">
	<Template>
		   <SharePoint:ScriptBlock runat="server">
			   SetUploadPageTitle();
		   </SharePoint:ScriptBlock>
		   <tr><SharePoint:CompositeField FieldName="FileLeafRef" runat="server"/></tr>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="UploadFormToolBar" runat="server">
	<Template>
		<wssuc:ToolBar CssClass="ms-toolbar" id="toolBarTbl" runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="DocLibEditFormToolBar" runat="server">
	<Template>
		<SharePoint:ScriptBlock runat="server">
			recycleBinEnabled = <SharePoint:ProjectProperty Property="RecycleBinEnabled" runat="server"/>;
			cascadeDeleteWarningMessage = '<SharePoint:ProjectProperty Property="CascadeDeleteWarningMessage" runat="server"/>';
		</SharePoint:ScriptBlock>
		<wssuc:ToolBar CssClass="ms-toolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
				<Template_Buttons>
					<SharePoint:DeleteItemButton runat="server"/>
				 </Template_Buttons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="DocLibDisplayFormToolBar" runat="server">
	<Template>
		<SharePoint:ScriptBlock runat="server">
			recycleBinEnabled = <SharePoint:ProjectProperty Property="RecycleBinEnabled" runat="server"/>;
		</SharePoint:ScriptBlock>
		<wssuc:ToolBar CssClass="ms-toolbar" id="toolBarTbl" runat="server" FocusOnToolbar=true>
				<Template_Buttons>
					<SharePoint:EnterFolderButton runat="server"/>
					<SharePoint:EditItemButton runat="server"/>
					<SharePoint:DeleteItemButton runat="server"/>
					<SharePoint:ManagePermissionsButton runat="server"/>
					<SharePoint:CheckInCheckOutButton runat="server"/>
					<SharePoint:VersionHistoryButton runat="server"/>
					<SharePoint:ManageCopiesButton runat="server"/>
					<SharePoint:WorkflowsButton runat="server"/>
					<SharePoint:AlertMeButton runat="server"/>
					<SharePoint:ApprovalButton runat="server"/>
				 </Template_Buttons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="DocLibDisplayFormVersionToolBar" runat="server">
	<Template>
		<SharePoint:ScriptBlock runat="server">
			recycleBinEnabled = <SharePoint:ProjectProperty Property="RecycleBinEnabled" runat="server"/>;
		</SharePoint:ScriptBlock>
		<wssuc:ToolBar id="toolBarTbl" runat="server" FocusOnToolbar=true>
				<Template_Buttons>
					<SharePoint:DeleteItemVersionButton runat="server"/>
					<SharePoint:RestoreItemVersionButton runat="server"/>
					<SharePoint:VersionHistoryButton runat="server"/>
				 </Template_Buttons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="SolutionsGalleryActivate" runat="server">
	<Template>
		<SharePoint:FormToolBar runat="server">
			<Template>
				<wssuc:ToolBar id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
					<Template_Buttons>
						<SharePoint:DeleteItemButton runat="server"/>
						<SharePoint:ActivateSolutionItemButton runat="server"/>
						<SharePoint:DeactivateSolutionItemButton runat="server"/>
						<SharePoint:UpgradeSolutionItemButton runat="server"/>
					 </Template_Buttons>
				</wssuc:ToolBar>
			</Template>
		</SharePoint:FormToolBar>
		<SharePoint:FormComponent TemplateName="DocumentLibraryFormCore" ComponentRequiresPostback="false" runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="TemplateGalleryEditForm" runat="server">
	<Template>
		<SharePoint:FormToolBar runat="server">
			<Template>
				<wssuc:ToolBar id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
					<Template_Buttons>
						<SharePoint:DeleteItemButton runat="server"/>
						<SharePoint:CheckInCheckOutButton runat="server"/>
						<SharePoint:VersionHistoryButton runat="server"/>
					</Template_Buttons>
				</wssuc:ToolBar>
			</Template>
		</SharePoint:FormToolBar>
		<SharePoint:FormComponent TemplateName="DocumentLibraryFormCore" ComponentRequiresPostback="false" runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="WebPartGalleryEditForm" runat="server">
	<Template>
		<SharePoint:FormToolBar runat="server">
			<Template>
				<wssuc:ToolBar id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
					<Template_Buttons>
						<SharePoint:DeleteItemButton runat="server"/>
						<SharePoint:ExportWebPartButton runat="server"/>
						<SharePoint:ViewWebPartXmlButton runat="server"/>
						<SharePoint:ManagePermissionsButton runat="server"/>
					</Template_Buttons>
				</wssuc:ToolBar>
			</Template>
		</SharePoint:FormToolBar>
		<SharePoint:FormComponent TemplateName="DocumentLibraryFormCore" ComponentRequiresPostback="false" runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="WikiEditForm" runat="server">
	<Template>
			<SharePoint:InformationBar runat="server" />
			<SharePoint:FormToolBar runat="server">
				<Template>
					<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbltop"
							RightButtonSeparator="&amp;#160;" runat="server">
						<Template_RightButtons>
							<SharePoint:SaveButton runat="server"/>
							<SharePoint:GoBackButton runat="server"/>
						</Template_RightButtons>
					</wssuc:ToolBar>
				</Template>
			</SharePoint:FormToolBar>
			<SharePoint:FormToolBar runat="server"/>
			<table class="ms-formtable" style="margin-top: 8px;" border="0" cellpadding="0" id="formTbl" cellspacing="0" width="100%">
				<SharePoint:UIVersionedContent UIVersion="3" runat="server"><ContentTemplate>
					<tr>
						<td valign="top" class="ms-formbody" style="width:100%;">
							<b><SharePoint:FieldLabel FieldName="FileLeafRef" runat="server"/></b>&#160;
							<SharePoint:WikiFileField FieldName="FileLeafRef" AlternateTemplateName="FileFieldEditNoExtension" runat="server"/>
						</td>
					</tr>
					<SharePoint:ListFieldIterator TemplateName="WideFieldListIterator" ExcludeFields="FileLeafRef" runat="server"/>
				</ContentTemplate></SharePoint:UIVersionedContent>
				<SharePoint:UIVersionedContent UIVersion="4" runat="server"><ContentTemplate>
					<SharePoint:ListFieldIterator TemplateName="WideFieldListIterator" ExcludeFields="WikiField" runat="server"/>
				</ContentTemplate></SharePoint:UIVersionedContent>
			</table>
			<SharePoint:UIVersionedContent UIVersion="4" runat="server"><ContentTemplate>
			   <SharePoint:WebPartPageMaintenanceMessage runat="server"/>
			</ContentTemplate></SharePoint:UIVersionedContent>
			<table cellpadding="0" cellspacing="0" width="100%"><tr><td class="ms-formline"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></td></tr></table>
			<table cellpadding="0" cellspacing="0" width="100%" style="padding-top: 7px"><tr><td width="100%">
				<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
					<Template_RightButtons>
						<SharePoint:SaveButton runat="server"/>
						<SharePoint:GoBackButton runat="server"/>
					</Template_RightButtons>
				</wssuc:ToolBar>
				 <SharePoint:ItemHiddenVersion runat="server"/>
			</td></tr></table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="WideFieldListIterator" runat="server">
	<Template>
		<tr>
			<SharePoint:CompositeField runat="server">
				<Template>
					<td valign="top" class="ms-formbody" style="width:100%;">
					<!-- FieldName="<SharePoint:FieldProperty PropertyName="Title" runat="server"/>"
						 FieldInternalName="<SharePoint:FieldProperty PropertyName="InternalName" runat="server"/>"
						 FieldType="SPField<SharePoint:FieldProperty PropertyName="Type" runat="server"/>"
					  -->
						<b><SharePoint:FieldLabel runat="server"/></b><br>
						<SharePoint:FormField runat="server"/>
						<SharePoint:FieldDescription runat="server"/>
					</td>
				</Template>
			</SharePoint:CompositeField>
		</tr>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="TextField" runat="server">
	<Template>
		<asp:TextBox id="TextField" maxlength="255" runat="server"/><br />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="NoteField" runat="server">
	<Template>
		<asp:TextBox id="TextField" TextMode="MultiLine" runat="server"/><br />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="RichTextField" runat="server">
	<Template>
		<span dir="<%$Resources:wss,multipages_direction_dir_value%>" runat="server">
			<asp:TextBox id="TextField" TextMode="MultiLine" runat="server"/>
			<input id="TextField_spSave" type="HIDDEN" name="TextField_spSave" runat="server"/>
		</span>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="NumberField" runat="server">
	<Template>
		<asp:TextBox id="TextField"  size="11" runat="server"/><br />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="PercentageNumberField" runat="server">
	<Template>
		<asp:TextBox id="TextField"  size="11" runat="server"/>%<br />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CurrencyField" runat="server">
	<Template>
		<asp:TextBox id="TextField"  size="11" runat="server"/><br />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="DateTimeField" runat="server">
	<Template>
		<SharePoint:DateTimeControl id="DateTimeField" runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="BooleanField" runat="server">
	<Template>
		<asp:CheckBox id="BooleanField" runat="server"/><br />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="UserField" runat="server">
	<Template>
		<input type="hidden" runat="server" id="HiddenUserFieldValue"/>
		<SharePoint:PeopleEditor id="UserField" runat="server"
			ValidatorEnabled="true"
			/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="RelatedItemsFieldControl" runat="server">
<Template>
	<asp:Panel id="MainPanel" runat="server"/>
</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="RelatedItemsFieldControlForDisplay" runat="server">
<Template>
	<asp:Panel id="MainPanel" runat="server"/>
</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="UrlField" runat="server">
	<Template>
		<span class="ms-formdescription"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,form_type_web_address%>" EncodeMethod='HtmlEncode'/>&#160;(<asp:HyperLink id="UrlControlId" Target="_self" runat="server" />)
		&#160;<br /></span>
		<asp:TextBox id="UrlFieldUrl" dir="ltr" runat="server"/><br />
		<span class="ms-formdescription"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,form_type_description%>" EncodeMethod='HtmlEncode'/>&#160;<br /></span>
	   <asp:TextBox id="UrlFieldDescription" maxlength="255" runat="server"/><br />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="FileFieldNew" runat="server">
	<Template>
		<input type="file" class="ms-fileinput" id="onetidIOFile" size="56" runat="Server" /><br />
		<asp:RequiredFieldValidator ControlToValidate="onetidIOFile"
									Display = "Dynamic"
									ErrorMessage = "<%$Resources:wss,form_empty_value%>"
									runat="server"/>
		</td></tr>
		<tr id="diidIOUploadMultipleLink">
		<th class="ms-formlabel"></th>
		<td style="padding-left:5px" nowrap="nowrap">
		<a class="ms-toolbar" accesskey="U" href="javascript:MultipleUploadView()" target="_self">
		<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,upload_document_upload_multiple%>" EncodeMethod='HtmlEncode'/></a>
		</td>
		</tr>
		<tr id="trUploadCtl" ><td width="100%" colspan="3">
		<div id="dividMultipleView" style='display:none'>
		<table cellpadding="0" cellspacing="0" width="100%" height="100%" border="0">
			<tr><td id="idUploadTD" name="idUploadTD" class="ms-uploadborder" width="100%" height="100%">
			<script type="text/javascript">
			// <![CDATA[
			try
			{
				if(new ActiveXObject("STSUpld.UploadCtl"))
					document.write("<object id='idUploadCtl' name='idUploadCtl' classid='CLSID:07B06095-5687-4d13-9E32-12B4259C9813' width='638px' height='261px'></object>");
				else
					RemoveMultipleUploadItems();
			}
			catch(error)
			{
				RemoveMultipleUploadItems();
			}
			// ]]>
			</script>
			</td>
			<INPUT TYPE=hidden NAME="PostURL" VALUE="<asp:Literal id='PostURL' runat='server'/>" />
			<INPUT TYPE=hidden NAME="Confirmation-URL" VALUE="<asp:Literal id='ConfirmationURL' runat='server'/>" />
			<INPUT TYPE=hidden NAME="destination" VALUE="<asp:Literal id='destination' runat='server'/>" />
			</tr>
		</table>
		</div><br />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="FileFieldEdit" runat="server">
	<Template>
		<span dir="ltr"><asp:TextBox id="FileFieldEdit" runat="server"/><span class="ms-fileField-fileExt"><asp:Literal id="FileExtension" runat="server"/></span></span><br />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="FileFieldEditNoExtension" runat="server">
	<Template>
		<asp:TextBox id="FileFieldEdit" runat="server"/><br />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="AttachmentsField" runat="server">
	<Template>
		<table border="0" cellpadding="0" cellspacing="0" id="idAttachmentsTable">
			<asp:Literal id="AttachmentsList" runat="server"/>
		</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CrossProjectLinkField" runat="server">
	<Template>
		<asp:Panel id="CrossProjectLinkModifyPanel" runat="server">
			<asp:CheckBox id="CrossProjectLinkField" Visible=false runat="server"/>
		</asp:Panel>
		<asp:HyperLink id="ProjectLink"
				  NavigateUrl=""
				  Text=""
				  Target="_self"
				  Visible=false
				  runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="RecurrenceField" runat="server">
	<Template>
		<asp:Label id="RecurrenceFieldDescription" runat="server"/>
		<asp:CheckBox id="RecurrenceField"
		AutoPostBack=true
		Text="<%$Resources:wss,form_RecurrenceText%>"
		runat="server" />
		<SharePoint:RecurrenceDataControl id="RecurrenceDataField" runat="server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="RecurrenceData" runat="server">
	<Template>
		<table>
		   <tr>
			<td class="ms-formbody">
			<table class="ms-formrecurrence" cellspacing="0" cellpadding="0" border="0">
			<tbody>
				<tr>
					<td nowrap="nowrap" rowspan="5">
					  <table cellspacing="1" cellpadding="0">
						  <tbody>
						   <tr><td>
						   <table><tr><td>
								 <asp:RadioButton id="recurrencePatternType2"
									   GroupName="RecurrencePatternType"
									   CssClass="ms-radiotext"
									   Text="<%$Resources:wss,recur_daily%>" value="2"
									   ToolTip="<%$Resources:wss,recur_radio_daily_TT%>"
									   onClick = 'RecurPatternType_ShowRecurType(this.id);'
									   runat="server"/>
								 </td></tr>
								 <tr><td>
								 <asp:RadioButton id="recurrencePatternType3"
									   GroupName="RecurrencePatternType"
									   CssClass="ms-radiotext"
									   Text="<%$Resources:wss,recur_weekly%>" value="3"
									   ToolTip="<%$Resources:wss,recur_radio_week_TT%>"
									   onClick = 'RecurPatternType_ShowRecurType(this.id);'
									   runat="server"/>
								 </td></tr>
								 <tr><td>
								 <asp:RadioButton id="recurrencePatternType4"
									   GroupName="RecurrencePatternType"
									   CssClass="ms-radiotext"
									   Text="<%$Resources:wss,recur_monthly%>" value="4"
									   ToolTip="<%$Resources:wss,recur_radio_month_TT%>"
									   onClick = 'RecurPatternType_ShowRecurType(this.id);'
										runat="server"/>
								 </td></tr>
								 <tr><td>
								 <asp:RadioButton id="recurrencePatternType5"
									   GroupName="RecurrencePatternType"
									   onClick = 'RecurPatternType_ShowRecurType(this.id);'
									   CssClass="ms-radiotext"
									   Text="<%$Resources:wss,recur_yearly%>" value="5"
									   ToolTip="<%$Resources:wss,recur_radio_year_TT%>"
										runat="server"/>
								 </td></tr>
								 <tr><td>
								 <asp:RadioButton id="recurrencePatternType6"
									   GroupName="RecurrencePatternType"
									   onClick = 'RecurPatternType_ShowRecurType(this.id);'
									   CssClass="ms-radiotext"
									   Text="<%$Resources:wss,recur_custom%>" value="6"
									   ToolTip="<%$Resources:wss,recur_radio_custom_TT%>"
										Visible=false
									   runat="server"/>
								 </td></tr></table>
							</td></tr>
						</tbody>
					  </table>
					</td>
					<td nowrap="nowrap" rowspan="5"><img src="/_layouts/15/images/blank.gif?rev=23" width='40' height='1' alt="" /></td>
				</tr>
		  <div id="idCustomDIV" >
				<tr>
				<td valign="top" nowrap="nowrap">
					<div id="recurPatternTextDiv" disabled><NOBR disabled><span class="ms-formdescription"> <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,recur_pattern%>" EncodeMethod='HtmlEncode'/></span></nobr></div>
				</td>
				</tr>
				<tr>
				<td valign="top" nowrap="nowrap" height="90" rowspan="4">
					<table class="ms-formrecurrence" cellspacing="0" cellpadding="0" border="0">
						<tbody>
							<tr>
								<td nowrap="nowrap"><img src="/_layouts/15/images/blank.gif?rev=23" width='12' height='1' alt="" /></td> </tr>
							<tr>
								<td valign="top" nowrap="nowrap">
									<div id="recurDailyDiv" style="display: none" >
									<table class="ms-formrecurrence" cellspacing="1" cellpadding="0">
										<tbody>
											<tr onkeypress='RecurType_SetRadioButton(this, "dailyRecurType0");'
												onmousedown='RecurType_SetRadioButton(this,"dailyRecurType0");'
												onmousewheel='RecurType_SetRadioButton(this,"dailyRecurType0");'
												onclick='RecurType_SetRadioButton(this,"dailyRecurType0");'>
												<td valign="top" >
												   <asp:RadioButton id="dailyRecurType0"
													   GroupName="DailyRecurType"
													   Checked=true
													   runat="server"/>
												  <SharePoint:FormattedString id="RecurDays" FormatText="<%$Resources:wss,RecurDays%>" EncodeMethod="NoEncode" runat="server">
													<asp:TextBox id="daily_dayFrequency"
															   CssClass="ms-input"
															   maxlength="255"
															   ToolTip="<%$Resources:wss,recur_days_between_TT%>"
															   size="3" value="1" runat="server"/>
												  </SharePoint:FormattedString >
												</td>
											</tr>
											<tr onkeypress='RecurType_SetRadioButton(this, "dailyRecurType1");'
												onmousedown='RecurType_SetRadioButton(this,"dailyRecurType1");'
												onmousewheel='RecurType_SetRadioButton(this,"dailyRecurType1");'
												onclick='RecurType_SetRadioButton(this,"dailyRecurType1");'>
												<td valign="top" >
												   <asp:RadioButton id="dailyRecurType1"
													   GroupName="DailyRecurType"
														runat="server"/>
												  <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,recur_every_weekdays%>" EncodeMethod='HtmlEncode'/>
												</td>
											</tr>
										  </tbody>
									  </table>
									</div>
								</td>
							 </tr>
							<tr>
								<td valign="top" nowrap="nowrap">
									<div id="recurWeeklyDiv" style="display: none">
									  <SharePoint:FormattedString id="RecurWeek" FormatText="<%$Resources:wss,RecurWeek%>" EncodeMethod="NoEncode" runat="server">
										<asp:TextBox id="weekly_weekFrequency" maxlength="255"
										 CssClass="ms-input"
										 ToolTip="<%$Resources:wss,recur_weeks_between_TT%>"
										 size="3" value="1" runat="server"/>
									  </SharePoint:FormattedString >
										 <div>
											<table class="ms-formrecurrence" cellspacing="1" cellpadding="0">
											<tbody>
												<tr><td>
													<asp:CheckBoxList id="weekly_multiDays"
															   CssClass="ms-input"
															   RepeatColumns="4"
															   RepeatDirection="Horizontal"
															   runat="server">
													   <asp:ListItem Text="<%$Resources:wss,day_sun%>" ToolTip="<%$Resources:wss,recur_weeksdays_Su_TT%>" value="su" />
													   <asp:ListItem Text="<%$Resources:wss,day_mon%>" ToolTip="<%$Resources:wss,recur_weeksdays_Mo_TT%>" value="mo" />
													   <asp:ListItem Text="<%$Resources:wss,day_tue%>" ToolTip="<%$Resources:wss,recur_weeksdays_Tu_TT%>" value="tu" />
													   <asp:ListItem Text="<%$Resources:wss,day_wed%>" ToolTip="<%$Resources:wss,recur_weeksdays_We_TT%>" value="we" />
													   <asp:ListItem Text="<%$Resources:wss,day_thu%>" ToolTip="<%$Resources:wss,recur_weeksdays_Th_TT%>" value="th" />
													   <asp:ListItem Text="<%$Resources:wss,day_fri%>" ToolTip="<%$Resources:wss,recur_weeksdays_Fr_TT%>" value="fr" />
													   <asp:ListItem Text="<%$Resources:wss,day_sat%>" ToolTip="<%$Resources:wss,recur_weeksdays_Sa_TT%>" value="sa" />
													 </asp:CheckBoxList>
												</td></tr>
										   </tbody>
										   </table>
										</div>
								   </div>
								</td>
							</tr>
							<tr>
							  <td valign="top" nowrap="nowrap">
								<div id="recurMonthlyDiv" style="display: none">
									<table class="ms-formrecurrence" cellspacing="1" cellpadding="0">
										<tbody>
											<tr onkeypress='RecurType_SetRadioButton(this, "monthlyRecurType0");'
												onmousedown='RecurType_SetRadioButton(this,"monthlyRecurType0");'
												onmousewheel='RecurType_SetRadioButton(this,"monthlyRecurType0");'
												onclick='RecurType_SetRadioButton(this,"monthlyRecurType0");'>
												<td valign="top" >
												 <asp:RadioButton id="monthlyRecurType0"
													   GroupName="MonthlyRecurType"
													   Checked=true
													   runat="server"/>
												</td>
												<td class="ms-input" valign="baseline" >
													<nobr>
													<SharePoint:FormattedString id="RecurMonthDay" FormatText="<%$Resources:wss,RecurMonthDay%>" EncodeMethod="NoEncode" runat="server">
														 <asp:TextBox id="monthly_day" maxlength="255"
															 CssClass="ms-input"
															 ToolTip="<%$Resources:wss,recur_month_day_TT%>"
															 size="2" value="1" runat="server"/>
														 <asp:TextBox id="monthly_monthFrequency" maxlength="255"
															 CssClass="ms-input"
															 ToolTip="<%$Resources:wss,recur_month_monthFrequency_TT%>"
															 size="2" value="1" runat="server"/>
													</SharePoint:FormattedString >
													</nobr>
												   </td>
												  </tr>
											<tr onkeypress='RecurType_SetRadioButton(this,"monthlyRecurType1");'
												onmousedown='RecurType_SetRadioButton(this,"monthlyRecurType1");'
												onmousewheel='RecurType_SetRadioButton(this,"monthlyRecurType1");'
												onclick='RecurType_SetRadioButton(this,"monthlyRecurType1");'>
												<td valign="top">
												 <asp:RadioButton id="monthlyRecurType1"
													   GroupName="MonthlyRecurType"
													   runat="server"/>
												 </td>
												<td class="ms-input" valign="baseline">
												<nobr>
												<SharePoint:FormattedString id="RecurMonthWeekDay" FormatText="<%$Resources:wss,RecurMonthWeekDay%>" EncodeMethod="NoEncode" runat="server">
												<span class="ms-RadioText" valign="TOP" runat=server >
													 <asp:ListBox id="monthlyByDay_weekOfMonth"
														   rows="1"
															ToolTip="<%$Resources:wss,recur_month_weekOfMonth_TT%>"
														   runat="server">
														 <asp:ListItem Text="<%$Resources:wss,week_first%>" value="first" Selected=true />
														 <asp:ListItem Text="<%$Resources:wss,week_second%>" value="second" />
														 <asp:ListItem Text="<%$Resources:wss,week_third%>" value="third" />
														 <asp:ListItem Text="<%$Resources:wss,week_fourth%>" value="fourth" />
														 <asp:ListItem Text="<%$Resources:wss,week_last%>" value="last" />
													  </asp:ListBox>
												</span>
												<span class="ms-RadioText" valign="TOP" runat=server >
													 <asp:ListBox id="monthlyByDay_day"
														   rows="1"
														   ToolTip="<%$Resources:wss,recur_month_dayofweek_TT%>"
														   runat="server">
														 <asp:ListItem Text="<%$Resources:wss,month_day%>" value="day" />
														 <asp:ListItem Text="<%$Resources:wss,month_weekday%>" value="weekday" />
														 <asp:ListItem Text="<%$Resources:wss,weekend_day%>" value="weekend_day" />
														 <asp:ListItem Text="<%$Resources:wss,day_sun%>" value="su" />
														 <asp:ListItem Text="<%$Resources:wss,day_mon%>" value="mo" />
														 <asp:ListItem Text="<%$Resources:wss,day_tue%>" value="tu" />
														 <asp:ListItem Text="<%$Resources:wss,day_wed%>" value="we" />
														 <asp:ListItem Text="<%$Resources:wss,day_thu%>" value="th" />
														 <asp:ListItem Text="<%$Resources:wss,day_fri%>" value="fr" />
														 <asp:ListItem Text="<%$Resources:wss,day_sat%>" value="sa" />
													  </asp:ListBox>
												  </span>
												  <asp:TextBox id="monthlyByDay_monthFrequency" maxlength="255"
															 CssClass="ms-input"
															 ToolTip="<%$Resources:wss,recur_month_monthFrequency_TT%>"
															 size="2" value="1" runat="server"/>
												   </SharePoint:FormattedString >
												  </nobr>
												 </td>
											   </tr>
										</tbody>
									</table>
								</div>
							</td>
						   </tr>
						  <tr>
							<td valign="top" nowrap="nowrap">
							  <div id="recurYearlyDiv" style="display: none">
								  <table class="ms-formrecurrence" cellspacing="1" cellpadding="0">
									  <tbody>
										  <tr onkeypress='RecurType_SetRadioButton(this, "yearlyRecurType0");'
											  onmousedown='RecurType_SetRadioButton(this,"yearlyRecurType0");'
											  onmousewheel='RecurType_SetRadioButton(this,"yearlyRecurType0");'
											  onclick='RecurType_SetRadioButton(this,"yearlyRecurType0");'>
											  <td valign="top" >
											   <asp:RadioButton id="yearlyRecurType0"
													 GroupName="YearlyRecurType"
													 Checked=true
													 runat="server"/>
											  </td>
											  <td class="ms-input" valign="baseline" >
												 <nobr>
												  <SharePoint:FormattedString id="RecurYearWeekDay" FormatText="<%$Resources:wss,RecurYearWeekDay%>" EncodeMethod="NoEncode" runat="server">
													   <asp:ListBox id="yearly_month"
															 rows="1"
															 ToolTip="<%$Resources:wss,recur_month_TT%>"
															 runat="server">
														   <asp:ListItem Text="<%$Resources:wss,month_jan%>" value="1" />
														   <asp:ListItem Text="<%$Resources:wss,month_feb%>" value="2" />
														   <asp:ListItem Text="<%$Resources:wss,month_mar%>" value="3" />
														   <asp:ListItem Text="<%$Resources:wss,month_apr%>" value="4" />
														   <asp:ListItem Text="<%$Resources:wss,month_may%>" value="5" />
														   <asp:ListItem Text="<%$Resources:wss,month_jun%>" value="6" />
														   <asp:ListItem Text="<%$Resources:wss,month_jul%>" value="7" />
														   <asp:ListItem Text="<%$Resources:wss,month_aug%>" value="8" />
														   <asp:ListItem Text="<%$Resources:wss,month_sep%>" value="9" />
														   <asp:ListItem Text="<%$Resources:wss,month_oct%>" value="10" />
														   <asp:ListItem Text="<%$Resources:wss,month_nov%>" value="11" />
														   <asp:ListItem Text="<%$Resources:wss,month_dec%>" value="12" />
														</asp:ListBox>
													   <asp:TextBox id="yearly_day" maxlength="255"
														   CssClass="ms-input"
														   ToolTip="<%$Resources:wss,recur_year_day_TT%>"
														   size="2" value="1" runat="server"/>
												   </SharePoint:FormattedString >
												  </nobr>
											   </td>
											</tr>
										  <tr onkeypress='RecurType_SetRadioButton(this,"yearlyRecurType1");'
											  onmousedown='RecurType_SetRadioButton(this,"yearlyRecurType1");'
											  onmousewheel='RecurType_SetRadioButton(this,"yearlyRecurType1");'
											  onclick='RecurType_SetRadioButton(this,"yearlyRecurType1");'>
											  <td valign="top">
											   <asp:RadioButton id="yearlyRecurType1"
													 GroupName="YearlyRecurType"
													 runat="server"/>
											   </td>
											  <td class="ms-input" valign="baseline">
											  <nobr>
												  <SharePoint:FormattedString id="RecurYearMonthDay" FormatText="<%$Resources:wss,RecurYearMonthDay%>" EncodeMethod="NoEncode" runat="server">
												 <span class="ms-RadioText" valign="TOP" runat=server >
													<asp:ListBox id="yearlyByDay_weekOfMonth"
														 rows="1"
														 ToolTip="<%$Resources:wss,recur_month_weekOfMonth_TT%>"
														 runat="server">
														 <asp:ListItem Text="<%$Resources:wss,week_first%>" value="first" Selected=true />
														 <asp:ListItem Text="<%$Resources:wss,week_second%>" value="second" />
														 <asp:ListItem Text="<%$Resources:wss,week_third%>" value="third" />
														 <asp:ListItem Text="<%$Resources:wss,week_fourth%>" value="fourth" />
														 <asp:ListItem Text="<%$Resources:wss,week_last%>" value="last" />
													</asp:ListBox>
												 </span>
												 <span class="ms-RadioText" valign="TOP" runat=server >
													<asp:ListBox id="yearlyByDay_day"
														 rows="1"
														 ToolTip="<%$Resources:wss,recur_month_dayofweek_TT%>"
														 runat="server">
														 <asp:ListItem Text="<%$Resources:wss,month_day%>" value="day" />
														 <asp:ListItem Text="<%$Resources:wss,month_weekday%>" value="weekday" />
														 <asp:ListItem Text="<%$Resources:wss,weekend_day%>" value="weekend_day" />
														 <asp:ListItem Text="<%$Resources:wss,day_sun%>" value="su" />
														 <asp:ListItem Text="<%$Resources:wss,day_mon%>" value="mo" />
														 <asp:ListItem Text="<%$Resources:wss,day_tue%>" value="tu" />
														 <asp:ListItem Text="<%$Resources:wss,day_wed%>" value="we" />
														 <asp:ListItem Text="<%$Resources:wss,day_thu%>" value="th" />
														 <asp:ListItem Text="<%$Resources:wss,day_fri%>" value="fr" />
														 <asp:ListItem Text="<%$Resources:wss,day_sat%>" value="sa" />
													</asp:ListBox>
												 </span>
												 <span class="ms-RadioText" valign="TOP" runat=server >
													<asp:ListBox id="yearlyByDay_month"
														 rows="1"
														 ToolTip="<%$Resources:wss,recur_month_TT%>"
														 runat="server">
														   <asp:ListItem Text="<%$Resources:wss,month_jan%>" value="1" />
														   <asp:ListItem Text="<%$Resources:wss,month_feb%>" value="2" />
														   <asp:ListItem Text="<%$Resources:wss,month_mar%>" value="3" />
														   <asp:ListItem Text="<%$Resources:wss,month_apr%>" value="4" />
														   <asp:ListItem Text="<%$Resources:wss,month_may%>" value="5" />
														   <asp:ListItem Text="<%$Resources:wss,month_jun%>" value="6" />
														   <asp:ListItem Text="<%$Resources:wss,month_jul%>" value="7" />
														   <asp:ListItem Text="<%$Resources:wss,month_aug%>" value="8" />
														   <asp:ListItem Text="<%$Resources:wss,month_sep%>" value="9" />
														   <asp:ListItem Text="<%$Resources:wss,month_oct%>" value="10" />
														   <asp:ListItem Text="<%$Resources:wss,month_nov%>" value="11" />
														   <asp:ListItem Text="<%$Resources:wss,month_dec%>" value="12" />
													</asp:ListBox>
												 </span>
												 </SharePoint:FormattedString >
												</nobr>
											   </td>
											 </tr>
									  </tbody>
								  </table>
							  </div>
							</td>
						  </tr>
						</tbody>
					   </table>
					</td>
				  </tr>
				</tbody>
			   </table>
			  <div id="recurCustomDiv" >
				<table class="ms-formrecurrence" cellspacing="0" cellpadding="0" border="0">
				<tbody>
					<tr>
					<td nowrap="nowrap"><img src="/_layouts/15/images/blank.gif?rev=23" width='116' height='1' alt="" /></td>
					<td valign="top" nowrap="nowrap">
						<nobr><span class="ms-formdescription"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,recur_daterange%>" EncodeMethod='HtmlEncode'/></span><br /><br /><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,recur_daterange_startdate%>" EncodeMethod='HtmlEncode'/></nobr><br />
						<nobr> <SharePoint:DateTimeControl id="windowStart"
								  DateOnly=true
								  IsRequiredField=true
								  ToolTip="<%$Resources:wss,recur_windowStart_TT%>"
								  runat="server"/></nobr>
					</td>
					<td nowrap="nowrap"><img src="/_layouts/15/images/blank.gif?rev=23" width='10' height='1' alt="" /></td>
					<td nowrap="nowrap"><br /><br />
						<table class="ms-formrecurrence" cellspacing="1" cellpadding="0">
						<tbody>
							<tr onkeypress='RecurType_SetRadioButton(this,"endDateRangeType0");'
								onmousedown='RecurType_SetRadioButton(this,"endDateRangeType0");'
								onmousewheel='RecurType_SetRadioButton(this,"endDateRangeType0");'
								onclick='RecurType_SetRadioButton(this,"endDateRangeType0");'>
								<td valign="top">
								 <asp:RadioButton id="endDateRangeType0"
									   GroupName="EndDateRangeType"
									   ToolTip="<%$Resources:wss,recur_enddaterange_nodate_TT%>"
									   runat="server"/>
								  </td>
								<td class="ms-input" valign="baseline"><nobr><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,recur_daterange_noenddate%>" EncodeMethod='HtmlEncode'/></nobr></td></tr>
							<tr onkeypress='RecurType_SetRadioButton(this,"endDateRangeType1");'
								onmousedown='RecurType_SetRadioButton(this,"endDateRangeType1");'
								onmousewheel='RecurType_SetRadioButton(this,"endDateRangeType1");'
								onclick='RecurType_SetRadioButton(this,"this,endDateRangeType1");'>
								<td valign="top">
								 <asp:RadioButton id="endDateRangeType1"
									   GroupName="EndDateRangeType"
									   ToolTip="<%$Resources:wss,recur_enddaterange_dateafter_TT%>"
									   runat="server"/>
								 </td>
								<td class="ms-input" valign="baseline">
								  <nobr><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,recur_daterange_endafter%>" EncodeMethod='HtmlEncode'/>
										   <asp:TextBox id="repeatInstances"
											   maxlength="255"
											   CssClass="ms-input"
											   ToolTip="<%$Resources:wss,recur_enddaterange_ntimes_TT%>"
											   size="4" value="10" runat="server"/>&#160;<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,recur_daterange_occurs%>" EncodeMethod='HtmlEncode'/>
								  </nobr>
								</td>
							</tr>
							<tr onkeypress='RecurType_SetRadioButton(this,"endDateRangeType2");'
								onmousedown='RecurType_SetRadioButton(this,"endDateRangeType2");'
								onmousewheel='RecurType_SetRadioButton(this,"endDateRangeType2");'
								onclick='RecurType_SetRadioButton(this,"endDateRangeType2");'>
								<td valign="top">
								 <asp:RadioButton id="endDateRangeType2"
									   GroupName="EndDateRangeType"
									   ToolTip="<%$Resources:wss,recur_enddaterange_dateby_TT%>"
									   runat="server"/>
								 </td>
								<td class="ms-input" valign="baseline">
								   <nobr><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,recur_daterange_endby%>" EncodeMethod='HtmlEncode'/>
									 <SharePoint:DateTimeControl id="windowEnd"
												DateOnly=true
												ToolTip="<%$Resources:wss,recur_windowEnd_TT%>"
												runat="server"/>
								  </nobr>
								</td>
							  </tr>
						  </tbody>
					</table>
				  </div>
					</td>
				   </tr>
				 </tbody>
				 </table>
			</div>
			</td>
		  </tr>
		 </table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="MultipleLookupField" runat="server">
	<Template>
		<SharePoint:GroupedItemPicker id="MultiLookupPicker" runat="server"
			CandidateControlId="SelectCandidate"
			ResultControlId="SelectResult"
			AddButtonId="AddButton"
			RemoveButtonId="RemoveButton"
			/>
		<table class="ms-long" cellpadding="0" cellspacing="0" border="0">
			<tr>
				<td class="ms-input">
					<SharePoint:SPHtmlSelect id="SelectCandidate" width="143" height="125" runat="server" multiple="true" />
				</td>
				<td style="padding-left:10px">
				<td align="center" valign="middle" class="ms-input ms-noWrap">
					<button class="ms-ButtonHeightWidth" id="AddButton" runat="server"> <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,multipages_gip_add%>" EncodeMethod='HtmlEncode'/> </button><br />
					<br />
					<button class="ms-ButtonHeightWidth" id="RemoveButton" runat="server"> <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,multipages_gip_remove%>" EncodeMethod='HtmlEncode'/> </button>
				</td>
				<td style="padding-left:10px">
				<td class="ms-input">
					<SharePoint:SPHtmlSelect id="SelectResult" width="143" height="125" runat="server" multiple="true" />
				</td>
			</tr>
		</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="AllDayEventField" runat="server">
	<Template>
		<asp:Label id="AllDayEventFieldDescription" runat="server"/>
		<asp:CheckBox id="AllDayEventField"
			AutoPostBack=true
			Text="<%$Resources:wss,form_AlldayEventHelperText%>"
			runat="server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GeolocationField" runat="server">
	<Template>
		<span class="ms-formdescription"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,LocationField_Longitude%>" EncodeMethod='HtmlEncode'/></span>
		<asp:TextBox id="GeolocationFieldLongitude" maxlength="255" runat="server" Width="120px"/>
		<span class="ms-formdescription"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,LocationField_Latitude%>" EncodeMethod='HtmlEncode'/></span>
		<span>
		    <asp:TextBox id="GeolocationFieldLatitude" maxlength="255" runat="server" Width="120px"/>
		</span><br />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GeolocationFieldDisplay" runat="server">
	<Template>
		<span class="ms-formdescription"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,LocationField_Longitude%>" EncodeMethod='HtmlEncode'/></span>
		<asp:Label id="GeolocationFieldLongitudeDisplay" runat="server"/>
		<span class="ms-formdescription"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,LocationField_Latitude%>" EncodeMethod='HtmlEncode'/></span>
		<asp:Label id="GeolocationFieldLatitudeDisplay" runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="FormButton" runat="server">
	<Template>
		<wssuc:ToolBarButton ID="FormButton" runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="NewFormToolBar" runat="server">
	<Template>
		<wssuc:ToolBar CssClass="ms-toolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
				<Template_Buttons>
					<SharePoint:AttachmentButton runat="server"/>
				 </Template_Buttons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="BlogNewFormToolBar" runat="server">
	<Template>
		<wssuc:ToolBar CssClass="ms-toolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
				<Template_Buttons>
				</Template_Buttons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="BlogEditFormToolBar" runat="server">
	<Template>
		<SharePoint:ScriptBlock runat="server">
			recycleBinEnabled = <SharePoint:ProjectProperty Property="RecycleBinEnabled" runat="server"/>;
			cascadeDeleteWarningMessage = '<SharePoint:ProjectProperty Property="CascadeDeleteWarningMessage" runat="server"/>';
		</SharePoint:ScriptBlock>
		<wssuc:ToolBar CssClass="ms-toolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
				<Template_Buttons>
					<SharePoint:EditSeriesButton runat="server"/>
					<SharePoint:DeleteItemButton runat="server"/>
				 </Template_Buttons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="BlogCommentDisplayFormToolBar" runat="server">
	<Template>
		<SharePoint:ScriptBlock runat="server">
			recycleBinEnabled = <SharePoint:ProjectProperty Property="RecycleBinEnabled" runat="server"/>;
		</SharePoint:ScriptBlock>
		<wssuc:ToolBar  CssClass="ms-toolbar" id="toolBarTbl" runat="server" FocusOnToolbar=true>
				<Template_Buttons>
					<SharePoint:EditItemButton runat="server"/>
					<SharePoint:EditSeriesButton runat="server"/>
					<SharePoint:ClaimReleaseTaskButton runat="server"/>
					<SharePoint:ManageCopiesButton runat="server"/>
					<SharePoint:WorkflowsButton runat="server"/>
				 </Template_Buttons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="EditFormToolBar" runat="server">
	<Template>
		<SharePoint:ScriptBlock runat="server">
			recycleBinEnabled = <SharePoint:ProjectProperty Property="RecycleBinEnabled" runat="server"/>;
			cascadeDeleteWarningMessage = '<SharePoint:ProjectProperty Property="CascadeDeleteWarningMessage" runat="server"/>';
		</SharePoint:ScriptBlock>
		<wssuc:ToolBar CssClass="ms-toolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
				<Template_Buttons>
					<SharePoint:AttachmentButton runat="server"/>
					<SharePoint:EditSeriesButton runat="server"/>
					<SharePoint:DeleteItemButton runat="server"/>
					<SharePoint:ClaimReleaseTaskButton runat="server"/>
				 </Template_Buttons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="WorkflowEditFormToolBar" runat="server">
	<Template>
		<SharePoint:ScriptBlock runat="server">
			recycleBinEnabled = <SharePoint:ProjectProperty Property="RecycleBinEnabled" runat="server"/>;
		</SharePoint:ScriptBlock>
		<wssuc:ToolBar ID="toolBarTbl" runat="server">
				<Template_Buttons>
					<SharePoint:ClaimReleaseTaskButton runat="server"/>
					<SharePoint:DeleteItemButton runat="server"/>
				 </Template_Buttons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="DisplayFormToolBar" runat="server">
	<Template>
		<SharePoint:ScriptBlock runat="server">
			recycleBinEnabled = <SharePoint:ProjectProperty Property="RecycleBinEnabled" runat="server"/>;
			cascadeDeleteWarningMessage = '<SharePoint:ProjectProperty Property="CascadeDeleteWarningMessage" runat="server"/>';
		</SharePoint:ScriptBlock>
		<wssuc:ToolBar  CssClass="ms-toolbar" id="toolBarTbl" runat="server" FocusOnToolbar=true>
				<Template_Buttons>
					<SharePoint:EnterFolderButton runat="server"/>
					<SharePoint:EditItemButton runat="server"/>
					<SharePoint:EditSeriesButton runat="server"/>
					<SharePoint:DeleteItemButton runat="server"/>
					<SharePoint:ClaimReleaseTaskButton runat="server"/>
					<SharePoint:ManagePermissionsButton runat="server"/>
					<SharePoint:ManageCopiesButton runat="server"/>
					<SharePoint:ApprovalButton runat="server"/>
					<SharePoint:WorkflowsButton runat="server"/>
					<SharePoint:AlertMeButton runat="server"/>
					<SharePoint:VersionHistoryButton runat="server"/>
				 </Template_Buttons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="DisplayFormVersionToolBar" runat="server">
	<Template>
		<wssuc:ToolBar id="toolBarTbl" runat="server" FocusOnToolbar=true>
				<Template_Buttons>
					<SharePoint:DeleteItemVersionButton runat="server"/>
					<SharePoint:RestoreItemVersionButton runat="server"/>
					<SharePoint:VersionHistoryButton runat="server"/>
				 </Template_Buttons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="UnlinkCopyButton" runat="server">
	<Template>
		<asp:LinkButton
			id="diidIOUnlinkCopy"
			OnClientClick="return UnlinkCopyConfirmation();"
			CausesValidation="false"
			CommandName="UnlinkCopy"
			Text="<%$Resources:wss,tb_unlink%>"
			accesskey="<%$Resources:wss,tb_unlink_AK%>"
			target="_self"
			runat="server"/>
</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="CopySourceInfo" runat="server">
	<Template>
		<Sharepoint:CopySourceUrlInfo runat="server"/>&#160;(&#160;<Sharepoint:GoToCopySourceLink runat="server"/>&#160;|<Sharepoint:UnlinkCopyButton runat="server"/>)
		<script type="text/javascript">
		// <![CDATA[
		var ItemIsCopy = true;
		// ]]>
		</script>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="NextPageButton" runat="server">
	<Template>
		<table cellpadding="0" cellspacing="0" width="100%"><tr><td align="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,multipages_direction_right_align_value%>' EncodeMethod='HtmlEncode'/>"  width="100%" nowrap="nowrap">
			<asp:Button UseSubmitBehavior="false" id="diidIONextPage" CommandName="NextPage" Text="<%$Resources:wss,tb_nextpage%>" class="ms-ButtonHeightWidth" accesskey="<%$Resources:wss,tb_nextpage_AK%>" target="_self" runat="server"/>
		</td> </tr> </table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="SaveButton" runat="server">
	<Template>
		<table cellpadding="0" cellspacing="0" width="100%"><tr><td align="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,multipages_direction_right_align_value%>' EncodeMethod='HtmlEncode'/>"  width="100%" nowrap="nowrap">
			<asp:Button UseSubmitBehavior="false" ID="diidIOSaveItem" CommandName="SaveItem" Text="<%$Resources:wss,tb_save%>" class="ms-ButtonHeightWidth" accesskey="<%$Resources:wss,tb_save_AK%>" target="_self" runat="server"/>
		</td> </tr> </table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="SaveAsDraftButton" runat="server">
	<Template>
		<table cellpadding="0" cellspacing="0" width="100%"><tr><td align="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,multipages_direction_right_align_value%>' EncodeMethod='HtmlEncode'/>"  width="100%" nowrap="nowrap">
			<asp:Button UseSubmitBehavior="false" ID="diidIOSaveItem" CommandName="SaveItem" Text="<%$Resources:wss,tb_saveasdraft%>" class="ms-ButtonHeightWidth2" accesskey="<%$Resources:wss,tb_saveasdraft_AK%>" target="_self" runat="server"/>
		</td> </tr> </table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="CancelCloseButton" runat="server">
	<Template>
		<table cellpadding="0" cellspacing="0" width="100%"><tr><td align="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,multipages_direction_right_align_value%>' EncodeMethod='HtmlEncode'/>" width="100%" nowrap="nowrap">
			<asp:Button UseSubmitBehavior="false" ID="diidIOGoBack" CommandName="CancelItem" class="ms-ButtonHeightWidth" accesskey="<%$Resources:wss,tb_Cancel_AK%>"  target="_self" runat="server"/>
		</td> </tr> </table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="CancelCloseButtonNoTable" runat="server">
	<Template>
		<asp:Button UseSubmitBehavior="false" ID="diidIOGoBack" CommandName="CancelItem" class="ms-ButtonHeightWidth" accesskey="<%$Resources:wss,tb_Cancel_AK%>"  target="_self" runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="ViewToolBar" runat="server">
	<Template>
		<wssuc:ToolBar CssClass="ms-menutoolbar" EnableViewState="false" id="toolBarTbl" ButtonSeparator="<img src='/_layouts/15/images/blank.gif' alt='' />" RightButtonSeparator="&#160;&#160;&#160;" runat="server">
			<Template_Buttons>
				<SharePoint:NewMenu accesskey="<%$Resources:wss,tb_NewMenu_AK%>" runat="server" />
				<SharePoint:ActionsMenu accesskey="<%$Resources:wss,tb_ActionsMenu_AK%>" runat="server" />
				<SharePoint:SettingsMenu accesskey="<%$Resources:wss,tb_SettingsMenu_AK%>" runat="server" />
			</Template_Buttons>
			<Template_RightButtons>
				  <SharePoint:PagingButton runat="server"/>
				  <SharePoint:ListViewSelector runat="server"/>
			</Template_RightButtons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="MWSViewToolBar" runat="server">
	<Template>
		<wssuc:ToolBar CssClass="ms-menutoolbar" EnableViewState="false" id="toolBarTbl" ButtonSeparator="<img src='/_layouts/15/images/blank.gif' alt='' />" RightButtonSeparator="&#160;&#160;" runat="server">
			<Template_Buttons>
				<SharePoint:MWSNewMenu accesskey="<%$Resources:wss,tb_NewMenu_AK%>" runat="server" />
				<SharePoint:MWSActionsMenu accesskey="<%$Resources:wss,tb_ActionsMenu_AK%>" runat="server" />
				<SharePoint:MWSSettingsMenu accesskey="<%$Resources:wss,tb_SettingsMenu_AK%>" runat="server" />
			</Template_Buttons>
			<Template_RightButtons>
				  <SharePoint:PagingButton runat="server"/>
				  <SharePoint:MWSListViewSelector runat="server"/>
			</Template_RightButtons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="MWSAttendeeViewToolBar" runat="server">
	<Template>
		<wssuc:ToolBar CssClass="ms-menutoolbar" EnableViewState="false" id="toolBarTbl" ButtonSeparator="<img src='/_layouts/15/images/blank.gif' alt='' />" RightButtonSeparator="&#160;&#160;" runat="server" >
			<Template_Buttons>
				<SharePoint:MWSActionsMenu accesskey="<%$Resources:wss,tb_ActionsMenu_AK%>" runat="server" />
				<SharePoint:MWSSettingsMenu accesskey="<%$Resources:wss,tb_SettingsMenu_AK%>" runat="server" />
			</Template_Buttons>
			<Template_RightButtons>
				  <SharePoint:PagingButton runat="server"/>
				  <SharePoint:ListViewSelector runat="server"/>
			</Template_RightButtons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="DocumentLibraryViewToolBar" runat="server">
	<Template>
		<wssuc:ToolBar CssClass="ms-menutoolbar" EnableViewState="false" id="toolBarTbl" ButtonSeparator="<img src='/_layouts/15/images/blank.gif' alt='' />" RightButtonSeparator="&#160;&#160;" runat="server">
			<Template_Buttons>
				<SharePoint:NewMenu accesskey="<%$Resources:wss,tb_NewMenu_AK%>" runat="server"/>
				<SharePoint:UploadMenu accesskey="<%$Resources:wss,tb_UploadMenu_AK%>" runat="server"/>
				<SharePoint:ActionsMenu accesskey="<%$Resources:wss,tb_ActionsMenu_AK%>" runat="server"/>
				<SharePoint:SettingsMenu accesskey="<%$Resources:wss,tb_SettingsMenu_AK%>" runat="server"/>
			</Template_Buttons>
			<Template_RightButtons>
				  <SharePoint:PagingButton runat="server"/>
				  <SharePoint:ListViewSelector runat="server"/>
			</Template_RightButtons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="WikiLibraryViewToolBar" runat="server">
	<Template>
		<wssuc:ToolBar CssClass="ms-menutoolbar" EnableViewState="false" id="toolBarTbl" ButtonSeparator="<img src='/_layouts/15/images/blank.gif' alt='' />" RightButtonSeparator="&#160;&#160;" runat="server">
			<Template_Buttons>
				<SharePoint:NewMenu accesskey="<%$Resources:wss,tb_NewMenu_AK%>" runat="server"/>
				<SharePoint:ActionsMenu accesskey="<%$Resources:wss,tb_ActionsMenu_AK%>" runat="server"/>
				<SharePoint:SettingsMenu accesskey="<%$Resources:wss,tb_SettingsMenu_AK%>" runat="server"/>
			</Template_Buttons>
			<Template_RightButtons>
				  <SharePoint:PagingButton runat="server"/>
				  <SharePoint:ListViewSelector runat="server"/>
			</Template_RightButtons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="PictureLibraryViewToolBar" runat="server">
	<Template>
		<wssuc:ToolBar CssClass="ms-menutoolbar" EnableViewState="false"  id="toolBarTbl" ButtonSeparator="<img src='/_layouts/15/images/blank.gif' alt='' />" RightButtonSeparator="&#160;&#160;" runat="server">
			<Template_Buttons>
				<SharePoint:NewMenu accesskey="<%$Resources:wss,tb_NewMenu_AK%>" runat="server"/>
				<SharePoint:UploadMenu accesskey="<%$Resources:wss,tb_UploadMenu_AK%>" runat="server"/>
				<SharePoint:ActionsMenu accesskey="<%$Resources:wss,tb_ActionsMenu_AK%>" TemplateName="ToolbarActionsMenuForPictureLibrary" runat="server"/>
				<SharePoint:SettingsMenu accesskey="<%$Resources:wss,tb_SettingsMenu_AK%>" runat="server"/>
			</Template_Buttons>
			<Template_RightButtons>
				  <SharePoint:PagingButton runat="server"/>
				  <SharePoint:ListViewSelector runat="server"/>
			</Template_RightButtons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="WebPartGalleryViewToolBar" runat="server">
	<Template>
		<wssuc:ToolBar CssClass="ms-menutoolbar" EnableViewState="false" id="toolBarTbl" ButtonSeparator="<img src='/_layouts/15/images/blank.gif' alt='' />" RightButtonSeparator="&#160;&#160;" runat="server">
			<Template_Buttons>
				<SharePoint:SPLinkButton
							ID="New0"
							Text="<%$Resources:wss,tb_new%>"
							ToolTip="<%$Resources:wss,tb_new%>"
							accesskey="<%$Resources:wss,tb_new_ak%>"
							ImageUrl="/_layouts/15/images/newitem.gif?rev=23"
							ClientOnClickScriptContainingPrefixedUrl="javascript:NewItem2(event, '~siteLayouts/NewDwp.aspx');"
							ShowImageAndText="true"
							HoverCellActiveCssClass="ms-menubuttonactivehover"
							HoverCellInActiveCssClass="ms-menubuttoninactivehover"
							PermissionsString="AddListItems"
							PermissionContext="CurrentList"
							RibbonCommand="NewDocument"
							RibbonImage16by16="/_layouts/15/images/newitem.gif?rev=23"
							RibbonImage32by32="/_layouts/15/images/MenuNewItem.gif?rev=23"
							runat="server"/>
				<SharePoint:UploadMenu accesskey="<%$Resources:wss,tb_UploadMenu_AK%>" runat="server"/>
				<SharePoint:GlobalGalleryActionsMenu accesskey="<%$Resources:wss,tb_ActionsMenu_AK%>" runat="server"/>
				<SharePoint:SettingsMenu accesskey="<%$Resources:wss,tb_SettingsMenu_AK%>" runat="server"/>
			</Template_Buttons>
			<Template_RightButtons>
				  <SharePoint:PagingButton runat="server"/>
				  <SharePoint:ListViewSelector runat="server"/>
			</Template_RightButtons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="RelinkToolBar" runat="server">
	<Template>
		<wssuc:ToolBar CssClass="ms-menutoolbar" EnableViewState="false" id="toolBarTbl" ButtonSeparator="<img src='/_layouts/15/images/blank.gif' alt='' />" RightButtonSeparator="&#160;&#160;" runat="server">
			<Template_Buttons>
				<SharePoint:RelinkButton
						ID="diidRepairItems"
						Text="<%$Resources:wss,tb_relink%>"
						accesskey="<%$Resources:wss,tb_relinkAK%>"
						ImageUrl="/_layouts/15/images/relink.gif?rev=23"
						HoverCellActiveCssClass="ms-menubuttonactivehover"
						HoverCellInActiveCssClass="ms-menubuttoninactivehover"
						PermissionsString="ManageLists"
						PermissionContext="CurrentList"
						RibbonCommand="RepairItems"
						runat="server"/>
				<SharePoint:RelinkAllButton
						ID="diidRepairItemsAll"
						Text="<%$Resources:wss,tb_relinkall%>"
						accesskey="<%$Resources:wss,tb_relinkallAK%>"
						ImageUrl="/_layouts/15/images/relink.gif?rev=23"
						HoverCellActiveCssClass="ms-menubuttonactivehover"
						HoverCellInActiveCssClass="ms-menubuttoninactivehover"
						PermissionsString="ManageLists"
						PermissionContext="CurrentList"
						RibbonCommand="RepairAllItems"
						runat="server"/>
				<SharePoint:ActionsMenu accesskey="<%$Resources:wss,tb_ActionsMenu_AK%>" runat="server"/>
				<SharePoint:SettingsMenu accesskey="<%$Resources:wss,tb_SettingsMenu_AK%>" runat="server"/>
			</Template_Buttons>
			<Template_RightButtons>
				  <SharePoint:PagingButton runat="server"/>
				  <SharePoint:ListViewSelector runat="server"/>
			</Template_RightButtons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="MergeToolBar" runat="server">
	<Template>
		<wssuc:ToolBar CssClass="ms-menutoolbar" EnableViewState="false" id="toolBarTbl" ButtonSeparator="<img src='/_layouts/15/images/blank.gif' alt='' />" RightButtonSeparator="&amp;#160;" runat="server">
			<Template_Buttons>
				<SharePoint:MergeButton
						ID="diidCombineItems"
						Text="<%$Resources:wss,tb_merge%>"
						accesskey="<%$Resources:wss,tb_mergeAK%>"
						ImageUrl="/_layouts/15/images/merge.gif?rev=23"
						HoverCellActiveCssClass="ms-menubuttonactivehover"
						HoverCellInActiveCssClass="ms-menubuttoninactivehover"
						RibbonCommand="MergeDocuments"
						runat="server"/>
				<SharePoint:NewMenu accesskey="<%$Resources:wss,tb_NewMenu_AK%>" runat="server"/>
				<SharePoint:ActionsMenu accesskey="<%$Resources:wss,tb_ActionsMenu_AK%>" runat="server"/>
				<SharePoint:SettingsMenu accesskey="<%$Resources:wss,tb_SettingsMenu_AK%>" runat="server"/>
			</Template_Buttons>
			<Template_RightButtons>
				  <SharePoint:PagingButton runat="server"/>
				  <SharePoint:ListViewSelector runat="server"/>
			</Template_RightButtons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="SiteListGalleryViewToolBar" runat="server">
	<Template>
		<wssuc:ToolBar CssClass="ms-menutoolbar" EnableViewState="false" id="toolBarTbl" ButtonSeparator="<img src='/_layouts/15/images/blank.gif'> alt='' />" RightButtonSeparator="&#160;&#160;" runat="server">
			<Template_Buttons>
				<SharePoint:UploadMenu accesskey="<%$Resources:wss,tb_UploadMenu_AK%>" runat="server"/>
				<SharePoint:GlobalGalleryActionsMenu accesskey="<%$Resources:wss,tb_ActionsMenu_AK%>" runat="server"/>
				<SharePoint:SettingsMenu accesskey="<%$Resources:wss,tb_SettingsMenu_AK%>" runat="server"/>
			</Template_Buttons>
			<Template_RightButtons>
				  <SharePoint:PagingButton runat="server"/>
				  <SharePoint:ListViewSelector runat="server"/>
			</Template_RightButtons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="SolutionsGalleryViewToolBar" runat="server">
	<Template>
		<wssuc:ToolBar CssClass="ms-menutoolbar" EnableViewState="false" id="toolBarTbl" ButtonSeparator="<img src='/_layouts/15/images/blank.gif' alt='' />" RightButtonSeparator="&#160;&#160;" runat="server">
			<Template_Buttons>
				<SharePoint:UploadMenu accesskey="<%$Resources:wss,tb_UploadMenu_AK%>" runat="server"/>
				<SharePoint:GlobalGalleryActionsMenu accesskey="<%$Resources:wss,tb_ActionsMenu_AK%>" runat="server"/>
				<SharePoint:SettingsMenu accesskey="<%$Resources:wss,tb_SettingsMenu_AK%>" runat="server"/>
			</Template_Buttons>
			<Template_RightButtons>
				  <SharePoint:PagingButton runat="server"/>
				  <SharePoint:ListViewSelector runat="server"/>
			</Template_RightButtons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="ToolbarUploadMenu" runat="server">
	<Template>
		<SharePoint:FeatureMenuTemplate runat="server"
			FeatureScope="Site"
			Location="Microsoft.SharePoint.StandardMenu"
			GroupId="UploadMenu"
			UseShortId="true"
			>
			<SharePoint:MenuItemTemplate
				ID="Upload"
				Text="<%$Resources:wss,ToolBarMenuItemUpload%>"
				Description="<%$Resources:wss,ToolBarMenuItemUploadDescription%>"
				Sequence="100"
				ImageUrl="/_layouts/15/images/MenuUploadDocument.gif?rev=23"
				HiddenScript="browseris.safariMobile"
				UseShortId="true"
				RibbonCommand="UploadDocument"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="MultipleUpload"
				Text="<%$Resources:wss,ToolBarMenuItemMuliUpload%>"
				Description="<%$Resources:wss,ToolBarMenuItemMuliUploadDescription%>"
				Sequence="200"
				ImageUrl="/_layouts/15/images/MenuUploadMultiple.gif?rev=23"
				HiddenScript="!browseris.ie55up"
				UseShortId="true"
				RibbonCommand="UploadMultipleDocuments"
				runat="server"/>
		</SharePoint:FeatureMenuTemplate>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="ToolbarActionsMenu" runat="server">
	<Template>
		<SharePoint:FeatureMenuTemplate runat="server"
			FeatureScope="Site"
			Location="Microsoft.SharePoint.StandardMenu"
			GroupId="ActionsMenu"
			UseShortId="true"
			>
			<SharePoint:MenuItemTemplate
				ID="EditInGridButton"
				ImageUrl="/_layouts/15/images/menudatasheet.gif?rev=23"
				PermissionsString="UseRemoteAPIs"
				MenuGroupId="200"
				Sequence="200"
				UseShortId="true"
				RibbonCommand="DisplayDatasheetView"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="OpenInExplorer"
				Text="<%$Resources:wss,ToolBarMenuItemOpenInExplorer%>"
				Description="<%$Resources:wss,ToolBarMenuItemOpenInExplorerDescription%>"
				PermissionsString="UseClientIntegration"
				PermissionContext="CurrentList"
				MenuGroupId="200"
				Sequence="300"
				UseShortId="true"
				RibbonCommand="OpenWithExplorer"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="ChangeOrder"
				Text="<%$Resources:wss,ToolBarMenuItemChangeOrder%>"
				Description="<%$Resources:wss,ToolBarMenuItemChangeOrderDescription%>"
				PermissionsString="EditListItems"
				PermissionContext="CurrentList"
				MenuGroupId="200"
				Sequence="400"
				UseShortId="true"
				RibbonCommand="ChangeLinkOrder"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="ShowInStdViewButton"
				Text="<%$Resources:wss,ToolBarMenuItemShowInStdView%>"
				Description="<%$Resources:wss,ToolBarMenuItemShowInStdViewDescription%>"
				MenuGroupId="300"
				Sequence="100"
				UseShortId="true"
				RibbonCommand="DisplayStandardView"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="NewRowButton"
				Text="<%$Resources:wss,ToolBarMenuItemNewRow%>"
				Description="<%$Resources:wss,ToolBarMenuItemNewRowDescription%>"
				PermissionsString="AddListItems"
				PermissionContext="CurrentList"
				MenuGroupId="300"
				Sequence="200"
				UseShortId="true"
				RibbonCommand="DatasheetNewRow"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="TaskPaneButton"
				Text="<%$Resources:wss,ToolBarMenuItemTaskPane%>"
				Description="<%$Resources:wss,ToolBarMenuItemTaskPaneDescription%>"
				MenuGroupId="300"
				Sequence="300"
				UseShortId="true"
				RibbonCommand="DatasheetShowTaskPane"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="TotalsButton"
				Text="<%$Resources:wss,ToolBarMenuItemTotals%>"
				Description="<%$Resources:wss,ToolBarMenuItemTotalsDescription%>"
				MenuGroupId="300"
				Sequence="400"
				UseShortId="true"
				RibbonCommand="DatasheetShowTotals"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="RefreshDataButton"
				Text="<%$Resources:wss,ToolBarMenuItemRefreshData%>"
				Description="<%$Resources:wss,ToolBarMenuItemRefreshDataDescription%>"
				MenuGroupId="300"
				Sequence="500"
				UseShortId="true"
				RibbonCommand="DatasheetRefreshData"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="OfflineButton"
				Description="<%$Resources:wss,ToolBarWorkOfflineOutlookDescription%>"
				PermissionsString="UseClientIntegration"
				PermissionContext="CurrentList"
				MenuGroupId="400"
				Sequence="100"
				ImageUrl="/_layouts/15/images/MenuPIM.gif?rev=23"
				RibbonCommand="ConnectToClient"
				UseShortId="true"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="ExportToSpreadsheet"
				Text="<%$Resources:wss,ToolBarMenuItemExportToSpreadsheet%>"
				Description="<%$Resources:wss,ToolBarMenuItemExportToSpreadsheetDescription%>"
				PermissionsString="UseClientIntegration"
				PermissionContext="CurrentList"
				MenuGroupId="400"
				Sequence="200"
				ImageUrl="/_layouts/15/images/MenuSpreadsheet.gif?rev=23"
				UseShortId="true"
				RibbonCommand="ExportToSpreadsheet"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="ExportToDatabase"
				PermissionsString="UseClientIntegration"
				PermissionContext="CurrentList"
				MenuGroupId="400"
				Sequence="300"
				ImageUrl="/_layouts/15/images/MenuDatabase.gif?rev=23"
				UseShortId="true"
				RibbonCommand="ExportToDatabase"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="ProjectTaskButton"
				Description="<%$Resources:wss,ToolBarCreateProjectTasksDescription%>"
				PermissionsString="UseClientIntegration"
				PermissionContext="CurrentList"
				MenuGroupId="400"
				ImageUrl="/_layouts/15/images/MenuTaskTrackingApplication.png?rev=23"
				UseShortId="true"
				RibbonCommand="ExportToProject"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="ViewRSS"
				Text="<%$Resources:wss,ToolBarMenuItemViewRSSFeed%>"
				Description="<%$Resources:wss,ToolBarMenuItemViewRSSFeedDescription%>"
				MenuGroupId="500"
				Sequence="400"
				ImageUrl="/_layouts/15/images/MenuRSS.gif?rev=23"
				UseShortId="true"
				RibbonCommand="ViewRSSFeed"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="SubscribeButton"
				Text="<%$Resources:wss,ToolBarMenuItemAlertMe%>"
				Description="<%$Resources:wss,ToolBarMenuItemAlertMeDescription%>"
				PermissionsString="CreateAlerts"
				PermissionContext="CurrentList"
				PermissionMode="Any"
				MenuGroupId="500"
				Sequence="500"
				ImageUrl="/_layouts/15/images/MenuAlert.gif?rev=23"
				UseShortId="true"
				RibbonCommand="AlertMe"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="AddToMyLinksButton"
				Text="<%$Resources:wss,ToolBarMenuItemAddToMyLinks%>"
				MenuGroupId="500"
				Sequence="600"
				UseShortId="true"
				runat="server"/>
		</SharePoint:FeatureMenuTemplate>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="ToolbarActionsMenuForPictureLibrary" runat="server">
	<Template>
		<SharePoint:FeatureMenuTemplate runat="server"
			FeatureScope="Site"
			Location="Microsoft.SharePoint.StandardMenu"
			GroupId="ActionsMenu"
			UseShortId="true"
			>
			<SharePoint:MenuItemTemplate
				ID="EditPictures"
				Text="<%$Resources:wss,ToolBarMenuItemEditPicutres%>"
				Description="<%$Resources:wss,ToolBarMenuItemEditPicutresDescription%>"
				MenuGroupId="100"
				Sequence="100"
				PermissionsString="EditListItems,UseClientIntegration"
				PermissionContext="CurrentList"
				ImageUrl="/_layouts/15/images/MenuEditPictures.gif?rev=23"
				UseShortId="true"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="DeletePictures"
				Text="<%$Resources:wss,ToolBarMenuItemDeletePicutres%>"
				Description="<%$Resources:wss,ToolBarMenuItemDeletePicutresDescription%>"
				PermissionsString="DeleteListItems"
				PermissionContext="CurrentList"
				MenuGroupId="100"
				Sequence="200"
				UseShortId="true"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="DownloadPictures"
				Text="<%$Resources:wss,ToolBarMenuItemDownloadPicutres%>"
				Description="<%$Resources:wss,ToolBarMenuItemDownloadPicutresDescription%>"
				PermissionsString="UseClientIntegration"
				PermissionContext="CurrentList"
				MenuGroupId="100"
				Sequence="300"
				ImageUrl="/_layouts/15/images/MenuDownload.gif?rev=23"
				UseShortId="true"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="SendPictures"
				Text="<%$Resources:wss,ToolBarMenuItemSendPicutres%>"
				Description="<%$Resources:wss,ToolBarMenuItemSendPicutresDescription%>"
				PermissionsString="UseClientIntegration"
				PermissionContext="CurrentList"
				MenuGroupId="100"
				Sequence="400"
				UseShortId="true"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="ViewSlideShow"
				Text="<%$Resources:wss,ToolBarMenuItemViewSlideShow%>"
				Description="<%$Resources:wss,ToolBarMenuItemViewSlideShowDescription%>"
				MenuGroupId="200"
				Sequence="100"
				ImageUrl="/_layouts/15/images/MenuSlideShow.gif?rev=23"
				UseShortId="true"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="OpenInExplorer"
				Text="<%$Resources:wss,ToolBarMenuItemOpenInExplorer%>"
				Description="<%$Resources:wss,ToolBarMenuItemOpenInExplorerDescription%>"
				PermissionsString="UseClientIntegration"
				PermissionContext="CurrentList"
				MenuGroupId="200"
				Sequence="300"
				UseShortId="true"
				RibbonCommand="OpenWithExplorer"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="OfflineButton"
				Description="<%$Resources:wss,ToolBarWorkOfflineOutlookDescription%>"
				PermissionsString="UseClientIntegration"
				PermissionContext="CurrentList"
				MenuGroupId="400"
				Sequence="100"
				ImageUrl="/_layouts/15/images/MenuPIM.gif?rev=23"
				UseShortId="true"
				RibbonCommand="ConnectToClient"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="ViewRSS"
				Text="<%$Resources:wss,ToolBarMenuItemViewRSSFeed%>"
				Description="<%$Resources:wss,ToolBarMenuItemViewRSSFeedDescription%>"
				MenuGroupId="500"
				Sequence="100"
				ImageUrl="/_layouts/15/images/MenuRSS.gif?rev=23"
				UseShortId="true"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="SubscribeButton"
				Text="<%$Resources:wss,ToolBarMenuItemAlertMe%>"
				Description="<%$Resources:wss,ToolBarMenuItemAlertMeDescription%>"
				PermissionsString="CreateAlerts"
				PermissionContext="CurrentList"
				PermissionMode="Any"
				MenuGroupId="500"
				Sequence="200"
				ImageUrl="/_layouts/15/images/MenuAlert.gif?rev=23"
				UseShortId="true"
				runat="server"/>
		</SharePoint:FeatureMenuTemplate>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="ToolbarActionsMenuForSurvey" runat="server">
	<Template>
		<SharePoint:FeatureMenuTemplate runat="server"
			FeatureScope="Site"
			Location="Microsoft.SharePoint.StandardMenu"
			GroupId="ActionsMenuForSurvey"
			UseShortId="true"
			>
			<SharePoint:MenuItemTemplate
				ID="ExportToSpreadsheet"
				Text="<%$Resources:wss,ToolBarMenuItemExportToSpreadsheet%>"
				Description="<%$Resources:wss,ToolBarMenuItemExportToSpreadsheetDescription%>"
				PermissionsString="UseClientIntegration"
				PermissionContext="CurrentList"
				MenuGroupId="800"
				Sequence="100"
				ImageUrl="/_layouts/15/images/MenuSpreadsheet.gif?rev=23"
				UseShortId="true"
				runat="server"/>
			<SharePoint:MenuSeparatorTemplate
				MenuGroupId="800"
				Sequence="300"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="ViewRSS"
				Text="<%$Resources:wss,ToolBarMenuItemViewRSSFeed%>"
				Description="<%$Resources:wss,ToolBarMenuItemViewRSSFeedDescription%>"
				MenuGroupId="800"
				Sequence="400"
				ImageUrl="/_layouts/15/images/MenuRSS.gif?rev=23"
				UseShortId="true"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="SubscribeButton"
				Text="<%$Resources:wss,ToolBarMenuItemAlertMe%>"
				Description="<%$Resources:wss,ToolBarMenuItemAlertMeDescription%>"
				PermissionsString="CreateAlerts"
				PermissionContext="CurrentList"
				PermissionMode="Any"
				MenuGroupId="800"
				Sequence="500"
				ImageUrl="/_layouts/15/images/MenuAlert.gif?rev=23"
				UseShortId="true"
				runat="server"/>
		</SharePoint:FeatureMenuTemplate>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="ToolbarSettingsMenu" runat="server">
	<Template>
		<SharePoint:FeatureMenuTemplate runat="server"
			FeatureScope="Site"
			Location="Microsoft.SharePoint.StandardMenu"
			GroupId="SettingsMenu"
			UseShortId="true"
			>
			<SharePoint:MenuItemTemplate
				ID="AddColumn"
				Text="<%$Resources:wss,ToolBarMenuItemAddColumn%>"
				Description="<%$Resources:wss,ToolBarMenuItemAddColumnDescription%>"
				PermissionsString="ManageLists"
				PermissionContext="CurrentList"
				PermissionMode="Any"
				MenuGroupId="100"
				Sequence="100"
				ImageUrl="/_layouts/15/images/MenuAddColumn.gif?rev=23"
				UseShortId="true"
				RibbonCommand="CreateColumn"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="AddView"
				Text="<%$Resources:wss,ToolBarMenuItemAddView%>"
				Description="<%$Resources:wss,ToolBarMenuItemAddViewDescription%>"
				PermissionsString="ManageLists"
				PermissionContext="CurrentList"
				PermissionMode="Any"
				MenuGroupId="100"
				Sequence="300"
				ImageUrl="/_layouts/15/images/MenuAddView.gif?rev=23"
				UseShortId="true"
				RibbonCommand="CreateView"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="ListSettings"
				PermissionsString="ManageLists"
				PermissionContext="CurrentList"
				PermissionMode="Any"
				ImageUrl="/_layouts/15/images/MenuListSettings.gif?rev=23"
				MenuGroupId="200"
				Sequence="400"
				UseShortId="true"
				RibbonCommand="ListSettings"
				runat="server"/>
		</SharePoint:FeatureMenuTemplate>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="ToolbarSettingsMenuForSurvey" runat="server">
	<Template>
		<SharePoint:FeatureMenuTemplate runat="server"
			FeatureScope="Site"
			Location="Microsoft.SharePoint.StandardMenu"
			GroupId="SettingsMenuForSurvey"
			UseShortId="true"
			>
			<SharePoint:MenuItemTemplate
				ID="AddQuestions"
				Text="<%$Resources:wss,ToolBarMenuItemAddQuestions%>"
				Description="<%$Resources:wss,ToolBarMenuItemAddQuestionsDescription%>"
				PermissionsString="ManageLists"
				PermissionContext="CurrentList"
				PermissionMode="Any"
				MenuGroupId="100"
				Sequence="100"
				UseShortId="true"
				runat="server"/>
			<SharePoint:MenuItemTemplate
				ID="ListSettings"
				Description="<%$Resources:wss,ToolBarMenuItemSurveySettingsDescription%>"
				PermissionsString="ManageLists"
				PermissionContext="CurrentList"
				PermissionMode="Any"
				MenuGroupId="200"
				Sequence="500"
				ImageUrl="/_layouts/15/images/MenuListSettings.gif?rev=23"
				UseShortId="true"
				runat="server"/>
		</SharePoint:FeatureMenuTemplate>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="PagingButton" runat="server">
	<Template>
		<table border="0" cellpadding="0" cellspacing="0" style='margin-right: 4px'>
		<tr>
		<td nowrap="nowrap" class="ms-toolbar" id="topPagingCell<asp:Literal id='WebPartQualifier' runat='server'/>">
		</td>
		</tr>
		</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="ViewSelector" runat="server">
	<Template>
		<table border="0" cellpadding="0" cellspacing="0" style='margin-right: 4px'>
		<tr>
		   <td nowrap="nowrap" class="ms-listheaderlabel"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,view_selector_view%>" EncodeMethod='HtmlEncode'/>&#160;</td>
		   <td nowrap="nowrap" class="ms-viewselector" id="onetViewSelector" onmouseover="this.className='ms-viewselectorhover'" onmouseout="this.className='ms-viewselector'" runat="server">
				<SharePoint:ViewSelectorMenu MenuAlignment="Right" AlignToParent="true" runat="server" id="ViewSelectorMenu" />
			</td>
		</tr>
		</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="AllContentViewSelector" runat="server">
	<Template>
		<table border="0" cellpadding="0" cellspacing="0" style='margin-right: 4px'>
		<tr>
		   <td nowrap="nowrap" class="ms-listheaderlabel"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,view_selector_view%>" EncodeMethod='HtmlEncode'/>&#160;</td>
		   <td nowrap="nowrap" class="ms-viewselector" id="onetViewSelector" onmouseover="this.className='ms-viewselectorhover'" onmouseout="this.className='ms-viewselector'" runat="server">
				<SharePoint:AllContentsViewSelectorMenu MenuAlignment="Right" AlignToParent="true" runat="server"/>
			</td>
		</tr>
		</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="MWSViewSelector" runat="server">
	<Template>
		<table border="0" cellpadding="0" cellspacing="0" style='margin-right: 4px'>
		<tr>
		   <td nowrap="nowrap" class="ms-listheaderlabel"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,view_selector_view%>" EncodeMethod='HtmlEncode'/>&#160;</td>
		   <td nowrap class="ms-viewselector" id="onetViewSelector" onmouseover="this.className='ms-viewselectorhover'" onmouseout="this.className='ms-viewselector'" runat="server">
				<SharePoint:MWSViewSelectorMenu runat="server" id="MWSViewSelectorMenu" />
		   </td>
		</tr>
		</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="HealthRulesDisplayFormToolBar" runat="server">
	<Template>
		<SharePoint:ScriptBlock runat="server">
			recycleBinEnabled = <SharePoint:ProjectProperty Property="RecycleBinEnabled" runat="server"/>;
		</SharePoint:ScriptBlock>
		<wssuc:ToolBar  CssClass="ms-toolbar" id="toolBarTbl" runat="server" FocusOnToolbar=true>
				<Template_Buttons>
					<SharePoint:EditItemButton runat="server"/>
					<SharePoint:HealthRuleRunNowButton runat="server"/>
					<SharePoint:WorkflowsButton runat="server"/>
					<SharePoint:AlertMeButton runat="server"/>
					<SharePoint:VersionHistoryButton runat="server"/>
				 </Template_Buttons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="HealthReportsDisplayFormToolBar" runat="server">
	<Template>
		<SharePoint:ScriptBlock runat="server">
			recycleBinEnabled = <SharePoint:ProjectProperty Property="RecycleBinEnabled" runat="server"/>;
		</SharePoint:ScriptBlock>
		<wssuc:ToolBar  CssClass="ms-toolbar" id="toolBarTbl" runat="server" FocusOnToolbar=true>
				<Template_Buttons>
					<SharePoint:EditItemButton runat="server"/>
					<SharePoint:HealthReportRunNowButton runat="server"/>
					<SharePoint:HealthReportRepairButton runat="server"/>
					<SharePoint:WorkflowsButton runat="server"/>
					<SharePoint:AlertMeButton runat="server"/>
					<SharePoint:VersionHistoryButton runat="server"/>
				 </Template_Buttons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="DistributionListsDisplayFormToolBar" runat="server">
	<Template>
		<SharePoint:ScriptBlock runat="server">
			recycleBinEnabled = <SharePoint:ProjectProperty Property="RecycleBinEnabled" runat="server"/>;
		</SharePoint:ScriptBlock>
		<wssuc:ToolBar  CssClass="ms-toolbar" id="toolBarTbl" runat="server" FocusOnToolbar=true>
				<Template_Buttons>
					<SharePoint:EditItemButton runat="server"/>
					<SharePoint:DistributionListsApprovalButton runat="server"/>
					<SharePoint:WorkflowsButton runat="server"/>
					<SharePoint:AlertMeButton runat="server"/>
					<SharePoint:VersionHistoryButton runat="server"/>
				 </Template_Buttons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="DistributionListsEditFormToolBar" runat="server">
	<Template>
		<SharePoint:ScriptBlock runat="server">
			recycleBinEnabled = <SharePoint:ProjectProperty Property="RecycleBinEnabled" runat="server"/>;
		</SharePoint:ScriptBlock>
		<wssuc:ToolBar CssClass="ms-toolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
				<Template_Buttons>
					<SharePoint:DistributionListsApprovalButton runat="server"/>
				 </Template_Buttons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="HealthRulesListsDisplayFormToolBar" runat="server">
	<Template>
		<SharePoint:ScriptBlock runat="server">
			recycleBinEnabled = <SharePoint:ProjectProperty Property="RecycleBinEnabled" runat="server"/>;
		</SharePoint:ScriptBlock>
		<wssuc:ToolBar  CssClass="ms-toolbar" id="toolBarTbl" runat="server" FocusOnToolbar=true>
				<Template_Buttons>
					<SharePoint:EditItemButton runat="server"/>
					<SharePoint:HealthRuleRunNowButton runat="server"/>
					<SharePoint:WorkflowsButton runat="server"/>
					<SharePoint:AlertMeButton runat="server"/>
					<SharePoint:VersionHistoryButton runat="server"/>
				 </Template_Buttons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="HealthReportsListsDisplayFormToolBar" runat="server">
	<Template>
		<SharePoint:ScriptBlock runat="server">
			recycleBinEnabled = <SharePoint:ProjectProperty Property="RecycleBinEnabled" runat="server"/>;
		</SharePoint:ScriptBlock>
		<wssuc:ToolBar  CssClass="ms-toolbar" id="toolBarTbl" runat="server" FocusOnToolbar=true>
				<Template_Buttons>
					<SharePoint:HealthRuleRunNowButton runat="server"/>
					<SharePoint:WorkflowsButton runat="server"/>
					<SharePoint:AlertMeButton runat="server"/>
					<SharePoint:VersionHistoryButton runat="server"/>
				 </Template_Buttons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CalendarViewmonthChrome" runat="server">
	<Template>
	  <div id="MontlyViewDefault_CalendarView" style="display:block; overflow:auto; width:<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ChromeWidth",""))%>; height:<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ChromeHeight",""))%>; "  dir="<%# DataBinder.Eval(Container,"Direction","")%>">
	  <input type="hidden" id="ExpandedWeeksId" name="ExpandedWeeks" value="" />
	  <table border="0" width="100%" id="CalViewTable1" style="border-collapse: collapse"  cellpadding="0">
			<tr><td class="ms-calheader"><img src="/_layouts/15/images/blank.gif?rev=23" width='742' height='1' alt="" /></td></tr>
			<tr>
			   <td class="ms-calheader">
			   <table border="0" width="100%" cellspacing="1" cellpadding="0" id="CalViewTable12" style="border-collapse: collapse">
					<tr>
						<td nowrap="nowrap">
							<div class="ms-cal-navheader" nowrap="nowrap">
							  <a href="javascript:MoveToViewDate('<%# DataBinder.Eval(Container,"PreviousDate","") %>', null);" tabindex="1" style="visibility:<%# DataBinder.Eval(Container,"PreviousDateVisible","")%>" accesskey="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_prev_AK%>' EncodeMethod='HtmlEncode'/>">
								<img border="0" src="/_layouts/15/images/prevbutton<%# DataBinder.Eval(Container,"Direction","")%>.gif" width="15" height="15" alt="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_prevmonth%>' EncodeMethod='HtmlEncode'/>" /></a>
							   <a href="javascript:MoveToViewDate('<%# DataBinder.Eval(Container,"NextDate","") %>', null);" tabindex="1" style="visibility:<%# DataBinder.Eval(Container,"NextDateVisible","")%>" accesskey="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_next_AK%>' EncodeMethod='HtmlEncode'/>" >
								<img border="0" src="/_layouts/15/images/nextbutton<%# DataBinder.Eval(Container,"Direction","")%>.gif" width="15" height="15" alt="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_nextmonth%>' EncodeMethod='HtmlEncode'/>" /></a>
							  &#160;<%# DataBinder.Eval(Container,"HeaderDate","") %>&#160;
							 </div>
						</td>
						<td>&#160;</td>
						<td class="ms-cal-nav-buttons<%# DataBinder.Eval(Container,"Direction","")%>">
							<span id="ExpandAllId" dir="<%# DataBinder.Eval(Container,"Direction","")%>">
							  <a href="javascript:" class="ms-cal-nav" onclick="javascript:GetMonthView('1111111');return false;" tabindex="1" accesskey="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_expandall_AK%>' EncodeMethod='HtmlEncode'/>" nowrap="nowrap" ><nobr><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,calendar_expandall%>" EncodeMethod='HtmlEncode'/></nobr></a>
							</span>
							&#160;
							<span id="CollapseAllId" dir="<%# DataBinder.Eval(Container,"Direction","")%>">
							  <a href="javascript:" class="ms-cal-nav" onclick="javascript:GetMonthView('0000000');return false;" tabindex="1" accesskey="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_collapseall_AK%>' EncodeMethod='HtmlEncode'/>" nowrap="nowrap" ><nobr><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,calendar_collapseall%>" EncodeMethod='HtmlEncode'/></nobr></a>
							</span>
							<span> &#160;|</span>
						  <Sharepoint:SPCalendarTabs runat="server"
							SelectedViewTab='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ViewType","")) %>'
							ListName='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ListName","")) %>'
							ViewGuid='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ViewName","")) %>'
						  >
						  </Sharepoint:SPCalendarTabs>
						</td>
					</tr>
				</table>
			   </td>
			</tr>
			<tr>
			  <td>
				  <Sharepoint:MonthlyCalendarView runat="server"
					SelectedDate='<%# DataBinder.Eval(Container,"SelectedDate","") %>'
					ExpandedWeeks='<%# SPHttpUtility.HtmlEncode( DataBinder.Eval(Container,"ExpandedWeeks","")) %>'
					ItemTemplateName="CalendarViewMonthItemTemplate"
					ItemAllDayTemplateName="CalendarViewMonthItemAllDayTemplate"
					ItemMultiDayTemplateName="CalendarViewMonthItemMultiDayTemplate"
					TabIndex="2"
				  >
				  </Sharepoint:MonthlyCalendarView>
			  </td>
			</tr>
	   </table>
	  </div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CalendarViewweekChrome" runat="server">
	<Template>
	 <div id="WeeklyViewDefault_CalendarView" style="display:block; overflow:auto; width:<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ChromeWidth",""))%>; height:<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ChromeHeight",""))%>;"  dir="<%# DataBinder.Eval(Container,"Direction","")%>" >
	  <table border="0" width="100%" id="CalViewTable1" style="border-collapse: collapse" cellpadding="0">
			<tr><td class="ms-calheader" ><img src="/_layouts/15/images/blank.gif?rev=23" width='742' height='1' alt="" /></td></tr>
			<tr>
			   <td class="ms-calheader">
			   <table border="0" width="100%" cellspacing="1" cellpadding="0" id="CalViewTable12" style="border-collapse: collapse">
					<tr>
						<td nowrap="nowrap">
							<div class="ms-cal-navheader" nowrap="nowrap">
							  <a href="javascript:MoveToDate('<%# DataBinder.Eval(Container,"PreviousDate","") %>');" tabindex="1" style="visibility:<%# DataBinder.Eval(Container,"PreviousDateVisible","")%>" accesskey="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_prev_AK%>' EncodeMethod='HtmlEncode'/>" >
								<img border="0" src="/_layouts/15/images/prevbutton<%# DataBinder.Eval(Container,"Direction","")%>.gif" width="15" height="15" alt="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_prevweek%>' EncodeMethod='HtmlEncode'/>" /></a>
							  <a href="javascript:MoveToDate('<%# DataBinder.Eval(Container,"NextDate","") %>');" tabindex="1" style="visibility:<%# DataBinder.Eval(Container,"NextDateVisible","")%>" accesskey="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_next_AK%>' EncodeMethod='HtmlEncode'/>">
								<img border="0" src="/_layouts/15/images/nextbutton<%# DataBinder.Eval(Container,"Direction","")%>.gif" width="15" height="15" alt="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_nextweek%>' EncodeMethod='HtmlEncode'/>" /></a>
							  &#160;<%# DataBinder.Eval(Container,"HeaderDate","") %>&#160;
							 </div>
						</td>
						<td>&#160;</td>
						<td class="ms-cal-nav-buttons<%# DataBinder.Eval(Container,"Direction","")%>">
						  <Sharepoint:SPCalendarTabs runat="server"
							SelectedViewTab='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ViewType","")) %>'
							ListName='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ListName","")) %>'
							ViewGuid='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ViewName","")) %>'
						  >
						  </Sharepoint:SPCalendarTabs>
						</td>
					</tr>
				</table>
			   </td>
			</tr>
			<tr>
			<td>
				<Sharepoint:WeeklyCalendarView runat="server"
					SelectedDate='<%# DataBinder.Eval(Container,"SelectedDate","") %>'
					ItemTemplateName="CalendarViewWeekItemTemplate"
					ItemAllDayTemplateName="CalendarViewWeekItemAllDayTemplate"
					ItemMultiDayTemplateName="CalendarViewWeekItemMultiDayTemplate"
					TabIndex=2
				>
				</Sharepoint:WeeklyCalendarView>
			</td>
			</tr>
		 </table>
	</div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CalendarViewdayChrome" runat="server">
	<Template>
	 <div id=DailyViewDefault_CalendarView style="display:block; overflow:auto; width:<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ChromeWidth",""))%>; height:<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ChromeHeight",""))%>;"  dir="<%# DataBinder.Eval(Container,"Direction","")%>" >
	  <table border="0" width="100%" id="CalViewTable1" style="border-collapse: collapse"  cellpadding="0">
			<tr><td class="ms-calheader"><img src="/_layouts/15/images/blank.gif?rev=23" width='742' height='1' alt="" /></td></tr>
			<tr>
			   <td class="ms-calheader" >
			   <table border="0" width="100%" cellspacing="1" cellpadding="0" id="CalViewTable12" style="border-collapse: collapse">
					<tr>
						<td nowrap="nowrap">
							<div class="ms-cal-navheader" nowrap="nowrap">
							  <a href="javascript:MoveToDate('<%# DataBinder.Eval(Container,"PreviousDate","") %>');" tabindex=1 style="visibility:<%# DataBinder.Eval(Container,"PreviousDateVisible","")%>" accesskey="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_prev_AK%>' EncodeMethod='HtmlEncode'/>">
								<img border="0" src="/_layouts/15/images/prevbutton<%# DataBinder.Eval(Container,"Direction","")%>.gif" width="15" height="15" alt="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_prevday%>' EncodeMethod='HtmlEncode'/>" /></a>
							  <a href="javascript:MoveToDate('<%# DataBinder.Eval(Container,"NextDate","") %>');" tabindex=1 style="visibility:<%# DataBinder.Eval(Container,"NextDateVisible","")%>" accesskey="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_next_AK%>' EncodeMethod='HtmlEncode'/>">
							  <img border="0" src="/_layouts/15/images/nextbutton<%# DataBinder.Eval(Container,"Direction","")%>.gif" width="15" height="15" alt="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_nextday%>' EncodeMethod='HtmlEncode'/>" /></a>
							  &#160;<%# DataBinder.Eval(Container,"HeaderDate","") %>&#160;
							 </div>
						</td>
						<td>&#160;</td>
						<td class="ms-cal-nav-buttons<%# DataBinder.Eval(Container,"Direction","")%>">
						  <Sharepoint:SPCalendarTabs runat="server"
							SelectedViewTab='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ViewType","")) %>'
							ListName='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ListName","")) %>'
							ViewGuid='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ViewName","")) %>'
						  >
						  </Sharepoint:SPCalendarTabs>
						</td>
					  </tr>
				</table>
			   </td>
			</tr>
			<tr>
			<td>
				<Sharepoint:DailyCalendarView runat="server"
					SelectedDate='<%# DataBinder.Eval(Container,"SelectedDate","") %>'
					ItemTemplateName="CalendarViewDayItemTemplate"
					ItemAllDayTemplateName="CalendarViewDayItemAllDayTemplate"
					ItemMultiDayTemplateName="CalendarViewDayItemMultiDayTemplate"
										>
				</Sharepoint:DailyCalendarView>
			</td>
			</tr>
		 </table>
	   </div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CalendarViewcustomChrome" runat="server">
	<Template>
	  <input type="hidden" id="ExpandedWeeksId" name="ExpandedWeeks" value="" />
	 <div id="CustomViewDefault_CalendarView" style="display:block; overflow:auto; width:<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ChromeWidth",""))%>; height:<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ChromeHeight",""))%>;"  dir="<%# DataBinder.Eval(Container,"Direction","")%>" >
	  <table border="0" width="100%" id="CalViewTable1" bgcolor="#D2D2DF" style="border-collapse: collapse" cellpadding="0">
			<tr>
			   <td class="ms-calheader">
			   <table border="0" width="100%" cellspacing="1" cellpadding="0" id="CalViewTable12" style="border-collapse: collapse">
					<tr>
						<td nowrap="nowrap">
							<div class="ms-cal-navheader" nowrap="nowrap">
							  <a href="javascript:MoveToDate('<%# DataBinder.Eval(Container,"PreviousDate","") %>');" style="visibility:<%# DataBinder.Eval(Container,"PreviousDateVisible","")%>" accesskey="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_prev_AK%>' EncodeMethod='HtmlEncode'/>" >
								<img border="0" src="/_layouts/15/images/prevbutton<%# DataBinder.Eval(Container,"Direction","")%>.gif" width="15" height="15" alt="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_prevmonth%>' EncodeMethod='HtmlEncode'/>" /></a>
							  <a href="javascript:MoveToDate('<%# DataBinder.Eval(Container,"NextDate","") %>');" style="visibility:<%# DataBinder.Eval(Container,"NextDateVisible","")%>" accesskey="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_next_AK%>' EncodeMethod='HtmlEncode'/>">
								<img border="0" src="/_layouts/15/images/nextbutton<%# DataBinder.Eval(Container,"Direction","")%>.gif" width="15" height="15" alt="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_nextmonth%>' EncodeMethod='HtmlEncode'/>" /></a>
							  &#160;<%# DataBinder.Eval(Container,"HeaderDate","") %>&#160;
							 </div>
						</td>
						<td>&#160;</td>
						<td class="ms-cal-nav-buttons<%# DataBinder.Eval(Container,"Direction","")%>">
							<span id="ExpandAllId" >
							  <a href="javascript:" class="ms-cal-more" onclick="javascript:GetMonthView('1111111');return false;"><nobr><img border="0" src="/_layouts/15/images/expandbttn.gif" width="9" height="9" tabindex="1" alt="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_expandall%>' EncodeMethod='HtmlEncode'/>" />&#160;<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,calendar_expandall%>" EncodeMethod='HtmlEncode'/>&#160;</nobr></a>
							</span>
							<span id="CollapseAllId">
							  <a href="javascript:" class="ms-cal-more" onclick="javascript:GetMonthView('0000000');return false;"><nobr><img border="0" src="/_layouts/15/images/collapsebttn.gif" width="9" height="9" tabindex="1" alt="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_collapseall%>' EncodeMethod='HtmlEncode'/>" />&#160;<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,calendar_collapseall%>" EncodeMethod='HtmlEncode'/>&#160;</nobr></a>
							</span>
						 </td>
						 <td>
						<td class="ms-cal-nav-buttons<%# DataBinder.Eval(Container,"Direction","")%>">
							<Sharepoint:SPCalendarTabs runat="server"
							  SelectedViewTab='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ViewType","") )%>'
							  ListName='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ListName","")) %>'
							  ViewGuid='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ViewName","")) %>'
							 >
							</Sharepoint:SPCalendarTabs>
						</td>
					</tr>
				</table>
			   </td>
			</tr>
			<tr>
			<td>
			<table width="100%" cellspacing="1" cellpadding="0" id="CalViewTable12" style="border-collapse: collapse">
			<tr height="100%">
						<td> &#160;</td>
				<td height="100%" width="50%">
					<Sharepoint:MonthlyCalendarView runat="server"
						SelectedDate='<%# DataBinder.Eval(Container,"SelectedDate","") %>'
						ItemTemplateName="CalendarViewMonthItemTemplate"
						ItemAllDayTemplateName="CalendarViewMonthtemAllDayTemplate"
						ItemMultiDayTemplateName="CalendarViewMonthItemMultiDayTemplate"
					>
					</Sharepoint:MonthlyCalendarView>
				</td>
				<td height="100%" width="50%">
					<Sharepoint:DailyCalendarView runat="server"
						SelectedDate='<%# DataBinder.Eval(Container,"SelectedDate","") %>'
						ItemTemplateName="CalendarViewDayItemTemplate"
						ItemAllDayTemplateName="CalendarViewDayItemAllDayTemplate"
						ItemMultiDayTemplateName="CalendarViewDayItemMultiDayTemplate"
											>
					</Sharepoint:DailyCalendarView>
				</td>
			</tr></table>
			</td>
			</tr>
		 </table>
	   </div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CalendarViewV4CustomChrome" runat="server">
  <Template>
	<div id="AsynchronousViewDefault_CalendarView">
	<div width="100%" class="ms-acal-header">
	<table cellspacing="0" cellpadding="0" width="100%"><tr>
	  <td style="width:24px"><a id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_nav_prev_a"
		href="javascript:MoveToDate('<%# DataBinder.Eval(Container,"PreviousDate","") %>','<%# DataBinder.Eval(Container, "Qualifier", "") %>');"
	  ><img id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_nav_prev_img"
		src="/_layouts/15/<%=System.Threading.Thread.CurrentThread.CurrentUICulture.LCID%>/images/calprev.png"
		width="19" height="19"
	  /></a></td>
	  <td style="width:24px"><a id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_nav_next_a"
		href="javascript:MoveToDate('<%# DataBinder.Eval(Container,"NextDate","") %>','<%# DataBinder.Eval(Container, "Qualifier", "") %>');"
	  ><img id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_nav_next_img"
		src="/_layouts/15/<%=System.Threading.Thread.CurrentThread.CurrentUICulture.LCID%>/images/calnext.png"
		width="19" height="19"/></a></td>
	  <td nowrap="nowrap"><span id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_nav_header" class="ms-acal-display">
		<%# DataBinder.Eval(Container,"HeaderDate","") %>
	  </span></td>
	  <td align="right" nowrap="nowrap">
	  <asp:PlaceHolder id="ExpandCollapse" runat="server">
	  <span id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_ExpandCollapseAll">
		<span id="ExpandAllId">
		  <a href="javascript:void(0);" class="ms-cal-nav"><nobr><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,calendar_expandall%>" EncodeMethod='HtmlEncode'/></nobr></a>
		</span>
		&#160;
		<span id="CollapseAllId">
		  <a href="javascript:void(0);" class="ms-cal-nav"><nobr><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,calendar_collapseall%>" EncodeMethod='HtmlEncode'/></nobr></a>
		</span>
		<span> &#160;|</span>
	  </span>
	  </asp:PlaceHolder>
	  <Sharepoint:SPCalendarTabs runat="server"
		SelectedViewTab='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ViewType","") )%>'
		ListName='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ListName","")) %>'
		ViewGuid='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ViewName","")) %>'
		/>
	  </td>
	</tr></table>
	</div>
	<div class="ms-acal-error" id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_err" style="display:none"></div>
	<ApplicationPages:AjaxCalendarView runat="server"
	  CtxId='<%# DataBinder.Eval(Container,"Qualifier", "") %>'
	  SelectedDate='<%# DataBinder.Eval(Container,"SelectedDate","") %>'
	  ViewType='<%# DataBinder.Eval(Container, "ViewType","") %>'
	  />
	</div>
  </Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CalendarViewAsynchronousChrome" runat="server">
  <Template>
	<div id="AsynchronousViewDefault_CalendarView">
	<div width="100%" class="ms-acal-header">
	<table cellspacing="0" cellpadding="0" width="100%"><tr>
	  <td style="width:24px"><a id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_nav_prev_a"
		href="javascript:MoveToDate('<%# DataBinder.Eval(Container,"PreviousDate","") %>','<%# DataBinder.Eval(Container, "Qualifier", "") %>');"
	  ><img id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_nav_prev_img"
		src="/_layouts/15/<%=System.Threading.Thread.CurrentThread.CurrentUICulture.LCID%>/images/calprev.png"
		width="19" height="19")
	  /></a></td>
	  <td style="width:24px"><a id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_nav_next_a"
		href="javascript:MoveToDate('<%# DataBinder.Eval(Container,"NextDate","") %>','<%# DataBinder.Eval(Container, "Qualifier", "") %>');"
	  ><img id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_nav_next_img"
		src="/_layouts/15/<%=System.Threading.Thread.CurrentThread.CurrentUICulture.LCID%>/images/calnext.png"
		width="19" height="19"/></a></td>
	  <td><span id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_nav_header" class="ms-acal-display">
		<%# DataBinder.Eval(Container,"HeaderDate","") %>
	  </span></td>
	  <td align="right" id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_entitySpan" class="ms-acal-headerentity"></td>
	</tr></table>
	</div>
	<div class="ms-acal-error" id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_err" style="display:none"></div>
	<ApplicationPages:AjaxCalendarView runat="server"
	  CtxId='<%# DataBinder.Eval(Container,"Qualifier", "") %>'
	  SelectedDate='<%# DataBinder.Eval(Container,"SelectedDate","") %>'
	  ViewType='<%# DataBinder.Eval(Container, "ViewType","") %>'
	  />
	<div id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_Pagination" width="100%" class="ms-acal-page" style="display:none" align="center">
	  <table><tr>
		<td><a id="page_prev" href="javascript:void(0);"><img border="0" src="/_layouts/15/<%=System.Threading.Thread.CurrentThread.CurrentUICulture.LCID%>/images/prev.gif" alt="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_prevpage%>' EncodeMethod='HtmlEncode'/>" /></a></td>
		<td style="white-space:nowrap;"></td>
		<td><a id="page_next" href="javascript:void(0);"><img border="0" src="/_layouts/15/<%=System.Threading.Thread.CurrentThread.CurrentUICulture.LCID%>/images/next.gif" alt="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_nextpage%>' EncodeMethod='HtmlEncode'/>" /></a></td>
	  </tr></table>
	</div>
	<div style="display:none">
		<SharePoint:PeopleEditor
		  id="PeopleSelector"
		  MultiSelect="true"
		  ValidatorEnabled="true"
		  SelectionSet="User,SPGroup"
		  runat="server"/>
	</div>
	</div>
  </Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CalendarViewV3AsynchronousChrome" runat="server">
	<Template>
	  <div id="AsynchronousViewDefault_CalendarView" style="display:block; overflow:auto; width:<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ChromeWidth",""))%>; height:<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ChromeHeight",""))%>; "  dir="<%# DataBinder.Eval(Container,"Direction","")%>">
	  <input type="hidden" id="ExpandedWeeksId" name="ExpandedWeeks" value="" />
	  <table border="0" width="100%" id="CalViewTable1" style="border-collapse: collapse"  cellpadding="0">
			<tr><td class="ms-calheader"><img src="/_layouts/15/images/blank.gif?rev=23" width='742' height='1' alt="" /></td></tr>
			<tr>
			   <td class="ms-calheader">
			   <table border="0" width="100%" cellspacing="1" cellpadding="0" id="CalViewTable12" style="border-collapse: collapse">
					<tr>
						<td rowspan="2" nowrap="nowrap">
							<table border="0" cellpadding="0" style="border-collapse: collapse">
							  <tr>
							   <td>
								<div class="ms-cal-navheader" nowrap="nowrap">
								  <a id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_nav_prev_a"
									href="javascript:MoveToDate('<%# DataBinder.Eval(Container,"PreviousDate","") %>','<%# DataBinder.Eval(Container, "Qualifier", "") %>');"
									accesskey="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_prev_AK%>' EncodeMethod='HtmlEncode'/>">
									<img id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_nav_prev_img" border="0" src="/_layouts/15/images/prevbutton<%# DataBinder.Eval(Container,"Direction","")%>.gif" width="15" height="15"/></a>
								  <a id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_nav_next_a"
									href="javascript:MoveToDate('<%# DataBinder.Eval(Container,"NextDate","") %>','<%# DataBinder.Eval(Container, "Qualifier", "") %>');"
									accesskey="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_next_AK%>' EncodeMethod='HtmlEncode'/>" >
									<img id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_nav_next_img" border="0" src="/_layouts/15/images/nextbutton<%# DataBinder.Eval(Container,"Direction","")%>.gif" width="15" height="15"/></a>
								</div>
							   </td>
							   <td>
								<div id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_nav_header" class="ms-cal-navheader" nowrap="nowrap">
								  <%# DataBinder.Eval(Container,"HeaderDate","") %>&#160;
								</div>
							   </td>
							  </tr>
							  <tr>
							   <td></td>
							   <td>
								<span id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_entitySpan" class="ms-cal-selectedname"></span>
							   </td>
							  </tr>
							</table>
						</td>
						<td>&#160;</td>
						<td class="ms-cal-nav-buttons<%# DataBinder.Eval(Container,"Direction","")%>" nowrap="nowrap">
						  <asp:PlaceHolder id="ExpandCollapse" runat="server">
						  <span id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_ExpandCollapseAll">
							<span id="ExpandAllId">
							  <a href="javascript:void(0);" class="ms-cal-nav"><nobr><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,calendar_expandall%>" EncodeMethod='HtmlEncode'/></nobr></a>
							</span>
							&#160;
							<span id="CollapseAllId">
							  <a href="javascript:void(0);" class="ms-cal-nav"><nobr><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,calendar_collapseall%>" EncodeMethod='HtmlEncode'/></nobr></a>
							</span>
							<span> &#160;|</span>
						  </span>
						  </asp:PlaceHolder>
						  <Sharepoint:SPCalendarTabs runat="server"
							SelectedViewTab='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ViewType","")) %>'
							ListName='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ListName","")) %>'
							ViewGuid='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"ViewName","")) %>'
						  >
						  </Sharepoint:SPCalendarTabs>
						</td>
					</tr>
					<tr>
						<td colspan="2"></td>
					</tr>
				</table>
			   </td>
			</tr>
			<tr><td class="ms-calheader">
				<table class="ms-selector-table">
				<asp:PlaceHolder id="PeopleSelector" runat="server">
				<tr>
				  <td class="ms-selector-header-inside"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,peopleselector_title%>" EncodeMethod='HtmlEncode'/></td>
				  <td>
					<ApplicationPages:V3PeopleSelector
							id="navPeopleSelector"
							ValidatorEnabled="true"
							PlaceButtonsUnderEntityEditor="false"
							SelectionSet="User,SPGroup"
							Rows="1"
							Width="250px"
							runat="server"
							ScopeKey='<%# DataBinder.Eval(Container, "Qualifier", "") %>'
						/>
				  </td>
				</tr>
				</asp:PlaceHolder>
				<asp:PlaceHolder id="ResourceSelector" runat="server">
				<tr>
				  <td class="ms-selector-header-inside"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,resourceselector_title%>" EncodeMethod='HtmlEncode'/></td>
				  <td class="ms-selector-resource">
					<ApplicationPages:V3ResourceSelector
							runat="server"
							id="navResourceSelector"
							CssClass="ms-selector-resource"
							labelText="<%$Resources:wss,resourceselector_noresource%>"
							Width="180px"
							EventList='<%# DataBinder.Eval(Container, "ListName", "") %>'
								ScopeKey='<%# DataBinder.Eval(Container, "Qualifier", "") %>'
						/>
				  </td>
				</tr>
				</asp:PlaceHolder>
				<asp:PlaceHolder id="ResourceListErrorMessage" Visible="false" runat="server">
				<tr>
				  <td/>
				  <td class="ms-selector-error"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,resourcelist_exceeds_limit%>" EncodeMethod='HtmlEncode'/></td>
				</tr>
				</asp:PlaceHolder>
				</table>
			</td></tr>
			<tr>
			<td>
				<div class="ms-acal-error" id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_err" style="display:none"></div>
			</td>
			</tr>
			<tr>
			  <td>
				  <ApplicationPages:AjaxCalendarView runat="server"
					CtxId='<%# DataBinder.Eval(Container,"Qualifier", "") %>'
					SelectedDate='<%# DataBinder.Eval(Container,"SelectedDate","") %>'
					ViewType='<%# DataBinder.Eval(Container, "ViewType","") %>'
				  >
				  </ApplicationPages:AjaxCalendarView>
			  </td>
			</tr>
			<tr>
			  <td>
				<div id="<%# DataBinder.Eval(Container, "Qualifier", "") %>_Pagination" width="100%" class="ms-acal-page" style="display:none" align="center">
				  <table><tr>
					<td><a id="page_prev" href="javascript:void(0);"><img border="0" src="/_layouts/15/<%=System.Threading.Thread.CurrentThread.CurrentUICulture.LCID%>/images/prev.gif" alt="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_prevpage%>' EncodeMethod='HtmlEncode'/>" /></a></td>
					<td style="white-space:nowrap;"></td>
					<td><a id="page_next" href="javascript:void(0);"><img border="0" src="/_layouts/15/<%=System.Threading.Thread.CurrentThread.CurrentUICulture.LCID%>/images/next.gif" alt="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,calendar_nextpage%>' EncodeMethod='HtmlEncode'/>" /></a></td>
				  </tr></table>
				</div>
			  </td>
			</tr>
	   </table>
	  </div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CalendarViewItemTemplate" runat="server">
	<Template>
	  <div dir="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Direction",""))%>" >
	  <a onfocus="OnLink(this)"
		align="center"
		href="<%# SPHttpUtility.HtmlUrlAttributeEncode(DataBinder.Eval(Container,"DataItem.DisplayFormUrl",""))%>?ID=<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ItemID",""))%>"
		onclick="GoToLink(this);return false;" target="_self"
	tabindex=<%# DataBinder.Eval(Container,"TabIndex")%>
	>
		<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Title",""))%>
		</a>
	  </div><br />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CalendarViewMonthItemTemplate" runat="server">
	<Template>
	<table border="0" cellspacing="0" cellpadding="0" dir="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Direction",""))%>">
	<tr>
	<td class="ms-cal-monthitem">
	  <a onfocus="OnLink(this)"
		href="<%# SPHttpUtility.HtmlUrlAttributeEncode(DataBinder.Eval(Container,"DataItem.DisplayFormUrl",""))%>?ID=<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ItemID",""))%>"
		onclick="GoToLink(this);return false;" target="_self"
		tabindex="<%# DataBinder.Eval(Container,"TabIndex")%>"
	  >
		<nobr><b><%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DateTimeString","{0:G}"))%></b></nobr><br />
		<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Title","{0:G}"))%>
		</a>
	 </td></tr></table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CalendarViewMonthItemAllDayTemplate" runat="server">
	<Template>
	<div class="<%# DataBinder.Eval(Container,"DivClass","")%>" dir="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Direction",""))%>" >
	<table border="0" width="100%" cellspacing="0" cellpadding="0" dir="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Direction",""))%>" >
	<tr>
	<td class="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.BackgroundColorClassName",""))%>"
		onmouseover="this.className='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.BackgroundColorClassName",""))%>sel';"
		onmouseout="this.className='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.BackgroundColorClassName",""))%>';"
		href="<%# SPHttpUtility.HtmlUrlAttributeEncode(DataBinder.Eval(Container,"DataItem.DisplayFormUrl",""))%>?ID=<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ItemID",""))%>"
		onclick="GoToLink(this);return false;" target="_self"
	>
	  <a onfocus="OnLink(this)"
		href="<%# SPHttpUtility.HtmlUrlAttributeEncode(DataBinder.Eval(Container,"DataItem.DisplayFormUrl",""))%>?ID=<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ItemID",""))%>"
		onclick="GoToLink(this);return false;" target="_self"
		tabindex="<%# DataBinder.Eval(Container,"TabIndex")%>"
	  >
		<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Title","{0:G}"))%>
		</a>
		</td></tr></table>
	</div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CalendarViewMonthItemMultiDayTemplate" runat="server">
	<Template>
	 <div class="<%# DataBinder.Eval(Container,"DivClass","")%>" dir="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Direction",""))%>" >
	  <table border="0" width="100%" cellspacing="0" cellpadding="0" dir="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Direction",""))%>" >
		<tr>
		<td class="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.BackgroundColorClassName",""))%>"
		onmouseover="this.className='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.BackgroundColorClassName",""))%>sel';"
		onmouseout="this.className='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.BackgroundColorClassName",""))%>';"
		href="<%# SPHttpUtility.HtmlUrlAttributeEncode(DataBinder.Eval(Container,"DataItem.DisplayFormUrl",""))%>?ID=<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ItemID",""))%>"
		onclick="GoToLink(this);return false;" target="_self"
		>
			<a onfocus="OnLink(this)"
			 href="<%# SPHttpUtility.HtmlUrlAttributeEncode(DataBinder.Eval(Container,"DataItem.DisplayFormUrl",""))%>?ID=<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ItemID",""))%>"
			 onclick="GoToLink(this);return false;" target="_self"
			 tabindex="<%# DataBinder.Eval(Container,"TabIndex")%>"
		 >
			 <b><%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Title","{0:G}"))%></b>
			</a>
		</td>
		</tr>
	  </table>
	 </div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CalendarViewDayItemTemplate" runat="server">
	<Template>
	<table cellpadding="0" cellspacing="0" border="0" class=ms-cal-tdayitem dir="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Direction",""))%>">
	<tr>
		<td valign="top"
		href="<%# SPHttpUtility.HtmlUrlAttributeEncode(DataBinder.Eval(Container,"DataItem.DisplayFormUrl",""))%>?ID=<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ItemID",""))%>"
		onclick="GoToLink(this);return false;" target="_self"
		 >
		  <div>
		  <img src="/_layouts/15/images/blank.gif?rev=23" width='50' height='1' alt="" /><br />
		  <img src="/_layouts/15/images/recursml<%# DataBinder.Eval(Container,"ExceptionExtension","")%>.gif" class="<%# DataBinder.Eval(Container,"RecurrenceIconVisible")%>" alt="<%# DataBinder.Eval(Container,"ToolTip","")%>" align="absmiddle" />
		  <a onfocus="OnLink(this)"
			class="ms-cal-dayitem"
			href="<%# SPHttpUtility.HtmlUrlAttributeEncode(DataBinder.Eval(Container,"DataItem.DisplayFormUrl",""))%>?ID=<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ItemID",""))%>"
			onclick="GoToLink(this);return false;" target="_self"
			tabindex=<%# DataBinder.Eval(Container,"TabIndex")%>
			>
			<nobr><%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DateTimeString","{0:G}"))%></nobr>
			<%# DataBinder.Eval(Container,"MultiLineBreak","{0:G}")%>
			<b><%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Title","{0:G}"))%></b>
			<%# DataBinder.Eval(Container,"MultiLineBreak","{0:G}")%>
			<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Location","{0:G}"))%>
			</a>
		  </div>
		 </td>
	 </tr>
	</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CalendarViewDayItemAllDayTemplate" runat="server">
	<Template>
	<div class="<%# DataBinder.Eval(Container,"DivClass","")%>" dir="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Direction",""))%>" >
	<table border="0" width="100%" cellspacing="0" cellpadding="0" dir="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Direction",""))%>">
	<tr>
	<td class="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.BackgroundColorClassName",""))%>"
		onmouseover="this.className='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.BackgroundColorClassName",""))%>sel';"
		onmouseout="this.className='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.BackgroundColorClassName",""))%>';"
		href="<%# SPHttpUtility.HtmlUrlAttributeEncode(DataBinder.Eval(Container,"DataItem.DisplayFormUrl",""))%>?ID=<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ItemID",""))%>"
		onclick="GoToLink(this);return false;" target="_self"
	>
		<img src="/_layouts/15/images/recursml<%# DataBinder.Eval(Container,"ExceptionExtension","")%>.gif" class="<%# DataBinder.Eval(Container,"RecurrenceIconVisible")%>" alt="<%# DataBinder.Eval(Container,"ToolTip","")%>" align="absmiddle" />
		<a onfocus="OnLink(this)"
		href="<%# SPHttpUtility.HtmlUrlAttributeEncode(DataBinder.Eval(Container,"DataItem.DisplayFormUrl",""))%>?ID=<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ItemID",""))%>"
		onclick="GoToLink(this);return false;" target="_self"
		tabindex="<%# DataBinder.Eval(Container,"TabIndex")%>"
	 >
		<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Title","{0:G}"))%>
		</a>
		</td></tr></table>
	</div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CalendarViewDayItemMultiDayTemplate" runat="server">
	<Template>
	 <div class="<%# DataBinder.Eval(Container,"DivClass","")%>" dir="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Direction",""))%>" >
	  <table border="0" cellspacing="0" cellpadding="0" width="100%" dir="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Direction",""))%>" >
		<tr>
		<td class="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.BackgroundColorClassName",""))%>"
		 onmouseover="this.className='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.BackgroundColorClassName",""))%>sel';"
		 onmouseout="this.className='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.BackgroundColorClassName",""))%>';"
		 href="<%# SPHttpUtility.HtmlUrlAttributeEncode(DataBinder.Eval(Container,"DataItem.DisplayFormUrl",""))%>?ID=<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ItemID",""))%>"
		 onclick="GoToLink(this);return false;" target="_self"
		>
			<img src="/_layouts/15/images/recursml<%# DataBinder.Eval(Container,"ExceptionExtension","")%>.gif" class="<%# DataBinder.Eval(Container,"RecurrenceIconVisible")%>" alt="<%# DataBinder.Eval(Container,"ToolTip","")%>" align="absmiddle" />
			<a onfocus="OnLink(this)"
			class="ms-cal-dayMultiDay"
			 href="<%# SPHttpUtility.HtmlUrlAttributeEncode(DataBinder.Eval(Container,"DataItem.DisplayFormUrl",""))%>?ID=<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ItemID",""))%>"
			 onclick="GoToLink(this);return false;" target="_self"
			 tabindex="<%# DataBinder.Eval(Container,"TabIndex")%>"
			>
			 <b><%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Title","{0:G}"))%></b>
			</a>
		</td>
		</tr>
	  </table>
	 </div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CalendarViewWeekItemTemplate" runat="server">
	<Template>
	<table cellpadding="0" cellspacing="0" border="0" class=ms-cal-tweekitem dir="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Direction",""))%>">
	<tr>
		<td valign="top"
		href="<%# SPHttpUtility.HtmlUrlAttributeEncode(DataBinder.Eval(Container,"DataItem.DisplayFormUrl",""))%>?ID=<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ItemID",""))%>"
		onclick="GoToLink(this);return false;" target="_self"
		>
		 <div>
		  <img src="/_layouts/15/images/blank.gif?rev=23" width='50' height='1' alt="" /><br />
		  <img src="/_layouts/15/images/recursml<%# DataBinder.Eval(Container,"ExceptionExtension","")%>.gif" class="<%# DataBinder.Eval(Container,"RecurrenceIconVisible")%>" alt="<%# DataBinder.Eval(Container,"ToolTip","")%>" align="absmiddle" />
		  <a onfocus="OnLink(this)"
			class="ms-cal-dayitem"
			href="<%# SPHttpUtility.HtmlUrlAttributeEncode(DataBinder.Eval(Container,"DataItem.DisplayFormUrl",""))%>?ID=<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ItemID",""))%>"
			onclick="GoToLink(this);return false;" target="_self"
			tabindex="<%# DataBinder.Eval(Container,"TabIndex")%>"
			>
			<nobr><%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DateTimeString","{0:G}"))%></nobr>
			<%# DataBinder.Eval(Container,"MultiLineBreak","{0:G}")%>
			<b><%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Title","{0:G}"))%></b>
			<%# DataBinder.Eval(Container,"MultiLineBreak","{0:G}")%>
			<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Location","{0:G}"))%>
			</a>
		 </div>
		 </td>
	 </tr>
	 </table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CalendarViewWeekItemAllDayTemplate" runat="server">
	<Template>
	<div class="<%# DataBinder.Eval(Container,"DivClass","")%>" dir="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Direction",""))%>" >
	<table border="0" width="100%" cellspacing="0" cellpadding="0" ><tr>
	<td class="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.BackgroundColorClassName",""))%>"
		onmouseover="this.className='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.BackgroundColorClassName",""))%>sel';"
		onmouseout="this.className='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.BackgroundColorClassName",""))%>';"
		href="<%# SPHttpUtility.HtmlUrlAttributeEncode(DataBinder.Eval(Container,"DataItem.DisplayFormUrl",""))%>?ID=<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ItemID",""))%>"
		onclick="GoToLink(this);return false;" target="_self"
		>
	  <div dir="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Direction",""))%>" >
	  <img src="/_layouts/15/images/recursml<%# DataBinder.Eval(Container,"ExceptionExtension","")%>.gif" class="<%# DataBinder.Eval(Container,"RecurrenceIconVisible")%>" alt="<%# DataBinder.Eval(Container,"ToolTip","")%>" align="absmiddle" />
	  <a onfocus="OnLink(this)"
		href="<%# SPHttpUtility.HtmlUrlAttributeEncode(DataBinder.Eval(Container,"DataItem.DisplayFormUrl",""))%>?ID=<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ItemID",""))%>"
		onclick="GoToLink(this);return false;" target="_self"
		tabindex="<%# DataBinder.Eval(Container,"TabIndex")%>"
	   >
		<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Title","{0:G}"))%>
		</a>
		</div>
		</td></tr></table>
	</div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CalendarViewWeekItemMultiDayTemplate" runat="server">
	<Template>
	 <div class="<%# DataBinder.Eval(Container,"DivClass","")%>" dir="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Direction",""))%>" >
	  <table border="0" width="100%" cellspacing="0" cellpadding="0" dir="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Direction",""))%>">
		<tr>
		<td class="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.BackgroundColorClassName",""))%>"
		onmouseover="this.className='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.BackgroundColorClassName",""))%>sel';"
		onmouseout="this.className='<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.BackgroundColorClassName",""))%>';"
		href="<%# SPHttpUtility.HtmlUrlAttributeEncode(DataBinder.Eval(Container,"DataItem.DisplayFormUrl",""))%>?ID=<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ItemID",""))%>"
		onclick="GoToLink(this);return false;" target="_self"
		>
		  <div dir="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Direction",""))%>" >
			<img src="/_layouts/15/images/recursml<%# DataBinder.Eval(Container,"ExceptionExtension","")%>.gif" class="<%# DataBinder.Eval(Container,"RecurrenceIconVisible")%>" alt="<%# DataBinder.Eval(Container,"ToolTip","")%>" align="absmiddle" />
			<a onfocus="OnLink(this)"
			class="ms-cal-dayMultiDay"
			 href="<%# SPHttpUtility.HtmlUrlAttributeEncode(DataBinder.Eval(Container,"DataItem.DisplayFormUrl",""))%>?ID=<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ItemID",""))%>"
			 onclick="GoToLink(this);return false;" target="_self"
			 tabindex="<%# DataBinder.Eval(Container,"TabIndex")%>"
			 >
			 <b><%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Title","{0:G}"))%></b>
			</a>
		   </div>
		</td>
		</tr>
	 </table>
	</div>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CalendarViewTabTemplate" runat="server">
	<Template>
			&#160;
			<span class="ms-cal-nav" dir="<%# DataBinder.Eval(Container,"Direction","")%>">
			  <a id="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Type",""))%>TabLinkId"
				href="javascript:CoreInvoke('MoveView', '<%# SPHttpUtility.EcmaScriptStringLiteralEncode(SPHttpUtility.HtmlUrlAttributeEncode(DataBinder.Eval(Container,"DataItem.Type","")))%>');"
				accesskey="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.AccessKey",""))%>" tabindex=1 >
				<img src="/_layouts/15/images/<%# SPHttpUtility.HtmlUrlAttributeEncode(DataBinder.Eval(Container,"DataItem.ImageName",""))%>"
					border="0"
					width="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ImageWidth",""))%>"
					height="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ImageHeight",""))%>"
					alt=''
					/> <%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Title",""))%>
			 </a>
			</span>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="CalendarViewTabSelectedTemplate" runat="server">
	<Template>
			&#160;
			<span class="ms-cal-navselected" dir="<%# DataBinder.Eval(Container,"Direction","")%>">
			  <a id="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Type",""))%>TabLinkId"
				href="javascript:CoreInvoke('MoveView', '<%# SPHttpUtility.EcmaScriptStringLiteralEncode(DataBinder.Eval(Container,"DataItem.Type",""))%>');"
				accesskey="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.AccessKey",""))%>" tabindex=1 >
				<img src="/_layouts/15/images/<%# SPHttpUtility.HtmlUrlAttributeEncode(DataBinder.Eval(Container,"DataItem.ImageName",""))%>"
					border="0"
					width="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ImageWidth",""))%>"
					height="<%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.ImageHeight",""))%>"
					alt=''
					/> <%# SPHttpUtility.HtmlEncode(DataBinder.Eval(Container,"DataItem.Title",""))%>
			  </a>
			</span>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="UserListForm" runat="server">
	<Template>
		<span id='part1'>
			<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbltop" RightButtonSeparator="&#160;" runat="server">
					<Template_RightButtons>
						<SharePoint:SaveButton  runat="server"/>
						<SharePoint:GoBackButton runat="server"/>
					</Template_RightButtons>
			</wssuc:ToolBar>
			<SharePoint:UserInfoListFormToolBar runat="server"/>
			<table class="ms-formtable" style="margin-top: 8px;" border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr><SharePoint:CompositeField FieldName="Name" ControlMode="Display" runat="server"/></tr>
			<SharePoint:ListFieldIterator runat="server"/>
			<SharePoint:FormComponent TemplateName="AttachmentRows" ComponentRequiresPostback="false" runat="server"/>
			</table>
			<table cellpadding="0" cellspacing="0" width="100%"><tr><td class="ms-formline"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></td></tr></table>
			<table cellpadding="0" cellspacing="0" width="100%" style="padding-top: 7px"><tr><td width="100%">
			<SharePoint:ItemHiddenVersion runat="server"/>
			<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbl" RightButtonSeparator="&#160;" runat="server">
					<Template_Buttons>
						<SharePoint:CreatedModifiedInfo runat="server"/>
					</Template_Buttons>
					<Template_RightButtons>
						<SharePoint:SaveButton  runat="server"/>
						<SharePoint:GoBackButton runat="server"/>
					</Template_RightButtons>
			</wssuc:ToolBar>
			</td></tr></table>
		</span>
		<SharePoint:AttachmentUpload runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="UserInfoListEditFormToolBar" runat="server">
	<Template>
		<wssuc:ToolBar CssClass="ms-toolbar" id="toolBarTbl" RightButtonSeparator="&#160;" runat="server">
				<Template_Buttons>
					<SharePoint:AttachmentButton runat="server"/>
					<SharePoint:UserInfoListDeleteItemButton runat="server"/>
					<SharePoint:ChangePasswordButton runat="server"/>
				 </Template_Buttons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="UserInfoListDisplayFormToolBar" runat="server">
	<Template>
		<SharePoint:ScriptBlock runat="server">
			recycleBinEnabled = <SharePoint:ProjectProperty Property="RecycleBinEnabled" runat="server"/>;
		</SharePoint:ScriptBlock>
		<wssuc:ToolBar CssClass="ms-toolbar" id="toolBarTbl" runat="server" FocusOnToolbar=true>
				<Template_Buttons>
					<SharePoint:UserInfoListEditItemButton runat="server"/>
					<SharePoint:UserInfoListDeleteItemButton runat="server"/>
					<SharePoint:ChangePasswordButton runat="server"/>
					<SharePoint:MyRegionalSettingsButton runat="server"/>
					<SharePoint:MyAlertsButton runat="server"/>
				 </Template_Buttons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
