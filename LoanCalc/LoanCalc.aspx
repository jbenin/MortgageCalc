<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoanCalc.aspx.cs" Inherits="LoanCalc.LoanCalc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        #form1
        {
            text-align: center;
        }
        .CenteredText
        {
            text-align: center;
        }
    </style>
</head>
<body>
<h1>Cadet Car Loan Payment Calculator</h1>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table cellpadding="8" class="style1">
        <tr>
            <td align="right" bgcolor="#66FF33">
                Principal</td>
            <td align="center" bgcolor="#66FF33">
                <asp:TextBox ID="Principal" runat="server" CssClass="CenteredText"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" bgcolor="#66FF33">
                Rate (percent)</td>
            <td align="center" bgcolor="#66FF33">
                <asp:TextBox ID="Rate" runat="server" CssClass="CenteredText"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" bgcolor="#66FF33">
                Term (months)</td>
            <td align="center" bgcolor="#66FF33">
                <asp:TextBox ID="Term" runat="server" CssClass="CenteredText">60</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="#66FF33">
                &nbsp;</td>
            <td align="center" bgcolor="#66FF33">
                <asp:Button ID="bPayment" runat="server" onclick="bPayment_Click" 
                    Text="Calculate" />
            </td>
        </tr>
    </table>
    <br />
    <hr />
    <br />
    <h3>
    <asp:Label ID="Output" runat="server"></asp:Label>
    </h3>
    </form>
</body>
</html>
