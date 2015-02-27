<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.SchedulePicker,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Import Namespace="Microsoft.SharePoint.Utilities" %>
  <SharePoint:CssRegistration Name="Themable/layouts.css" runat="server" />
  <script type="text/javascript">
	// <![CDATA[
	_spBodyOnLoadFunctionNames.push("schedulePickerInit");
	var AllPanels;
	var SchedulePickerDisabled = false;
	var ScheduleType = {
		Minutely: 0,
		Hourly:   1,
		Daily:    2,
		Weekly:   3,
		Monthly:  4 };
	function schedulePickerInit()
	{
		$addHandler($get("<%= DdlDailyHourBegin.ClientID %>"), "change", onDailyChange);
		$addHandler($get("<%= DdlDailyMinuteBegin.ClientID %>"), "change", onDailyChange);
		$addHandler($get("<%= DdlDailyHourEnd.ClientID %>"), "change", onDailyChange);
		$addHandler($get("<%= DdlDailyMinuteEnd.ClientID %>"), "change", onDailyChange);
		$addHandler($get("<%= DdlWeeklyDayBegin.ClientID %>"), "change", onWeeklyChange);
		$addHandler($get("<%= DdlWeeklyDayEnd.ClientID %>"), "change", onWeeklyChange);
		$addHandler($get("<%= DdlWeeklyHourBegin.ClientID %>"), "change", onWeeklyChange);
		$addHandler($get("<%= DdlWeeklyHourEnd.ClientID %>"), "change", onWeeklyChange);
		$addHandler($get("<%= DdlWeeklyMinuteBegin.ClientID %>"), "change", onWeeklyChange);
		$addHandler($get("<%= DdlWeeklyMinuteEnd.ClientID %>"), "change", onWeeklyChange);
		$addHandler($get("<%= DdlMonthlyDateBegin.ClientID %>"), "change", onMonthlyByDateChange);
		$addHandler($get("<%= DdlMonthlyDateEnd.ClientID %>"), "change", onMonthlyByDateChange);
		$addHandler($get("<%= DdlMonthlyByDateHourBegin.ClientID %>"), "change", onMonthlyByDateChange);
		$addHandler($get("<%= DdlMonthlyByDateHourEnd.ClientID %>"), "change", onMonthlyByDateChange);
		$addHandler($get("<%= DdlMonthlyByDateMinuteBegin.ClientID %>"), "change", onMonthlyByDateChange);
		$addHandler($get("<%= DdlMonthlyByDateMinuteEnd.ClientID %>"), "change", onMonthlyByDateChange);
		$addHandler($get("<%= DdlMonthlyWeekBegin.ClientID %>"), "change", onMonthlyByDayChange);
		$addHandler($get("<%= DdlMonthlyDayBegin.ClientID %>"), "change", onMonthlyByDayChange);
		$addHandler($get("<%= DdlMonthlyByDayHourBegin.ClientID %>"), "change", onMonthlyByDayChange);
		$addHandler($get("<%= DdlMonthlyByDayMinuteBegin.ClientID %>"), "change", onMonthlyByDayChange);
		schedulePickerLoad();
	}
	function schedulePickerLoad()
	{
		AllPanels = [
			$get("<%= MinutelyPanel.ClientID %>"),
			$get("<%= HourlyPanel.ClientID %>"),
			$get("<%= DailyPanel.ClientID %>"),
			$get("<%= WeeklyPanel.ClientID %>"),
			$get("<%= MonthlyPanel.ClientID %>") ];
		if (SchedulePickerDisabled)
		{
			for(var i=0; i < AllPanels.length; i++)
				AllPanels[i].style.display = "none";
			showHideInvertedWarning(false);
		}
		else
		{
			changeScheduleType(<%= (int)SelectedScheduleType %>);
		}
	}
	function setSchedulePickerDisabledValue(value)
	{
		SchedulePickerDisabled = value;
		var radioButtons = [
			$get("<%= RbMinutely.ClientID %>"),
			$get("<%= RbHourly.ClientID %>"),
			$get("<%= RbDaily.ClientID %>"),
			$get("<%= RbWeekly.ClientID %>"),
			$get("<%= RbMonthly.ClientID %>") ];
		for(var i = 0; i < radioButtons.length; i++)
		{
			if (radioButtons[i] != null)
				radioButtons[i].disabled = value;
		}
		schedulePickerLoad();
	}
	function changeScheduleType(scheduleType)
	{
		for(var i=0; i < AllPanels.length; i++)
		{
			if (i == scheduleType)
				AllPanels[i].style.display = "";
			else
				AllPanels[i].style.display = "none";
		}
		if (scheduleType == ScheduleType.Minutely)
			showHideInvertedWarning(false);
		else if (scheduleType == ScheduleType.Hourly)
			onHourlyChange();
		else if (scheduleType == ScheduleType.Daily)
			onDailyChange();
		else if (scheduleType == ScheduleType.Weekly)
			onWeeklyChange();
		else if (scheduleType == ScheduleType.Monthly)
			changeMonthlyScheduleType();
	}
	function changeMonthlyScheduleType()
	{
		var rbByDate = document.getElementById("<%= RbMonthlyByDate.ClientID %>");
		var rbByDay = document.getElementById("<%= RbMonthlyByDay.ClientID %>");
		if (rbByDate == null || rbByDay == null)
			return;
		var byDateDisabled = !rbByDate.checked
		var byDayDisabled = !rbByDay.checked;
		if (byDateDisabled && byDayDisabled)
		{
			rbByDate.checked = true;
			byDateDisabled = false;
		}
		if (!byDateDisabled) { onMonthlyByDateChange(); }
		$get("<%= DdlMonthlyByDateHourBegin.ClientID %>").disabled = byDateDisabled;
		$get("<%= DdlMonthlyByDateMinuteBegin.ClientID %>").disabled = byDateDisabled;
		$get("<%= DdlMonthlyDateBegin.ClientID %>").disabled = byDateDisabled;
		$get("<%= DdlMonthlyByDateHourEnd.ClientID %>").disabled = byDateDisabled;
		$get("<%= DdlMonthlyByDateMinuteEnd.ClientID %>").disabled = byDateDisabled;
		$get("<%= DdlMonthlyDateEnd.ClientID %>").disabled = byDateDisabled;
		if (!byDayDisabled) { onMonthlyByDayChange(); }
		$get("<%= DdlMonthlyWeekBegin.ClientID %>").disabled = byDayDisabled;
		$get("<%= DdlMonthlyDayBegin.ClientID %>").disabled = byDayDisabled;
		$get("<%= DdlMonthlyByDayHourBegin.ClientID %>").disabled = byDayDisabled;
		$get("<%= DdlMonthlyByDayMinuteBegin.ClientID %>").disabled = byDayDisabled;
		if (byDateDisabled && byDayDisabled)
			showHideInvertedWarning(false);
	}
	function onHourlyChange()
	{
		var begin = parseInt($get("<%= TxtHourlyMinuteBegin.ClientID %>").value);
		var end = parseInt($get("<%= TxtHourlyMinuteEnd.ClientID %>").value);
		var showWarning = false;
		if (!isNaN(begin) && !isNaN(end) && begin > end)
			showWarning = true;
		showHideInvertedWarning(showWarning);
	}
	function onDailyChange()
	{
		var hourBegin = $get("<%= DdlDailyHourBegin.ClientID %>").selectedIndex;
		var hourEnd = $get("<%= DdlDailyHourEnd.ClientID %>").selectedIndex;
		var minBegin = $get("<%= DdlDailyMinuteBegin.ClientID %>").selectedIndex;
		var minEnd = $get("<%= DdlDailyMinuteEnd.ClientID %>").selectedIndex;
		var showWarning = false;
		if (hourBegin > hourEnd ||
		   (hourBegin == hourEnd && minBegin > minEnd))
			showWarning = true;
		showHideInvertedWarning(showWarning);
	}
	function onWeeklyChange()
	{
		var dayBegin = $get("<%= DdlWeeklyDayBegin.ClientID %>").selectedIndex;
		var dayEnd = $get("<%= DdlWeeklyDayEnd.ClientID %>").selectedIndex;
		var hourBegin = $get("<%= DdlWeeklyHourBegin.ClientID %>").selectedIndex;
		var hourEnd = $get("<%= DdlWeeklyHourEnd.ClientID %>").selectedIndex;
		var minBegin = $get("<%= DdlWeeklyMinuteBegin.ClientID %>").selectedIndex;
		var minEnd = $get("<%= DdlWeeklyMinuteEnd.ClientID %>").selectedIndex;
		var showWarning = false;
		if (dayBegin > dayEnd ||
		   (dayBegin == dayEnd && hourBegin > hourEnd) ||
		   (dayBegin == dayEnd && hourBegin == hourEnd && minBegin > minEnd))
			showWarning = true;
		showHideInvertedWarning(showWarning);
	}
	function onMonthlyByDateChange()
	{
		var dateBegin = $get("<%= DdlMonthlyDateBegin.ClientID %>").selectedIndex;
		var dateEnd = $get("<%= DdlMonthlyDateEnd.ClientID %>").selectedIndex;
		var hourBegin = $get("<%= DdlMonthlyByDateHourBegin.ClientID %>").selectedIndex;
		var hourEnd = $get("<%= DdlMonthlyByDateHourEnd.ClientID %>").selectedIndex;
		var minBegin = $get("<%= DdlMonthlyByDateMinuteBegin.ClientID %>").selectedIndex;
		var minEnd = $get("<%= DdlMonthlyByDateMinuteEnd.ClientID %>").selectedIndex;
		var showWarning = false;
		if (dateBegin > dateEnd ||
		   (dateBegin == dateEnd && hourBegin > hourEnd) ||
		   (dateBegin == dateEnd && hourBegin == hourEnd && minBegin > minEnd))
			showWarning = true;
		showHideInvertedWarning(showWarning);
	}
	function onMonthlyByDayChange()
	{
		showHideInvertedWarning(false);
	}
	function showHideInvertedWarning(showWarning)
	{
		if (showWarning)
			$get("InvertedWarning").style.display = "";
		else
			$get("InvertedWarning").style.display = "none";
	}
	// ]]>
  </script>
<div class="ms-schedpickContainer">
	<div class="ms-globalleft ms-authoringcontrols ms-schedpickLeft" >
		<ul class="ms-schedpickList">
			<li>
				<asp:RadioButton id="RbMinutely"
					GroupName="GrpSPTimerOptions"
					Text="<%$Resources:wss,schedulepicker_minutely%>"
					runat="server"
					onclick="changeScheduleType(ScheduleType.Minutely);"
					ToolTip="<%$Resources:wss,schedulepicker_rad_minutes_tip%>"/>
			</li>
			<li>
				<asp:RadioButton id="RbHourly"
					GroupName="GrpSPTimerOptions"
					Text="<%$Resources:wss,schedulepicker_hourly%>"
					runat="server"
					onclick="changeScheduleType(ScheduleType.Hourly);"
					ToolTip="<%$Resources:wss,schedulepicker_rad_hourly_tip%>"/>
			</li>
			<li>
				<asp:RadioButton id="RbDaily"
					GroupName="GrpSPTimerOptions"
					Text="<%$Resources:wss,schedulepicker_daily%>"
					onclick="changeScheduleType(ScheduleType.Daily);"
					ToolTip="<%$Resources:wss,schedulepicker_rad_daily_tip%>"
					runat="server"/>
			</li>
			<li>
				<asp:RadioButton id="RbWeekly"
					GroupName="GrpSPTimerOptions"
					Text="<%$Resources:wss,schedulepicker_weekly%>"
					onclick="changeScheduleType(ScheduleType.Weekly);"
					ToolTip="<%$Resources:wss,schedulepicker_rad_weekly_tip%>"
					runat="server"/>
			</li>
			<li>
				<asp:RadioButton id="RbMonthly"
					GroupName="GrpSPTimerOptions"
					Text="<%$Resources:wss,schedulepicker_monthly%>"
					runat="server"
					onclick="changeScheduleType(ScheduleType.Monthly);"
					ToolTip="<%$Resources:wss,schedulepicker_rad_monthly_tip%>"/>
			</li>
		</ul>
	</div>
	<div class="ms-globalright ms-alignleft ms-schedpickRight">
		<asp:Panel runat="server" id="MinutelyPanel" style="display:none;">
			<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,schedulepicker_minutes_pre%>" EncodeMethod='HtmlEncode'/>
			<wssawc:InputFormTextBox title="<%$Resources:wss,schedulepicker_tb_minutes_tip%>" class="ms-input" ID="TxtMinutelyInterval" Runat="server" MaxLength=2 Size=2 />
			<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,schedulepicker_minutes_post%>" EncodeMethod='HtmlEncode'/>
		</asp:Panel>
		<asp:Panel runat="Server" id="HourlyPanel" style="display:none">
			<ul class="ms-schedpickList">
				<li>
					<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,schedulepicker_everyhour%>" EncodeMethod="HtmlEncode"/>
				</li>
				<li class="ms-schedpicklist-indent">
					<wssawc:InputFormTextBox title="<%$Resources:wss,schedulepicker_tb_hourlymin_tip%>" class="ms-input" ID="TxtHourlyMinuteBegin" Runat="server" MaxLength=2 Size=2 onkeyup="onHourlyChange();" />
					<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,schedulepicker_hourly_minutespast%>" EncodeMethod='HtmlEncode'/>
				</li>
				<li>
					<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,schedulepicker_no_later_than%>" EncodeMethod="HtmlEncode"/>
				</li>
				<li class="ms-schedpicklist-indent">
					<wssawc:InputFormTextBox title="<%$Resources:wss,schedulepicker_tb_hourlymax_tip%>" class="ms-input" ID="TxtHourlyMinuteEnd" Runat="server" MaxLength=2 Size=2 onkeyup="onHourlyChange();" />
					<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,schedulepicker_hourly_minutespast%>" EncodeMethod='HtmlEncode'/>
				</li>
			</ul>
		</asp:Panel>
		<asp:Panel runat="server" id="DailyPanel" style="display:none">
			<ul class="ms-schedpickList">
				<li><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,schedulepicker_everyday%>" EncodeMethod="HtmlEncode"/></li>
				<li class="ms-schedpicklist-indent">
					<asp:DropDownList id="DdlDailyHourBegin" runat="server" ToolTip="<%$Resources:wss,schedulepicker_dd_dailyhourmin_tip%>" dir="<%$Resources:wss,multipages_direction_dir_value%>" />
					<asp:DropDownList id="DdlDailyMinuteBegin" runat="server" ToolTip="<%$Resources:wss,schedulepicker_dd_dailyminutemin_tip%>" dir="<%$Resources:wss,multipages_direction_dir_value%>" >
						<asp:ListItem value="00" text="<%$Resources:wss,multipage_min_00%>" />
						<asp:ListItem value="15" text="<%$Resources:wss,multipage_min_15%>" />
						<asp:ListItem value="30" text="<%$Resources:wss,multipage_min_30%>" />
						<asp:ListItem value="45" text="<%$Resources:wss,multipage_min_45%>" />
					</asp:DropDownList>
				</li>
				<li><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,schedulepicker_no_later_than%>" EncodeMethod="HtmlEncode"/></li>
				<li class="ms-schedpicklist-indent">
					<asp:DropDownList id="DdlDailyHourEnd" runat="server" ToolTip="<%$Resources:wss,schedulepicker_dd_dailyhourmax_tip%>" dir="<%$Resources:wss,multipages_direction_dir_value%>" />
					<asp:DropDownList id="DdlDailyMinuteEnd" runat="server" ToolTip="<%$Resources:wss,schedulepicker_dd_dailyminutemax_tip%>" dir="<%$Resources:wss,multipages_direction_dir_value%>" >
						<asp:ListItem value="00" text="<%$Resources:wss,multipage_min_00%>" />
						<asp:ListItem value="15" text="<%$Resources:wss,multipage_min_15%>" />
						<asp:ListItem value="30" text="<%$Resources:wss,multipage_min_30%>" />
						<asp:ListItem value="45" text="<%$Resources:wss,multipage_min_45%>" />
					</asp:DropDownList>
				</li>
			</ul>
		</asp:Panel>
		<asp:Panel RunAt="Server" id = "WeeklyPanel" style="display:none">
			<ul class="ms-schedpickList">
				<li><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,schedulepicker_everyweek%>" EncodeMethod="HtmlEncode"/></li>
				<li class="ms-schedpicklist-indent">
					<asp:DropDownList id="DdlWeeklyDayBegin" Runat="server" ToolTip="<%$Resources:wss,schedulepicker_dd_dayofweek_tip%>">
						<asp:ListItem selected="selected" value="0" text="<%$Resources:wss,regionalsetng_DOW_SUNDAY_STR%>" />
						<asp:ListItem value="1" text="<%$Resources:wss,regionalsetng_DOW_MONDAY_STR%>" />
						<asp:ListItem value="2" text="<%$Resources:wss,regionalsetng_DOW_TUESDAY_STR%>" />
						<asp:ListItem value="3" text="<%$Resources:wss,regionalsetng_DOW_WEDNESDAY_STR%>" />
						<asp:ListItem value="4" text="<%$Resources:wss,regionalsetng_DOW_THURSDAY_STR%>" />
						<asp:ListItem value="5" text="<%$Resources:wss,regionalsetng_DOW_FRIDAY_STR%>" />
						<asp:ListItem value="6" text="<%$Resources:wss,regionalsetng_DOW_SATURDAY_STR%>" />
					</asp:DropDownList>
					<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,schedulepicker_at%>" EncodeMethod="HtmlEncode"/>
					<asp:DropDownList id="DdlWeeklyHourBegin" runat="server" ToolTip="<%$Resources:wss,schedulepicker_dd_dailyhourmin_tip%>" dir="<%$Resources:wss,multipages_direction_dir_value%>" />
					<asp:DropDownList id="DdlWeeklyMinuteBegin" runat="server" ToolTip="<%$Resources:wss,schedulepicker_dd_dailyminutemin_tip%>" dir="<%$Resources:wss,multipages_direction_dir_value%>">
						<asp:ListItem value="00" text="<%$Resources:wss,multipage_min_00%>" />
						<asp:ListItem value="15" text="<%$Resources:wss,multipage_min_15%>" />
						<asp:ListItem value="30" text="<%$Resources:wss,multipage_min_30%>" />
						<asp:ListItem value="45" text="<%$Resources:wss,multipage_min_45%>" />
					</asp:DropDownList>
				</li>
				<li><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,schedulepicker_no_later_than%>" EncodeMethod="HtmlEncode"/></li>
				<li class="ms-schedpicklist-indent">
					<asp:DropDownList id="DdlWeeklyDayEnd" Runat="server" ToolTip="<%$Resources:wss,schedulepicker_dd_dayofweek_tip%>">
						<asp:ListItem selected="selected" value="0" text="<%$Resources:wss,regionalsetng_DOW_SUNDAY_STR%>" />
						<asp:ListItem value="1" text="<%$Resources:wss,regionalsetng_DOW_MONDAY_STR%>" />
						<asp:ListItem value="2" text="<%$Resources:wss,regionalsetng_DOW_TUESDAY_STR%>" />
						<asp:ListItem value="3" text="<%$Resources:wss,regionalsetng_DOW_WEDNESDAY_STR%>" />
						<asp:ListItem value="4" text="<%$Resources:wss,regionalsetng_DOW_THURSDAY_STR%>" />
						<asp:ListItem value="5" text="<%$Resources:wss,regionalsetng_DOW_FRIDAY_STR%>" />
						<asp:ListItem value="6" text="<%$Resources:wss,regionalsetng_DOW_SATURDAY_STR%>" />
					</asp:DropDownList>
					<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,schedulepicker_at%>" EncodeMethod="HtmlEncode"/>
					<asp:DropDownList id="DdlWeeklyHourEnd" runat="server" ToolTip="<%$Resources:wss,schedulepicker_dd_dailyhourmin_tip%>" dir="<%$Resources:wss,multipages_direction_dir_value%>" />
					<asp:DropDownList id="DdlWeeklyMinuteEnd" runat="server" ToolTip="<%$Resources:wss,schedulepicker_dd_dailyminutemin_tip%>" dir="<%$Resources:wss,multipages_direction_dir_value%>">
						<asp:ListItem value="00" text="<%$Resources:wss,multipage_min_00%>" />
						<asp:ListItem value="15" text="<%$Resources:wss,multipage_min_15%>" />
						<asp:ListItem value="30" text="<%$Resources:wss,multipage_min_30%>" />
						<asp:ListItem value="45" text="<%$Resources:wss,multipage_min_45%>" />
					</asp:DropDownList>
				</li>
			</ul>
		</asp:Panel>
		<asp:Panel RunAt="Server" id = "MonthlyPanel" style="display:none">
			<asp:RadioButton id="RbMonthlyByDate"
				GroupName="MonthlyRadioButtonGroup"
				Text="<%$Resources:wss,schedulepicker_monthlybydate%>"
				onclick="changeMonthlyScheduleType();"
				ToolTip="<%$Resources:wss,schedulepicker_rad_monthly_tip%>"
				runat="server" />
			<ul class="ms-schedpickList" style="margin-top:5px;">
				<li class="ms-schedpicklist-indent">
					<asp:DropDownList id="DdlMonthlyByDateHourBegin" runat="server" ToolTip="<%$Resources:wss,schedulepicker_dd_dailyhourmin_tip%>" dir="<%$Resources:wss,multipages_direction_dir_value%>" />
					<asp:DropDownList id="DdlMonthlyByDateMinuteBegin" runat="server" ToolTip="<%$Resources:wss,schedulepicker_dd_dailyminutemin_tip%>" dir="<%$Resources:wss,multipages_direction_dir_value%>">
						<asp:ListItem value="00" text="<%$Resources:wss,multipage_min_00%>" />
						<asp:ListItem value="15" text="<%$Resources:wss,multipage_min_15%>" />
						<asp:ListItem value="30" text="<%$Resources:wss,multipage_min_30%>" />
						<asp:ListItem value="45" text="<%$Resources:wss,multipage_min_45%>" />
					</asp:DropDownList>
					<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,schedulepicker_onthe%>" EncodeMethod="HtmlEncode"/>
					<asp:DropDownList id="DdlMonthlyDateBegin" Runat="server" ToolTip="<%$Resources:wss,schedulepicker_dd_dayofmonth_tip%>">
						<asp:ListItem selected="selected" value="1" text="<%$Resources:wss,multipage_1%>" />
						<asp:ListItem value="2" text="<%$Resources:wss,multipage_2%>" />
						<asp:ListItem value="3" text="<%$Resources:wss,multipage_3%>" />
						<asp:ListItem value="4" text="<%$Resources:wss,multipage_4%>" />
						<asp:ListItem value="5" text="<%$Resources:wss,multipage_5%>" />
						<asp:ListItem value="6" text="<%$Resources:wss,multipage_6%>" />
						<asp:ListItem value="7" text="<%$Resources:wss,multipage_7%>" />
						<asp:ListItem value="8" text="<%$Resources:wss,multipage_8%>" />
						<asp:ListItem value="9" text="<%$Resources:wss,multipage_9%>" />
						<asp:ListItem value="10" text="<%$Resources:wss,multipage_10%>" />
						<asp:ListItem value="11" text="<%$Resources:wss,multipage_11%>" />
						<asp:ListItem value="12" text="<%$Resources:wss,multipage_12%>" />
						<asp:ListItem value="13" text="<%$Resources:wss,multipage_13%>" />
						<asp:ListItem value="14" text="<%$Resources:wss,multipage_14%>" />
						<asp:ListItem value="15" text="<%$Resources:wss,multipage_15%>" />
						<asp:ListItem value="16" text="<%$Resources:wss,multipage_16%>" />
						<asp:ListItem value="17" text="<%$Resources:wss,multipage_17%>" />
						<asp:ListItem value="18" text="<%$Resources:wss,multipage_18%>" />
						<asp:ListItem value="19" text="<%$Resources:wss,multipage_19%>" />
						<asp:ListItem value="20" text="<%$Resources:wss,multipage_20%>" />
						<asp:ListItem value="21" text="<%$Resources:wss,multipage_21%>" />
						<asp:ListItem value="22" text="<%$Resources:wss,multipage_22%>" />
						<asp:ListItem value="23" text="<%$Resources:wss,multipage_23%>" />
						<asp:ListItem value="24" text="<%$Resources:wss,multipage_24%>" />
						<asp:ListItem value="25" text="<%$Resources:wss,multipage_25%>" />
						<asp:ListItem value="26" text="<%$Resources:wss,multipage_26%>" />
						<asp:ListItem value="27" text="<%$Resources:wss,multipage_27%>" />
						<asp:ListItem value="28" text="<%$Resources:wss,multipage_28%>" />
						<asp:ListItem value="29" text="<%$Resources:wss,multipage_29%>" />
						<asp:ListItem value="30" text="<%$Resources:wss,multipage_30%>" />
						<asp:ListItem value="31" text="<%$Resources:wss,multipage_31%>" />
					</asp:DropDownList>
				</li>
				<li><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,schedulepicker_no_later_than%>" EncodeMethod="HtmlEncode"/></li>
				<li class="ms-schedpicklist-indent">
					<asp:DropDownList id="DdlMonthlyByDateHourEnd" runat="server" ToolTip="<%$Resources:wss,schedulepicker_dd_dailyhourmin_tip%>" dir="<%$Resources:wss,multipages_direction_dir_value%>" />
					<asp:DropDownList id="DdlMonthlyByDateMinuteEnd" runat="server" ToolTip="<%$Resources:wss,schedulepicker_dd_dailyminutemin_tip%>" dir="<%$Resources:wss,multipages_direction_dir_value%>">
						<asp:ListItem value="00" text="<%$Resources:wss,multipage_min_00%>" />
						<asp:ListItem value="15" text="<%$Resources:wss,multipage_min_15%>" />
						<asp:ListItem value="30" text="<%$Resources:wss,multipage_min_30%>" />
						<asp:ListItem value="45" text="<%$Resources:wss,multipage_min_45%>" />
					</asp:DropDownList>
					<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,schedulepicker_onthe%>" EncodeMethod="HtmlEncode"/>
					<asp:DropDownList id="DdlMonthlyDateEnd" Runat="server" ToolTip="<%$Resources:wss,schedulepicker_dd_dayofmonth_tip%>">
						<asp:ListItem selected="selected" value="1" text="<%$Resources:wss,multipage_1%>" />
						<asp:ListItem value="2" text="<%$Resources:wss,multipage_2%>" />
						<asp:ListItem value="3" text="<%$Resources:wss,multipage_3%>" />
						<asp:ListItem value="4" text="<%$Resources:wss,multipage_4%>" />
						<asp:ListItem value="5" text="<%$Resources:wss,multipage_5%>" />
						<asp:ListItem value="6" text="<%$Resources:wss,multipage_6%>" />
						<asp:ListItem value="7" text="<%$Resources:wss,multipage_7%>" />
						<asp:ListItem value="8" text="<%$Resources:wss,multipage_8%>" />
						<asp:ListItem value="9" text="<%$Resources:wss,multipage_9%>" />
						<asp:ListItem value="10" text="<%$Resources:wss,multipage_10%>" />
						<asp:ListItem value="11" text="<%$Resources:wss,multipage_11%>" />
						<asp:ListItem value="12" text="<%$Resources:wss,multipage_12%>" />
						<asp:ListItem value="13" text="<%$Resources:wss,multipage_13%>" />
						<asp:ListItem value="14" text="<%$Resources:wss,multipage_14%>" />
						<asp:ListItem value="15" text="<%$Resources:wss,multipage_15%>" />
						<asp:ListItem value="16" text="<%$Resources:wss,multipage_16%>" />
						<asp:ListItem value="17" text="<%$Resources:wss,multipage_17%>" />
						<asp:ListItem value="18" text="<%$Resources:wss,multipage_18%>" />
						<asp:ListItem value="19" text="<%$Resources:wss,multipage_19%>" />
						<asp:ListItem value="20" text="<%$Resources:wss,multipage_20%>" />
						<asp:ListItem value="21" text="<%$Resources:wss,multipage_21%>" />
						<asp:ListItem value="22" text="<%$Resources:wss,multipage_22%>" />
						<asp:ListItem value="23" text="<%$Resources:wss,multipage_23%>" />
						<asp:ListItem value="24" text="<%$Resources:wss,multipage_24%>" />
						<asp:ListItem value="25" text="<%$Resources:wss,multipage_25%>" />
						<asp:ListItem value="26" text="<%$Resources:wss,multipage_26%>" />
						<asp:ListItem value="27" text="<%$Resources:wss,multipage_27%>" />
						<asp:ListItem value="28" text="<%$Resources:wss,multipage_28%>" />
						<asp:ListItem value="29" text="<%$Resources:wss,multipage_29%>" />
						<asp:ListItem value="30" text="<%$Resources:wss,multipage_30%>" />
						<asp:ListItem value="31" text="<%$Resources:wss,multipage_31%>" />
					</asp:DropDownList>
				</li>
			</ul>
			<asp:RadioButton id="RbMonthlyByDay"
				GroupName="MonthlyRadioButtonGroup"
				Text="<%$Resources:wss,schedulepicker_monthlybyday%>"
				onclick="changeMonthlyScheduleType();"
				ToolTip="<%$Resources:wss,schedulepicker_rad_monthly_tip%>"
				runat="server" />
			<ul class="ms-schedpickList" style="margin-top:5px;">
				<li class="ms-schedpicklist-indent">
					<asp:DropDownList id="DdlMonthlyByDayHourBegin" runat="server" ToolTip="<%$Resources:wss,schedulepicker_dd_dailyhourmin_tip%>" dir="<%$Resources:wss,multipages_direction_dir_value%>" />
					<asp:DropDownList id="DdlMonthlyByDayMinuteBegin" runat="server" ToolTip="<%$Resources:wss,schedulepicker_dd_dailyminutemin_tip%>" dir="<%$Resources:wss,multipages_direction_dir_value%>">
						<asp:ListItem value="00" text="<%$Resources:wss,multipage_min_00%>" />
						<asp:ListItem value="15" text="<%$Resources:wss,multipage_min_15%>" />
						<asp:ListItem value="30" text="<%$Resources:wss,multipage_min_30%>" />
						<asp:ListItem value="45" text="<%$Resources:wss,multipage_min_45%>" />
					</asp:DropDownList>
					<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,schedulepicker_onthe%>" EncodeMethod="HtmlEncode"/>
					<asp:DropDownList id="DdlMonthlyWeekBegin" Runat="server" ToolTip="<%$Resources:wss,schedulepicker_dd_dayofmonth_tip%>">
						<asp:ListItem selected="selected" value="0" text="<%$Resources:wss,week_first%>" />
						<asp:ListItem value="1" text="<%$Resources:wss,week_second%>" />
						<asp:ListItem value="2" text="<%$Resources:wss,week_third%>" />
						<asp:ListItem value="3" text="<%$Resources:wss,week_fourth%>" />
						<asp:ListItem value="4" text="<%$Resources:wss,week_last%>" />
					</asp:DropDownList>
					<asp:DropDownList id="DdlMonthlyDayBegin" Runat="server" ToolTip="<%$Resources:wss,schedulepicker_dd_dayofweek_tip%>">
						<asp:ListItem selected="selected" value="0" text="<%$Resources:wss,regionalsetng_DOW_SUNDAY_STR%>" />
						<asp:ListItem value="1" text="<%$Resources:wss,regionalsetng_DOW_MONDAY_STR%>" />
						<asp:ListItem value="2" text="<%$Resources:wss,regionalsetng_DOW_TUESDAY_STR%>" />
						<asp:ListItem value="3" text="<%$Resources:wss,regionalsetng_DOW_WEDNESDAY_STR%>" />
						<asp:ListItem value="4" text="<%$Resources:wss,regionalsetng_DOW_THURSDAY_STR%>" />
						<asp:ListItem value="5" text="<%$Resources:wss,regionalsetng_DOW_FRIDAY_STR%>" />
						<asp:ListItem value="6" text="<%$Resources:wss,regionalsetng_DOW_SATURDAY_STR%>" />
					</asp:DropDownList>
				</li>
			</ul>
		</asp:Panel>
		<div id="InvertedWarning" style="color:red;display:none;"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,schedulepicker_inverted_warning%>" EncodeMethod="HtmlEncode"/></div>
	</div>
</div>
