    <%@ Register TagPrefix="GroupBoardMobile"   Namespace="Microsoft.SharePoint.Applications.GroupBoard.MobileControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Control Language="C#"   %> <%@ Assembly Name="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile, Version=1.0.3300.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %> <%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register TagPrefix="SPMobile" Namespace="Microsoft.SharePoint.MobileControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register TagPrefix="WPMobile" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SPSMC" Namespace="Microsoft.SharePoint.Portal.MobileControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<SharePoint:RenderingTemplate RunAt="Server" id="WebPartMobile_SPSMSITEHOST_HomePage_Contents">
    <Template>
        <SPSMC:MobileMyProfileRedirection RunAt="Server" />
    </Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="WebPartMobile_SPSPERS_HomePage_Contents">
    <Template>
        <SPMobile:SPMobileImage RunAt="Server" ImageUrl="/_layouts/images/mblsitecontent.gif" BreakAfter="false" />
        <SPMobile:SPMobileAllContentPageNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_allcontent_text%>" />
        <SPMobile:SPMobileControlContainer RunAt="Server">
            <SPSWC:ProfilePropertyLoader id="m_objLoader" RunAt="Server" />
            <SPMobile:SPMobileFormDigest RunAt="Server" />
            <SPMobile:SPMobileComponent RunAt="Server" TemplateName="MobileDefaultSeparator" />
        </SPMobile:SPMobileControlContainer>
        <SPMobile:SPMobileComponent RunAt="Server" Templatename="WebPartMobile_Default_HomePage_Contents" />
    </Template>
</SharePoint:RenderingTemplate>

<SharePoint:RenderingTemplate RunAt="Server" ID="Mobile_SPSMSITEHOST_HomePage_Contents">
    <Template>
        <SPSMC:MobileMyContentRedirection RunAt="Server" />
    </Template>
</SharePoint:RenderingTemplate>

<SharePoint:RenderingTemplate RunAt="Server" id="WebPartMobile_SPSPERS_HomePage_Title">
    <Template>
        <SPSMC:MobileWebTitle TitlePrefix="<%$Resources:sps, Mobile_MyContentPage_TitlePrefix%>" RunAt="Server" />
    </Template>
</SharePoint:RenderingTemplate>

<SharePoint:RenderingTemplate RunAt="Server" id="WebPartMobile_SPSPERS_HomePage_Navigation">
    <Template>
        <SPMobile:SPMobileAllContentPageNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_allcontent_text%>" AccessKey="7" />
        <SPSMC:MobileMyProfilePageNavigation RunAt="Server" Text="<%$Resources:sps, Mobile_MyProfile_NavigationText%>" AccessKey="6" />
        <SPSMC:MobileColleagueProfilePageNavigation RunAt="Server" Text="<%$Resources:sps, Mobile_ColleagueProfile_NavigationText%>" AccessKey="6" />
        <SPSMC:MobileMySitePageNavigation RunAt="Server" Text="<%$Resources:sps, Mobile_MySite_NavigationText%>" AccessKey="8" />
        <SPSMC:MobileSearchPageNavigation RunAt="Server" Text="<%$SatelliteResources:Microsoft.Office.Server.Search, MobileSearch_Title%>" AccessKey="9" />
        <SPMobile:SPMobileHomePageNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>" AppendWebTitleToText="True" AccessKey="0" />
    </Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_SPSPERS_HomePage_Navigation">
    <Template>
        <SPSMC:MobileListsMyProfilePageNavigation RunAt="Server" Text="<%$Resources:sps, Mobile_MyProfile_NavigationText%>" AccessKey="6" />
        <SPSMC:MobileListsColleagueProfilePageNavigation RunAt="Server" Text="<%$Resources:sps, Mobile_ColleagueProfile_NavigationText%>" AccessKey="6" />
        <SharePoint:DelegateControl            RunAt="server" ControlId="MobileSiteNavigationLink2" />
        <SharePoint:DelegateControl            RunAt="server" ControlId="MobileSiteNavigationLink1" />  
        <SPSMC:MobileListsHomePageNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>" AppendWebTitleToText="True" AccessKey="0" />
    </Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_SPSMSITEHOST_HomePage_Navigation">
    <Template>
        <SPSMC:MobileListsMyProfilePageNavigation RunAt="Server" Text="<%$Resources:sps, Mobile_MyProfile_NavigationText%>" AccessKey="6" />
        <SPSMC:MobileListsColleagueProfilePageNavigation RunAt="Server" Text="<%$Resources:sps, Mobile_ColleagueProfile_NavigationText%>" AccessKey="6" />
        <SharePoint:DelegateControl            RunAt="server" ControlId="MobileSiteNavigationLink2" />
        <SharePoint:DelegateControl            RunAt="server" ControlId="MobileSiteNavigationLink1" />  
        <SPSMC:MobileListsHomePageNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_home_text%>" AppendWebTitleToText="True" AccessKey="0" />
    </Template>
</SharePoint:RenderingTemplate>

<SharePoint:RenderingTemplate RunAt="Server" id="MobileMyProfileContents">
    <Template>
        <SPSMC:StatusNotesControl runat="server"/>
        <SPSMC:MobileProfilePropertyImage PropertyName="PictureUrl" runat="server"/>	
        <SPSMC:MobileProfilePropertyValue PropertyName="Title" runat="server"/>
        <SPSMC:MobileProfilePropertyValue PropertyName="Department" runat="server"/>
        <SPSMC:MobileProfilePropertyPhone PropertyName="WorkPhone" runat="server"/>
        <SPSMC:MobileProfilePropertyValue PropertyName="Office" runat="server"/>
        <SPSMC:MobileProfilePropertyValue PropertyName="SPS-Location" runat="server"/>
        <SPSMC:MobileProfilePropertyEMail PropertyName="WorkEmail" runat="server"/>
        <mobile:Label RunAt="Server" BreakAfter="true" />
        <SPSMC:MobileProfilePropertyDetailsViewer runat="server"/>
        <SPSMC:MobileProfilePropertyRichValue PropertyName="AboutMe" runat="server"/>
    </Template>
</SharePoint:RenderingTemplate>

<SharePoint:RenderingTemplate RunAt="Server" id="MobileMyProfileTitle">
    <Template>
        <mobile:LiteralText RunAt="Server" Text="<%$Resources:sps, Mobile_MySite_Text%>" BreakAfter="false" />
        <mobile:LiteralText RunAt="Server" Text="<%$Resources:wss, mobile_listtitle_separator%>" BreakAfter="false" />
        <mobile:LiteralText RunAt="Server" Text="<%$Resources:sps, Mobile_Profile_Text%>" BreakAfter="true" />
        <SPSMC:MobilePersonalSpaceMainHeading runat="server" />
    </Template>
</SharePoint:RenderingTemplate>

<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_SPSPERS_HomePage_Redirect">
    <Template>
        <SPMobile:SPMobileUrlRedirection RunAt="Server" PageFileName="mblwp.aspx" />
    </Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate RunAt="Server" id="Mobile_SPSMSITEHOST_HomePage_Redirect">
    <Template>
        <SPMobile:SPMobileUrlRedirection RunAt="Server" PageFileName="person.aspx" />
    </Template>
</SharePoint:RenderingTemplate>

<SharePoint:RenderingTemplate RunAt="Server" id="MobileViewPicker">
    <Template>
                <SPSMC:MobileListViewIterator          RunAt="Server" BreakAfter="false" ID="ListViewIteratorForMobile" Format="DropDown" />
        <SPSMC:MobileRefreshNavigation          RunAt="Server" Text="<%$Resources:wss, mobile_button_refresh_text%>"              BreakAfter="true"  ControlForRefresh="ListViewIteratorForMobile" />
        <SPMobile:SPMobileFilterStatusLabel          RunAt="Server"                                                                    BreakAfter="true" />
        <mobile:Image                                RunAt="Server" ImageUrl="/_layouts/images/mblviewfilter.gif"                      BreakAfter="false" />
        <SPMobile:SPMobileAddViewFilterNavigation    RunAt="Server" Text="<%$Resources:wss, mobile_navigation_addviewfilter_text%>"    BreakAfter="false" />
        <SPMobile:SPMobileChangeViewFilterNavigation RunAt="Server" Text="<%$Resources:wss, mobile_navigation_changeviewfilter_text%>" BreakAfter="false" />
        <SPMobile:SPMobileClearViewFilterNavigation  RunAt="Server" Text="<%$Resources:wss, mobile_navigation_clearviewfilter_text%>" />
    </Template>
</SharePoint:RenderingTemplate>

<SharePoint:RenderingTemplate RunAt="Server" id="MobileMyProfileNavigation">
    <Template>
        <SPSMC:MobilePersonContentPageNavigation RunAt="Server" Text="<%$Resources:sps, Mobile_Content_Text%>" AccessKey="5" />
        <SPSMC:MobileMyContentPageNavigation RunAt="Server" Text="<%$Resources:sps, Mobile_MyContent_Text%>" AccessKey="5" />
        <SPSMC:MobileMySitePageNavigation RunAt="Server" Text="<%$Resources:sps, Mobile_MySite_NavigationText%>" AccessKey="8" />
        <SPSMC:MobileSearchPageNavigation RunAt="Server" Text="<%$SatelliteResources:Microsoft.Office.Server.Search, MobileSearch_Title%>" AccessKey="9" />
    </Template>
</SharePoint:RenderingTemplate>
