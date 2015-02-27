<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.AccessRequestsDialog,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"    compilationMode="Always" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<div id="ms-accessRequestsControl-mainDiv">
	<asp:Panel CssClass="ms-status-msg ms-status-blue" id="statusTextPanel" runat="server">
		<h2>
			<asp:Label id="RequestTitle1" runat="server"/>
			<asp:Label id="RequestTitle2" runat="server"/>
		</h2>
	</asp:Panel>
	<div class="ms-accessRequestsControl-convTextAreaDiv">
		<textarea name="txtareaMessage"
				  rows="4"
				  id="txtareaMessage"
				  class="ms-accessRequestsControl-convTextArea ms-helperText"
				  onfocus='EnsureScriptParams("accessrequestscontrol.js", "clearContents", this);'
				  onblur='EnsureScriptParams("accessrequestscontrol.js", "enableSubmitBtn", this, /*bResetContents*/true);'
				  onkeyup='EnsureScriptParams("accessrequestscontrol.js", "enableSubmitBtn", this, /*bResetContents*/false);'
				  runat="server"></textarea>
	</div>
	<div class="ms-accessRequestsControl-SubmitBtnDiv">
			<input type="submit"
				   disabled="disabled"
				   onclick="return EnsureScriptParams('accessrequestscontrol.js', 'validateText');"
				   value="<%$Resources:wss,reqacc_sendreq%>"
				   id="btnSendRequest3"
				   accesskey="<%$Resources:wss,aclinv_ShareButton_AccessKey%>"
				   class="ms-callLink ms-accessRequestsControl-SubmitBtn"
				   runat="server"/>
	</div>
	<div id="conversationView" class="ms-accessRequestsControl-convView">
		<asp:Repeater id="repeaterConvTemplate" runat="server">
		  <ItemTemplate>
			<div class="ms-accessRequestsControl-convViewMsg" >
				<div class="ms-accessRequestsControl-username ms-bold ms-textSmall">
					<%# DataBinder.Eval(Container.DataItem, "name") %>
								</div>
				<div class="ms-accessRequestsControl-message">
					<%# DataBinder.Eval(Container.DataItem, "message") %>
				</div>
				<div class="ms-accessRequestsControl-date ms-metadata">
					<%# DataBinder.Eval(Container.DataItem, "date") %>
				</div>
			</div>
		  </ItemTemplate>
		  <SeparatorTemplate>
		  </SeparatorTemplate>
		</asp:Repeater>
	</div>
	<div id="divShowMoreConv">
		<asp:HyperLink id="showMoreConv"
					   CssClass="ms-calloutLink"
					   Text="<%$SPHtmlEncodedResources:wss,AccReqDiagMoreLink%>"
					   NavigateUrl="#"
					   onclick="EnsureScriptParams('accessrequestscontrol.js', 'moreClicked');return false;"
					   runat="server"/>
	</div>
</div>
