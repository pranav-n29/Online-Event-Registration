<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="WebForm1.aspx.cs"
Inherits="WebApplication1.WebForm1"
UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Event Registration</title>

    <style>

        body{
            font-family:"Times New Roman";
            background:white;
        }

        .box{
            width:550px;
            margin:30px auto;
            border:2px solid black;
            padding:20px;
        }

        h1{
            text-align:center;
        }

        table{
            width:100%;
        }

        td{
            padding:7px;
            vertical-align:top;
        }

        .txt{
            width:220px;
        }

        .error{
            color:red;
            font-size:14px;
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

<div class="box">

<h1>ONLINE EVENT REGISTRATION</h1>

<asp:ValidationSummary
ID="ValidationSummary1"
runat="server"
CssClass="error" />

<table>

<tr>

<td>Full Name</td>

<td>

<asp:TextBox ID="txtName" runat="server" CssClass="txt"></asp:TextBox>

<asp:RequiredFieldValidator
ID="rfvName"
runat="server"
ControlToValidate="txtName"
ErrorMessage="Name is Required"
CssClass="error"
Display="Dynamic">
</asp:RequiredFieldValidator>

</td>

</tr>

<tr>

<td>Email Id</td>

<td>

<asp:TextBox ID="txtEmail" runat="server" CssClass="txt"></asp:TextBox>

<asp:RequiredFieldValidator
ID="rfvEmail"
runat="server"
ControlToValidate="txtEmail"
ErrorMessage="Email is Required"
CssClass="error" />

<asp:RegularExpressionValidator
ID="revEmail"
runat="server"
ControlToValidate="txtEmail"
ValidationExpression="\w+([-.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
ErrorMessage="Invalid Email"
CssClass="error" />

</td>

</tr>

<tr>

<td>Contact No.</td>

<td>

<asp:TextBox ID="txtContact" runat="server" CssClass="txt"></asp:TextBox>

<asp:RequiredFieldValidator
ID="rfvContact"
runat="server"
ControlToValidate="txtContact"
ErrorMessage="Contact Number Required"
CssClass="error" />

<asp:RegularExpressionValidator
ID="revContact"
runat="server"
ControlToValidate="txtContact"
ValidationExpression="^[0-9]{10}$"
ErrorMessage="Enter 10 Digit Contact Number"
CssClass="error" />

</td>

</tr>

<tr>

<td>College</td>

<td>

<asp:TextBox ID="txtCollege" runat="server" CssClass="txt"></asp:TextBox>

<asp:RequiredFieldValidator
ID="rfvCollege"
runat="server"
ControlToValidate="txtCollege"
ErrorMessage="College Name Required"
CssClass="error" />

</td>

</tr>

<tr>

<td>Department</td>

<td>

<asp:DropDownList ID="ddlDepartment" runat="server">

<asp:ListItem Value="">--Select Department--</asp:ListItem>
<asp:ListItem>Computer</asp:ListItem>
<asp:ListItem>Mechanical</asp:ListItem>
<asp:ListItem>Chemical</asp:ListItem>
<asp:ListItem>Civil</asp:ListItem>

</asp:DropDownList>

<asp:RequiredFieldValidator
ID="rfvDepartment"
runat="server"
ControlToValidate="ddlDepartment"
InitialValue=""
ErrorMessage="Select Department"
CssClass="error" />

</td>

</tr>

<tr>

<td>Event</td>

<td>

<asp:DropDownList ID="ddlEvent" runat="server">

<asp:ListItem Value="">--Select Event--</asp:ListItem>
<asp:ListItem>Workshop</asp:ListItem>
<asp:ListItem>Seminar</asp:ListItem>
<asp:ListItem>Conference</asp:ListItem>
<asp:ListItem>Bootcamp</asp:ListItem>
<asp:ListItem>Hackathon</asp:ListItem>

</asp:DropDownList>

<asp:RequiredFieldValidator
ID="rfvEvent"
runat="server"
ControlToValidate="ddlEvent"
InitialValue=""
ErrorMessage="Select Event"
CssClass="error" />

</td>

</tr>

<tr>

<td>Gender</td>

<td>

<asp:RadioButtonList
ID="rblGender"
runat="server"
RepeatDirection="Horizontal">

<asp:ListItem>Male</asp:ListItem>
<asp:ListItem>Female</asp:ListItem>

</asp:RadioButtonList>

</td>

</tr>

<tr>

<td>Skills</td>

<td>

<asp:CheckBoxList
ID="cblSkills"
runat="server"
RepeatDirection="Horizontal">

<asp:ListItem>C#</asp:ListItem>
<asp:ListItem>Python</asp:ListItem>
<asp:ListItem>AI</asp:ListItem>

</asp:CheckBoxList>

</td>

</tr>

<tr>

<td>Address</td>

<td>

<asp:TextBox
ID="txtAddress"
runat="server"
TextMode="MultiLine"
Rows="4"
Columns="30">
</asp:TextBox>

<asp:RequiredFieldValidator
ID="rfvAddress"
runat="server"
ControlToValidate="txtAddress"
ErrorMessage="Address Required"
CssClass="error" />

</td>

</tr>

<tr>

<td>Terms</td>

<td>

<asp:CheckBox
ID="chkTerms"
runat="server" />

I accept Terms &amp; Conditions

</td>

</tr>

<tr>

<td></td>

<td>

<asp:Button
ID="Button1"
runat="server"
Text="Submit"
OnClick="Button1_Click" />

</td>

</tr>

<tr>

<td></td>

<td>

<asp:Label
ID="lblResult"
runat="server"
ForeColor="Blue"
Font-Bold="true">
</asp:Label>

</td>

</tr>

</table>

</div>

</form>

</body>

</html>

