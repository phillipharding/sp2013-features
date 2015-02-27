	<%@ Register TagPrefix="GroupBoardMobile"   Namespace="Microsoft.SharePoint.Applications.GroupBoard.MobileControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#"   %> <%@ Assembly Name="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile, Version=1.0.3300.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %> <%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register TagPrefix="SPMobile" Namespace="Microsoft.SharePoint.MobileControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register TagPrefix="WPMobile" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileDefaultSeparator">
	<Template>
		<mobile:Panel RunAt="Server" Alignment="Center" EnableViewState="False">
			<mobile:DeviceSpecific RunAt="Server">
				<Choice Filter="IsMicrosoftMobileExplorer">
					<ContentTemplate>
						<hr width="100%" size="1">
					</ContentTemplate>
				</Choice>
				<Choice Filter="IsHtml32">
					<ContentTemplate>
						<hr width="100%" size="1" color="#D8D8D8">
					</ContentTemplate>
				</Choice>
				<Choice Filter="IsChtml10">
					<ContentTemplate>
						<hr width="100%" size="1">
					</ContentTemplate>
				</Choice>
				<Choice Filter="IsXhtmlMp">
					<ContentTemplate>
						<hr width="100%" size="1" style="color:#D8D8D8" />
					</ContentTemplate>
				</Choice>
				<Choice>
					<ContentTemplate>
						<mobile:LiteralText RunAt="Server" Text="-----" BreakAfter="true" />
					</ContentTemplate>
				</Choice>
			</mobile:DeviceSpecific>
		</mobile:Panel>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileFooterSeparator">
	<Template>
		<mobile:Panel RunAt="Server" EnableViewState="False">
			<mobile:DeviceSpecific RunAt="Server">
				<Choice Filter="supportsCss">
					<ContentTemplate>
						<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileFooterSeparatorWithCss" />
					</ContentTemplate>
				</Choice>
				<Choice>
					<ContentTemplate>
						<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileDefaultSeparator" />
					</ContentTemplate>
				</Choice>
			</mobile:DeviceSpecific>
		</mobile:Panel>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileFooterSeparatorWithCss">
	<Template>
		<mobile:Panel RunAt="Server" EnableViewState="False">
			<mobile:DeviceSpecific RunAt="Server">
				<Choice Filter="IsMicrosoftMobileExplorer">
					<ContentTemplate>
						<hr width="100%" size="1" align="center">
					</ContentTemplate>
				</Choice>
				<Choice Filter="IsHtml32">
					<ContentTemplate>
						<hr width="100%" size="1" color="#FFFFFF" align="center">
						<asp:Panel RunAt="Server" />
					</ContentTemplate>
				</Choice>
				<Choice Filter="IsChtml10">
					<ContentTemplate>
						<hr width="100%" size="1" align="center">
					</ContentTemplate>
				</Choice>
				<Choice Filter="IsXhtmlMp">
					<ContentTemplate>
						<hr width="100%" size="1" style="color:#FFFFFF" align="center"/>
					</ContentTemplate>
				</Choice>
				<Choice>
					<ContentTemplate>
						<mobile:LiteralText RunAt="Server" Text="-----" BreakAfter="true" align="center"/>
					</ContentTemplate>
				</Choice>
			</mobile:DeviceSpecific>
		</mobile:Panel>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileListItemSeparator">
	<Template>
		<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileDefaultSeparator" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileViewFieldSeparator">
	<Template>
		<mobile:Label RunAt="Server" Text="" BreakAfter="true" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileFormFieldSeparator">
	<Template>
		<SPMobile:SPMobileLabel RunAt="Server" Text="" BreakAfter="true" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobilePageTitleWithCss">
	<Template>
		<SPMobile:SPMobilePaddedPanel RunAt="Server" ForeColor="#FFFFFF" BackColor="#21374C" Font-Bold="True" Font-Size="13pt">
			<SPMobile:SPMobilePageTitle RunAt="Server" />
		</SPMobile:SPMobilePaddedPanel>
		<SPMobile:SPMobileLabel       RunAt="Server" Text=" " />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileHomePageTitle">
	<Template>
		<SPMobile:SPMobileWebTitle RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Default_HomePage_Title">
	<Template>
		<SPMobile:SPMobileWeb RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_STS_HomePage_Title">
	<Template>
		<mobile:LiteralText RunAt="Server" Text="<%$Resources:wss, viewlsts_pagetitle_doclist_15%>" BreakAfter="false" />
		<mobile:LiteralText              RunAt="Server" Text="<%$Resources:wss, mobile_listtitle_separator%>" BreakAfter="false" />
		<WPMobile:WebPartMobilePageTitle RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileErrorPageTitle">
	<Template>
		<mobile:LiteralText RunAt="Server" Text="<%$Resources:wss, mobile_errorpage_title%>" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileDeletePageTitle">
	<Template>
		<SPMobile:SPMobileListTitle RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Default_DeletePage_Title">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<SPMobile:SPMobileListTitleControl RunAt="Server" BreakAfter="false" />
			<mobile:LiteralText                RunAt="Server" Text="<%$Resources:wss, mobile_listtitle_separator%>" BreakAfter="false" />
			<mobile:LiteralText                RunAt="Server" Text="<%$Resources:wss, mobile_deleteitem_text%>"     BreakAfter="false" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileViewTitle">
	<Template>
		<SPMobile:SPMobileListTitle RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Default_View_Title">
	<Template>
		<SPMobile:SPMobileListTitleControl RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileViewTitleWithFolder">
	<Template>
		<SPMobile:SPMobileListTitle RunAt="Server" WithFolder="true" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileFolder_Default_View_Title">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<SPMobile:SPMobileListTitleControl RunAt="Server" BreakAfter="false" />
			<mobile:LiteralText                RunAt="Server" Text="<%$Resources:wss, mobile_listtitle_separator%>" BreakAfter="false" />
			<SPMobile:SPMobileFolder           RunAt="Server" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileNewFormTitle">
	<Template>
		<SPMobile:SPMobileListTitle RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Default_NewForm_Title">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<SPMobile:SPMobileListTitleControl RunAt="Server" BreakAfter="false" />
			<mobile:LiteralText                RunAt="Server" Text="<%$Resources:wss, mobile_listtitle_separator%>" BreakAfter="false" />
			<mobile:Label                      RunAt="Server" Text="<%$Resources:wss, mobile_newitem_text%>"        BreakAfter="true" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileEditFormTitle">
	<Template>
		<SPMobile:SPMobileListTitle RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Default_EditForm_Title">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<SPMobile:SPMobileListTitleControl RunAt="Server" BreakAfter="false" />
			<mobile:LiteralText                RunAt="Server" Text="<%$Resources:wss, mobile_listtitle_separator%>" BreakAfter="false" />
			<SPMobile:SPMobileListItem         RunAt="Server" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileDispFormTitle">
	<Template>
		<SPMobile:SPMobileListTitle RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Default_DispForm_Title">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<SPMobile:SPMobileListTitleControl RunAt="Server" BreakAfter="false" />
			<mobile:LiteralText                RunAt="Server" Text="<%$Resources:wss, mobile_listtitle_separator%>" BreakAfter="false" />
			<SPMobile:SPMobileListItem         RunAt="Server" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileHomePageContents">
	<Template>
		<SPMobile:SPMobileWebContents RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Default_HomePage_Contents">
	<Template>
		<SPMobile:SPMobileComponent RunAt="Server" TemplateName="Mobile_STS_HomePage_Contents" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" ID="Mobile_STS_HomePage_Contents">
	<Template>
		<SPMobile:SPMobileParentWebControls RunAt="Server" />
		<SPMobile:SPMobileGenericListIterator RunAt="Server" />
		<SPMobile:SPMobileLabel        RunAt="Server" Text="<%$Resources:wss, mobile_listcategory_workspaces_text%>"    BreakAfter="true" />
		<SPMobile:SPMobileSubWebControls RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileListIterator">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<mobile:Image                      RunAt="Server" ImageUrl="/_layouts/15/images/mbllistbullet.gif?rev=23" BreakAfter="false" />
			<SPMobile:SPMobileListTitleControl RunAt="Server" Linkable="true" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileErrorPageContents">
	<Template>
		<SPMobile:SPMobileSwitchtoPCView RunAt="Server" Text="<%$Resources:wss, mobile_switch_pcview_text%>" AppendWebTitleToText="False" AccessKey="1" />
		<SPMobile:SPMobileHomePageNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>" AppendWebTitleToText="True" AccessKey="0" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileDeletePageContents">
	<Template>
		<SPMobile:SPMobileListContents RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Default_DeletePage_Contents">
	<Template>
		<SPMobile:SPMobileDeleteMessageLabel RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileViewContents">
	<Template>
		<SPMobile:SPMobileListContents RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Default_View_Contents">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileViewPicker" />
			<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileDefaultSeparator" />
		</SPMobile:SPMobileControlContainer>
		<SPMobile:SPMobileListItemIterator RunAt="Server" ListItemSeparatorTemplateName="MobileListItemSeparator" />
		<SPMobile:SPMobileLabel            RunAt="Server" Text="" Weightless="true" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Events_View_Contents">
	<Template>
		<SPMobile:SPMobileControlContainer       RunAt="Server">
			<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileViewPicker" />
			<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileDefaultSeparator" />
		</SPMobile:SPMobileControlContainer>
		<SPMobile:SPMobileEventsListItemIterator RunAt="Server" ListItemSeparatorTemplateName="MobileListItemSeparator" />
		<SPMobile:SPMobileLabel                  RunAt="Server" Text="" Weightless="true" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileThumbnailViewContents">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileViewPicker" />
			<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileDefaultSeparator" />
		</SPMobile:SPMobileControlContainer>
		<SPMobile:SPMobileThumbnailViewListItemIterator RunAt="Server" />
		<SPMobile:SPMobileLabel                         RunAt="Server" Text="" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileSimpleViewContents">
	<Template>
		<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileViewContents" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileViewPicker">
	<Template>
		<SPMobile:SPMobileListViewIterator           RunAt="Server" ID="ListViewIteratorForMobile"                                     BreakAfter="false" Format="DropDown" />
		<SPMobile:SPMobileRefreshNavigation          RunAt="Server" Text="<%$Resources:wss, mobile_button_refresh_text%>"              BreakAfter="true"  ControlForRefresh="ListViewIteratorForMobile" />
		<SPMobile:SPMobileFilterStatusLabel          RunAt="Server"                                                                    BreakAfter="true" />
		<mobile:Image                                RunAt="Server" ImageUrl="/_layouts/15/images/mblviewfilter.gif?rev=23"                        BreakAfter="false" />
		<SPMobile:SPMobileAddViewFilterNavigation    RunAt="Server" Text="<%$Resources:wss, mobile_navigation_addviewfilter_text%>"    BreakAfter="false" />
		<SPMobile:SPMobileChangeViewFilterNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_changeviewfilter_text%>" BreakAfter="false" />
		<SPMobile:SPMobileClearViewFilterNavigation  RunAt="Server" Text="<%$Resources:wss, mobile_navigation_clearviewfilter_text%>" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileNewFormContents">
	<Template>
		<SPMobile:SPMobileListContents RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Default_NewForm_Contents">
	<Template>
		<SPMobile:SPMobileComponent RunAt="Server" TemplateName="Mobile_Default_EditForm_Contents" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileEditFormContents">
	<Template>
		<SPMobile:SPMobileListContents RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Default_EditForm_Contents">
	<Template>
		<SPMobile:SPMobileItemValidationFailedMessage RunAt="Server" />
		<SPMobile:SPMobileListFieldIterator           RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_DiscussionBoard_EditForm_Contents">
	<Template>
		<SPMobile:SPMobileItemValidationFailedMessage RunAt="Server" />
		<SPMobile:SPMobileDiscussionFieldIterator     RunAt="Server" FieldSeparatorTemplateName="MobileFormFieldSeparator" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileDispFormContents">
	<Template>
		<SPMobile:SPMobileListContents RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Default_DispForm_Contents">
	<Template>
		<SPMobile:SPMobileListFieldIterator RunAt="Server" />
		<SPMobile:SPMobileControlContainer  RunAt="Server">
			<SPMobile:SPMobileCreatedModifiedPanel RunAt="Server" TemplateName="MobileCreatedModifiedInfo" />
			<mobile:Label                          RunAt="Server" BreakAfter="true" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_PictureLibrary_DispForm_Contents">
	<Template>
		<SPMobile:SPMobileThumbnail RunAt="Server" />
		<SPMobile:SPMobileComponent RunAt="Server" TemplateName="Mobile_Default_DispForm_Contents" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_WebPageLibrary_DispForm_Contents">
	<Template>
		<SPMobile:SPMobileListField                       RunAt="Server" Fieldname="WikiField" BreakAfter="true" />
		<SPMobile:SPMobileWebPageLibraryItemFieldIterator RunAt="Server" FieldSeparatorTemplateName="MobileFormFieldSeparator" />
		<SPMobile:SPMobileControlContainer                RunAt="Server">
			<SPMobile:SPMobileCreatedModifiedPanel RunAt="Server" TemplateName="MobileCreatedModifiedInfo" />
			<mobile:Label                          RunAt="Server" BreakAfter="true" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_DiscussionBoard_DispForm_Contents">
	<Template>
		<SPMobile:SPMobileDiscussionFieldIterator RunAt="Server" FieldSeparatorTemplateName="MobileFormFieldSeparator" />
		<SPMobile:SPMobileControlContainer        RunAt="Server">
			<SPMobile:SPMobileCreatedModifiedPanel RunAt="Server" TemplateName="MobileCreatedModifiedInfo" />
			<mobile:Label                          RunAt="Server" BreakAfter="true" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" ID="Mobile_CallTrack_DispForm_Contents">
	<Template>
		<SPMobile:SPMobileFormDigest                                  RunAt="Server" />
		<GroupBoardMobile:SPMobileGroupBoardCallTrackingListResolveNavigation RunAt="Server" />
		<SPMobile:SPMobileComponent                                   RunAt="Server" TemplateName="MobileDefaultSeparator" />
		<SPMobile:SPMobileComponent                                   RunAt="Server" TemplateName="Mobile_Default_DispForm_Contents" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" ID="Mobile_Circulation_DispForm_Contents">
	<Template>
		<SPMobile:SPMobileFormDigest                                 RunAt="Server" />
		<GroupBoardMobile:SPMobileGroupBoardCirculationListConfirmNavigation RunAt="Server" />
		<SPMobile:SPMobileComponent                                  RunAt="Server" TemplateName="MobileDefaultSeparator" />
		<SPMobile:SPMobileComponent                                  RunAt="Server" TemplateName="Mobile_Default_DispForm_Contents" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileItemContents">
	<Template>
		<SPMobile:SPMobileItemFieldIterator RunAt="Server" FieldSeparatorTemplateName="MobileFormFieldSeparator" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileFolderContents">
	<Template>
		<SPMobile:SPMobileFolderFieldIterator RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileDisplayItemContents">
	<Template>
		<SPMobile:SPMobileItemFieldIterator RunAt="Server" FieldSeparatorTemplateName="MobileFormFieldSeparator" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileDisplayFolderContents">
	<Template>
		<SPMobile:SPMobileFolderFieldIterator RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileCreatedModifiedInfo">
	<Template>
		<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileFormFieldSeparator" />
		<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileFormFieldSeparator" />
		<SPMobile:SPMobileFormattedString RunAt="Server" FormatText="<%$Resources:wss, mobile_form_createdby%>">
			<SPMobile:SPMobileListField    RunAt="Server" Fieldname="Created" BreakAfter="false" />
			<SPMobile:SPMobileListField    RunAt="Server" Fieldname="Author"  BreakAfter="false" />
			<SPMobile:SPMobileCreationType RunAt="Server" />
		</SPMobile:SPMobileFormattedString>
		<mobile:LiteralText               RunAt="Server" Text="" BreakAfter="true" />
		<SPMobile:SPMobileFormattedString RunAt="Server" FormatText="<%$Resources:wss, mobile_form_modifiedby%>">
			<SPMobile:SPMobileListField RunAt="Server" Fieldname="Modified" BreakAfter="false" />
			<SPMobile:SPMobileListField RunAt="Server" Fieldname="Editor"   BreakAfter="false" />
		</SPMobile:SPMobileFormattedString>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobilePageNavigationWithCss">
	<Template>
		<SPMobile:SPMobileComponent    RunAt="Server" Templatename="MobilePaginateNavigation" />
		<SPMobile:SPMobileNoBreakSpace RunAt="Server" />
		<SPMobile:SPMobilePaddedPanel  RunAt="Server" BackColor="#F6F6F6">
			<SPMobile:SPMobilePageNavigation RunAt="Server" />
		</SPMobile:SPMobilePaddedPanel>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileHomePageNavigation">
	<Template>
		<SPMobile:SPMobileWebNavigation RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Default_HomePage_Navigation">
	<Template>
		<SPMobile:SPMobileHomePageNavigation   RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>"   AppendWebTitleToText="True" AccessKey="0" />
		<SharePoint:DelegateControl            RunAt="server" ControlId="MobileSiteNavigationLink2" />
		<SPMobile:SPMobileLogoutPageNavigation RunAt="Server" Text="<%$Resources:wss, personalactions_logout%>" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileErrorPageNavigation">
	<Template>
		<SPMobile:SPMobileErrorLabel RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileDeleteNavigation">
	<Template>
		<SPMobile:SPMobileListNavigation RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Default_DeletePage_Navigation">
	<Template>
		<SPMobile:SPMobileFormDigest       RunAt="Server" />
		<SPMobile:SPMobileDeleteNavigation RunAt="Server" Text="<%$Resources:wss, mobile_button_delete_text%>" BreakAfter="false" />
		<SPMobile:SPMobileCancelNavigation RunAt="Server" Text="<%$Resources:wss, mobile_button_cancel_text%>" BreakAfter="true"  />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Comments_DeletePage_Navigation">
	<Template>
		<SPMobile:SPMobileFormDigest               RunAt="Server" />
		<SPMobile:SPMobileCommentsDeleteNavigation RunAt="Server" Text="<%$Resources:wss, mobile_button_delete_text%>" BreakAfter="false" />
		<SPMobile:SPMobileCommentsCancelNavigation RunAt="Server" Text="<%$Resources:wss, mobile_button_cancel_text%>" BreakAfter="true"  />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Posts_DeletePage_Navigation">
	<Template>
		<SPMobile:SPMobileFormDigest            RunAt="Server" />
		<SPMobile:SPMobilePostsDeleteNavigation RunAt="Server" Text="<%$Resources:wss, mobile_button_delete_text%>" BreakAfter="false" />
		<SPMobile:SPMobilePostsCancelNavigation RunAt="Server" Text="<%$Resources:wss, mobile_button_cancel_text%>" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileViewNavigation">
	<Template>
		<SPMobile:SPMobileListNavigation RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Default_View_Navigation">
	<Template>
		<SPMobile:SPMobileSwitchPageViewNavigation RunAt="Server" ViewMode="Simple"                              AccessKey="1" />
		<SPMobile:SPMobileSwitchPageViewNavigation RunAt="Server" ViewMode="Detail"                              AccessKey="1" />
		<SPMobile:SPMobileNewFormNavigation        RunAt="Server" Text="<%$Resources:wss, mobile_newitem_text%>" AccessKey="5" />
		<SPMobile:SPMobileComponent                RunAt="Server" TemplateName="MobileViewCommonNavigation" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Events_View_Navigation">
	<Template>
		<SPMobile:SPMobileSwitchPageViewNavigation RunAt="Server" ViewMode="Simple"                              AccessKey="1" />
		<SPMobile:SPMobileSwitchPageViewNavigation RunAt="Server" ViewMode="Detail"                              AccessKey="1" />
		<SPMobile:SPMobileEventsNewFormNavigation  RunAt="Server" AccessKey="5" />
		<SPMobile:SPMobileComponent                RunAt="Server" TemplateName="MobileViewCommonNavigation" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_DocumentLibrary_View_Navigation">
	<Template>
		<SPMobile:SPMobileSwitchPageViewNavigation RunAt="Server" ViewMode="Simple"                         AccessKey="1" />
		<SPMobile:SPMobileSwitchPageViewNavigation RunAt="Server" ViewMode="Detail"                         AccessKey="1" />
		<SPMobile:SPMobileComponent                RunAt="Server" TemplateName="MobileViewCommonNavigation" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_PictureLibrary_View_Navigation">
	<Template>
		<SPMobile:SPMobilePicLibNavigation RunAt="Server" FirstAccessKey="1" SecondAccessKey="2" />
		<SPMobile:SPMobileUploadPageNavigation     RunAt="Server" Text="<%$Resources:wss, upload_picture_title%>" AccessKey="3" />
		<SPMobile:SPMobileComponent                RunAt="Server" TemplateName="MobileViewCommonNavigation" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Comments_View_Navigation">
	<Template>
		<SPMobile:SPMobileSwitchPageViewNavigation RunAt="Server" ViewMode="Simple"                                             AccessKey="1" />
		<SPMobile:SPMobileSwitchPageViewNavigation RunAt="Server" ViewMode="Detail"                                             AccessKey="1" />
		<SPMobile:SPMobileComponent                RunAt="Server" TemplateName="MobileViewCommonNavigation" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" ID="Mobile_CallTrack_View_Navigation">
	<Template>
		<SPMobile:SPMobileSwitchPageViewNavigation RunAt="Server" ViewMode="Simple"                         AccessKey="1" />
		<SPMobile:SPMobileSwitchPageViewNavigation RunAt="Server" ViewMode="Detail"                         AccessKey="1" />
		<SPMobile:SPMobileComponent                RunAt="Server" TemplateName="MobileViewCommonNavigation" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" ID="Mobile_Circulation_View_Navigation">
	<Template>
		<SPMobile:SPMobileSwitchPageViewNavigation RunAt="Server" ViewMode="Simple"                         AccessKey="1" />
		<SPMobile:SPMobileSwitchPageViewNavigation RunAt="Server" ViewMode="Detail"                         AccessKey="1" />
		<SPMobile:SPMobileComponent                RunAt="Server" TemplateName="MobileViewCommonNavigation" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" ID="Mobile_Whereabouts_View_Navigation">
	<Template>
		<SPMobile:SPMobileSwitchPageViewNavigation RunAt="Server" ViewMode="Simple"                         AccessKey="1" />
		<SPMobile:SPMobileSwitchPageViewNavigation RunAt="Server" ViewMode="Detail"                         AccessKey="1" />
		<SPMobile:SPMobileComponent                RunAt="Server" TemplateName="MobileViewCommonNavigation" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileViewNavigationWithFolder">
	<Template>
		<SPMobile:SPMobileListNavigation RunAt="Server" WithFolder="true" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileFolder_Default_View_Navigation">
	<Template>
		<SPMobile:SPMobileSwitchPageViewNavigation RunAt="Server" ViewMode="Simple"                                          AccessKey="1" />
		<SPMobile:SPMobileSwitchPageViewNavigation RunAt="Server" ViewMode="Detail"                                          AccessKey="1" />
		<SPMobile:SPMobileUpFolderNavigation       RunAt="Server" Text="<%$Resources:wss, mobile_navigation_upfolder_text%>" AccessKey="2" />
		<SPMobile:SPMobileNewFormNavigation        RunAt="Server" Text="<%$Resources:wss, mobile_newitem_text%>"             AccessKey="5" />
		<SPMobile:SPMobileComponent                RunAt="Server" TemplateName="MobileViewCommonNavigation" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileFolder_DocumentLibrary_View_Navigation">
	<Template>
		<SPMobile:SPMobileSwitchPageViewNavigation RunAt="Server" ViewMode="Simple"                                          AccessKey="1" />
		<SPMobile:SPMobileSwitchPageViewNavigation RunAt="Server" ViewMode="Detail"                                          AccessKey="1" />
		<SPMobile:SPMobileUpFolderNavigation       RunAt="Server" Text="<%$Resources:wss, mobile_navigation_upfolder_text%>" AccessKey="2" />
		<SPMobile:SPMobileComponent                RunAt="Server" TemplateName="MobileViewCommonNavigation" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileFolder_PictureLibrary_View_Navigation">
	<Template>
		<SPMobile:SPMobileSwitchPageViewNavigation RunAt="Server" ViewMode="Simple"                                             AccessKey="1" />
		<SPMobile:SPMobileSwitchPageViewNavigation RunAt="Server" ViewMode="Detail"                                             AccessKey="1" />
		<SPMobile:SPMobileSwitchPageViewNavigation RunAt="Server" ViewMode="Thumbnail"                                          AccessKey="1" />
		<SPMobile:SPMobileUpFolderNavigation       RunAt="Server" Text="<%$Resources:wss, mobile_navigation_upfolder_text%>"    AccessKey="2" />
		<SPMobile:SPMobileUploadPageNavigation     RunAt="Server" Text="<%$Resources:wss, upload_picture_title%>"               AccessKey="3" />
		<SPMobile:SPMobileComponent                RunAt="Server" TemplateName="MobileViewCommonNavigation" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileViewCommonNavigation">
	<Template>
		<SPMobile:SPMobileAllContentPageNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_allcontent_text%>"                             AccessKey="7" />
		<SharePoint:DelegateControl                RunAt="server" ControlId="MobileSiteNavigationLink2" />
		<SPMobile:SPMobileHomePageNavigation       RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>"       AppendWebTitleToText="True" AccessKey="0" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileNewFormNavigation">
	<Template>
		<SPMobile:SPMobileListNavigation RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Default_NewForm_Navigation">
	<Template>
		<SPMobile:SPMobileComponent RunAt="Server" TemplateName="Mobile_Default_EditForm_Navigation" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Events_NewForm_Navigation">
	<Template>
		<SPMobile:SPMobileComponent RunAt="Server" TemplateName="Mobile_Events_EditForm_Navigation" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_DiscussionBoard_NewForm_Navigation">
	<Template>
		<SPMobile:SPMobileComponent RunAt="Server" TemplateName="Mobile_DiscussionBoard_EditForm_Navigation" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Whereabouts_NewForm_Navigation">
	<Template>
		<SPMobile:SPMobileListViewNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_backlist_text%>"                             AccessKey="6" />
		<SPMobile:SPMobileHomePageNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>"     AppendWebTitleToText="True" AccessKey="0" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileEditFormNavigation">
	<Template>
		<SPMobile:SPMobileListNavigation RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Default_EditForm_Navigation">
	<Template>
		<SPMobile:SPMobileFormDigest         RunAt="Server" />
		<SPMobile:SPMobileSaveNavigation     RunAt="Server" Text="<%$Resources:wss, mobile_button_save_text%>"         BreakAfter="false" />
		<SPMobile:SPMobileCancelNavigation   RunAt="Server" Text="<%$Resources:wss, mobile_button_cancel_text%>" />
		<SPMobile:SPMobileListViewNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_backlist_text%>"                             AccessKey="6" />
		<SPMobile:SPMobileHomePageNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>"     AppendWebTitleToText="True" AccessKey="0" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Events_EditForm_Navigation">
	<Template>
		<SPMobile:SPMobileFormDigest             RunAt="Server" />
		<SPMobile:SPMobileEventsSaveNavigation   RunAt="Server" Text="<%$Resources:wss, mobile_button_save_text%>"         BreakAfter="false" />
		<SPMobile:SPMobileEventsCancelNavigation RunAt="Server" Text="<%$Resources:wss, mobile_button_cancel_text%>" />
		<SPMobile:SPMobileListViewNavigation     RunAt="Server" Text="<%$Resources:wss, mobile_navigation_backlist_text%>"                             AccessKey="6" />
		<SPMobile:SPMobileHomePageNavigation     RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>"     AppendWebTitleToText="True" AccessKey="0" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_DiscussionBoard_EditForm_Navigation">
	<Template>
		<SPMobile:SPMobileFormDigest                    RunAt="Server" />
		<SPMobile:SPMobileDiscussionBoardSaveNavigation RunAt="Server" Text="<%$Resources:wss, mobile_button_save_text%>"         BreakAfter="false" />
		<SPMobile:SPMobileCancelNavigation              RunAt="Server" Text="<%$Resources:wss, mobile_button_cancel_text%>" />
		<SPMobile:SPMobileListViewNavigation            RunAt="Server" Text="<%$Resources:wss, mobile_navigation_backlist_text%>"                             AccessKey="6" />
		<SPMobile:SPMobileHomePageNavigation            RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>"     AppendWebTitleToText="True" AccessKey="0" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileDispFormNavigation">
	<Template>
		<SPMobile:SPMobileListNavigation RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Default_DispForm_Navigation">
	<Template>
		<SPMobile:SPMobileEditFormNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_edit_text%>"                                 AccessKey="4" />
		<SPMobile:SPMobileListViewNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_backlist_text%>"                             AccessKey="6" />
		<SPMobile:SPMobileHomePageNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>"     AppendWebTitleToText="True" AccessKey="0" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_PictureLibrary_DispForm_Navigation">
	<Template>
		<SPMobile:SPMobilePreviousItemNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_previouspicture_text%>" AccessKey="1" />
		<SPMobile:SPMobileNextItemNavigation     RunAt="Server" Text="<%$Resources:wss, mobile_navigation_nextpicture_text%>"     AccessKey="3" />
		<SPMobile:SPMobileComponent              RunAt="Server" TemplateName="Mobile_Default_DispForm_Navigation" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_WebPageLibrary_DispForm_Navigation">
	<Template>
		<SPMobile:SPMobileWikiWebPartPageNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_wikiwebpartpage_text%>"                             AccessKey="1" />
		<SPMobile:SPMobileComponent                 RunAt="Server" TemplateName="MobileFooterSeparator" />
		<SPMobile:SPMobileWikiAllPagesNavigation    RunAt="Server" Text="<%$Resources:wss, mobile_navigation_wikiallpages_text%>"                                AccessKey="6" />
		<SPMobile:SPMobileAllContentPageNavigation  RunAt="Server" Text="<%$Resources:wss, mobile_navigation_allcontent_text%>"                                  AccessKey="7" />
		<SharePoint:DelegateControl                 RunAt="server" ControlId="MobileSiteNavigationLink2" />
		<SPMobile:SPMobileHomePageNavigation        RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>"            AppendWebTitleToText="True" AccessKey="0" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" ID="Mobile_CallTrack_DispForm_Navigation">
	<Template>
		<SPMobile:SPMobileListViewNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_backlist_text%>"                             AccessKey="6" />
		<SPMobile:SPMobileHomePageNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>"     AppendWebTitleToText="True" AccessKey="0" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" ID="Mobile_Circulation_DispForm_Navigation">
	<Template>
		<SPMobile:SPMobileListViewNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_backlist_text%>"                             AccessKey="6" />
		<SPMobile:SPMobileHomePageNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>"     AppendWebTitleToText="True" AccessKey="0" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobilePaginateNavigation">
	<Template>
		<SPMobile:SPMobilePaginateNavigation
			RunAt="Server"
			FirstPageText="<%$Resources:wss, mobile_navigation_firstpage_text%>"
			LastPageText="<%$Resources:wss, mobile_navigation_lastpage_text%>"
			BreakAfter="true"
		/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileHomePageRedirect">
	<Template>
		<SPMobile:SPMobileWebUrlRedirect RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Default_HomePage_Redirect">
	<Template>
		<SPMobile:SPMobileHomePageRedirection RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_BLOG_HomePage_Redirect">
	<Template>
		<SPMobile:SPMobileHomePageRedirection RunAt="Server" PageFileName="bloghome.aspx" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileListViewIterator">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<SPMobile:SPMobileListView RunAt="Server" Linkable="true" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileSimpleViewListItemIterator">
	<Template>
		<SPMobile:SPMobileSimpleViewListFieldIterator RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileSimpleViewItemIterator">
	<Template>
		<SPMobile:SPMobileListTemplateSelector RunAt="Server" Suffix="SimpleViewItemRendering" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Default_SimpleViewItemRendering">
	<Template>
		<SPMobile:SPMobileSimpleViewItemFieldIterator RunAt="Server" FieldSeparatorTemplateName="MobileViewFieldSeparator" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Events_SimpleViewItemRendering">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<SPMobile:SPMobileEventsSimpleViewItemFieldIterator RunAt="Server" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Contacts_SimpleViewItemRendering">
	<Template>
		<SPMobile:SPMobileContactsSimpleViewItemFieldIterator RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileSimpleViewFolderIterator">
	<Template>
		<SPMobile:SPMobileListTemplateSelector RunAt="Server" Suffix="SimpleViewFolderRendering" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_Default_SimpleViewFolderRendering">
	<Template>
		<SPMobile:SPMobileSimpleViewFolderFieldIterator RunAt="Server" FieldSeparatorTemplateName="MobileViewFieldSeparator" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileListItemIterator">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<SPMobile:SPMobileListFieldIterator  RunAt="Server" />
			<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileDispFormItemNavigation" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileDispFormItemNavigation">
	<Template>
		<mobile:Panel RunAt="Server">
			<mobile:DeviceSpecific RunAt="Server">
				<Choice Filter="IsHtml32">
					<ContentTemplate>
						<SPMobile:SPMobileControlContainer RunAt="Server" Direction="Page">
							<SPMobile:SPMobileDispFormNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_display_text%>" BreakAfter="false" />
						</SPMobile:SPMobileControlContainer>
					</ContentTemplate>
				</Choice>
				<Choice Filter="IsXhtmlMp">
					<ContentTemplate>
						<SPMobile:SPMobileControlContainer RunAt="Server" Direction="Page">
							<SPMobile:SPMobileDispFormNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_display_text%>" BreakAfter="false" />
						</SPMobile:SPMobileControlContainer>
					</ContentTemplate>
				</Choice>
				<Choice>
					<ContentTemplate>
						<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileViewFieldSeparator" />
						<SPMobile:SPMobileDispFormNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_display_text%>" BreakAfter="false" />
					</ContentTemplate>
				</Choice>
			</mobile:DeviceSpecific>
		</mobile:Panel>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileItemIterator">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<SPMobile:SPMobileItemFieldIterator RunAt="Server" FieldSeparatorTemplateName="MobileViewFieldSeparator" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileFolderIterator">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<SPMobile:SPMobileComponent          RunAt="Server" TemplateName="MobileSimpleViewFolderIterator" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileThumbnailViewListItemIterator">
	<Template>
		<SPMobile:SPMobileThumbnailViewListFieldIterator RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileThumbnailViewItemIterator">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<SPMobile:SPMobileThumbnailViewItemFieldIterator RunAt="Server" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileSimpleViewItemFieldIterator">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<mobile:Image               RunAt="Server" ImageUrl="/_layouts/15/images/mblwpitembullet.gif?rev=23" BreakAfter="false" />
			<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileListField" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileSimpleViewFolderFieldIterator">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<mobile:Image               RunAt="Server" ImageUrl="/_layouts/15/images/mblviewfolder.gif?rev=23" BreakAfter="false" />
			<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileListField" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileItemFieldIterator">
	<Template>
		<SPMobile:SPMobileListFieldRendering RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileFolderFieldIterator">
	<Template>
		<SPMobile:SPMobileListFieldRendering RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileThumbnailViewItemFieldIterator">
	<Template>
		<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileListField" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileListFieldViewRendering">
	<Template>
		<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileCompositeField" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileListFieldFormRendering">
	<Template>
		<SPMobile:SPMobileCompositeField RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileCompositeField">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<SPMobile:SPMobileFieldLabel RunAt="Server" StyleReference="MobileFieldLabelStyle" />
			<SPMobile:SPMobileComponent  RunAt="Server" TemplateName="MobileListField" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileMultiValueCompositeField">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<SPMobile:SPMobileFieldLabel RunAt="Server" StyleReference="MobileFieldLabelStyle" />
			<mobile:Label                RunAt="Server" Text="" BreakAfter="true" />
			<SPMobile:SPMobileComponent  RunAt="Server" TemplateName="MobileListField" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileListField">
	<Template>
		<SPMobile:SPMobileListFieldSelector RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileDefaultListField">
	<Template>
		<SPMobile:SPMobileListField RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" ID="MobileCustomListField_Contacts_Text_WorkZip">
	<Template>
		<SPMobile:SPMobileZipCodeSpecificField RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileCustomListField_PictureLibrary_Computed_ImageSize">
	<Template>
		<SPMobile:SPMobileImageSizeSpecificField RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileCustomListField_Posts_DateTime_PublishedDate">
	<Template>
		<SPMobile:SPMobileCurrentDateTimeSpecificField RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileCustomListField_Events_UserMulti_ParticipantsPicker">
	<Template>
		<SPMobile:SPMobileAttendeesSpecificField RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" ID="MobileCustomListField_CallTrack_DateTime_CallTime">
	<Template>
		<SPMobile:SPMobileCurrentDateTimeSpecificField RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" ID="MobileCustomListField_CallTrack_Computed_RefDetail">
	<Template>
		<GroupBoardMobile:SPMobileGroupBoardMultilineComputedField RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" ID="MobileCustomListField_Whereabouts_User_Name">
	<Template>
		<GroupBoardMobile:SPMobileGroupBoardWhereaboutUserSpecificField RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileDefaultFieldLabel">
	<Template>
		<SPMobile:SPMobileFieldPropertyLabel RunAt="Server" PropertyName="Title" FormatString="<%$Resources:wss, mobile_fieldtitle_format%>" BreakAfter="false" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileRequiredFieldLabel">
	<Template>
		<mobile:LiteralText                  RunAt="Server" Text="<%$Resources:wss, mobile_requiredfield_symbol%>" BreakAfter="false" />
		<SPMobile:SPMobileFieldPropertyLabel RunAt="Server" PropertyName="Title" FormatString="<%$Resources:wss, mobile_fieldtitle_format%>" BreakAfter="false" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MoblogCommentsViewTitle">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<SPMobile:SPMobileListTitleControl     RunAt="Server" BreakAfter="false" />
			<mobile:LiteralText                    RunAt="Server" Text="<%$Resources:wss, mobile_listtitle_separator%>" BreakAfter="false" />
			<SPMobile:SPMobileCommentsTitleControl RunAt="Server" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MoblogPostsViewTitle">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<SPMobile:SPMobileWeb            RunAt="Server" BreakAfter="false" />
			<mobile:LiteralText              RunAt="Server" Text="<%$Resources:wss, mobile_listtitle_separator%>" BreakAfter="false" />
			<SPMobile:SPMobilePostsListTitle RunAt="Server" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Moblog_MyPosts_Title">
	<Template>
		<mobile:Label RunAt="Server" Text="<%$Resources:wss, moblog_navigation_myposts_text%>" BreakAfter="true" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Moblog_AllPosts_Title">
	<Template>
		<mobile:Label RunAt="Server" Text="<%$Resources:wss, moblog_navigation_allposts_text%>" BreakAfter="true" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MoblogCommentsNewFormTitle">
	<Template>
		<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MoblogCommentsViewTitle" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MoblogPostsNewFormTitle">
	<Template>
		<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileNewFormTitle" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MoblogPostsDispFormTitle">
	<Template>
		<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileDispFormTitle" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MoblogCommentsViewContents">
	<Template>
		<SPMobile:SPMobileCommentsListItemIterator RunAt="Server" ListItemSeparatorTemplateName="MobileListItemSeparator" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MoblogPostsViewContents">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server" BreakAfter="false">
			<SPMobile:SPMobileCategoryPicker         RunAt="Server" id="CategoryPickerForMoblog" BreakAfter="false" />
			<SPMobile:SPMobilePostsRefreshNavigation RunAt="Server" Text="<%$Resources:wss, mobile_button_refresh_text%>" controlforrefresh="CategoryPickerForMoblog" />
			<SPMobile:SPMobileComponent              RunAt="Server" TemplateName="MobileDefaultSeparator" />
		</SPMobile:SPMobileControlContainer>
		<SPMobile:SPMobilePostsListItemIterator RunAt="Server" ListItemSeparatorTemplateName="MobileListItemSeparator" />
		<SPMobile:SPMobileLabel                 RunAt="Server" Text="" Weightless="true" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MoblogCommentsNewFormContents">
	<Template>
		<SPMobile:SPMobileCommentsItemFieldIterator RunAt="Server" FieldSeparatorTemplateName="MobileFormFieldSeparator" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MoblogPostsNewFormContents">
	<Template>
		<SPMobile:SPMobileComponent              RunAt="Server" TemplateName="MobileNewFormContents" />
		<SPMobile:SPMobileLabel                  RunAt="Server" Text=" " BreakAfter="true" />
		<SPMobile:SPMobileBlogPictureUploadPanel RunAt="Server" ErrorMessage="<%$Resources:wss,upload_document_file_invalid%>" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MoblogPostsDispFormContents">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server" BreakAfter="true">
			<SPMobile:SPMobileFormattedString RunAt="Server" FormatText="<%$Resources:wss, moblog_modifiedby%>">
				<SPMobile:SPMobileListField RunAt="Server" Fieldname="PublishedDate" BreakAfter="false" />
				<SPMobile:SPMobileListField RunAt="Server" Fieldname="Editor"   BreakAfter="false" />
			</SPMobile:SPMobileFormattedString>
		</SPMobile:SPMobileControlContainer>
		<SPMobile:SPMobileLabel                  RunAt="Server" Text=" "         BreakAfter="true" />
		<SPMobile:SPMobileListField              RunAt="Server" Fieldname="Body" BreakAfter="true" />
		<SPMobile:SPMobileLabel                  RunAt="Server" Text=" "         BreakAfter="true" />
		<SPMobile:SPMobilePostsItemFieldIterator RunAt="Server" FieldSeparatorTemplateName="MobileFormFieldSeparator" />
		<SPMobile:SPMobileLabel                  RunAt="Server" Text=" "         Weightless="true" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MoblogCommentsViewNavigation">
	<Template>
		<SPMobile:SPMobileCommentsNewFormNavigation RunAt="Server" Text="<%$Resources:wss, mobile_newcomment_text%>"                                      AccessKey="5" />
		<SPMobile:SPMobilePostsDispFormNavigation   RunAt="Server" Text="<%$Resources:wss, mobile_navigation_backpost_text%>"                             AccessKey="6" />
		<SPMobile:SPMobileHomePageNavigation        RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>"     AppendWebTitleToText="True" AccessKey="0" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MoblogPostsViewNavigation">
	<Template>
		<SPMobile:SPMobilePostsListNavigation      RunAt="Server" />
		<SPMobile:SPMobileAllContentPageNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_allcontent_text%>" AccessKey="7" />
		<SPMobile:SPMobilePostsNewFormNavigation   RunAt="Server" Text="<%$Resources:wss, mobile_newpost_text%>"               AccessKey="5" />
		<SPMobile:SPMobileLogoutPageNavigation     RunAt="Server" Text="<%$Resources:wss, personalactions_logout%>" />
		<SPMobile:SPMobileComponent                RunAt="Server" TemplateName="MobileFooterSeparator" />
		<SharePoint:DelegateControl                RunAt="server" ControlId="MobileSiteNavigationLink2" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Moblog_MyPosts_Navigation">
	<Template>
		<SPMobile:SPMobilePostsListViewNavigation RunAt="Server" Text="<%$Resources:wss, moblog_navigation_myposts_text%>" FlipViewType="true" AccessKey="1" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Moblog_AllPosts_Navigation">
	<Template>
		<SPMobile:SPMobilePostsListViewNavigation RunAt="Server" Text="<%$Resources:wss, moblog_navigation_allposts_text%>" FlipViewType="true" AccessKey="1" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MoblogCommentsNewFormNavigation">
	<Template>
		<SPMobile:SPMobileFormDigest               RunAt="Server" />
		<SPMobile:SPMobileCommentsSaveNavigation   RunAt="Server" Text="<%$Resources:wss, mobile_button_submitcomment_text%>" BreakAfter="false" />
		<SPMobile:SPMobileCommentsCancelNavigation RunAt="Server" Text="<%$Resources:wss, mobile_button_cancel_text%>" />
		<SPMobile:SPMobileHomePageNavigation       RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>"      AppendWebTitleToText="True" AccessKey="0" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MoblogPostsNewFormNavigation">
	<Template>
		<SPMobile:SPMobileFormDigest              RunAt="Server" />
		<SPMobile:SPMobilePostsSaveNavigation     RunAt="Server" Text="<%$Resources:wss, mobile_button_saveasdraft_text%>" BreakAfter="false" />
		<SPMobile:SPMobilePublishNavigation       RunAt="Server" Text="<%$Resources:wss, mobile_button_publish_text%>"     BreakAfter="false" />
		<SPMobile:SPMobilePostsCancelNavigation   RunAt="Server" Text="<%$Resources:wss, mobile_button_cancel_text%>" />
		<SPMobile:SPMobilePostsListViewNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>"    AppendWebTitleToText="True" AccessKey="0" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MoblogPostsDispFormNavigation">
	<Template>
		<SPMobile:SPMobileCommentsListViewNavigation RunAt="Server" Text="<%$Resources:wss, mobile_viewcomment_text%>"     AccessKey="1" />
		<SPMobile:SPMobileCommentsNewFormNavigation  RunAt="Server" Text="<%$Resources:wss, mobile_newcomment_text%>"      AccessKey="5" />
		<SPMobile:SPMobileDeletePageNavigation       RunAt="Server" Text="<%$Resources:wss, mobile_navigation_delete_text%>" />
		<SPMobile:SPMobileHomePageNavigation         RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>" AppendWebTitleToText="True" AccessKey="0" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileCommentsListItemIterator">
	<Template>
		<SPMobile:SPMobileListField        RunAt="Server" Fieldname="Title" Font-Bold="true" EllipsisEnabled="false" BreakAfter="true" />
		<SPMobile:SPMobileLabel            RunAt="Server" Text=" "          BreakAfter="true" />
		<SPMobile:SPMobileListField        RunAt="Server" Fieldname="Body"  EllipsisEnabled="false" BreakAfter="true" />
		<SPMobile:SPMobileLabel            RunAt="Server" Text=" "          BreakAfter="true" />
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<SPMobile:SPMobileFormattedString RunAt="Server" FormatText="<%$Resources:wss, moblog_modifiedby%>">
				<SPMobile:SPMobileListField RunAt="Server" Fieldname="Modified" EllipsisEnabled="false" BreakAfter="false" />
				<SPMobile:SPMobileListField RunAt="Server" Fieldname="Author"   EllipsisEnabled="false" BreakAfter="false" />
			</SPMobile:SPMobileFormattedString>
			<SPMobile:SPMobileLabel                        RunAt="Server" Text=" " BreakAfter="false" />
			<SPMobile:SPMobileCommentsDeletePageNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_delete_text%>" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobilePostsListItemIterator">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<SPMobile:SPMobileListField               RunAt="Server" Fieldname="PublishedDate" EllipsisEnabled="false" BreakAfter="true" />
			<SPMobile:SPMobilePostsDispFormNavigation RunAt="Server" BreakAfter="false" />
			<SPMobile:SPMobileRightToLeftMark         RunAt="Server" />
			<SPMobile:SPMobileFormattedString         RunAt="Server" FormatText="<%$Resources:wss, moblog_num_comments%>">
				<SPMobile:SPMobileListField RunAt="Server" Fieldname="NumComments" EllipsisEnabled="false" BreakAfter="false" />
			</SPMobile:SPMobileFormattedString>
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="WebPartMobileSummaryViewTitle">
	<Template>
		<SPMobile:SPMobileWebTitle RunAt="Server" Prefix="WebPartMobile" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="WebPartMobile_Default_HomePage_Title">
	<Template>
		<WPMobile:WebPartMobilePageTitle RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="WebPartMobileSummaryViewContents">
	<Template>
		<SPMobile:SPMobileWebContents RunAt="Server" Prefix="WebPartMobile" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="WebPartMobile_Default_HomePage_Contents">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server" Weightless="true">
			<WPMobile:WebPartMobileExpandCollapseScriptManager RunAt="Server" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="WebPartMobile_SGS_HomePage_Contents">
	<Template>
		<SPMobile:SPMobileComponent RunAt="Server" TemplateName="WebPartMobile_STS_HomePage_Contents" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="WebPartMobile_STS_HomePage_Contents">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<mobile:Image                              RunAt="Server" ImageUrl="/_layouts/15/images/mblsitecontent.gif?rev=23" BreakAfter="false" />
			<SPMobile:SPMobileAllContentPageNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_allcontent_text%>" />
			<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileDefaultSeparator" />
		</SPMobile:SPMobileControlContainer>
		<SPMobile:SPMobileComponent RunAt="Server" Templatename="WebPartMobile_Default_HomePage_Contents" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="WebPartMobileDetailViewContents">
	<Template>
		<SPMobile:SPMobileWebContents RunAt="Server" Prefix="WebPartMobileDetail" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="WebPartMobileDetail_Default_HomePage_Contents">
	<Template>
		<WPMobile:WebPartMobileContentPanel RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="WebPartMobileSummaryViewNavigation">
	<Template>
		<SPMobile:SPMobileWebNavigation RunAt="Server" Prefix="WebPartMobile" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="WebPartMobile_Default_HomePage_Navigation">
	<Template>
		<SPMobile:SPMobileWikiTextPageNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_wikitextpage_text%>" AccessKey="1" />
		<SPMobile:SPMobileComponent              RunAt="Server" Templatename="MobileFooterSeparator" />
		<SPMobile:SPMobileWikiAllPagesNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_wikiallpages_text%>" AccessKey="6" />
		<SPMobile:SPMobileComponent              RunAt="Server" Templatename="WebPartMobileSummaryViewCommon" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="WebPartMobileSummaryViewCommon">
	<Template>
		<SPMobile:SPMobileAllContentPageNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_allcontent_text%>"                             AccessKey="7" />
		<SharePoint:DelegateControl                RunAt="server" ControlId="MobileSiteNavigationLink2" />
		<SPMobile:SPMobileHomePageNavigation       RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>"       AppendWebTitleToText="True" AccessKey="0" />
		<SPMobile:SPMobileLogoutPageNavigation     RunAt="Server" Text="<%$Resources:wss, personalactions_logout%>" />
		<SPMobile:SPMobileVpnLogOffPlaceHolder     RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="WikiMobileSummaryViewNavigation">
	<Template>
		<SPMobile:SPMobileWikiAllPagesNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_wikiallpages_text%>" AccessKey="6" />
		<SPMobile:SPMobileComponent              RunAt="Server" Templatename="WebPartMobileSummaryViewCommon" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="WebPartMobileDetailViewNavigation">
	<Template>
		<SPMobile:SPMobileWebNavigation RunAt="Server" Prefix="WebPartMobileDetail" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="WebPartMobileDetail_Default_HomePage_Navigation">
	<Template>
		<WPMobile:WebPartMobilePageNavigation RunAt="Server" Text="<%$Resources:wss, mobile_webpart_gobacktosummaryview%>" LinkToDetailView="false" AccessKey="9" />
	</Template>
</SharePoint:RenderingTemplate>
