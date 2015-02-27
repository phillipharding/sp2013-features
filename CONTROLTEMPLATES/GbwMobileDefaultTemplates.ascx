	<%@ Register TagPrefix="GroupBoardMobile"   Namespace="Microsoft.SharePoint.Applications.GroupBoard.MobileControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#"   %> <%@ Assembly Name="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile, Version=1.0.3300.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %> <%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register TagPrefix="SPMobile" Namespace="Microsoft.SharePoint.MobileControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<SharePoint:RenderingTemplate RunAt="Server" id="GroupBoardMobileEventDailyViewItemIterator">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<GroupBoardMobile:SPMobileGroupBoardEventListDateRangeLabel RunAt="Server" BreakAfter="false">
				<AllDaySameTemplate>
					<mobile:Label RunAt="Server" Text='<%# DataBinder.Eval(Container, "Text") %>'/>
				</AllDaySameTemplate>
				<AllDayCrossTemplate>
					<mobile:Label RunAt="Server" Text='<%# DataBinder.Eval(Container, "Text") %>'/>
				</AllDayCrossTemplate>
				<SameDayTemplate>
					<mobile:Label RunAt="Server" Text='<%# DataBinder.Eval(Container, "Text") %>'/>
				</SameDayTemplate>
				<CrossDayTemplate>
					<mobile:Label RunAt="Server" Text='<%# DataBinder.Eval(Container, "Text") %>'/>
				</CrossDayTemplate>
			</GroupBoardMobile:SPMobileGroupBoardEventListDateRangeLabel>
			<GroupBoardMobile:SPMobileGroupBoardEventListDispFormNavigation RunAt="Server" BreakAfter="false" />
			<GroupBoardMobile:SPMobileGroupBoardEventListRecurrenceIcon RunAt="Server" BreakAfter="false" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="GroupBoardMobileEventDailyViewContents">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<SPMobile:SPMobileListViewIterator           RunAt="Server" ID="ListViewIteratorForMobile"                                     BreakAfter="false" Format="DropDown" />
			<SPMobile:SPMobileRefreshNavigation          RunAt="Server" Text="<%$Resources:wss, mobile_button_refresh_text%>"              BreakAfter="true"  ControlForRefresh="ListViewIteratorForMobile" />
			<SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileDefaultSeparator" />
			<SPMobile:SPMobileEventsViewPeoplePicker          RunAt="Server" id="DateTimePeoplePickerForMobile" />
			<GroupBoardMobile:SPMobileGroupBoardDateTimeInput         RunAt="Server" id="DateTimeInputForGbwMobile" />
			<GroupBoardMobile:SPMobileGroupBoardDateTimeRefreshButton RunAt="Server" Text="<%$Resources:wss, mobile_button_refresh_text%>" TargetDateTimeInputId="DateTimeInputForGbwMobile" TargetPeoplePickerId="DateTimePeoplePickerForMobile" />
			<SPMobile:SPMobileComponent                       RunAt="Server" TemplateName="MobileDefaultSeparator" />
			<GroupBoardMobile:SPMobileGroupBoardDateTimeLabel         RunAt="Server" Font-Bold="True" />
			<mobile:Label                                     RunAt="Server" Text=" " />
		</SPMobile:SPMobileControlContainer>
		<GroupBoardMobile:SPMobileGroupBoardEventListViewItemIterator RunAt="Server" ListItemSeparatorTemplateName="MobileListItemSeparator" />
		<SPMobile:SPMobileLabel                               RunAt="Server" Text="" Weightless="true" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="GroupBoardMobileEventNewFormContents">
	<Template>
		<SPMobile:SPMobileComponent RunAt="Server" TemplateName="GroupBoardMobileEventEditFormContents" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="GroupBoardMobileEventEditFormContents">
	<Template>
		<GroupBoardMobile:SPMobileGroupBoardEventItemFieldIterator RunAt="Server" FieldSeparatorTemplateName="MobileFormFieldSeparator" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="GroupBoardMobileEventDailyViewNavigation">
	<Template>
		<SPMobile:SPMobileListNavigation RunAt="Server" Prefix="MobileDailyView" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileDailyView_Default_View_Navigation">
	<Template>
		<GroupBoardMobile:SPMobileGroupBoardEventListDailyViewNavigation RunAt="Server" Text="<%$Resources:wss,GbwMobileSRPrevDayNavigationText%>" DayType="PrevDay" AccessKey="1" />
		<GroupBoardMobile:SPMobileGroupBoardEventListDailyViewNavigation RunAt="Server" Text="<%$Resources:wss,GbwMobileSRTodayNavigationText%>"   DayType="Today"   AccessKey="2" />
		<GroupBoardMobile:SPMobileGroupBoardEventListDailyViewNavigation RunAt="Server" Text="<%$Resources:wss,GbwMobileSRNextDayNavigationText%>" DayType="NextDay" AccessKey="3" />
		<SPMobile:SPMobileComponent                              RunAt="Server" TemplateName="MobileViewCommonNavigation" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileDailyView_Events_View_Navigation">
	<Template>
		<GroupBoardMobile:SPMobileGroupBoardEventListDailyViewNavigation RunAt="Server" Text="<%$Resources:wss,GbwMobileSRPrevDayNavigationText%>" DayType="PrevDay" AccessKey="1" />
		<GroupBoardMobile:SPMobileGroupBoardEventListDailyViewNavigation RunAt="Server" Text="<%$Resources:wss,GbwMobileSRTodayNavigationText%>"   DayType="Today"   AccessKey="2" />
		<GroupBoardMobile:SPMobileGroupBoardEventListDailyViewNavigation RunAt="Server" Text="<%$Resources:wss,GbwMobileSRNextDayNavigationText%>" DayType="NextDay" AccessKey="3" />
		<GroupBoardMobile:SPMobileGroupBoardEventListNewFormNavigation   RunAt="Server" AccessKey="5" />
		<SPMobile:SPMobileComponent                              RunAt="Server" TemplateName="MobileViewCommonNavigation" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileDailyView_PictureLibrary_View_Navigation">
	<Template>
		<GroupBoardMobile:SPMobileGroupBoardEventListDailyViewNavigation RunAt="Server" Text="<%$Resources:wss,GbwMobileSRPrevDayNavigationText%>" DayType="PrevDay" AccessKey="1" />
		<GroupBoardMobile:SPMobileGroupBoardEventListDailyViewNavigation RunAt="Server" Text="<%$Resources:wss,GbwMobileSRTodayNavigationText%>"   DayType="Today"   AccessKey="2" />
		<GroupBoardMobile:SPMobileGroupBoardEventListDailyViewNavigation RunAt="Server" Text="<%$Resources:wss,GbwMobileSRNextDayNavigationText%>" DayType="NextDay" AccessKey="3" />
		<SPMobile:SPMobileUploadPageNavigation     RunAt="Server" Text="<%$Resources:wss, upload_picture_title%>" AccessKey="6" />
		<SPMobile:SPMobileComponent                              RunAt="Server" TemplateName="MobileViewCommonNavigation" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="GroupBoardMobileEventDispFormNavigation">
	<Template>
		<GroupBoardMobile:SPMobileGroupBoardEventListEditFormNavigation  RunAt="Server" Text="<%$Resources:wss, mobile_navigation_edit_text%>"                                 AccessKey="4" />
		<GroupBoardMobile:SPMobileGroupBoardEventListDailyViewNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_backlist_text%>"                             AccessKey="6" />
		<SPMobile:SPMobileHomePageNavigation                             RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>"     AppendWebTitleToText="True" AccessKey="0" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="GroupBoardMobileEventNewFormNavigation">
	<Template>
		<SPMobile:SPMobileComponent RunAt="Server" TemplateName="GroupBoardMobileEventEditFormNavigation" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="GroupBoardMobileEventEditFormNavigation">
	<Template>
		<SPMobile:SPMobileFormDigest                                     RunAt="Server" />
		<GroupBoardMobile:SPMobileGroupBoardEventListSaveNavigation      RunAt="Server" Text="<%$Resources:wss, mobile_button_save_text%>"         BreakAfter="false" />
		<GroupBoardMobile:SPMobileGroupBoardEventListCancelNavigation    RunAt="Server" Text="<%$Resources:wss, mobile_button_cancel_text%>"       BreakAfter="true"  />
		<GroupBoardMobile:SPMobileGroupBoardEventListDailyViewNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_backlist_text%>" RecentDayNavType="Today"    AccessKey="6" />
		<SPMobile:SPMobileHomePageNavigation                             RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>"     AppendWebTitleToText="True" AccessKey="0" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_425_NewForm_Contents">
	<Template>
		<SPMobile:SPMobileComponent RunAt="Server" TemplateName="Mobile_425_EditForm_Contents" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_425_EditForm_Contents">
	<Template>
		<GroupBoardMobile:SPMobileGroupBoardWhatsNewItemFieldIterator RunAt="Server" FieldSeparatorTemplateName="MobileFormFieldSeparator" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_425_DispForm_Contents">
	<Template>
		<GroupBoardMobile:SPMobileGroupBoardWhatsNewItemFieldIterator RunAt="Server" FieldSeparatorTemplateName="MobileFormFieldSeparator" />
		<SPMobile:SPMobileControlContainer                            RunAt="Server">
			<SPMobile:SPMobileCreatedModifiedPanel RunAt="Server" TemplateName="MobileCreatedModifiedInfo" />
			<mobile:Label                          RunAt="Server" BreakAfter="true" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_425_View_Navigation">
	<Template>
		<SPMobile:SPMobileHomePageNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>" AppendWebTitleToText="True" AccessKey="0" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_425_DispForm_Navigation">
	<Template>
		<SPMobile:SPMobileListViewNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_backlist_text%>"                             AccessKey="6" />
		<SPMobile:SPMobileHomePageNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>"     AppendWebTitleToText="True" AccessKey="0" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="GroupBoardMobileWhereaboutDailyViewItemIterator">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<GroupBoardMobile:SPMobileGroupBoardWhereaboutListDispFormNavigation RunAt="Server"                                                   BreakAfter="false" />
			<SPMobile:SPMobileLabel                                              RunAt="Server" Text="<%$Resources:wss,GbwMobileLabelSeparator%>" BreakAfter="false" />
			<SPMobile:SPMobileListField                                          RunAt="Server" Fieldname="Whereabout"                            BreakAfter="true" />
			<GroupBoardMobile:SPMobileGroupBoardWhereaboutListDateRangeLabel     RunAt="Server"                                                   BreakAfter="false" />
			<SPMobile:SPMobileLabel                                              RunAt="Server" Text=" "                                          BreakAfter="false" />
			<GroupBoardMobile:SPMobileGroupBoardWhereaboutListNotComingLabel     RunAt="Server"                                                   BreakAfter="false" />
			<SPMobile:SPMobileLabel                                              RunAt="Server" Text=" "                                          BreakAfter="false" />
			<GroupBoardMobile:SPMobileGroupBoardWhereaboutListNotReturnLabel     RunAt="Server"                                                   BreakAfter="true" />
		</SPMobile:SPMobileControlContainer>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="GroupBoardMobileWhereaboutViewContents">
	<Template>
		<SPMobile:SPMobileControlContainer RunAt="Server">
			<GroupBoardMobile:SPMobileGroupBoardWhereaboutListCurrentGroupLabel RunAt="Server" />
			<SPMobile:SPMobileComponent                                         RunAt="Server" TemplateName="MobileDefaultSeparator" />
		</SPMobile:SPMobileControlContainer>
		<GroupBoardMobile:SPMobileGroupBoardWhereaboutListViewItemIterator  RunAt="Server" ListItemSeparatorTemplateName="MobileListItemSeparator" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="GroupBoardMobileWhereaboutViewNavigation">
	<Template>
		<GroupBoardMobile:SPMobileGroupBoardWhereaboutListMyEditFormNavigation RunAt="Server" Text="<%$Resources:wss,GbwMobileChangeWAText%>" AccessKey="4" />
		<SPMobile:SPMobileComponent                                            RunAt="Server" TemplateName="MobileViewCommonNavigation" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="MobileListFieldFormRendering">
	<Template>
		<GroupBoardMobile:SPMobileGroupBoardCompositeField RunAt="Server" />
	</Template>
</SharePoint:RenderingTemplate>
