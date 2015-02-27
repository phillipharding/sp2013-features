<%-- Copyright (c) Microsoft Corporation. All rights reserved. --%>

<!-- 
Settings - ASP.NET UserControl
This component provides the student mobile notifications configuration experience. It is NOT a widget. It will
eventually be contained within the dashboard.
-->

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Settings.ascx.cs" Inherits="Microsoft.Office.Education.WebUI.NotificationsConfigurationControl,Microsoft.Office.Education.WebUI,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>

<!-- TODO: Everything should be resource strings, not literal strings -->

<div id="SettingsAll">
    <!-- All settings content -->
    <div id="SettingsChannels">
        <div id="SettingsEmailChannel" class="edu-channelHeader">
            <!-- Email configuration -->
            <div id="SettingsEmailChannelContent" class="edu-channelContentColumn">
                <div class="edu-subHeader">
                    <span id="SettingsEmailChannelAddressCaption" class="ms-helperText"></span>
                </div>
            </div>
        </div>
        <div class="edu-clearDiv">
        </div>
    </div>
    <!-- SettingsChannels -->

    <div id="SettingsEvents">
        <!-- Event-to-channel mappings -->
        <div class="edu-clearDiv"></div>
            <div id="SettingsAssignmentEvents" class="edu-eventCategory">
                <!-- Mappings for assignment events -->
                <div id="SettingsAssignmentHeader" class="edu-eventHeader">
                    <span  class="edu-eventCategoryTitle">
                        <h2 id="SettingsAssignmentHeaderCaption" class="ms-viewselector"></h2>
                    </span>
                </div>
                <div id="SettingsEduAssignmentSelectAll" class="edu-eventRow">
                    <div class="edu-eventControlColumn edu-eventMailColumn">
                        <input id="SettingsCheckboxEduAssignmentSelectAll" name="EduAssignmentSelectAll" type="checkbox" />
                    </div>
                    <div>
                        <label for="SettingsCheckboxEduAssignmentSelectAll">
                            <span id="SettingsEduAssignmentSelectAllCaption" class="ms-soften"></span>
                        </label>
                    </div>
                </div>
                <div class="edu-clearDiv"></div>
                <hr class="edu-break"/>
                <div id="SettingsEduAssignmentNew" class="edu-eventRow">
                    <div class="edu-eventControlColumn edu-eventMailColumn">
                        <input id="SettingsCheckboxEduAssignmentNew" class="edu-checkboxMail" name="EduAssignmentNew" type="checkbox" />
                    </div>
                    <div>
                        <label for="SettingsCheckboxEduAssignmentNew">
                            <span id="SettingsEduAssignmentNewCaption" class="edu-eventTitle edu-normalText"></span>
                        </label>
                    </div>
                </div>
                <div id="SettingsEduAssignmentDueChanged" class="edu-eventRow">
                    <div class="edu-eventControlColumn edu-eventMailColumn">
                        <input id="SettingsCheckboxEduAssignmentDueChanged" class="edu-checkboxMail" name="EduAssignmentDueChanged" type="checkbox" />
                    </div>
                    <div>
                        <label for="SettingsCheckboxEduAssignmentDueChanged">
                            <span id="SettingsEduAssignmentDueChangedCaption" class="edu-eventTitle edu-normalText"></span>
                        </label>
                    </div>
                </div>
                <div id="SettingsEduAssignmentCancelled" class="edu-eventRow">
                    <div class="edu-eventControlColumn edu-eventMailColumn">
                        <input id="SettingsCheckboxEduAssignmentCancelled" class="edu-checkboxMail" name="EduAssignmentCancelled" type="checkbox" />
                    </div>
                    <div>
                        <label for="SettingsCheckboxEduAssignmentCancelled">
                            <span id="SettingsEduAssignmentCancelledCaption" class="edu-eventTitle edu-normalText"></span>
                        </label>
                    </div>
                </div>
                <div id="SettingsEduAssignmentGradePublished" class="edu-eventRow">
                    <div class="edu-eventControlColumn edu-eventMailColumn">
                        <input id="SettingsCheckboxEduAssignmentGradePublished" class="edu-checkboxMail" name="EduAssignmentGradePublished" type="checkbox" />
                    </div>
                    <div>
                        <label for="SettingsCheckboxEduAssignmentGradePublished">
                            <span id="SettingsEduAssignmentGradePublishedCaption" class="edu-eventTitle edu-normalText"></span>
                        </label>
                    </div>
                </div>
                <div id="SettingsEduAssignmentGradeChanged" class="edu-eventRow">
                    <div class="edu-eventControlColumn edu-eventMailColumn">
                        <input id="SettingsCheckboxEduAssignmentGradeChanged" class="edu-checkboxMail" name="EduAssignmentGradeChanged" type="checkbox" />
                    </div>
                    <div>
                        <label for="SettingsCheckboxEduAssignmentGradeChanged">
                            <span id="SettingsEduAssignmentGradeChangedCaption" class="edu-eventTitle edu-normalText"></span>
                        </label>
                    </div>
                </div>
                <div id="SettingsEduAssignmentContentChanged" class="edu-eventRow">
                    <div class="edu-eventControlColumn edu-eventMailColumn">
                        <input id="SettingsCheckboxEduAssignmentContentChanged" class="edu-checkboxMail" name="EduAssignmentContentChanged" type="checkbox" />
                    </div>
                    <div>
                        <label for="SettingsCheckboxEduAssignmentContentChanged">
                            <span id="SettingsEduAssignmentContentChangedCaption" class="edu-eventTitle edu-normalText"></span>
                        </label>
                    </div>
                </div>
            </div>
            <!-- AssignmentEvents -->
            <div class="edu-clearDiv"></div>
            <div id="SettingsClassEvents" class="edu-eventCategory">
                <!-- Mappings for class events -->
                <div id="SettingsClassHeader" class="edu-eventHeader">
                    <span class="edu-eventCategoryTitle">
                        <h2 id="SettingsClassHeaderCaption" class="ms-viewselector"></h2>
                    </span>
                </div>
                <div id="SettingsEduClassSelectAll" class="edu-eventRow">
                    <div class="edu-eventControlColumn edu-eventMailColumn">
                        <input id="SettingsCheckboxEduClassSelectAll" name="EduClassSelectAll" type="checkbox" />
                    </div>
                    <div>
                        <label for="SettingsCheckboxEduClassSelectAll">
                            <span id ="SettingsEduClassSelectAllCaption" class="ms-soften"></span>
                        </label>
                    </div>
                </div>
                <div class="edu-clearDiv"></div>
                <hr class="edu-break"/>
                <div id="SettingsEduCourseAdded" class="edu-eventRow">
                    <div class="edu-eventControlColumn edu-eventMailColumn">
                        <input id="SettingsCheckboxEduCourseAdded" class="edu-checkboxMail" name="EduCourseAdded" type="checkbox" />
                    </div>
                    <div>
                        <label for="SettingsCheckboxEduCourseAdded">
                            <span id ="SettingsEduCourseAddedCaption" class="edu-eventTitle edu-normalText"></span>
                        </label>
                    </div>
                </div>
                <div id="SettingsEduCourseRemoved" class="edu-eventRow">
                    <div class="edu-eventControlColumn edu-eventMailColumn">
                        <input id="SettingsCheckboxEduCourseRemoved" class="edu-checkboxMail" name="EduCourseRemoved" type="checkbox" />
                    </div>
                    <div>
                        <label for="SettingsCheckboxEduCourseRemoved">
                            <span id ="SettingsEduCourseRemovedCaption" class="edu-eventTitle edu-normalText"></span>
                        </label>
                    </div>
                </div>
                <div id="SettingsEduAnnouncementPosted" class="edu-eventRow">
                    <div class="edu-eventControlColumn edu-eventMailColumn">
                        <input id="SettingsCheckboxEduAnnouncementPosted" class="edu-checkboxMail" name="EduAnnouncementPosted" type="checkbox" />
                    </div>
                    <div>
                        <label for="SettingsCheckboxEduAnnouncementPosted">
                            <span id ="SettingsEduAnnouncementPostedCaption" class="edu-eventTitle edu-normalText"></span>
                        </label>
                    </div>
                </div>
                <div id="SettingsEduCourseGradePublished" class="edu-eventRow">
                    <div class="edu-eventControlColumn edu-eventMailColumn">
                        <input id="SettingsCheckboxEduCourseGradePublished" class="edu-checkboxMail" name="EduCourseGradePublished" type="checkbox" />
                    </div>
                    <div>
                        <label for="SettingsCheckboxEduCourseGradePublished">
                            <span id ="SettingsEduCourseGradePublishedCaption" class="edu-eventTitle edu-normalText"></span>
                        </label>
                    </div>
                </div>
                <div id="SettingsEduCourseComplete" class="edu-eventRow">
                    <div class="edu-eventControlColumn edu-eventMailColumn">
                        <input id="SettingsCheckboxEduCourseComplete" class="edu-checkboxMail" name="EduCourseComplete" type="checkbox" />
                    </div>
                    <div>
                        <label for="SettingsCheckboxEduCourseComplete">
                            <span id ="SettingsEduCourseCompleteCaption" class="edu-eventTitle edu-normalText"></span>
                        </label>
                    </div>
                </div>
            </div>
            <!-- ClassEvents -->
        <!-- SettingsEvents -->

        <div class="edu-clearDiv"></div>

        <div id="SettingsExceptions" class="edu-eventCategory">
            <div class="edu-eventHeader">
                <span id="SettingsExceptionsCaption" class="ms-helperText"></span>
            </div>
        </div>
        <!-- SettingsExceptions -->

        <div class="edu-clearDiv"></div>
        <div id="SettingsButtons" class="edu-eventCategory">
            <input id="SettingsSaveButton" type="button" name="Save" value="" disabled="disabled" />
        </div>
        <!-- SettingsButtons -->

        <div class="edu-clearDiv"></div>
    </div>
</div>
<!-- SettingsAll -->

<div id="SettingsLoading">
</div>
