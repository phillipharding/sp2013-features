<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.Welcome,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"   AutoEventWireup="false" compilationMode="Always" %>
  <SharePoint:PersonalActions accesskey="<%$Resources:wss,personalactions_menu_ak15%>" ToolTip="<%$Resources:wss,open_menu%>" runat="server" id="ExplicitLogout" MenuAlignment="Right" Visible="false">
	<CustomTemplate>
	 <SharePoint:FeatureMenuTemplate runat="server"
		 FeatureScope="Site"
		 Location="Microsoft.SharePoint.StandardMenu"
		 GroupId="PersonalActions"
		 id="ID_PersonalActionMenu"
		 UseShortId="true"
		 >
		 <SharePoint:MenuItemTemplate runat="server" id="ID_PersonalInformation"
				 Text="<%$Resources:wss,personalactions_personalinformation%>"
				 Description="<%$Resources:wss,personalactions_personalinformationdescription%>"
				 MenuGroupId="100"
				 Sequence="100"
				 ImageUrl="/_layouts/15/images/menuprofile.gif?rev=23"
				 UseShortId="true"
				 />
		 <SharePoint:MenuItemTemplate runat="server" id="ID_RequestAccess"
				 Text="<%$Resources:wss,personalactions_requestaccess%>"
				 Description="<%$Resources:wss,personalactions_requestaccessdescription%>"
				 MenuGroupId="100"
				 UseShortId="true"
				 Sequence="300"
				 />
		 <SharePoint:MenuItemTemplate runat="server" id="ID_Logout"
				 Text="<%$Resources:wss,personalactions_logout%>"
				 Description="<%$Resources:wss,personalactions_logoutdescription%>"
				 MenuGroupId="100"
				 Sequence="400"
				 UseShortId="true"
				 />
		 <SharePoint:MenuItemTemplate runat="server" id="ID_PersonalizePage"
				 Text="<%$Resources:wss,personalactions_personalizepage%>"
				 Description="<%$Resources:wss,personalactions_personalizepagedescription%>"
				 ImageUrl="/_layouts/15/images/menupersonalize.gif?rev=23"
				 ClientOnClickScript="javascript:ChangeLayoutMode(true);"
				 PermissionsString="AddDelPrivateWebParts,UpdatePersonalWebParts"
				 PermissionMode="Any"
				 MenuGroupId="200"
				 Sequence="100"
				 UseShortId="true"
				 />
		 <SharePoint:MenuItemTemplate runat="server" id="ID_SwitchView"
				 MenuGroupId="200"
				 Sequence="200"
				 UseShortId="true"
				 />
		 <SharePoint:MenuItemTemplate runat="server" id="MSOMenu_RestoreDefaults"
				 Text="<%$Resources:wss,personalactions_restorepagedefaults%>"
				 Description="<%$Resources:wss,personalactions_restorepagedefaultsdescription%>"
				 ClientOnClickNavigateUrl="javascript:SP.SOD.execute('browserScript', 'MSOWebPartPage_RestorePageDefault')"
				 MenuGroupId="200"
				 Sequence="300"
				 UseShortId="true"
				 />
	 </SharePoint:FeatureMenuTemplate>
	</CustomTemplate>
</SharePoint:PersonalActions>
<SharePoint:ApplicationPageLink runat="server" id="ExplicitLogin"
	ApplicationPageFileName="Authenticate.aspx" AppendCurrentPageUrl=true
	Text="<%$Resources:wss,login_pagetitle%>" style="display:none" Visible="false" />
