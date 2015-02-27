<%@ Control Language="C#" Inherits="Microsoft.SharePoint.WebControls.BusinessDataFieldEditor,Microsoft.SharePoint"    compilationMode="Always" %>
<%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="~/_controltemplates/15/InputFormControl.ascx" %>
<%@ Register Tagprefix="STSWC" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<wssuc:InputFormControl LabelText="<%$Resources:wss, BusinessDataField_EntityType%>" runat="server">
	<Template_Control>
		<asp:Label id="ErrorLabel" ForeColor="Red" runat="server"></asp:Label>
		<asp:Label id="EntityTypeLabel" runat="server" Visible="false"></asp:Label>
		<!-- set the ValidatorEnabled property here, not in the code behind as it needs to be set before the base picker's OnInit() is called -->
		   <STSWC:EntityPicker id="EntityPicker" ValidatorEnabled="true" AllowEmpty="false" Width="100%" DoPostBackOnResolve="true" runat="server"/>
	</Template_Control>
</wssuc:InputFormControl>
<wssuc:InputFormControl LabelText="<%$Resources:wss, BusinessDataField_PrimaryField%>" runat="server">
	<Template_Control>
	<asp:DropDownList id="PrimaryFieldList" runat="server"
		AutoPostBack="False"
		Width="100%"
		>
	</asp:DropDownList>
	</Template_Control>
</wssuc:InputFormControl>
<wssuc:InputFormControl runat="server">
	<Template_Control>
	<asp:CheckBox id="ActionMenuCheck"
		runat="server"
		/>
	<br></br>
	<asp:CheckBox id="ProfileCheck"
		runat="server"
		/>
	</Template_Control>
</wssuc:InputFormControl>
<wssuc:InputFormControl id="SecondaryFieldsSection" LabelText="<%$Resources:wss, BusinessDataField_SecondaryFields%>" runat="server">
	<Template_Control>
		<SharePoint:ScriptBlock runat="server">
		function ToggleSelectAllSecondaryFields(cblControl)
		{
			var cbxSelectAll = document.getElementById("cbSelectAllSecondaryFields");
			var chkBoxList = document.getElementById(cblControl);
			var chkBoxArr = chkBoxList.getElementsByTagName("input");
			var chkBoxCount = chkBoxArr.length;
			if(chkBoxCount == 0)
			{
			   cbxSelectAll.checked = false;
			   return;
			}
			for(var i=0;i<chkBoxCount;i++)
			{
				chkBoxArr[i].checked = cbxSelectAll.checked;
			}
			return;
		}
		function UpdateSelectAllCheckBox(cblControl)
		{
			var cbxSelectAll = document.getElementById("cbSelectAllSecondaryFields");
			var chkBoxList = document.getElementById(cblControl);
			var chkBoxArr = chkBoxList.getElementsByTagName("input");
			var chkBoxCount = chkBoxArr.length;
			var selectedCount = 0;
			for(var i=0;i<chkBoxCount;i++)
			{
				if(chkBoxArr[i].checked) selectedCount++;
			}
			if(selectedCount == chkBoxCount && chkBoxCount > 0)
				cbxSelectAll.checked = true;
			else
				cbxSelectAll.checked = false;
			return;
		}
		</SharePoint:ScriptBlock>
		<input type="checkbox" id="cbSelectAllSecondaryFields"
			onclick="ToggleSelectAllSecondaryFields('<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(SecondaryFieldsList.ClientID) %>');"/>
		<label for="cbSelectAllSecondaryFields"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss, BusinessDataField_SelectAllSecondaryFields %>" EncodeMethod="HtmlEncode"/></label>
	<br></br>
	<asp:CheckBoxList id="SecondaryFieldsList"
		   RepeatColumns="1"
		   RepeatDirection="Vertical"
		   RepeatLayout="Table"
		   runat="server"
		/>
		<SharePoint:ScriptBlock runat="server">
		UpdateSelectAllCheckBox('<%= Microsoft.SharePoint.Utilities.SPHttpUtility.NoEncode(SecondaryFieldsList.ClientID) %>');
		</SharePoint:ScriptBlock>
	</Template_Control>
</wssuc:InputFormControl>
