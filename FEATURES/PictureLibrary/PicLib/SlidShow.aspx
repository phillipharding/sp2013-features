<%@ Page language="C#"    Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"  %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<HTML dir="<%$Resources:wss,multipages_direction_dir_value%>" runat="server">
<head>
	<meta name="GENERATOR" content="Microsoft SharePoint"/>
	<meta name="ProgId" content="SharePoint.WebPartPage.Document"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="Expires" content="0"/>
	
	<title id="onetidTitle"><SharePoint:ListProperty Property="Title" runat="server"/>: <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss, slidshow_slideshowview%>" EncodeMethod='HtmlEncode'/></title>
	<base target="_blank"/>
	<SharePoint:CssLink runat="server"/>
	<!--mstheme--><SharePoint:Theme runat="server"/>
	<meta name="Microsoft Theme" content="default"/>
	<meta name="Microsoft Border" content="none"/>
<SharePoint:ScriptLink name="init.js" localizable="false" language="javascript" runat="server" />
<SharePoint:ScriptLink name="core.js" localizable="false" language="javascript" runat="server" />
<link type="text/xml" rel='alternate' href="_vti_bin/spdisco.aspx" />
</head>
<body marginwidth="0" marginheight="0" scroll="yes" onload="javascript:ProcessPNGImages();" class="ms-piclib-slideshow">
	<table class="ms-main" cellpadding="0" cellspacing="0" border="0" width="100%" height="100%">
	<form runat="server">
		<WebPartPages:SPWebPartManager id="SPWebPartManager" runat="Server"/>
	<tr> <td width="100%"> <table width="100%" height="100%" cellspacing="0" cellpadding="0"> <tr> <td class="ms-titlearealeft" id="TitleAreaImageCell" valign="middle" nowrap="nowrap"> <div style="height:100%" class="ms-titleareaframe"><SharePoint:AlphaImage ID=onetIDPageIcon Src="/_layouts/15/images/plicon.png?rev=23" Width=145 Height=54 Alt="" Runat="server" /></div> </td> <td width="100%" valign="top" id="onetidPageTitleAreaFrame" class='ms-pagetitleareaframe' nowrap="nowrap"> <table id="onetidPageTitleAreaTable" cellpadding="0" cellspacing="0" width="100%" border="0"> <tr><td valign="top" class="ms-titlearea"><asp:SiteMapPath SiteMapProvider="SPContentMapProvider" id="ContentMap" SkipLinkText="" NodeStyle-CssClass="ms-sitemapdirectional" runat="server"/> &#160;</td></tr> <tr> <td height="100%" valign="top" id="onetidPageTitle" class="ms-pagetitle"> <h2 class="ms-pagetitle"><SharePoint:ListProperty Property="LinkTitle" runat="server"/></h2> </td> </tr> </table> </td> </tr> </table> </td> </tr>
	<tr height="100%" id="STS_Content_Row" style="display:none">
	<td><img src="/_layouts/15/images/blank.gif?rev=23" width='3' height='1' alt="" /></td> <td width="100%" height="100%"><PlaceHolder id="MSO_ContentDiv" runat="server"> <table cellpadding="2" cellspacing="0"><tr><td><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></td></tr></table><table cellpadding="4" cellspacing="0" border="0" class="ms-bodyareaframe" width="100%"><tr valign="top"><td width="100%" style="padding-top:3px;padding-right:10px;">
	<WebPartPages:WebPartZone runat="server" FrameType="None" ID="Main" Title="loc:Main" />
	</td></tr></table></PlaceHolder></td></tr>
	<tr height="100%" id="SlideShow_Content_Row"><td colspan="2">
	<script type="text/javascript">if (IsImgLibJssLoaded()) SlideShowContent();</script>
	</td></tr>
	</form>
	</table>
</body>
</HTML>
