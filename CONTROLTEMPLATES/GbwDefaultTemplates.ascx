<%@ Control Language="C#"   AutoEventWireup="false" %>
<%@Assembly Name="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@Register TagPrefix="SharePoint" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.WebControls"%>
<%@Register TagPrefix="SPHttpUtility" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.Utilities"%>
<%@Register TagPrefix="GroupBoard" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.Applications.GroupBoard.WebControls"%>
<%@Register TagPrefix="GroupBoardWebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.Applications.GroupBoard.WebPartPages"%>
<%@ Register TagPrefix="wssuc" TagName="ToolBar" src="~/_controltemplates/15/ToolBar.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="~/_controltemplates/15/ToolBarButton.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="~/_controltemplates/15/InputFormSection.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="~/_controltemplates/15/InputFormControl.ascx" %>
<SharePoint:RenderingTemplate id="GroupBoardMyTimeCardTemplate" runat="server">
	<Template>
  <GroupBoard:MyTimeCardPaging runat="server">
	 <Template>
		<div class="ms-cal-navheader">
		  <a href="<%# DataBinder.Eval(Container,"PrevURL","") %>" tabindex=1 style="visibility:<%# DataBinder.Eval(Container,"PrevMonthVisible","")%>" accesskey="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,GroupBoardTimeCardPagenationPrevAK%>' EncodeMethod='HtmlEncode'/>">
			<img border="0" src="<%# DataBinder.Eval(Container,"PrevImage","") %>" width="12" height="9" alt="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,GroupBoardTimeCardPagenationPreviousMonth%>' EncodeMethod='HtmlEncode'/>"></a>
		  <a href="<%# DataBinder.Eval(Container,"NextURL","") %>" tabindex=1 style="visibility:<%# DataBinder.Eval(Container,"NextMonthVisible","")%>" accesskey="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,GroupBoardTimeCardPagenationNextAK%>' EncodeMethod='HtmlEncode'/>">
			<img border="0" src="<%# DataBinder.Eval(Container,"NextImage","") %>" width="12" height="9" alt="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,GroupBoardTimeCardPagenationNextMonth%>' EncodeMethod='HtmlEncode'/>" ></a>
		  &#160;<%# DataBinder.Eval(Container,"HeaderMonth","") %>&#160;
		</div>
	 </Template>
  </GroupBoard:MyTimeCardPaging>
  <table class="ms-gb-tc-table" id="TimeCardTableId">
	<GroupBoard:TimeCardModeSwitcher runat="server">
	  <SimpleTemplate>
		<tr class="ms-gb-tc-header">
		  <td colspan="2"><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderDate%>" /></nobr></td>
		  <td><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderStartTime%>" /></nobr></td>
		  <td><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderEndTime%>" /></nobr></td>
		  <td><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderBreak%>" /></nobr></td>
		  <td><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderVacation%>" /></nobr></td>
		  <td><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderPatternOfVacation%>" /></nobr></td>
		  <td><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderWorkingHour%>" /></nobr></td>
		  <td><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderComments%>" /></nobr></td>
		</tr>
	  </SimpleTemplate>
	  <DetailTemplate>
		<tr class="ms-gb-tc-header">
		  <td colspan="2" rowspan="2"><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderDate%>" /></nobr></td>
		  <td rowspan="2"><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderStartTime%>" /></nobr></td>
		  <td colspan="2"><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderOutOfOffice%>" /></nobr></td>
		  <td rowspan="2"><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderEndTime%>" /></nobr></td>
		  <td rowspan="2"><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderBreak%>" /></nobr></td>
		  <td rowspan="2"><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderVacation%>" /></nobr></td>
		  <td rowspan="2"><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderPatternOfVacation%>" /></nobr></td>
		  <td rowspan="2"><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderWorkingHour%>" /></nobr></td>
		  <td rowspan="2"><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderOvertime%>" /></nobr></td>
		  <td rowspan="2"><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderLateNight%>" /></nobr></td>
		  <td rowspan="2"><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderWorkOnHoliday%>" /></nobr></td>
		  <td rowspan="2"><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderHolidayAndLateNight%>" /></nobr></td>
		  <td rowspan="2"><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderLate%>" /></nobr></td>
		  <td rowspan="2"><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderLeaveEarly%>" /></nobr></td>
		  <td rowspan="2"><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderOutOfOfficePrivate%>" /></nobr></td>
		  <td rowspan="2"><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderComments%>" /></nobr></td>
		</tr>
		<tr class="ms-gb-tc-header">
		  <td><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderOut%>" /></nobr></td>
		  <td><nobr><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardHeaderIn%>" /></nobr></td>
		</tr>
	  </DetailTemplate>
	</GroupBoard:TimeCardModeSwitcher>
	<GroupBoard:MyTimeCardRowIterator runat="server">
	  <SimpleRowTemplate>
		<tr class="<%# DataBinder.Eval(Container, "CssDayRowClassName") %>">
		  <td class="ms-gb-tc-day-cell"><%# DataBinder.Eval(Container, "DayOfMonth", "") %></td><td class="ms-gb-tc-dayname-cell"><%# DataBinder.Eval(Container, "DayName", "") %></td>
		  <td><input type="text" size="5" maxlength="5"  onchange='<%# DataBinder.Eval(Container, "UpdateJSFuncExpression", "") %>' id="Start" value='<%# DataBinder.Eval(Container, "[Start]", "") %>' runat="server"/></td>
		  <td><input type="text" size="5" maxlength="5" id="End" onchange='<%# DataBinder.Eval(Container, "UpdateJSFuncExpression") %>' value='<%# DataBinder.Eval(Container, "[End]", "") %>' runat="server"/></td>
		  <td><input type="text" size="5" maxlength="5" id="Break" onchange='<%# DataBinder.Eval(Container, "UpdateJSFuncExpression") %>' value='<%# DataBinder.Eval(Container, "[Break]", "") %>' runat="server"/></td>
		  <td>
			<select id="Vacation" onchange='<%# DataBinder.Eval(Container, "UpdateJSFuncExpression", "") %>' runat="server">
				 <option value="1" selected="True" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoiceNone%>"></option>
				 <option value="2" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoicePaidVacation%>"></option>
				 <option value="3" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoiceCompensatoryDayOff%>"></option>
				 <option value="4" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoiceVacation%>"></option>
				 <option value="5" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoiceVacationForCelebrationOrSorrow%>"></option>
				 <option value="6" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoiceMaternityLeave%>"></option>
			</select>
		  </td>
		  <td>
			<select id="PatternOfVacation" onchange='<%# DataBinder.Eval(Container, "UpdateJSFuncExpression", "") %>' runat="server">
				 <option value="1" selected="True" text="<%$Resources:wss,GroupBoardTimeCardPatternOfVacationFieldChoiceNone%>"></option>
				 <option value="2" text="<%$Resources:wss,GroupBoardTimeCardPatternOfVacationFieldChoiceAllDay%>"></option>
				 <option value="3" text="<%$Resources:wss,GroupBoardTimeCardPatternOfVacationFieldChoiceAMOFF%>"></option>
				 <option value="4" text="<%$Resources:wss,GroupBoardTimeCardPatternOfVacationFieldChoicePMOFF%>"></option>
			</select>
		  </td>
		  <td>
			<span id="WorkingHourSpan" runat="server"><%# DataBinder.Eval(Container, "[ScheduledWork]") %></span>
			<input id="WorkingHourHiddenText" type="hidden" value='<%# DataBinder.Eval(Container, "[ScheduledWork]") %>' runat="server" />
		  </td>
		  <td>
			<input type="text" id="Comments" value='<%# DataBinder.Eval(Container, "[ShortComment]") %>'  maxlength='255' runat="server" />
		  </td>
		</tr>
	  </SimpleRowTemplate>
	  <DetailRowTemplate>
		<tr class="<%# DataBinder.Eval(Container, "CssDayRowClassName") %>">
		  <td class="ms-gb-tc-day-cell"><%# DataBinder.Eval(Container, "DayOfMonth", "") %></td><td class="ms-gb-tc-dayname-cell"><%# DataBinder.Eval(Container, "DayName", "") %></td>
		  <td><input type="text" size="5" maxlength="5"  onchange='<%# DataBinder.Eval(Container, "UpdateJSFuncExpression", "") %>' id="Start" value='<%# DataBinder.Eval(Container, "[Start]", "") %>' runat="server"/></td>
		  <td><input type="text" size="5" maxlength="5" id="Out" onchange='<%# DataBinder.Eval(Container, "UpdateJSFuncExpression") %>' value='<%# DataBinder.Eval(Container, "[Out]", "") %>' runat="server"/></td>
		  <td><input type="text" size="5" maxlength="5" id="In" onchange='<%# DataBinder.Eval(Container, "UpdateJSFuncExpression") %>' value='<%# DataBinder.Eval(Container, "[In]", "") %>' runat="server"/></td>
		  <td><input type="text" size="5" maxlength="5" id="End" onchange='<%# DataBinder.Eval(Container, "UpdateJSFuncExpression") %>' value='<%# DataBinder.Eval(Container, "[End]", "") %>' runat="server"/></td>
		  <td><input type="text" size="5" maxlength="5" id="Break" onchange='<%# DataBinder.Eval(Container, "UpdateJSFuncExpression") %>' value='<%# DataBinder.Eval(Container, "[Break]", "") %>' runat="server"/></td>
		  <td>
			<select id="Vacation" onchange='<%# DataBinder.Eval(Container, "UpdateJSFuncExpression", "") %>' runat="server">
				 <option value="1" selected="True" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoiceNone%>"></option>
				 <option value="2" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoicePaidVacation%>"></option>
				 <option value="3" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoiceCompensatoryDayOff%>"></option>
				 <option value="4" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoiceVacation%>"></option>
				 <option value="5" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoiceVacationForCelebrationOrSorrow%>"></option>
				 <option value="6" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoiceMaternityLeave%>"></option>
			</select>
		  </td>
		  <td>
			<select id="PatternOfVacation" onchange='<%# DataBinder.Eval(Container, "UpdateJSFuncExpression", "") %>' runat="server">
				 <option value="1" selected="True" text="<%$Resources:wss,GroupBoardTimeCardPatternOfVacationFieldChoiceNone%>"></option>
				 <option value="2" text="<%$Resources:wss,GroupBoardTimeCardPatternOfVacationFieldChoiceAllDay%>"></option>
				 <option value="3" text="<%$Resources:wss,GroupBoardTimeCardPatternOfVacationFieldChoiceAMOFF%>"></option>
				 <option value="4" text="<%$Resources:wss,GroupBoardTimeCardPatternOfVacationFieldChoicePMOFF%>"></option>
			</select>
		  </td>
		  <td>
			<span id="WorkingHourSpan" runat="server"><%# DataBinder.Eval(Container, "[ScheduledWork]") %></span>
			<input id="WorkingHourHiddenText" type="hidden" value='<%# DataBinder.Eval(Container, "[ScheduledWork]") %>' runat="server" />
		  </td>
		  <td>
			<span id="OvertimeWorkSpan" runat="server"><%# DataBinder.Eval(Container, "[Overtime]") %></span>
			<input id="OvertimeWorkHiddenText" type="hidden"  value='<%# DataBinder.Eval(Container, "[Overtime]") %>' runat="server" />
		  </td>
		  <td>
			<span id="LateNightWorkSpan" runat="server"><%# DataBinder.Eval(Container, "[NightWork]") %></span>
			<input id="LateNightWorkHiddenText" type="hidden" value='<%# DataBinder.Eval(Container, "[NightWork]") %>'  runat="server" />
		  </td>
		  <td>
			<span id="HolidayWorkSpan" runat="server"><%# DataBinder.Eval(Container, "[HolidayWork]") %></span>
			<input id="HolidayWorkHiddenText" type="hidden" value='<%# DataBinder.Eval(Container, "[HolidayWork]") %>'  runat="server" />
		  </td>
		  <td>
			<span id="HolidayAndLateNightWorkSpan" runat="server"><%# DataBinder.Eval(Container, "[HolidayNightWork]") %></span>
			<input id="HolidayAndLateNightWorkHiddenText" type="hidden" value='<%# DataBinder.Eval(Container, "[HolidayNightWork]") %>' runat="server" />
		  </td>
		  <td>
			<span id="LateWorkSpan" runat="server"><%# DataBinder.Eval(Container, "[Late]") %></span>
			<input id="LateWorkHiddenText" type="hidden" value='<%# DataBinder.Eval(Container, "[Late]") %>' runat="server" />
		  </td>
		  <td>
			<span id="EarlyWorkSpan" runat="server"><%# DataBinder.Eval(Container, "[LeaveEarly]") %></span>
			<input id="EarlyWorkHiddenText" type="hidden" value='<%# DataBinder.Eval(Container, "[LeaveEarly]") %>' runat="server" />
		  </td>
		  <td>
			<span id="PrivateOutOfOfficeSpan" runat="server"><%# DataBinder.Eval(Container, "[Oof]") %></span>
			<input id="PrivateOutOfOfficeHiddenText" type="hidden" value='<%# DataBinder.Eval(Container, "[Oof]") %>' runat="server" />
		  </td>
		  <td>
			<input type="text" id="Comments" value='<%# DataBinder.Eval(Container, "[ShortComment]") %>' maxlength='255' runat="server" />
		  </td>
		</tr>
	  </DetailRowTemplate>
	</GroupBoard:MyTimeCardRowIterator>
	<GroupBoard:TimeCardModeSwitcher runat="server">
	  <SimpleTemplate>
		<tr>
		  <td border="0" colspan="5"></td>
		  <td><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardTotal%>" /></td>
		  <td><span id="TotalHolidayNumsId">0</span>&#160; <asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardUnitOfHoliday%>" /></td>
		  <td id="WorkTotalId">&#160;</td>
		  <td id="CommentTotalId">&#160;</td>
		</tr>
	  </SimpleTemplate>
	  <DetailTemplate>
		<tr>
		  <td border="0" colspan="7"></td>
		  <td><asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardTotal%>" /></td>
		  <td><span id="TotalHolidayNumsId">0</span>&#160; <asp:literal runat="server" text="<%$Resources:wss,GroupBoardTimeCardUnitOfHoliday%>" /></td>
		  <td id="WorkTotalId">&#160;</td>
		  <td id="OvertimeTotalId">&#160;</td>
		  <td id="NightWorkTotalId">&#160;</td>
		  <td id="HolidayWorkTotalId">&#160;</td>
		  <td id="HolidayNightTotalId">&#160;</td>
		  <td id="LateTotalId">&#160;</td>
		  <td id="EarlyTotalId">&#160;</td>
		  <td id="PrivateOofId">&#160;</td>
		  <td id="CommentTotalId">&#160;</td>
		</tr>
	  </DetailTemplate>
	</GroupBoard:TimeCardModeSwitcher>
  </table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardTimeCardSettingsMenu" runat="server">
	<Template>
		<SharePoint:FeatureMenuTemplate runat="server"
			FeatureScope="Site"
			Location="Microsoft.SharePoint.StandardMenu"
			GroupId="SettingsMenu"
			>
			<SharePoint:MenuItemTemplate
			  id="TimeCardSettings"
			  Text="<%$Resources:wss,GroupBoardTimeCardSettingsMenu%>"
			  Description="<%$Resources:wss,GroupBoardTimeCardSettingsMenuDescription%>"
			  PermissionsString="ManageLists"
			  PermissionContext="CurrentList"
			  PermissionMode="Any"
			  ImageUrl="/_layouts/15/images/MenuListSettings.gif?rev=23"
			  MenuGroupId="200"
			  RibbonCommand ="TimecardSettingsSettings"
			  Sequence="400"
			  runat="server"/>
		</SharePoint:FeatureMenuTemplate>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardTimeCardToolBar" runat="server">
	<Template>
		<wssuc:ToolBar CssClass="ms-menutoolbar" EnableViewState="false" id="toolBarTbl" ButtonSeparator="<img src='/_layouts/15/images/blank.gif'>" RightButtonSeparator="&amp;#160;&amp;#160;" runat="server">
			<Template_Buttons>
			  <GroupBoard:TimecardLinkButton runat="server"
				id="TimeCardSave"
				Text="<%$Resources:wss,GroupBoardTimeCardSaveMenu%>"
				accesskey="<%$Resources:wss,GroupBoardTimeCardSaveMenuAK%>"
				ToolTip="<%$Resources:wss,GroupBoardTimeCardSaveMenuDescription%>"
				OnClientClick="SaveTimeCard();return false;"
				PermissionsString="AddListItems"
				PermissionContext="CurrentList"
				HoverCellActiveCssClass="ms-buttonactivehover"
				HoverCellInActiveCssClass="ms-buttoninactivehover"
				RibbonCommand="TimecardActionsSave"
				 />
			  <GroupBoard:TimecardNewDataSheetButton
				Text="<%$Resources:wss,GroupBoardTimeCardNewDataSheetMenuDisplayName%>"
				ToolTip="<%$Resources:wss,GroupBoardTimeCardNewDataSheetMenuToolTip%>"
				runat="server"/>
			  <GroupBoard:TimeCardSettingsMenu accesskey="<%$Resources:wss,GroupBoardTimeCardSettingsMenuAK%>" runat="server" />
			</Template_Buttons>
			<Template_RightButtons>
			  <SharePoint:PagingButton runat="server"/>
			  <SharePoint:ListViewSelector runat="server"/>
			</Template_RightButtons>
		</wssuc:ToolBar>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardTimeCardDataSheetToolBar" runat="server">
	<Template>
		<wssuc:ToolBar CssClass="ms-menutoolbar" EnableViewState="false" id="toolBarTbl" ButtonSeparator="<img src='/_layouts/15/images/blank.gif'>" RightButtonSeparator="&amp;#160;&amp;#160;" runat="server">
			<Template_Buttons>
			  <GroupBoard:TimecardDeleteDataSheetButton
				 Text="<%$Resources:wss,GroupBoardTimeCardDeleteMenu%>"
				 ToolTip="<%$Resources:wss,GroupBoardTimeCardDeleteMenuDescription%>"
				 accesskey="<%$Resources:wss,GroupBoardTimeCardDeleteMenuAK%>"
				 runat="server"/>
			  <SharePoint:ActionsMenu
				TemplateName="GroupBoardTimeCardDataSheetToolbarActionsMenu"
				accesskey="<%$Resources:wss,tb_ActionsMenu_AK%>"
				runat="server" />
			  <GroupBoard:TimeCardSettingsMenu accesskey="<%$Resources:wss,GroupBoardTimeCardSettingsMenuAK%>" runat="server" />
			</Template_Buttons>
			<Template_RightButtons>
			  <SharePoint:PagingButton runat="server"/>
			  <SharePoint:ListViewSelector runat="server"/>
			</Template_RightButtons>
		</wssuc:ToolBar>
  </Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardTimeCardDataSheetToolbarActionsMenu" runat="server">
  <Template>
	<SharePoint:FeatureMenuTemplate runat="server"
		FeatureScope="Site"
		Location="Microsoft.SharePoint.StandardMenu"
		GroupId="ActionsMenu">
	  <SharePoint:MenuItemTemplate
		id="ExportToSpreadsheet"
		Text="<%$Resources:wss,ToolBarMenuItemExportToSpreadsheet%>"
		Description="<%$Resources:wss,ToolBarMenuItemExportToSpreadsheetDescription%>"
		PermissionsString="UseClientIntegration"
		PermissionContext="CurrentList"
		MenuGroupId="400"
		Sequence="200"
		ImageUrl="/_layouts/15/images/MenuSpreadsheet.gif?rev=23"
		RibbonCommand="TimecardManageExport"
		runat="server"/>
	</SharePoint:FeatureMenuTemplate>
  </Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="GroupBoardWhereaboutsNewFormToolBar" runat="server">
  <Template>
	<wssuc:ToolBar CssClass="ms-toolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
	  <Template_Buttons>
	  </Template_Buttons>
	</wssuc:ToolBar>
  </Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardWhereaboutsDisplayFormToolBar" runat="server">
  <Template>
	<SharePoint:ScriptBlock runat="server">
	  recycleBinEnabled = <SharePoint:ProjectProperty Property="RecycleBinEnabled" runat="server"/>;
	</SharePoint:ScriptBlock>
	<wssuc:ToolBar  CssClass="ms-toolbar" id="toolBarTbl" runat="server" FocusOnToolbar="true">
	  <Template_Buttons>
		<SharePoint:EnterFolderButton runat="server"/>
		<SharePoint:EditItemButton runat="server"/>
		<SharePoint:EditSeriesButton runat="server"/>
		<GroupBoard:PersonalSettingsButton RibbonCommand="WhereaboutsOptions" runat="server"/>
		<SharePoint:ClaimReleaseTaskButton runat="server"/>
		<SharePoint:ManageCopiesButton runat="server"/>
		<SharePoint:WorkflowsButton runat="server"/>
	  </Template_Buttons>
	</wssuc:ToolBar>
  </Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardCallTrackDisplayFormToolBar" runat="server">
  <Template>
	<SharePoint:ScriptBlock runat="server">
	  recycleBinEnabled = <SharePoint:ProjectProperty Property="RecycleBinEnabled" runat="server"/>;
	</SharePoint:ScriptBlock>
	<wssuc:ToolBar  CssClass="ms-toolbar" id="toolBarTbl" runat="server" FocusOnToolbar="true">
	  <Template_Buttons>
		<GroupBoard:ResolveButton RibbonCommand="CallTrackResolve" runat="server"/>
		<GroupBoard:UnresolveButton RibbonCommand="CallTrackUnresolve" runat="server"/>
		<SharePoint:EnterFolderButton runat="server"/>
		<SharePoint:EditItemButton runat="server"/>
		<SharePoint:EditSeriesButton runat="server"/>
		<SharePoint:ClaimReleaseTaskButton runat="server"/>
		<SharePoint:ManageCopiesButton runat="server"/>
		<SharePoint:WorkflowsButton runat="server"/>
	  </Template_Buttons>
	</wssuc:ToolBar>
  </Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardCirculationDisplayFormToolBar" runat="server">
  <Template>
	<SharePoint:ScriptBlock runat="server">
		recycleBinEnabled = <SharePoint:ProjectProperty Property="RecycleBinEnabled" runat="server"/>;
	</SharePoint:ScriptBlock>
	<wssuc:ToolBar  CssClass="ms-toolbar" id="toolBarTbl" runat="server" FocusOnToolbar="true">
	  <Template_Buttons>
		<GroupBoard:ConfirmButton RibbonCommand="CirculationConfirm" runat="server"/>
		<GroupBoard:DisconfirmButton RibbonCommand="CirculationDisconfirm" runat="server"/>
		<GroupBoard:CopyCirculationButton RibbonCommand="CirculationCopy" runat="server"/>
		<SharePoint:EnterFolderButton runat="server"/>
		<GroupBoard:CirculationEditItemButton runat="server"/>
		<SharePoint:EditSeriesButton runat="server"/>
		<SharePoint:ClaimReleaseTaskButton runat="server"/>
		<SharePoint:ManageCopiesButton runat="server"/>
		<SharePoint:WorkflowsButton runat="server"/>
	  </Template_Buttons>
	</wssuc:ToolBar>
  </Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardIMEDictionaryToolBar" runat="server">
  <Template>
	<wssuc:ToolBar CssClass="ms-menutoolbar" EnableViewState="false" id="toolBarTbl" ButtonSeparator="<img src='/_layouts/15/images/blank.gif' alt=''>" RightButtonSeparator="&amp;#160;&amp;#160;" runat="server">
		<Template_Buttons>
		  <SharePoint:NewMenu accesskey="<%$Resources:wss,tb_NewMenu_AK%>" runat="server" />
		  <SharePoint:ActionsMenu accesskey="<%$Resources:wss,tb_ActionsMenu_AK%>" runat="server" />
		  <SharePoint:SettingsMenu accesskey="<%$Resources:wss,tb_SettingsMenu_AK%>" runat="server" />
		  <GroupBoard:ImeTicketButton runat="server"/>
		</Template_Buttons>
		<Template_RightButtons>
		  <SharePoint:PagingButton runat="server"/>
		  <SharePoint:ListViewSelector runat="server"/>
		</Template_RightButtons>
	  </wssuc:ToolBar>
  </Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardFacilityField" runat="server">
	<Template>
	  <SharePoint:GroupedItemPicker id="MultiLookupPicker" runat="server"
		  GroupControlId="SelectGroup"
		  CandidateControlId="SelectCandidate"
		  ResultControlId="SelectResult"
		  AddButtonId="AddButton"
		  RemoveButtonId="RemoveButton"
		  DescriptionControlId="DescriptionControl"
		  AlwaysAllowRemove="true"
			/>
	  <div class="ms-error" id="ThrottoledError" runat="server" visible="false" style="padding-bottom:5px"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,resourcelist_exceeds_limit%>" EncodeMethod='HtmlEncode'/></div>
	  <table class="ms-long" cellpadding="0" cellspacing="0" border="0">
		<tr>
		  <td class="ms-input" style="padding-right: 10px">
			<select id="SelectGroup" runat="server"> </select>
		  </td>
		  <td> </td>
		  <td> </td>
		</tr>
		<tr>
		  <td class="ms-input">
			<SharePoint:SPHtmlSelect id="SelectCandidate" width="143" height="125" runat="server" multiple="true" />
		  </td>
		  <td align="center" valign="middle" class="ms-input" style="padding-left:10px">
			<button class="ms-ButtonHeightWidth" id="AddButton" runat="server"> <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,multipages_gip_add%>" EncodeMethod='HtmlEncode'/> </button>
			<br />
			<br />
			<button class="ms-ButtonHeightWidth" id="RemoveButton" runat="server"> <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,multipages_gip_remove%>" EncodeMethod='HtmlEncode'/> </button>
		  </td>
		  <td style="padding-left:10px" class="ms-input">
			<SharePoint:SPHtmlSelect id="SelectResult" width="143" height="125" runat="server" multiple="true" />
		  </td>
		</tr>
		<tr>
		  <td class="ms-input" colspan="3">
			<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,GroupBoardScheduleFacilitiesSelectDescription%>" EncodeMethod='HtmlEncode'/><br/>
			<span id="DescriptionControl" runat="server"> </span>&#160;
		  </td>
		</tr>
	  </table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardFreeBusyField" runat="server">
	<Template>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardOverbookField" runat="server">
	<Template>
		<asp:Button id="btnCheckOverbook" UseSubmitBehavior="false" Text="<%$Resources:wss,GroupBoardOverbookButtonLabel%>" Title="<%$Resources:wss,GroupBoardOverbookButtonTitle%>" class="ms-ButtonHeightWidth" runat="server"/>
		<br/>
		<asp:Label id="lblNoBooking" Text="<%$Resources:wss,GroupBoardOverbookNoBookLabel%>" CssClass="ms-gb-sr-overbook-label" Visible="false" runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardChangeCalendarContentType" runat="server">
	<Template>
		<tr>
		<td nowrap="true" valign="top" class="ms-formlabel"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,GroupBoardScheduleChangeType%>" EncodeMethod='HtmlEncode'/></td>
		<td valign="top" class="ms-formbody"><asp:DropDownList id="ContentTypeChoice" runat="server"/><br>
		<asp:Label id="ContentTypeDescription" runat="server"/></td>
		</tr>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardLocationField" runat="server">
	<Template>
		<SharePoint:ScriptLink name="groupboard.js" localizable="false" language="javascript" runat="server" />
		<asp:TextBox id="TextField" maxlength="255" runat="server"/><input type="hidden" id="IsDirty" runat="server"/><br/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardCirlucationConfirmationsField" runat="server">
	<Template>
		<asp:Table ID="tblConfirmations" runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardFromField" runat="server">
	<Template>
		<table cellpadding="0" cellspacing="0" width="100%" border="0">
			<tr style="vertical-align:top;">
				<td>
					<asp:CheckBox id="chkFrom" runat="server"/>
				</td>
				<td>
					<SharePoint:DateTimeControl id="DateTimeField" runat="server"/>
				</td>
			</tr>
		</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardUntilField" runat="server">
	<Template>
		<table cellpadding="0" cellspacing="0" width="100%" border="0">
			<tr style="vertical-align:top;">
				<td>
					<asp:CheckBox id="chkUntil" runat="server"/>
				</td>
				<td>
					<SharePoint:DateTimeControl id="DateTimeField" runat="server"/>
				</td>
			</tr>
		</table>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardMyWhereaboutsField" runat="server">
	<Template>
		<asp:TextBox id="txtMyWhereabouts" TextMode="MultiLine" rows="5" Columns="20" CssClass="ms-long" runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardMyContactInfoField" runat="server">
	<Template>
		<asp:TextBox id="txtMyContactInfo" TextMode="MultiLine" rows="5" Columns="20" CssClass="ms-long" runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardTimeCardWebPartTemplate" runat="server">
  <Template>
<style type="text/css">
.ms-gbw-tc-webpart,.ms-gbw-tc-webpart a{
font:8pt tahoma;
font-weight:bold;
color:#666666;;
text-decoration:none;
}
table.ms-gbw-tc-webpart td.ms-gbw-tc-webpart{
border-right:solid 1px #bfbfbf;
}
table.ms-gbw-tc-webpart td.ms-gbw-tc-webpart div{
padding:3px 8px 3px 8px;
border-right:solid 1px #FFFFFF;
}
</style>
	<GroupBoard:TCSettingsControl JSObjectName="gTCConfig" runat="server" />
	<SharePoint:ScriptLink name="timecard.js" localizable="false" language="javascript" runat="server" />
	<table class="ms-gbw-tc-webpart">
	 <tr>
	   <GroupBoard:TimeCardModeSwitcher id="ModeSwitcher" runat="server">
		 <DetailTemplate>
		  <td><asp:LinkButton CssClass="ms-gbw-tc-webpart-start" OnClientClick="wpLinkButtonClick(this, 'Start');" id="StartButton" Text="<%$Resources:wss,GroupBoardTimeCardWebPartStart%>" runat="server"/></td>
		  <td><asp:LinkButton CssClass="ms-gbw-tc-webpart-end" id="EndButton" OnClientClick="wpLinkButtonClick(this, 'End');" Text="<%$Resources:wss,GroupBoardTimeCardWebPartEnd%>" runat="server"/></td>
		  <td><asp:LinkButton CssClass="ms-gbw-tc-webpart-out" id="OutButton" OnClientClick="wpLinkButtonClick(this, 'Out');" Text="<%$Resources:wss,GroupBoardTimeCardWebPartOut%>" runat="server"/></td>
		  <td><asp:LinkButton CssClass="ms-gbw-tc-webpart-in" id="InButton" OnClientClick="wpLinkButtonClick(this, 'In');" Text="<%$Resources:wss,GroupBoardTimeCardWebPartIn%>" runat="server"/></td>
		 </DetailTemplate>
		 <SimpleTemplate>
		  <td><asp:LinkButton CssClass="ms-gbw-tc-webpart-start" OnClientClick="wpLinkButtonClick(this, 'Start');" id="StartButton" Text="<%$Resources:wss,GroupBoardTimeCardWebPartStart%>" runat="server"/></td>
		  <td><asp:LinkButton CssClass="ms-gbw-tc-webpart-end" id="EndButton" OnClientClick="wpLinkButtonClick(this, 'End');" Text="<%$Resources:wss,GroupBoardTimeCardWebPartEnd%>" runat="server"/></td>
		 </SimpleTemplate>
	   </GroupBoard:TimeCardModeSwitcher>
	 </tr>
	</table>
	<GroupBoardWebPartPages:TimeCardWebPartToday id="TodayControl" runat="server">
	   <SimpleDayTemplate>
		<div style="display:none" id="TodayControlHolder">
		  <input type="text" style="display:none" size="5" maxlength="5" id="Start" onchange='<%# DataBinder.Eval(Container, "UpdateJSFuncExpression", "") %>' value='<%# DataBinder.Eval(Container, "[Start]", "") %>' runat="server"/>
		  <input type="text" style="display:none" size="5" maxlength="5" id="End" onchange='<%# DataBinder.Eval(Container, "UpdateJSFuncExpression", "") %>' value='<%# DataBinder.Eval(Container, "[End]", "") %>' runat="server"/>
		  <input type="text" style="display:none" size="5" maxlength="5" id="Break" onchange='<%# DataBinder.Eval(Container, "UpdateJSFuncExpression", "") %>' value='<%# DataBinder.Eval(Container, "[Break]", "") %>' runat="server"/>
			<select id="Vacation" style="display:none" runat="server">
				 <option value="1" selected="True" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoiceNone%>"></option>
				 <option value="2" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoicePaidVacation%>"></option>
				 <option value="3" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoiceCompensatoryDayOff%>"></option>
				 <option value="4" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoiceVacation%>"></option>
				 <option value="5" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoiceVacationForCelebrationOrSorrow%>"></option>
				 <option value="6" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoiceMaternityLeave%>"></option>
			</select>
			<select id="PatternOfVacation" style="display:none" runat="server">
				 <option value="1" selected="True" text="<%$Resources:wss,GroupBoardTimeCardPatternOfVacationFieldChoiceNone%>"></option>
				 <option value="2" text="<%$Resources:wss,GroupBoardTimeCardPatternOfVacationFieldChoiceAllDay%>"></option>
				 <option value="3" text="<%$Resources:wss,GroupBoardTimeCardPatternOfVacationFieldChoiceAMOFF%>"></option>
				 <option value="4" text="<%$Resources:wss,GroupBoardTimeCardPatternOfVacationFieldChoicePMOFF%>"></option>
			</select>
			<input id="WorkingHourHiddenText" type="hidden" value='<%# DataBinder.Eval(Container, "[ScheduledWork]") %>' runat="server" />
			<input id="Comments" type="text" style="display:none" value='<%# DataBinder.Eval(Container, "[ShortComment]") %>' runat="server" />
		</div>
	   </SimpleDayTemplate>
	  <DetailDayTemplate>
		<div style="display:none" id="TodayControlHolder">
		  <input type="text" style="display:none" size="5" maxlength="5" id="Start" onchange='<%# DataBinder.Eval(Container, "UpdateJSFuncExpression", "") %>' value='<%# DataBinder.Eval(Container, "[Start]", "") %>' runat="server"/>
		  <input type="text" style="display:none" size="5" maxlength="5" id="Out" onchange='<%# DataBinder.Eval(Container, "UpdateJSFuncExpression", "") %>' value='<%# DataBinder.Eval(Container, "[Out]", "") %>' runat="server"/>
		  <input type="text" style="display:none" size="5" maxlength="5" id="In" onchange='<%# DataBinder.Eval(Container, "UpdateJSFuncExpression", "") %>' value='<%# DataBinder.Eval(Container, "[In]", "") %>' runat="server"/>
		  <input type="text" style="display:none" size="5" maxlength="5" id="End" onchange='<%# DataBinder.Eval(Container, "UpdateJSFuncExpression", "") %>' value='<%# DataBinder.Eval(Container, "[End]", "") %>' runat="server"/>
		  <input type="text" style="display:none" size="5" maxlength="5" id="Break" onchange='<%# DataBinder.Eval(Container, "UpdateJSFuncExpression", "") %>' value='<%# DataBinder.Eval(Container, "[Break]", "") %>' runat="server"/>
			<select id="Vacation" style="display:none" runat="server">
				 <option value="1" selected="True" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoiceNone%>"></option>
				 <option value="2" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoicePaidVacation%>"></option>
				 <option value="3" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoiceCompensatoryDayOff%>"></option>
				 <option value="4" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoiceVacation%>"></option>
				 <option value="5" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoiceVacationForCelebrationOrSorrow%>"></option>
				 <option value="6" text="<%$Resources:wss,GroupBoardTimeCardVacationFieldChoiceMaternityLeave%>"></option>
			</select>
			<select id="PatternOfVacation" style="display:none" runat="server">
				 <option value="1" selected="True" text="<%$Resources:wss,GroupBoardTimeCardPatternOfVacationFieldChoiceNone%>"></option>
				 <option value="2" text="<%$Resources:wss,GroupBoardTimeCardPatternOfVacationFieldChoiceAllDay%>"></option>
				 <option value="3" text="<%$Resources:wss,GroupBoardTimeCardPatternOfVacationFieldChoiceAMOFF%>"></option>
				 <option value="4" text="<%$Resources:wss,GroupBoardTimeCardPatternOfVacationFieldChoicePMOFF%>"></option>
			</select>
			<input id="WorkingHourHiddenText" type="hidden" value='<%# DataBinder.Eval(Container, "[ScheduledWork]") %>' runat="server" />
			<input id="OvertimeWorkHiddenText" type="hidden"  value='<%# DataBinder.Eval(Container, "[Overtime]") %>' runat="server" />
			<input id="LateNightWorkHiddenText" type="hidden" value='<%# DataBinder.Eval(Container, "[NightWork]") %>'  runat="server" />
			<input id="HolidayWorkHiddenText" type="hidden" value='<%# DataBinder.Eval(Container, "[HolidayWork]") %>' runat="server" />
			<input id="HolidayAndLateNightWorkHiddenText" value='<%# DataBinder.Eval(Container, "[HolidayNightWork]") %>' type="hidden"  runat="server" />
			<input id="LateWorkHiddenText" type="hidden" value='<%# DataBinder.Eval(Container, "[Late]") %>' runat="server" />
			<input id="EarlyWorkHiddenText" type="hidden" value='<%# DataBinder.Eval(Container, "[LeaveEarly]") %>' runat="server" />
			<input id="PrivateOutOfOfficeHiddenText" type="hidden" value='<%# DataBinder.Eval(Container, "[Oof]") %>' runat="server" />
			<input id="Comments" type="text" style="display:none" value='<%# DataBinder.Eval(Container, "[ShortComment]") %>' runat="server" />
		</div>
	   </DetailDayTemplate>
	</GroupBoardWebPartPages:TimeCardWebPartToday>
  </Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardWhatsNewToolPart" runat="server">
	<Template>
<SharePoint:ScriptBlock runat="server">
function wnwp_decode(str)
{
	var decodedStr=str.replace(/&quot;/g, "\"");
	decodedStr=decodedStr.replace(/&gt;/g, ">");
	decodedStr=decodedStr.replace(/&lt;/g, "<");
	decodedStr=decodedStr.replace(/&#39;/g, "'");
	decodedStr=decodedStr.replace(/&amp;/g, "&");
	return decodedStr;
}
function wnwp_find_parents(elem, tagname)
{
	while(elem.parentNode){
		elem = elem.parentNode;
		if (elem.tagName == tagname) return elem;
	}
	throw('could not find the tag:'+tagname+' in wnwp_find_parents');
}
function wnwp_removerow(elem)
{
	var tbody = wnwp_find_parents(elem,'TBODY');
	tbody = wnwp_find_parents(tbody,'TBODY');
	var row = wnwp_find_parents(tbody,'TR');
	tbody = wnwp_find_parents(row,'TBODY');
	for(var i=0;i<tbody.rows.length;i++)
		if (tbody.rows[i] == row) tbody.deleteRow(i);
	wnwp_check_addlink(tbody);
}
function wnwp_addrow(elem)
{
	var tbody = wnwp_find_parents(elem,'TBODY');
	var row = tbody.insertRow(tbody.rows.length-2);
	wnwp_check_addlink(tbody);
	var td = document.createElement('TD');
	td.innerHTML = document.getElementById('wnwp_listselection').innerHTML;
	tbody = wnwp_first_item(td,'TBODY');
	wnwp_init_items(tbody);
	row.appendChild(td);
	return tbody;
}
function wnwp_check_addlink(elem)
{
	var link = document.getElementById('wnwp_lists_addrow');
	if (elem.rows.length > 10)
		link.style.display = 'none';
	else if (link.style.display == 'none')
		link.style.display = 'block';
}
function wnwp_listselchange(elem)
{
	var tbody = wnwp_find_parents(elem,'TBODY');
	var selfield = wnwp_first_item(tbody.rows[3],'select');
	while(selfield.length > 1) selfield.options[selfield.length - 1] = null;
	var selected = elem.options[elem.selectedIndex].value;
	for(var i=0; i < wnwp_fieldlistdic.length; i++){
		if (wnwp_fieldlistdic[i].GUID == selected){
			var fld_array = wnwp_fieldlistdic[i].FLD;
			for(var j=0; j<fld_array.length;j++){
				var o=new Option(wnwp_decode(fld_array[j].DN), fld_array[j].IN);
				selfield.options[selfield.options.length]=o;
			}
			return;
		}
	}
}
function wnwp_setup_listselect(elem)
{
	for(var i=0; i < wnwp_fieldlistdic.length; i++){
		var o=new Option(wnwp_decode(wnwp_fieldlistdic[i].DN), wnwp_fieldlistdic[i].GUID);
		elem.options[elem.options.length]=o;
	}
}
function wnwp_init_items(elem)
{
	var counter = document.getElementsByName('wnwp_lists_numitems')[0];
	counter.value = parseInt(counter.value) + 1;
	var listselect = wnwp_first_item(elem.rows[1],'select');
	listselect.name = listselect.name + counter.value;
	wnwp_setup_listselect(listselect);
	wnwp_listselchange(listselect);
	var fieldselect = wnwp_first_item(elem.rows[3],'select');
	fieldselect.name = fieldselect.name + counter.value;
}
function wnwp_first_item(elem, tagname)
{
	var elems = elem.getElementsByTagName(tagname);
	if (elems.length == 0) throw('no such item(wnwp_first_item) '+tagname);
	return elems[0];
}
function wnwp_setup_item(guid, fieldname)
{
	var elem = wnwp_addrow(document.getElementById('wnwp_lists_table').rows[0]);
	var listselect = wnwp_first_item(elem.rows[1],'select');
	for(var i=0;i<listselect.options.length;i++){
		if (listselect.options[i].value == guid){
			listselect.options[i].selected = true;
			wnwp_listselchange(listselect);
			break;
		}
	}
	var selfield = wnwp_first_item(elem.rows[3],'select');
	for(var i=0;i<selfield.options.length;i++){
		if (selfield.options[i].value == fieldname){
			selfield.options[i].selected = true;
			break;
		}
	}
}
</SharePoint:ScriptBlock>
<div class="UserGeneric">
<div class="UserSectionHead ms-bold" title="<%$Resources:wss,WhatsNewTooltipDataSection%>" runat="server">
  <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,WhatsNewDataSectionCaption%>" EncodeMethod="HtmlEncode"/>
</div>
<div class="UserSectionBody">
  <div class="UserSectionHead">
	<nobr><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,WhatsNewMaxDaysRetrieve%>" EncodeMethod="HtmlEncode"/></nobr>
	<nobr><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,WhatsNewMaxDaysRange%>" EncodeMethod="HtmlEncode"/>.</nobr>
  </div>
  <div class="UserControlGroup">
	<asp:TextBox id="DataMaxDaysRetrieve" maxlength="10" size="10"
	  CssClass="UserInput" style="text-align: right;" runat="server"/>
	  <div class="ms-ToolPaneError" id="InvalidDaysMaxDiv" runat="server" Visible="False"><asp:Label id="InvalidDaysMax" Text="<%$Resources:wss,WhatsNewInvalidValue%>"
		Visible="False" runat="server" /></div>
  </div>
  <div class="UserSectionHead">
	<nobr><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,WhatsNewMaxPersonalMessage%>" EncodeMethod="HtmlEncode"/></nobr>
	<nobr><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,WhatsNewMaxNumberRange%>" EncodeMethod="HtmlEncode"/>.</nobr>
  </div>
  <div class="UserControlGroup">
	<asp:TextBox id="DataMaxPersonal" maxlength="10" size="10"
	  CssClass="UserInput" style="text-align: right;" runat="server"/>
	  <div class="ms-ToolPaneError" id="InvalidPersonalDiv" runat="server" Visible="False"><asp:Label id="InvalidPersonal" Text="<%$Resources:wss,WhatsNewInvalidValue%>"
		Visible="False" runat="server" /></div>
  </div>
  <div class="UserSectionHead">
	<nobr><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,WhatsNewMaxSharedMessage%>" EncodeMethod="HtmlEncode"/></nobr>
	<nobr><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,WhatsNewMaxNumberRange%>" EncodeMethod="HtmlEncode"/>.</nobr>
  </div>
  <div class="UserControlGroup">
	<asp:TextBox id="DataMaxShared" maxlength="10" size="10"
	  CssClass="UserInput" style="text-align: right;" runat="server"/>
	  <div class="ms-ToolPaneError" id="InvalidSharedDiv" runat="server" Visible="False"><asp:Label id="InvalidShared" Text="<%$Resources:wss,WhatsNewInvalidValue%>"
		  Visible="False" runat="server" /></div>
  </div>
  <div class="UserControlGroup">
	<asp:CheckBox id="ShowDetails" Text="<%$Resources:wss,WhatsNewShowDetails%>"
	  ToolTip="<%$Resources:wss,WhatsNewTooltipShowDetails%>"
	  CssClass="UserInput" Checked="false" RunAt="server" />
  </div>
</div>
<div class="UserSectionHead ms-bold" title="<%$Resources:wss,WhatsNewTooltipListsSection%>" runat="server">
  <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,WhatsNewListsSectionCaption%>" EncodeMethod="HtmlEncode"/>
</div>
<div class="UserSectionBody">
  <div class="UserControlGroup">
	<table id="wnwp_lists_table" border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr><td>
	<div class="UserSectionHead"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,WhatsNewConfigMessage%>" EncodeMethod="HtmlEncode"/></div>
	</td></tr>
	<tr><td align="right">
	<input type="hidden" name="wnwp_lists_numitems" value="0"/>
	<div id="wnwp_lists_addrow">
	<a href="javascript:" onclick="wnwp_addrow(this);" title="<%$Resources:wss,WhatsNewTooltipAddList%>" runat="server">
	<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,WhatsNewAddList%>" EncodeMethod="HtmlEncode"/></a>
	</div>
	</td></tr>
	</table>
  </div>
</div>
<div id="wnwp_listselection" style="display:none">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><td>
  <table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr><td><div class="UserSectionHead" title="<%$Resources:wss,WhatsNewTooltipTargetList%>" runat="server"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,WhatsNewTargetListHead%>" EncodeMethod="HtmlEncode"/></div></td>
  <td align="right">
  <a href="javascript:" onclick="wnwp_removerow(this)" title="<%$Resources:wss,WhatsNewTooltipRemoveList%>" runat="server"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,WhatsNewRemoveList%>" EncodeMethod="HtmlEncode"/></a>
  </td></tr></table>
</td></tr>
<tr><td>
  <div class="UserControlGroup">
  <select onchange="wnwp_listselchange(this)" name="wnwp_list_">
  <option value=""><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,WhatsNewTargetListOptionEmpty%>" EncodeMethod="HtmlEncode"/></option>
  </select></div>
</td></tr>
<tr><td>
  <div class="UserSectionHead" title="<%$Resources:wss,WhatsNewTooltipFilter%>" runat="server"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,WhatsNewFilterHead%>" EncodeMethod="HtmlEncode"/></div>
</td></tr>
<tr><td>
  <div class="UserControlGroup"><select name="wnwp_filter_field_">
  <option value=""><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,WhatsNewFilterOptionEmpty%>" EncodeMethod="HtmlEncode"/></option></select></div>
</td></tr>
</table>
<div style="width:100%" class="UserDottedLine"></div>
</div>
</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="FacilitiesForm" runat="server">
	<Template>
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
			<table class="ms-formtable" style="margin-top: 8px;" border="0" cellpadding="0" cellspacing="0" width="100%">
			<SharePoint:FolderFormFields runat="server"/>
			<SharePoint:ListFieldIterator runat="server"/>
			<SharePoint:ApprovalStatus runat="server"/>
			<SharePoint:FormComponent TemplateName="AttachmentRows" ComponentRequiresPostback="False" runat="server"/>
			</table>
			<table cellpadding="0" cellspacing="0" width="100%"><tr><td class="ms-formline"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></td></tr></table>
			<table cellpadding="0" cellspacing="0" width="100%" style="padding-top: 7px"><tr><td width="100%">
			<SharePoint:ItemHiddenVersion runat="server"/>
			<SharePoint:ParentInformationField runat="server"/>
			<div id="listFormToolBarBottom">
			<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
					<Template_Buttons>
						<SharePoint:CreatedModifiedInfo runat="server"/>
					</Template_Buttons>
					<Template_RightButtons>
						<SharePoint:SaveButton runat="server"/>
						<SharePoint:GoBackButton runat="server"/>
					</Template_RightButtons>
			</wssuc:ToolBar>
			</div>
			</td></tr></table>
		</span>
		<SharePoint:AttachmentUpload runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardWhereaboutsEditForm" runat="server">
	<Template>
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
			<table class="ms-formtable" style="margin-top: 8px;" border="0" cellpadding="0" cellspacing="0" width="100%">
			<SharePoint:ChangeContentType runat="server"/>
			<SharePoint:FolderFormFields runat="server"/>
			<tr><SharePoint:CompositeField FieldName="Name" ControlMode="Display" runat="server"/></tr>
			<GroupBoard:WhereaboutsEditFormFields runat="server"/>
			<GroupBoard:WhereaboutsPersonalSettingsFields runat="server"/>
			<SharePoint:ApprovalStatus runat="server"/>
			<SharePoint:FormComponent TemplateName="AttachmentRows" ComponentRequiresPostback="False" runat="server"/>
			</table>
			<table cellpadding="0" cellspacing="0" width="100%"><tr><td class="ms-formline"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></td></tr></table>
			<table cellpadding="0" cellspacing="0" width="100%" style="padding-top: 7px"><tr><td width="100%">
			<SharePoint:ItemHiddenVersion runat="server"/>
			<SharePoint:ParentInformationField runat="server"/>
			<SharePoint:InitContentType runat="server"/>
			<div id="listFormToolBarBottom">
			<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
					<Template_Buttons>
						<SharePoint:CreatedModifiedInfo runat="server"/>
					</Template_Buttons>
					<Template_RightButtons>
						<SharePoint:SaveButton runat="server"/>
						<SharePoint:GoBackButton runat="server"/>
					</Template_RightButtons>
			</wssuc:ToolBar>
			</div>
			</td></tr></table>
		</span>
		<SharePoint:AttachmentUpload runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardWhereaboutsEditFormFields" runat="server">
	<Template>
		<SharePoint:ListFieldIterator ExcludeFields="Name" runat="server" />
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardWhereaboutsPersonalSettingsFields" runat="server">
	<Template>
		<tr>
			<td nowrap="true" valign="top" width="190px" class="ms-formlabel">
				<h3 class="ms-standardheader"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,GroupBoardWhereAboutsMyWhereaboutsTitle%>" EncodeMethod="HtmlEncode"/></h3>
			</td>
			<td valign="top" class="ms-formbody" width="400px">
								<GroupBoard:MyWhereaboutsField runat="server"/><br>
				<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,GroupBoardWhereAboutsMyWhereaboutsDescription%>" EncodeMethod="HtmlEncode"/>
			</td>
		</tr>
		<tr>
			<td nowrap="true" valign="top" width="190px" class="ms-formlabel">
				<h3 class="ms-standardheader"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,GroupBoardWhereAboutsMyContactInfoTitle%>" EncodeMethod="HtmlEncode"/></h3>
			</td>
			<td valign="top" class="ms-formbody" width="400px">
				<GroupBoard:MyContactInfoField runat="server"/><br/>
				<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,GroupBoardWhereAboutsMyContactInfoDescription%>" EncodeMethod="HtmlEncode"/>
			</td>
		</tr>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardWhereaboutsNewForm" runat="server">
	<Template>
		<span id='part1'>
			<SharePoint:InformationBar runat="server"/>
			<div id="listFormToolBarTop">
			<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbltop" RightButtonSeparator="&amp;#160;" runat="server">
					<Template_RightButtons>
						<SharePoint:NextPageButton runat="server"/>
						<SharePoint:SaveButton text="<%$Resources:wss,GroupBoardWhereAboutsAddButtonCaption%>" runat="server"/>
						<SharePoint:GoBackButton runat="server"/>
					</Template_RightButtons>
			</wssuc:ToolBar>
			</div>
		  <GroupBoard:WhereaboutsNewFormToolBar runat="server"/>
		  <asp:PlaceHolder id="WhereaboutsListField" runat="server">
			<table class="ms-formtable" style="margin-top: 8px;" border="0" cellpadding="0" cellspacing="0" width="100%">
			  <tr>
				<td nowrap="true" valign="top" width="190px" class="ms-formlabel">
				  <h3 class="ms-standardheader"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,GroupBoardWhereAboutsAddMembersTitle%>" EncodeMethod="HtmlEncode"/></h3>
				</td>
				<td valign="top" class="ms-formbody" width="400px">
				<GroupBoard:WhereaboutsAddMembersField FieldName="Name" runat="server"/><br/>
				</td>
			  </tr>
			</table>
		  </asp:PlaceHolder>
			<table cellpadding="0" cellspacing="0" width="100%"><tr><td class="ms-formline"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></td></tr></table>
			<table cellpadding="0" cellspacing="0" width="100%" style="padding-top: 7px"><tr><td width="100%">
			<SharePoint:ItemHiddenVersion runat="server"/>
			<SharePoint:ParentInformationField runat="server"/>
			<SharePoint:InitContentType runat="server"/>
			<div id="listFormToolBarBottom">
			<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
					<Template_Buttons>
						<SharePoint:CreatedModifiedInfo runat="server"/>
					</Template_Buttons>
					<Template_RightButtons>
						<SharePoint:SaveButton text="<%$Resources:wss,GroupBoardWhereAboutsAddButtonCaption%>" runat="server"/>
						<SharePoint:GoBackButton runat="server"/>
					</Template_RightButtons>
			</wssuc:ToolBar>
			</div>
		  </td></tr></table>
		</span>
		<SharePoint:AttachmentUpload runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardCirculationEditForm" runat="server">
	<Template>
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
			<table class="ms-formtable" style="margin-top: 8px;" border="0" cellpadding="0" cellspacing="0" width="100%">
			<SharePoint:FolderFormFields runat="server"/>
			<GroupBoard:CirculationEditFormFields runat="server"/>
			<SharePoint:ApprovalStatus runat="server"/>
			<SharePoint:FormComponent TemplateName="AttachmentRows" ComponentRequiresPostback="False" runat="server"/>
			</table>
			<table cellpadding="0" cellspacing="0" width="100%"><tr><td class="ms-formline"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></td></tr></table>
			<table cellpadding="0" cellspacing="0" width="100%" style="padding-top: 7px"><tr><td width="100%">
			<SharePoint:ItemHiddenVersion runat="server"/>
			<SharePoint:ParentInformationField runat="server"/>
			<SharePoint:InitContentType runat="server"/>
			<div id="listFormToolBarBottom">
			<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
					<Template_Buttons>
						<SharePoint:CreatedModifiedInfo runat="server"/>
					</Template_Buttons>
					<Template_RightButtons>
						<SharePoint:SaveButton runat="server"/>
						<SharePoint:GoBackButton runat="server"/>
					</Template_RightButtons>
			</wssuc:ToolBar>
			</div>
		  </td></tr></table>
		</span>
		<SharePoint:AttachmentUpload runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardCirculationEditFormFields" runat="server">
	<Template>
		<SharePoint:ListFieldIterator id="FieldIterator" ExcludeFields="Comments" runat="server" />
		<tr><SharePoint:CompositeField id="CommentsField" FieldName="Comments" ControlMode="Edit" runat="server"/></tr>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate id="GroupBoardNonCirculationEditFormFields" runat="server">
	<Template>
		<SharePoint:ListFieldIterator id="FieldIterator" runat="server" />
	</Template>
</SharePoint:RenderingTemplate>
