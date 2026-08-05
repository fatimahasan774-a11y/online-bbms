<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BBMS.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
<div style="min-height:calc(100vh - 66px); background:#f3f5fa; display:flex; align-items:center; justify-content:center; padding:50px 20px;">

    <div style="background:#fff; border-radius:20px; box-shadow:0 10px 40px rgba(0,0,0,.08); width:100%; max-width:460px; padding:36px 32px;">

        <div style="text-align:center; margin-bottom:24px;">
            <div style="width:52px; height:52px; border-radius:14px; background:#e11d2e; display:flex; align-items:center; justify-content:center; margin:0 auto 14px; font-size:24px; color:#fff;">
                <i class="bi bi-droplet-fill"></i>
            </div>
            <h2 style="font-family:'Poppins',sans-serif; font-size:21px; font-weight:800; color:#1b2333;">Create your account</h2>
            <p style="color:#6b7280; font-size:13.5px; margin-top:4px;">Sign up to start using the Blood Bank system</p>
        </div>

        <div style="margin-bottom:14px;">
            <label style="font-size:13px; font-weight:600; color:#6b7280;">Full Name / Organization Name</label><br />
            <asp:TextBox ID="txtName" runat="server" style="width:100%; padding:10px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;" placeholder="Ahmed Ali or City Hospital" />
        </div>

        <div style="margin-bottom:14px;">
            <label style="font-size:13px; font-weight:600; color:#6b7280;">Email</label><br />
            <asp:TextBox ID="txtEmail" runat="server" style="width:100%; padding:10px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;" placeholder="ahmed@example.com" />
        </div>

        <div style="margin-bottom:14px;">
            <label style="font-size:13px; font-weight:600; color:#6b7280;">Phone</label><br />
            <asp:TextBox ID="txtPhone" runat="server" style="width:100%; padding:10px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;" placeholder="06XXXXXXXX" />
        </div>

        <div style="margin-bottom:14px;">
            <label style="font-size:13px; font-weight:600; color:#6b7280;">Password</label><br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" style="width:100%; padding:10px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;" placeholder="••••••••" />
        </div>

        <div style="margin-bottom:18px;">
            <label style="font-size:13px; font-weight:600; color:#6b7280;">Register as</label><br />
            <asp:DropDownList ID="ddlRole" runat="server" style="width:100%; padding:10px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;">
                <asp:ListItem Text="Individual User (Request Blood for Person)" Value="User" />
                <asp:ListItem Text="Hospital (Request Blood for Hospital)" Value="Hospital" />
                <asp:ListItem Text="Donor (Donate Blood)" Value="Donor" />
            </asp:DropDownList>
        </div>

        <asp:Button ID="btnRegister" runat="server" Text="Create Account" OnClick="btnRegister_Click"
            style="width:100%; background:#e11d2e; color:#fff; border:none; padding:12px 0; border-radius:8px; font-weight:700; font-size:14.5px; cursor:pointer;" />

        <asp:Label ID="lblMsg" runat="server" style="display:block; margin-top:12px; text-align:center; font-weight:600; font-size:13px;" />

        <p style="text-align:center; margin-top:20px; font-size:13px; color:#6b7280;">
            Already have an account? <a href="Login.aspx" style="color:#e11d2e; font-weight:600; text-decoration:none;">Sign In</a>
        </p>

        <p style="text-align:center; margin-top:10px;">
            <a href="Default.aspx" style="font-size:12.5px; color:#9ca3af; text-decoration:none;"><i class="bi bi-arrow-left"></i> Back to Home</a>
        </p>
    </div>

</div>

</asp:Content>