<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row1">

<div class="welcome">
<h1 class="title">Citizen <span>Registration</span></h1>
<table style="width: 100%;">
        <tr>
            <td>
                 Citizen Name
            </td>
            <td>
                 <asp:TextBox ID="txt_name" runat="server" CssClass="input_field"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="txt_name" Display="Dynamic" ErrorMessage="Enter name" 
                    Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>
                 Citizen Age</td>
            <td>
                 <asp:TextBox ID="txt_age" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                     ControlToValidate="txt_age" Display="Dynamic" ErrorMessage="Enter digits only" 
                     Font-Size="10pt" ForeColor="Red" ValidationExpression="\d{1,3}"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="txt_age" Display="Dynamic" ErrorMessage="Enter age" 
                    Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="height: 24px">
                 Citizen Gender</td>
            <td style="height: 24px">
                 <asp:DropDownList ID="ddl_gender" runat="server" CssClass="input_field" 
                     Height="24px" Width="204px">
                     <asp:ListItem Value="0">Choose</asp:ListItem>
                     <asp:ListItem>Female</asp:ListItem>
                     <asp:ListItem>Male</asp:ListItem>
                 </asp:DropDownList>
            </td>
            <td style="height: 24px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ddl_gender" Display="Dynamic" ErrorMessage="Select gender" 
                    Font-Bold="False" Font-Size="10pt" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>
                 Citizen
                 Address
            </td>
            <td>
                 <asp:TextBox ID="txt_address" runat="server" CssClass="input_field" Height="46px" 
                     Rows="5" TextMode="MultiLine" Width="201px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txt_address" Display="Dynamic" ErrorMessage="Enter address" 
                    Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>
                 Citizen
                 City
            </td>
            <td>
                 <asp:TextBox ID="txt_city" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                     ControlToValidate="txt_city" Display="Dynamic" 
                     ErrorMessage="Enter only alphabets" Font-Size="10pt" ForeColor="Red" 
                     ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txt_city" Display="Dynamic" ErrorMessage="Enter city" 
                    Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>
                 Citizen
                 State
            </td>
            <td>
                 <asp:TextBox ID="txt_state" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                     ControlToValidate="txt_state" Display="Dynamic" 
                     ErrorMessage="Enter only alphabets" Font-Size="10pt" ForeColor="Red" 
                     ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txt_state" Display="Dynamic" ErrorMessage="Enter state" 
                    Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>
                 Citizen Pincode</td>
            <td>
                 <asp:TextBox ID="txt_pin" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                     ControlToValidate="txt_pin" Display="Dynamic" 
                     ErrorMessage="Enter six digits only" Font-Size="10pt" ForeColor="Red" 
                     ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txt_pin" Display="Dynamic" ErrorMessage="Enter pincode" 
                    Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>
                 Citizen
                 Email ID
            </td>
            <td>
                 <asp:TextBox ID="txt_email" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                     ControlToValidate="txt_email" Display="Dynamic" 
                     ErrorMessage="Enter correct email id" Font-Size="10pt" ForeColor="Red" 
                     ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txt_email" Display="Dynamic" ErrorMessage="Enter email id" 
                    Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>
                 Citizen Mobile No.
            </td>
            <td>
                 <asp:TextBox ID="txt_phone" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                     ControlToValidate="txt_phone" Display="Dynamic" 
                     ErrorMessage="Enter phone format as 00000-00000" Font-Size="10pt" 
                     ForeColor="Red" ValidationExpression="\d{5}(-)\d{5}"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txt_phone" Display="Dynamic" ErrorMessage="Enter phone" 
                    Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td bgcolor="Gray" colspan="3" style="color: white; font-weight: bold;">
                 Choose Your Desired Login Detailss</td>
        </tr>
         <tr>
            <td>
                Desired
                 User Name
            </td>
            <td>
                 <asp:TextBox ID="txt_username" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txt_username" Display="Dynamic" 
                    ErrorMessage="Minimum 8 characters. Only alphabets, digits and _" 
                    Font-Size="10pt" ForeColor="Red" 
                    ValidationExpression="^[a-zA-Z0-9'_']{8,30}$"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txt_username" Display="Dynamic" 
                    ErrorMessage="Enter user name" Font-Bold="False" Font-Size="10pt" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>
                 Desired
                 Password
             </td>
            <td>
                 <asp:TextBox ID="txt_pass" runat="server" CssClass="input_field" 
                     TextMode="Password"></asp:TextBox><br />

                 <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                     ControlToValidate="txt_pass" Display="Dynamic" 
                     ErrorMessage="Min 5 chars. Enter only alphabets, digits, _, @ and !" 
                     Font-Size="10pt" ForeColor="Red" 
                     ValidationExpression="^[a-zA-Z0-9'_''@''!']{5,20}$"></asp:RegularExpressionValidator>

            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txt_pass" Display="Dynamic" ErrorMessage="Enter password" 
                    Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr> <tr>
            <td>
                 Confirm Desired Password
            </td>
            <td>
                 <asp:TextBox ID="txt_Cpass" runat="server" CssClass="input_field" 
                     TextMode="Password"></asp:TextBox>
                     <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                     ControlToValidate="txt_Cpass" Display="Dynamic" 
                     ErrorMessage="Min 5 chars. Enter only alphabets, digits, _, @ and !" 
                     Font-Size="10pt" ForeColor="Red" 
                     ValidationExpression="^[a-zA-Z0-9'_''@''!']{5,20}$"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="txt_Cpass" Display="Dynamic" ErrorMessage="Reenter password" 
                    Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Button ID="btn_register" runat="server" Text="Login"  CssClass="btnsubmit" 
                    onclick="btn_register_Click" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lbl_mess" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</div>
</div>
</asp:Content>

