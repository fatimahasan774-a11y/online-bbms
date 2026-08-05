<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserUpdateProfile.aspx.cs" Inherits="BBMS.UserUpdateProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   

<div class="dash-wrapper theme-user">

    <!-- SIDEBAR -->
    <div class="sidebar">
        <div class="sidebar-brand">
            <div class="drop"><i class="bi bi-droplet-fill"></i></div>
            <div><h5>BLOOD BANK</h5><small>USER PANEL</small></div>
        </div>
        <ul class="sidebar-menu">
            <li><a href="PatientDashboard.aspx"><i class="bi bi-grid-fill"></i> Dashboard</a></li>
            <li><a href="UserUpdateProfile.aspx" class="active"><i class="bi bi-person"></i> Update Profile</a></li>
            <li><a href="RegisterAsDonor.aspx"><i class="bi bi-heart"></i> Register as Donor</a></li>
            <li><a href="SearchBloodGroup.aspx"><i class="bi bi-search"></i> Search Blood Group</a></li>
            <li><a href="RequestBlood.aspx"><i class="bi bi-clipboard-plus"></i> Request Blood</a></li>
            <li><a href="RequestStatus.aspx"><i class="bi bi-list-task"></i> View Request Status</a></li>
            <li><a href="ContactBloodBank.aspx"><i class="bi bi-chat-dots"></i> Contact Blood Bank</a></li>
            <li><a href="Logout.aspx"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
        </ul>
    </div>

    <!-- MAIN -->
    <div class="main-content">
        <div class="topbar">
            <h3>Update Profile</h3>
            <div class="profile-box">
                <img src="https://i.pravatar.cc/100?img=32" alt="User" />
                <span>User</span>
                <i class="bi bi-chevron-down"></i>
            </div>
        </div>

        <div style="background:#fff; border-radius:14px; padding:24px; box-shadow:0 3px 10px rgba(0,0,0,.05); max-width:560px;">

            <div style="display:flex; align-items:center; gap:16px; margin-bottom:22px;">
                <img src="https://i.pravatar.cc/100?img=32" style="width:70px; height:70px; border-radius:50%; object-fit:cover;" />
                <div>
                    <div style="font-weight:700; font-size:16px; color:#0e4f4a;">Update your info</div>
                    <div style="color:#6b7280; font-size:13px;">Xogtaadu waxay caawinaysaa in laguu heli karo si degdeg ah</div>
                </div>
            </div>

            <div style="margin-bottom:14px;">
                <label style="font-size:13px; font-weight:600; color:#6b7280;">Full Name</label><br />
                <asp:TextBox ID="txtName" runat="server" style="width:100%; padding:9px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;" />
            </div>
            <div style="margin-bottom:14px;">
                <label style="font-size:13px; font-weight:600; color:#6b7280;">Email</label><br />
                <asp:TextBox ID="txtEmail" runat="server" style="width:100%; padding:9px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;" />
            </div>
            <div style="margin-bottom:14px;">
                <label style="font-size:13px; font-weight:600; color:#6b7280;">Phone</label><br />
                <asp:TextBox ID="txtPhone" runat="server" style="width:100%; padding:9px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;" />
            </div>
            <div style="margin-bottom:18px;">
                <label style="font-size:13px; font-weight:600; color:#6b7280;">Blood Group</label><br />
                <asp:DropDownList ID="ddlBloodGroup" runat="server" style="width:100%; padding:9px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;">
                    <asp:ListItem Text="A+" /><asp:ListItem Text="A-" />
                    <asp:ListItem Text="B+" /><asp:ListItem Text="B-" />
                    <asp:ListItem Text="AB+" /><asp:ListItem Text="AB-" />
                    <asp:ListItem Text="O+" /><asp:ListItem Text="O-" />
                </asp:DropDownList>
            </div>

            <asp:Button ID="btnUpdate" runat="server" Text="Save Changes" OnClick="btnUpdate_Click"
                style="background:#0e4f4a; color:#fff; border:none; padding:11px 22px; border-radius:8px; font-weight:600; cursor:pointer; width:100%;" />
            <asp:Label ID="lblMsg" runat="server" style="display:block; margin-top:12px; font-weight:600;" />
        </div>
    </div>
</div>


</asp:Content>
