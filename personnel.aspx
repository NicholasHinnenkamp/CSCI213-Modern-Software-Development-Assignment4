<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="personnel.aspx.cs" Inherits="WebProject2.personnel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 195px;
    }
    .auto-style3 {
        background-color: #ffffff;
    }
    .auto-style4 {
        width: 195px;
        height: 29px;
    }
    .auto-style5 {
        height: 29px;
    }
        .auto-style6 {
            width: 195px;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
</p>
<p>
    Ascending Order:&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
</p>
<p>
    Descending Order:&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
</p>
    <p>
        Search by Name:&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Subimt" />
</p>
    <p>
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Highest Hourly Pay Rate" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Lowest Hourly Pay Rate" />
</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</p>
<p>
    Delete by ID:&nbsp;
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Submit" />
</p>
<p>
    <table class="auto-style3" style="width:100%;">
        <tr>
            <td class="auto-style4">Name</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">position</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">hourly pay rate</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
</p>
<p>
    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Add employee" />
</p>
<p>
</p>
<p>
</p>
</asp:Content>
