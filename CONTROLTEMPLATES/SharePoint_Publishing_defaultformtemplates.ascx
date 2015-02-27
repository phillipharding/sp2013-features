<%@ Control Language="C#"   %>
<%@Assembly Name="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Register TagPrefix="CMS" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.Publishing.WebControls"%>
<%@Register TagPrefix="CMSInt" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.Publishing.Internal.WebControls"%>
<%@Assembly Name="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Register TagPrefix="SharePoint" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.WebControls"%>
<!-- *** These are the templates for the SharePoint.Publishing rich field controls *** -->
<!-- This template is used for displaying the RichImageField control
	as a composite field in the ListForm template -->
<SharePoint:RenderingTemplate ID="CompositeRichImageField" runat="server">
	<Template>
		<TD nowrap="true" valign="top" class="ms-formlabel">
			<SharePoint:FieldLabel runat="server" />
		</TD>
		<TD class="ms-formbody">
			<CMS:RichImageField runat="server" ID="RichImageField" />
			<SharePoint:FieldDescription runat="server" />
		</TD>
	</Template>
</SharePoint:RenderingTemplate>
<!-- This is the default template that the RichImageField control uses for its edit view -->
<SharePoint:RenderingTemplate ID="RichImageField" runat="server">
	<Template>
		<CMS:RichImageSelector ID="RichImageField" runat=server />
	</Template>
</SharePoint:RenderingTemplate>
<!-- This template is used for displaying the RichLinkField control
	as a composite field in the ListForm template -->
<SharePoint:RenderingTemplate ID="CompositeRichLinkField" runat="server">
	<Template>
		<TD nowrap="true" valign="top" class="ms-formlabel">
			<SharePoint:FieldLabel runat="server" ID="Fieldlabel1" />
		</TD>
		<TD class="ms-formbody">
			<CMS:RichLinkField runat="server" ID="RichLinkField" />
			<SharePoint:FieldDescription runat="server" ID="Fielddescription1" />
		</TD>
	</Template>
</SharePoint:RenderingTemplate>
<!-- This is the default template that the RichLinkField control uses for its edit view -->
<SharePoint:RenderingTemplate ID="RichLinkField" runat="server">
	<Template>
		<CMS:RichLinkSelector ID="RichLinkField" runat=server />
	</Template>
</SharePoint:RenderingTemplate>
<!-- This template is used for displaying the RichHtmlField control
	as a composite field in the ListForm template -->
<SharePoint:RenderingTemplate ID="CompositeRichHtmlField" runat="server">
	<Template>
		<TD nowrap="true" valign="top" class="ms-formlabel">
			<SharePoint:FieldLabel runat="server" />
		</TD>
		<TD class="ms-formbody">
			<CMS:RichHtmlField runat="server" />
			<SharePoint:FieldDescription runat="server" />
		</TD>
	</Template>
</SharePoint:RenderingTemplate>
<!-- This is the default template that the RichHtmlField control uses for its edit view -->
<SharePoint:RenderingTemplate ID="RichHtmlField" runat="server">
	<Template>
		<CMS:HtmlEditor ID="RichHtmlField" runat="server" />
	</Template>
</SharePoint:RenderingTemplate>
<!-- This is the default template that the LayoutVariationsField control uses for its edit view -->
<SharePoint:RenderingTemplate ID="LayoutVariationsField" runat="server">
	<Template>
		<SharePoint:GroupedItemPicker id="layoutVarLabelsPicker" runat="server"
			GroupControlId="LayoutVarLabelsSelectGroup"
			CandidateControlId="LayoutVarLabelsSelectCandidate"
			ResultControlId="LayoutVarLabelsSelectResult"
			AddButtonId="LayoutVarLabelsAddButton"
			RemoveButtonId="LayoutVarLabelsRemoveButton"
			DescriptionControlId="LayoutVarLabelsDescriptionControl"
			AlwaysAllowRemove="true"
			/>
		<table width="450px">
			<tr>
				<td class="ms-authoringcontrols">
					<asp:Label Text="<%$SPHtmlEncodedResources:cms, createpagelayout_variationlabels_candidateslabel%>" AssociatedControlID="LayoutVarLabelsSelectCandidate" runat="server" /><br>
					<select style="width: 100%" id="LayoutVarLabelsSelectCandidate" size="10" multiple="true" runat="server">
					</select>
				</td>
				<td valign="center" class="ms-authoringcontrols">
					<button class="ms-fullWidth" style="margin: 0px" ID="LayoutVarLabelsAddButton" runat="server"> <asp:literal runat="server" text="<%$Resources:cms, areatemplatesettings_picker_addbuttonlabel%>" /> </button>
					<br>
					<button class="ms-fullWidth" style="margin: 0px" ID="LayoutVarLabelsRemoveButton" runat="server"> <asp:literal runat="server" text="<%$Resources:cms, areatemplatesettings_picker_removebuttonlabel%>" /> </button>
				</td>
				<td class="ms-authoringcontrols">
					<asp:Label Text="<%$SPHtmlEncodedResources:cms, createpagelayout_variationlabels_resultslabel%>" AssociatedControlID="LayoutVarLabelsSelectResult" runat="server" /><br>
					<select style="width: 100%" id="LayoutVarLabelsSelectResult" size="10" multiple="true" runat="server">
					</select>
				</td>
				<td>
					<select style="display:none" id="LayoutVarLabelsSelectGroup" runat="server">
					</select>
					<span style="display:none" id="LayoutVarLabelsDescriptionControl" runat="server" > </span>&#160;
				</td>
			</tr>
		</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="ContentTypeIdField" runat="server">
	<Template>
		<SharePoint:GroupedDropDownList id="selector" runat="server"
			GroupControlId="SelectGroup"
			CandidateControlId="SelectCandidate"
			DescriptionControlId="DescriptionControl"
			/>
		<table>
			<tr>
				<td class="ms-formlabel" >
					<SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, createpagelayout_pickcontentypegroup_label%>" EncodeMethod='HtmlEncode'/><br>
					<select id="SelectGroup" runat="server">
					</select>
				</td>
			</tr>
			<tr>
				<td class="ms-formlabel" >
					<SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, createpagelayout_pickcontentype_label%>" EncodeMethod='HtmlEncode'/><br>
					<select id="SelectCandidate" runat="server">
					</select>
				</td>
			</tr>
			<tr>
				<td>&#160;
				</td>
			</tr>
			<tr>
				<td class="ms-formlabel" >
					<SharePoint:EncodedLiteral runat="server" text="<%$Resources:cms, createpagelayout_pickcontentype_description%>" EncodeMethod='HtmlEncode'/><br>
					<span id="DescriptionControl" runat="server"> </span>&#160;
				</td>
			</tr>
		</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="PublishingScheduleStartDateField" runat="server">
	<Template>
		<table>
			<SharePoint:InputFormRadioButton ID="startTokenRadioButton" LabelText="<%$Resources:cms, pagesettings_startimmediate_radiotext%>" GroupName="StartDateRadioGroup" runat="server" />
			<SharePoint:InputFormRadioButton ID="startOnFollowingRadioButton" LabelText="<%$Resources:cms, pagesettings_startonfollowing_radiotext%>"  GroupName="StartDateRadioGroup" runat="server" >
				<asp:Panel ID="startOnFollowingRadioButton_Child" runat="server">
					<SharePoint:DateTimeControl ID="startDateTimeControl" runat="server"/>
				</asp:Panel>
			</SharePoint:InputFormRadioButton>
		</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="PublishingScheduleEndDateField" runat="server">
	<Template>
		<table>
			<SharePoint:InputFormRadioButton ID="startTokenRadioButton" LabelText="<%$Resources:cms, pagesettings_expirenever_radiotext%>" GroupName="StartDateRadioGroup" runat="server" />
			<SharePoint:InputFormRadioButton ID="startOnFollowingRadioButton" LabelText="<%$Resources:cms, pagesettings_startonfollowing_radiotext%>"  GroupName="StartDateRadioGroup" runat="server" >
				<asp:Panel ID="startOnFollowingRadioButton_Child" runat="server">
					<SharePoint:DateTimeControl ID="startDateTimeControl" runat="server"/>
				</asp:Panel>
			</SharePoint:InputFormRadioButton>
		</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="CatalogSourceFieldControl" runat="server">
  <Template>
	   <asp:HyperLink id="UrlControlId" Target="_self" runat="server" Visible="False" />
	   <asp:TextBox id="UrlFieldUrl" dir="ltr" maxlength="255" runat="server"/>&#160;<asp:Button runat="server" UseSubmitBehavior="false" Target="_self" class="ms-ButtonHeightWidth" Text="<%$Resources:cms, catalogdetails_itempickerbutton%>" ID="browseButton" /><br />
	   <asp:TextBox id="UrlFieldDescription" maxlength="255" runat="server"/><br />
  </Template>
</SharePoint:RenderingTemplate>
