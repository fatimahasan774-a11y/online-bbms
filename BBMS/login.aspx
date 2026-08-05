<%@ Page Title="Admin Login" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="BBMS.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Login - Blood Bank
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="split-login-wrapper">
    <div class="login-card-container">
        
        <!-- Left Side: Gradient Design & Tabs -->
        <div class="login-left-side">
            <div class="brand-overlay-content">
                <h3 class="fw-bold text-white mb-2">Blood Bank</h3>
                <p class="text-white-55 small mb-4">Manage or donate safely</p>
                
                <!-- Role Selector Tabs inside Left Side -->
                <div class="d-flex flex-column gap-2 w-100">
                    <asp:LinkButton ID="btnRoleAdmin" runat="server" CommandArgument="Admin" OnClick="RoleTab_Click"
                        style="text-align:center; padding:10px; border-radius:8px; font-weight:600; font-size:13px; text-decoration:none; background:#172a4f; color:#fff; transition:0.2s;">Admin</asp:LinkButton>
                    <asp:LinkButton ID="btnRoleUser" runat="server" CommandArgument="User" OnClick="RoleTab_Click"
                        style="text-align:center; padding:10px; border-radius:8px; font-weight:600; font-size:13px; text-decoration:none; background:#f3f5fa; color:#0e4f4a; transition:0.2s;">User</asp:LinkButton>
                    <asp:LinkButton ID="btnRoleDonor" runat="server" CommandArgument="Donor" OnClick="RoleTab_Click"
                        style="text-align:center; padding:10px; border-radius:8px; font-weight:600; font-size:13px; text-decoration:none; background:#f3f5fa; color:#3a1f5d; transition:0.2s;">Donor</asp:LinkButton>
                </div>
            </div>
        </div>

        <!-- Right Side: Form Inputs -->
        <div class="login-right-side">
            <div style="text-align:center; margin-bottom:24px;">
                <div style="width:50px; height:50px; border-radius:50%; background:linear-gradient(135deg, #8B1E41, #B8336A); display:flex; align-items:center; justify-content:center; margin:0 auto 12px; font-size:22px; color:#fff; box-shadow:0 4px 10px rgba(139,30,65,0.3);">
                    <i class="bi bi-person-fill"></i>
                </div>
                <h2 style="font-family:'Poppins',sans-serif; font-size:20px; font-weight:800; color:#8B1E41; letter-spacing:0.5px;">LOGIN</h2>
            </div>

            <asp:HiddenField ID="hidSelectedRole" runat="server" Value="Admin" />

            <div style="margin-bottom:16px;">
                <div style="display:flex; align-items:center; border-bottom:1px solid #d1d5db; padding-bottom:6px; margin-top:5px;">
                    <i class="bi bi-person text-muted me-2 fs-5"></i>
                    <asp:TextBox ID="txtUsername" runat="server" style="width:100%; border:none; outline:none; background:transparent; font-size:14px;" placeholder="Email or Username" />
                </div>
            </div>

            <div style="margin-bottom:10px;">
                <div style="display:flex; align-items:center; border-bottom:1px solid #d1d5db; padding-bottom:6px; margin-top:5px;">
                    <i class="bi bi-lock text-muted me-2 fs-5"></i>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" style="width:100%; border:none; outline:none; background:transparent; font-size:14px;" placeholder="Password" />
                </div>
            </div>

            <div style="display:flex; justify-content:space-between; align-items:center; margin-bottom:20px;">
                <a href="#" style="font-size:12px; color:#8B1E41; text-decoration:none;">Forgot Password?</a>
            </div>

            <asp:Button ID="btnLogin" runat="server" Text="LOGIN" OnClick="btnLogin_Click"
                style="width:100%; background:linear-gradient(135deg, #8B1E41, #B8336A); color:#fff; border:none; padding:11px 0; border-radius:20px; font-weight:700; font-size:14px; cursor:pointer; box-shadow:0 4px 15px rgba(139,30,65,0.3); transition:0.3s;" />

            <asp:Label ID="lblError" runat="server" style="display:block; margin-top:10px; text-align:center; font-weight:600; color:#e11d48; font-size:12.5px;" />

            <div style="border-top:1px solid #f0f0f0; margin-top:25px; padding-top:15px; text-align:center;">
                <p style="font-size:12px; color:#6b7280; margin-bottom:10px;">Or Login With</p>
                <div style="display:flex; justify-content:center; gap:20px; font-size:18px;">
                    <a href="#" style="color:#db4437;"><i class="bi bi-google"></i></a>
                    <a href="#" style="color:#4267B2;"><i class="bi bi-facebook"></i></a>
                </div>
            </div>

            <p style="text-align:center; margin-top:15px; font-size:12px; color:#6b7280;">
                Don't have an account? <a href="Register.aspx" style="color:#8B1E41; font-weight:600; text-decoration:none;">Sign up</a>
            </p>

            <p style="text-align:center; margin-top:6px;">
                <a href="Default.aspx" style="font-size:11.5px; color:#9ca3af; text-decoration:none;"><i class="bi bi-arrow-left"></i> Back to Home</a>
            </p>
        </div>

    </div>
</div>

<style>
    .split-login-wrapper {
        min-height: calc(100vh - 66px);
        background: #6c1b3e;
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 30px 15px;
    }
    .login-card-container {
        background: #fff;
        border-radius: 20px;
        box-shadow: 0 15px 35px rgba(0,0,0,0.2);
        width: 100%;
        max-width: 780px;
        display: flex;
        overflow: hidden;
        opacity: 0;
        transform: translateY(15px);
        animation: loginUp 0.5s ease forwards;
    }
    .login-left-side {
        flex: 1;
        background: linear-gradient(135deg, #7A1C3C 0%, #A32E59 50%, #C44573 100%);
        padding: 40px 30px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        position: relative;
    }
    .login-right-side {
        flex: 1.2;
        padding: 35px;
        background: #ffffff;
    }
    @keyframes loginUp { 
        to { opacity: 1; transform: translateY(0); } 
    }
    @media(max-width: 768px) {
        .login-card-container {
            flex-direction: column;
            max-width: 420px;
        }
    }
</style>

</asp:Content>