<%@ Page Title="" Language="C#" MasterPageFile="~/Donar.Master" AutoEventWireup="true" CodeBehind="RegisterAsDonor.aspx.cs" Inherits="BBMS.RegisterAsDonor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .form-container {
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
            max-width: 600px;
            margin: 30px auto;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #333;
        }
        .form-control {
            width: 100%;
            padding: 10px 15px;
            border: 1px solid #d1d5db;
            border-radius: 8px;
            font-size: 14px;
        }
        .btn-submit {
            background-color: #e11d48;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            width: 100%;
            font-weight: 600;
            cursor: pointer;
        }
        .btn-submit:hover {
            background-color: #be123c;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="form-container">
    <h3 style="margin-bottom: 25px; color: #0e4f4a; font-weight: 700; text-align: center;">Donor Registration Form</h3>

    <div class="form-group">
        <label>Full Name</label>
        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter your full name"></asp:TextBox>
    </div>

    <div class="form-group">
        <label>Age</label>
        <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" TextMode="Number" placeholder="Enter your age"></asp:TextBox>
    </div>

    <div class="form-group">
        <label>Weight (KG)</label>
        <asp:TextBox ID="txtWeight" runat="server" CssClass="form-control" TextMode="Number" placeholder="Enter your weight in KG"></asp:TextBox>
    </div>

    <div class="form-group">
        <label>Blood Group</label>
        <asp:DropDownList ID="ddlBloodGroup" runat="server" CssClass="form-control">
            <asp:ListItem Text="Select Blood Group" Value="" />
            <asp:ListItem Text="A+" Value="A+" />
            <asp:ListItem Text="A-" Value="A-" />
            <asp:ListItem Text="B+" Value="B+" />
            <asp:ListItem Text="B-" Value="B-" />
            <asp:ListItem Text="AB+" Value="AB+" />
            <asp:ListItem Text="AB-" Value="AB-" />
            <asp:ListItem Text="O+" Value="O+" />
            <asp:ListItem Text="O-" Value="O-" />
        </asp:DropDownList>
    </div>

    <div class="form-group">
        <label>Last Donation Date</label>
        <asp:TextBox ID="txtLastDonationDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:Button ID="btnRegister" runat="server" Text="Register as Donor" CssClass="btn-submit" OnClick="btnRegister_Click" />
    </div>

    <div class="form-group" style="text-align: center;">
        <asp:Label ID="lblMsg" runat="server" Font-Bold="true"></asp:Label>
    </div>
</div>

</asp:Content>