<%@ Control Language="C#" Inherits="Microsoft.SharePoint.ApplicationPages.WebControls.ActionBar,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<SharePoint:VersionedPlaceHolder UIVersion="4" runat="server">
	<div class="s4-ql s4-ql-top">
		<div class="menu vertical menu-vertical">
			<ul class="root static">
				<li class="static">
					<span class="static menu-item" id="l_relatedtasks">
</SharePoint:VersionedPlaceHolder>
<SharePoint:VersionedPlaceHolder UIVersion="3" runat="server">
	<div class="ms-quicklaunchouter">
		<div class="ms-quickLaunch" style="width:100%">
			<div class="ms-quicklaunchheader">
</SharePoint:VersionedPlaceHolder>
						<asp:Label runat="server" id="HeaderLabel" />
<SharePoint:VersionedPlaceHolder UIVersion="4" runat="server">
					</span>
					<ul class="static">
						<wssawc:RepeatedControls id="LinkControlsV4" runat="server">
							<HeaderHtml />
							<BeforeControlHtml>
								<li class="static">
							</BeforeControlHtml>
							<AfterControlHtml>
								</li>
							</AfterControlHtml>
							<SeparatorHtml />
							<FooterHtml />
						</wssawc:RepeatedControls>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</SharePoint:VersionedPlaceHolder>
<SharePoint:VersionedPlaceHolder UIVersion="3" runat="server">
			</div>
			<div class="ms-treeviewouter">
			  <table class="ms-navSubMenu1" border="0" cellpadding="0" cellspacing="0" width="100%">
				<wssawc:RepeatedControls id="LinkControls" runat="server">
					<HeaderHtml />
					<BeforeControlHtml>
						<tr>
							<td width="100%">
								<table border="0" cellpadding="0" cellspacing="0" width="100%" class="ms-navitem">
									<tr>
									  <td>
					</BeforeControlHtml>
					<AfterControlHtml>
									  </td>
									</tr>
								</table>
							</td>
						</tr>
					</AfterControlHtml>
					<SeparatorHtml />
					<FooterHtml />
				</wssawc:RepeatedControls>
			  </table>
			</div>
		</div>
	</div>
</SharePoint:VersionedPlaceHolder>
