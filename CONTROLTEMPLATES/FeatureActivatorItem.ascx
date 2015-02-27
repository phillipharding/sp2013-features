<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.FeatureActivatorItem,Microsoft.SharePoint.ApplicationPages,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"   AutoEventWireup="false" compilationMode="Always" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SPHttpUtility" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.Utilities" %>
		<td class="<% Response.Write(this.CssClass); %>" style="padding-top: 4px; padding-bottom: 4px; padding-left: 8px; padding-right: 8px;">
			<img src='/_layouts/15/images/<% Response.Write(this.ImageSrc); %>'
				alt='<% Response.Write(this.ImageAlt); %>' />
		</td>
		<td class="<% Response.Write(this.CssClass); %>" style="padding-top: 4px; padding-bottom: 4px; ">
			<table width="100%" cellpadding="0" cellspacing="0" border="0">
				<tr><td class="ms-vb2" style="font-weight: bold;">
					<h3 class="ms-standardheader"><% Response.Write(this.ItemTitle); %></h3>
				</td></tr>
				<tr><td class="ms-vb2"><% Response.Write(this.ItemDesc); %></td></tr>
			</table>
		</td>
		<td class="<% Response.Write(this.CssClass); %>" style="padding-top: 4px; padding-bottom: 4px;">
			<div id='<% Response.Write(this.FeatureId); %>' class="ms-vb2">
				<asp:Button UseSubmitBehavior="false" class="ms-ButtonHeightWidth"
							id='btnActivate'
							OnClick="BtnActivateFeature_Click"
							Text="Activate"
							runat="server"
							/>
			</div>
		</td>
		<td class="<% Response.Write(this.CssClass); %>" style="padding-top: 4px; padding-bottom: 4px; ">
			<div id="divFeatureStatus" class="ms-vb2 ms-featurestatus"
				featurestatus='Inactive'
				runat="server">
				<span class="ms-featurestatustext"><% Response.Write(this.FeatureStatusUI); %></span>&#160;
			</div>
		</td>
