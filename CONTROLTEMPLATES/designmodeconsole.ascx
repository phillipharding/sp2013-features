<%@ Control Language="C#"    compilationMode="Always" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
	  <SharePoint:DesignModeConsoleContainer id="DesignModeContainer" runat="server">
<!-- Design Mode Console -->
	   <tr>
		<td colspan="3" width="100%" class="ms-consolestatuscell">
		 <table width="100%" cellspacing="0" cellpadding="0" border="0">
			<tr>
			   <td>
				  <table cellspacing="0" cellpadding="0" width="100%" class="ms-consoleframe"><tr><td>
				  <table cellspacing="0" cellpadding="0" border="0" width="100%" >
					 <tr>
						<td colspan="2" class="ms-consolestatuscheckoutframe">
						</td>
					 </tr>
				  </table>
				  <table cellspacing="0" cellpadding="0" border="0" width="100%" class="ms-consolestatusframe" style="padding-top: 1px;">
						<tr>
						   <td align="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,multipages_direction_left_align_value%>' EncodeMethod='HtmlEncode'/>" class="ms-consoleminiframe">
							  <table cellpadding="0" cellspacing="0" border="0">
								 <tr>
								   <td class="ms-consolestatus">&#160;
									  <SharePoint:PageModeIndicator id="pmi2" runat="server"/>
								   </td>
								   <td class="ms-consolestatus">
									  &#160;&#160;&#160;&#160;
								   </td>
								</tr>
							 </table>
						  </td>
						  <td align="<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,multipages_direction_right_align_value%>' EncodeMethod='HtmlEncode'/>" class="ms-consoleminiframe" style="padding-left: 10px;padding-right: 10px;">
							 <SharePoint:ExitDesignModeControl id="edmc2" runat="server"/>
						  </td>
					   </tr>
				 </table>
				 </td></tr></table>
			  </td>
		   </tr>
		</table>
	   </td>
	  </tr>
<!-- Design Mode Console -->
	 </SharePoint:DesignModeConsoleContainer>
