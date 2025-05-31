<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row1">

<div class="welcome">
<h1 class="title">Log<span>In</span></h1>
<table style="width: 100%;">
        <tr>
            <td>
                 Username
            </td>
            <td>
                <asp:TextBox ID="txt_username" runat="server" CssClass="input_field"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_username" Display="Dynamic" 
                    ErrorMessage="Enter user name" Font-Bold="False" Font-Size="10pt" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txt_username" Display="Dynamic" 
                    ErrorMessage="Enter legal values" Font-Size="10pt" ForeColor="Red" 
                    ValidationExpression="^[^;-=%']*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                 Password
            </td>
            <td>
                 <asp:TextBox ID="txt_pass" runat="server" CssClass="input_field"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_pass" Display="Dynamic" ErrorMessage="Enter password" 
                    Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txt_pass" Display="Dynamic" 
                    ErrorMessage="Enter legal values" Font-Size="10pt" ForeColor="Red" 
                    ValidationExpression="^[^;-=%']*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Button ID="btn_login" runat="server" Text="Login"  CssClass="btnsubmit" 
                    onclick="btn_login_Click" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <asp:Label ID="lbl_mess" runat="server" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td>
                Not Registered Yet?</td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Click Here To Register</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</div>
</div>

</asp:Content>

