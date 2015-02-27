<%-- Copyright (c) Microsoft Corporation. All rights reserved. --%>

<%@ Register Tagprefix="ewa" Namespace="Microsoft.Office.Excel.WebUI" Assembly="Microsoft.Office.Excel.WebUI.Internal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Control Language="C#" CompilationMode=Never Inherits="Microsoft.Office.Excel.WebUI.SlicerRendererControl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
	<head runat="server">
		<title></title>
		<meta http-equiv="X-UA-Compatible" content="IE=8" />

		<style type="text/css"> <!-- <asp:Literal RunAt="server" ID="m_slicerStyle"/> --> </style>
		<link RunAt="server" ID="m_ewrCss"/>
		<link RunAt="server" ID="m_slicersCss"/>
	</head>
	<body style="padding:0; margin:0;" tabIndex="-1">
		<form runat="server">
			<asp:Panel class="ewr-slicer-body" id="m_slicerContainer" RunAt="server" role="main">
				<div class="ewr-slicer-background">
					<div class="ewr-slicer-margin">
						<input type="text" readonly="readonly" runat="server" id="m_containerTabStop" class="ewr-slicer-contents-tab-stop" tabIndex="2" role="gridcell" aria-live="polite" />
						<div class="ewr-slicer-item-container ewa-scrollbars" tabindex="-1">
							<asp:Panel RunAt="server" ID="m_slicerPushDiv"/> 
							<asp:Table RunAt="server" ID="m_slicerContents"/>
							<asp:Panel RunAt="server" ID="m_slicerEmptyNotification"/>
							<asp:Panel RunAt="server" ID="m_slicerPullDiv"/>
						</div>
					</div>
				</div>
				<div class="ewr-slicer-caption">
					<div class="ewr-slicer-caption-margin">
						<asp:Panel RunAt="server" ID="m_slicerChevron"/>
						<asp:Panel RunAt="server" ID="m_slicerCaption" />
						<asp:Panel RunAt="server" ID="m_slicerHeaderButton"/>
					</div>
				</div>
				<asp:Panel class="ewa-background-disabled ewr-slicer-whitebox" RunAt="server" ID="m_background" />
				<div class="ewr-slicer-notification">
					<div class="ewr-slicer-notification-margin">
						<asp:Panel RunAt="server" ID="m_slicerUpdateCaption">
							<asp:Literal id="m_caption" runat="server"/>
						</asp:Panel>
						<asp:Panel RunAt="server" ID="m_slicerUpdateButton">
							<asp:Button id="m_update" runat="server"/>
						</asp:Panel>
					</div>
				</div>
			</asp:Panel>
			<script type="text/javascript">
				<asp:Literal RunAt="server" ID="m_slicerScript"/>
			</script>
		</form>
	</body>
</html>
