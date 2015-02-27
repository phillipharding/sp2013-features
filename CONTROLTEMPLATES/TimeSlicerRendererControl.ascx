<%-- Copyright (c) Microsoft Corporation. All rights reserved. --%>

<%@ Register Tagprefix="ewa" Namespace="Microsoft.Office.Excel.WebUI" Assembly="Microsoft.Office.Excel.WebUI.Internal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Control Language="C#" CompilationMode=Never Inherits="Microsoft.Office.Excel.WebUI.TimeSlicerRendererControl" %>
<html>
	<head runat="server">
		<title></title>
		<meta http-equiv="X-UA-Compatible" content="IE=9" />

		<style type="text/css"> <!-- <asp:Literal RunAt="server" ID="m_timeSlicerStyle"/> --> </style>
		<link RunAt="server" ID="m_ewrCss"/>
		<link RunAt="server" ID="m_slicersCss"/>

		<asp:Literal RunAt="server" ID="m_atlasScriptInclude"/>
		<asp:Literal RunAt="server" ID="m_ewaScriptInclude"/>
		<asp:Literal RunAt="server" ID="m_timeSlicerScriptInclude"/>
	</head>
	<body style="padding:0; margin:0;">
		<form runat="server">
			<asp:Panel class="ewr-timeslicer-body" id="m_timeSlicerContainer" RunAt="server" role="main">
				<div class="ewr-timeslicer-background">
					<div id="m_headerBackground" class="ewr-timeslicer-header-background" RunAt="server" ClientIDMode="Static">
						<asp:Panel RunAt="server" ID="m_slicerChevron"/>
						<asp:Panel id="m_header" class="ewr-timeslicer-header" RunAt="server" ClientIDMode="Static">
							<span id="m_caption" class="ewr-timeslicer-header-caption"></span>
						</asp:Panel>
						<asp:Panel id="m_headerButton" RunAt="server" ClientIDMode="Static"/>
					</div>
					<asp:Panel id="m_selectionLabel" class="ewr-timeslicer-selection-label" RunAt="server" ClientIDMode="Static"/>
					<asp:Panel id="m_levelLabel" class="ewr-timeslicer-level-label" RunAt="server" ClientIDMode="Static">
						<span id="m_levelLabelText"></span>
						<div id="m_levelLabelDropdown" class="ewr-timeslicer-level-dropdown"></div>
					</asp:Panel>
					<div id="m_tileContainerBody" class="ewr-timeslicer-tile-containerbody" RunAt="server" ClientIDMode="Static">
						<div id="m_tileContainer" class="ewr-timeslicer-tile-container" RunAt="server" ClientIDMode="Static"></div>
						<div id="m_leftResizer" class="ewr-timeslicer-resizer" RunAt="server" ClientIDMode="Static">
							<svg xmlns="http://www.w3.org/2000/svg" style="position:absolute">
								<defs>
									<linearGradient id="m_leftResizerGrad" x1="0%" y1="0%" x2="0%" y2="100%">
										<stop offset="0%" style="stop-color:rgb(192,192,192);stop-opacity:1"/>
										<stop offset="100%" style="stop-color:rgb(102,102,102);stop-opacity:1"/>
									</linearGradient>
								</defs>
								<path id="m_leftResizerPath" style="stroke:none;fill:url(#m_leftResizerGrad)" d="M 7 0 l -5 0 l -2 3 l 0 10 l 2.5 3 l 4.5 0 Z" />
								<rect id="m_leftResizerDot1" style="stroke:none;fill:#dddddd" x="3" y="3" width="2" height="2"/>
								<rect id="m_leftResizerDot2" style="stroke:none;fill:#dddddd" x="3" y="6" width="2" height="2"/>
								<rect id="m_leftResizerDot3" style="stroke:none;fill:#dddddd" x="3" y="9" width="2" height="2"/>
							</svg>
						</div>

						<div id="m_rightResizer" class="ewr-timeslicer-resizer" RunAt="server" ClientIDMode="Static">
							<svg xmlns="http://www.w3.org/2000/svg" style="position:absolute">
								<defs>
									<linearGradient id="m_rightResizerGrad" x1="0%" y1="0%" x2="0%" y2="100%">
										<stop offset="0%" style="stop-color:rgb(192,192,192);stop-opacity:1"/>
										<stop offset="100%" style="stop-color:rgb(102,102,102);stop-opacity:1"/>
									</linearGradient>
								</defs>
								<path id="m_rightResizerPath" style="stroke:none;fill:url(#m_rightResizerGrad)" d="M 0 0 l 5 0 l 2 3 l 0 10 l -2.5 3 l -4.5 0 Z" />
								<rect id="m_rightResizerDot1" style="stroke:none;fill:#dddddd" x="2" y="3" width="2" height="2"/>
								<rect id="m_rightResizerDot2" style="stroke:none;fill:#dddddd" x="2" y="6" width="2" height="2"/>
								<rect id="m_rightResizerDot3" style="stroke:none;fill:#dddddd" x="2" y="9" width="2" height="2"/>
							</svg>
						</div>

					</div>

					<asp:Panel id="m_scrollbar" class="ewr-timeslicer-scrollbar" RunAt="server" ClientIDMode="Static">
						<div id="m_leftArrowRegion" class="ewr-timeslicer-scrollRegionLeft ewr-timeslicer-scrollBar-hover" RunAt="server" ClientIDMode="Static">
							<div id="m_leftArrow" class="ewr-timeslicer-scrollArrowLeft" RunAt="server" ClientIDMode="Static"/>
						</div>
						<div id="m_rightArrowRegion" class="ewr-timeslicer-scrollRegionRight ewr-timeslicer-scrollBar-hover" RunAt="server" ClientIDMode="Static">
							<div id="m_rightArrow" class="ewr-timeslicer-scrollArrowRight" RunAt="server" ClientIDMode="Static"/>
						</div>
						<div id="m_scrollbarHighlightRect" class="ewr-timeslicer-scrollbarHighlightRect ewr-timeslicer-transparent"  RunAt="server" ClientIDMode="Static"/>						
						<div id="m_scrollThumb" class="ewr-timeslicer-scrollThumb ewr-timeslicer-scrollBar-hover" RunAt="server" ClientIDMode="Static"/>
					</asp:Panel>

					<asp:Panel id="m_standAloneScrollButtonLeft" class="ewr-timeslicer-standalone-scrollbutton-left ewr-timeslicer-scrollBar-hover" RunAt="server" ClientIDMode="Static">
						<div id="m_standAloneScrollButtonLeftArrow" class="ewr-timeslicer-scrollArrowLeft" RunAt="server" ClientIDMode="Static"/>
					</asp:Panel>
					<asp:Panel id="m_standAloneScrollButtonRight" class="ewr-timeslicer-standalone-scrollbutton-right ewr-timeslicer-scrollBar-hover" RunAt="server" ClientIDMode="Static">
						<div id="m_standAloneScrollButtonRightArrow" class="ewr-timeslicer-scrollArrowRight" RunAt="server" ClientIDMode="Static"/>
					</asp:Panel>
				</div>
			</asp:Panel>
			<script type="text/javascript">
				<asp:Literal RunAt="server" ID="m_startupScript"/>
			</script>
		</form>
	</body>
</html>
