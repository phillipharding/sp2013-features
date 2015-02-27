<!-- _lcid="1033" _version="15.0.4571" _dal="1" -->
<!-- _LocalBinding -->
<%@ Control Language="C#"  %>
<%@ Register Tagprefix="SharePoint" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" Namespace="Microsoft.SharePoint.WebControls" %>
<%@ Register TagPrefix="wssuc" TagName="ToolBar" src="ToolBar.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="ToolBarButton.ascx" %>
<%@ Register Tagprefix="sldlib" Namespace="Microsoft.Office.SlideLibrary.WebControls" Assembly="Microsoft.Office.SlideLibrary, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<SharePoint:RenderingTemplate ID="SldLibDisplayFormToolBar" runat="server">
    <Template>            
        <script>
            recycleBinEnabled = <SharePoint:ProjectProperty Property="RecycleBinEnabled" runat="server"/>;
        </script>
        <wssuc:ToolBar id="toolBarTbl" runat="server">
                <Template_Buttons>
                    <sldlib:SendToDispFormLink Text = "<%$Resources:sllayout,SendToPPT%>" ImageUrl="/_layouts/15/images/slsendto.gif?rev=23" runat="server" />
                    <sldlib:EditSlideLink Text = "<%$Resources:sllayout,EditSlide%>" ImageUrl="/_layouts/15/images/ppt16.gif?rev=23" runat="server" />
                    <SharePoint:EditItemButton Text = "<%$Resources:sllayout,EditSlideProperties%>" runat="server"/>
                    <SharePoint:DeleteItemButton Text = "<%$Resources:sllayout,DeleteSingleSlide%>" runat="server"/>
                    <SharePoint:ManagePermissionsButton runat="server"/>
                    <SharePoint:ApprovalButton runat="server"/>
                    <SharePoint:AlertMeButton runat="server"/>
                    <SharePoint:GoBackButton runat="server"/>
                 </Template_Buttons>
        </wssuc:ToolBar>
    </Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="SldLibNewFormToolBar" runat="server">
    <Template>            
        <wssuc:ToolBar id="toolBarTbl" runat="server">
                <Template_Buttons>
                    <SharePoint:SaveButton runat="server"/>
                    <SharePoint:GoBackButton runat="server"/>
                 </Template_Buttons>
        </wssuc:ToolBar>
    </Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="SldLibEditFormToolBar" runat="server">
    <Template>            
        <script>
            recycleBinEnabled = <SharePoint:ProjectProperty Property="RecycleBinEnabled" runat="server"/>;
        </script>
        <wssuc:ToolBar id="toolBarTbl" runat="server">
                <Template_Buttons>
                    <SharePoint:SaveButton runat="server"/>
                    <SharePoint:DeleteItemButton runat="server"/>
                    <SharePoint:ManagePermissionsButton runat="server"/>
                    <SharePoint:GoBackButton runat="server"/>
                 </Template_Buttons>
        </wssuc:ToolBar>
    </Template>
</SharePoint:RenderingTemplate>
<!-- Form -->
<SharePoint:RenderingTemplate ID="SldLibNewForm" runat="server">
	<Template>
		<SharePoint:ApprovalMessage runat="server"/>
		<SharePoint:FormComponent TemplateName="SldLibNewFormToolBar" ControlMode="New" runat="server"/>
		<table width=100% border=0 cellpadding=0 cellspacing=2>
			<tr><td colspan=8 height=3><img border=0 width=1 height=3 src="/_layouts/15/images/blank.gif?rev=23" alt=""></td></tr>
		</table>
		<TABLE class="ms-formtable" border=0 cellpadding=2 id="formTbl">
			<tr><SharePoint:CompositeField FieldName="FileLeafRef" runat="server"/></tr>
			<SharePoint:ListFieldIterator runat="server" />
			<SharePoint:ApprovalStatus runat="server"/>
		</TABLE>
		<SharePoint:RequiredFieldMessage runat="server"/>
		<SharePoint:CreatedModifiedInfo runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="SldLibEditForm" runat="server">
	<Template>
		<SharePoint:ApprovalMessage runat="server"/>
		<SharePoint:FormComponent TemplateName="SldLibEditFormToolBar" ControlMode="Edit" runat="server"/>
		<table width=100% border=0 cellpadding=0 cellspacing=2>
			<tr><td colspan=8 height=3><img border=0 width=1 height=3 src="/_layouts/15/images/blank.gif?rev=23" alt=""></td></tr>
		</table>
		<TABLE class="ms-formtable" border=0 cellpadding=2 id="formTbl">
			<tr><SharePoint:CompositeField FieldName="FileLeafRef" runat="server"/></tr>
			<SharePoint:ListFieldIterator runat="server" />
			<SharePoint:ApprovalStatus runat="server"/>
		</TABLE>
		<SharePoint:RequiredFieldMessage runat="server"/>
		<SharePoint:CreatedModifiedInfo runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="SldLibDisplayForm" runat="server">
	<Template>
<script src="/_layouts/15/<%=System.Threading.Thread.CurrentThread.CurrentUICulture.LCID%>/strings.js"></script>
<script src="/_layouts/15/sldlib.js"></script>
<SCRIPT LANGUAGE="VBSCRIPT">
function CallInsertSlides(Selected, objx)
    arrSelected = Split(Selected, ",", -1, 0)
    objx.InsertSlidesFromSlideLibrary arrSelected
End function
</SCRIPT>
<script language="Javascript">
function GetEscapedUrl( strUrl )
{
    return strUrl.replace(/,/g, "%2c");
}
function SendSingleSlide(selectedSlide)
{
   if (IsSupportedMacBrowser())
   {
       var macPlugin = EnsurePPPlugin();
       if (macPlugin == null)
       {
           alert(Strings.LHPServer.L_NeedSupportedMacBrowserAndOffice_Text);
           return ;
       }
       var slideArray = new Array;
       slideArray[0] = GetEscapedUrl(selectedSlide);
       var success = CallInsertSlides2(slideArray);
       if (!success)
           alert(Strings.LHPServer.L_NeedSupportedMacBrowserAndOffice_Text);
   }
   else 
   {
       if (!fPPSLAXLoaded)
       {
           if (browseris.mac)
               alert(Strings.LHPServer.L_NeedSupportedMacBrowserAndOffice_Text);
           else
               alert(Strings.LHPServer.L_NeedPPT_Text);
           return ;
       }
       CallInsertSlides(GetEscapedUrl(selectedSlide));
   }
}
</script>
<object id="ppactivex" 
	classid="clsid:99098758-CB85-4a90-924F-F21898796281" style="visibility:hidden" OnError="SetActiveXStatus(false);">
</object>
		<SharePoint:ApprovalMessage runat="server"/>
		<SharePoint:FormComponent TemplateName="SldLibDisplayFormToolBar" ControlMode="Display" runat="server"/>
		<table width=100% border=0 cellpadding=0 cellspacing=2>
			<tr><td colspan=8 height=3><img border=0 width=1 height=3 src="/_layouts/15/images/blank.gif?rev=23" alt=""></td></tr>
		</table>
		<TABLE class="ms-formtable" border=0 cellpadding=2 id="formTbl">
		       <tr><SharePoint:CompositeField FieldName="LargeThumbnail" runat="server"/></tr>
			<tr><SharePoint:CompositeField FieldName="FileLeafRef" runat="server"/></tr>
	              <tr><SharePoint:CompositeField FieldName="Presentation" runat="server"/></tr>
	              <tr><SharePoint:CompositeField FieldName="SlideDescription" runat="server"/></tr>
	              <tr><SharePoint:CompositeField FieldName="EncodedAbsUrl" runat="server" /></tr>
			<SharePoint:ApprovalStatus runat="server"/>
		</TABLE>
		<SharePoint:RequiredFieldMessage runat="server"/>
		<SharePoint:CreatedModifiedInfo runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="ToolbarActionsMenuForSlideLibrary" runat="server">
    <Template>  
        <SharePoint:FeatureMenuTemplate runat="server"
            FeatureScope="Site"
            Location="Microsoft.SharePoint.StandardMenu"
            GroupId="ActionsMenu"    
            >               
            <sldlib:DeleteMenuItem 
                ID="DeleteSlides" 
                Text="<%$Resources:sllayout,Delete%>"
                Description="<%$Resources:sllayout,ToolbarMenuItemDeleteSlidesDescription%>"
                MenuGroupId="100"
                Sequence="200"
                runat="server"/>  
            <SharePoint:MenuItemTemplate 
                ID="EditInGridButton" 
                ImageUrl="/_layouts/15/images/actionseditpage.gif?rev=23"
                MenuGroupId="200"
                Sequence="200"
                runat="server"/> 
            <SharePoint:MenuItemTemplate 
                ID="OpenInExplorer" 
                Text="<%$Resources:wss,ToolBarMenuItemOpenInExplorer%>"
                Description="<%$Resources:wss,ToolBarMenuItemOpenInExplorerDescription%>"
                MenuGroupId="200"
                Sequence="300"
                runat="server"/>  
            <SharePoint:MenuItemTemplate
                ID="OfflineButton"
                Description="<%$Resources:wss,ToolBarWorkOfflineOutlookDescription%>"
                MenuGroupId="300"
                Sequence="100"
                runat="server"/>
            <SharePoint:MenuItemTemplate
                ID="ViewRSS" 
                Text="<%$Resources:wss,ToolBarMenuItemViewRSSFeed%>"
                Description="<%$Resources:wss,ToolBarMenuItemViewRSSFeedDescription%>"
                MenuGroupId="400"
                Sequence="100"
                runat="server"/>
            <SharePoint:MenuItemTemplate
                ID="SubscribeButton" 
                Text="<%$Resources:wss,ToolBarMenuItemAlertMe%>"
                Description="<%$Resources:wss,ToolBarMenuItemAlertMeDescription%>"
                PermissionsString="CreateAlerts"
                PermissionContext="CurrentList"
                PermissionMode="Any"
                MenuGroupId="400"
                Sequence="200"
                runat="server"/>
        </SharePoint:FeatureMenuTemplate>
    </Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="ToolbarUploadMenuForSlideLibrary" runat="server">
    <Template>  
        <SharePoint:FeatureMenuTemplate runat="server"
            FeatureScope="Site"
            Location="Microsoft.SharePoint.StandardMenu"
            GroupId="UploadMenu"    
            >
            <SharePoint:MenuItemTemplate 
                ID="PublishSlides" 
                Text="<%$Resources:sllayout,PublishSlides%>"
                Description="<%$Resources:sllayout,ToolBarMenuItemPublishSlidesDescription%>"
                ImageUrl="/_layouts/15/images/slpubsld.gif?rev=23"
                Sequence="100"
                ClientOnClickScript="PublishSlides();"
                PermissionsString="AddListItems,UseClientIntegration"
                PermissionContext="CurrentList"
                runat="server"/>
        </SharePoint:FeatureMenuTemplate>
    </Template>
</SharePoint:RenderingTemplate>
<SharePoint:RenderingTemplate ID="SlideLibraryViewToolBar" runat="server">
    <Template>  
        <wssuc:ToolBar CssClass="ms-menutoolbar"  id="toolBarTbl" ButtonSeparator="<img src='/_layouts/15/images/blank.gif'>" RightButtonSeparator="&nbsp;&nbsp;" runat="server">
            <Template_Buttons>
                <SharePoint:NewMenu runat="server"/>
                <sldlib:SldLibUploadMenu runat="server" />
                <sldlib:SldLibActionsMenu runat="server" />
                <SharePoint:SettingsMenu runat="server"/>
                <sldlib:SendToToolBarButton
                            ID="SendToPPT"
                            Text="<%$Resources:sllayout,SendToPPT%>" 
                            ToolTip="<%$Resources:sllayout,ToolbarMenuItemSendSlidesDescription%>"
                            AccessKey="<%$Resources:wss,tb_new_ak%>" 
                            ImageUrl="/_layouts/15/images/slsendto.gif?rev=23"
                            OnClientClick="SendSlides();return false;"
                            ShowImageAndText="true" 
                            HoverCellActiveCssClass="ms-menubuttonactivehover" 
                            HoverCellInActiveCssClass="ms-menubuttoninactivehover"
                            PermissionsString="ViewListItems,UseClientIntegration" 
                            PermissionContext="CurrentList" 
                            runat="server"/>
            </Template_Buttons>
            <Template_RightButtons>
                  <SharePoint:PagingButton runat="server"/>
                  <SharePoint:TemplateBasedControl TemplateName="ViewSelector" runat="server"/>
            </Template_RightButtons>
        </wssuc:ToolBar>
    </Template>
</SharePoint:RenderingTemplate>
