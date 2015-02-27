<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.FeatureActivator,Microsoft.SharePoint.ApplicationPages,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"   AutoEventWireup="false" compilationMode="Always" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="FeatureActivatorItem" src="~/_controltemplates/15/FeatureActivatorItem.ascx" %>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
	<tr>
		<td colspan="2">
<asp:Repeater id="rptrFeatureList" runat="server">
	<HeaderTemplate>
			<table width="100%" cellpadding="0" cellspacing="0" border="0">
				<colgroup>
					<col width="5%" />
					<col width="85%" />
					<col width="5%" />
					<col width="5%" />
				</colgroup>
				<tr>
					<th scope="col" id="FeatureIcon" class="ms-vh2" style="padding-bottom: 4px"></th>
					<th scope="col" id="FeatureTitleDescription" class="ms-vh2-nofilter" style="padding-bottom: 4px"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,ManageFeatures_NameHeading%>" EncodeMethod='HtmlEncode'/></th>
					<th scope="col" id="FeatureActiveButton" class="ms-vh2-nofilter" style="padding-bottom: 4px">&#160;</th>
					<th scope="col" id="FeatureActiveState" class="ms-vh2-nofilter" style="padding-bottom: 4px"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,ManageFeatures_StatusHeading%>" EncodeMethod='HtmlEncode'/></th>
				</tr>
				<tr>
	</HeaderTemplate>
	<ItemTemplate>
		<wssuc:FeatureActivatorItem
			DataItem='<%# Container.DataItem %>'
			runat="server"
			/>
	</ItemTemplate>
	<AlternatingItemTemplate>
		<wssuc:FeatureActivatorItem
			DataItem='<%# Container.DataItem %>'
			AlternatingItem="true"
			runat="server"
			/>
	</AlternatingItemTemplate>
	<SeparatorTemplate>
					</tr>
					<tr>
	</SeparatorTemplate>
	<FooterTemplate>
					</tr>
				</table>
	</FooterTemplate>
</asp:Repeater>
			<tr><td colspan="6" class="ms-vb"><asp:Label id="lblEmptyFeaturesText" runat="server" /></td></tr>
		</td>
	</tr>
</table>
