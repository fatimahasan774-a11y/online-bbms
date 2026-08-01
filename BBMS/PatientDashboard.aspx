<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="PatientDashboard.aspx.cs" Inherits="BBMS.PatientDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
<div class="dash-wrapper theme-user">

    <!-- ===== SIDEBAR ===== -->
    <div class="sidebar">
        <div class="sidebar-brand">
            <div class="drop"><i class="bi bi-droplet-fill"></i></div>
            <div>
                <h5>BLOOD BANK</h5>
                <small>USER PANEL</small>
            </div>
        </div>
        <ul class="sidebar-menu">
            <li><a href="PatientDashboard.aspx" class="active"><i class="bi bi-grid-fill"></i> Dashboard</a></li>
            <li><a href="UpdateProfile.aspx"><i class="bi bi-person"></i> Update Profile</a></li>
            <li><a href="RegisterAsDonor.aspx"><i class="bi bi-heart"></i> Register as Donor</a></li>
            <li><a href="SearchBloodGroup.aspx"><i class="bi bi-search"></i> Search Blood Group</a></li>
            <li><a href="RequestBlood.aspx"><i class="bi bi-clipboard-plus"></i> Request Blood</a></li>
            <li><a href="RequestStatus.aspx"><i class="bi bi-list-task"></i> View Request Status</a></li>
            <li><a href="ContactBloodBank.aspx"><i class="bi bi-chat-dots"></i> Contact Blood Bank</a></li>
            <li><a href="Login.aspx"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
        </ul>
    </div>

    <!-- ===== MAIN CONTENT ===== -->
    <div class="main-content">

        <div class="topbar">
            <h3>Dashboard</h3>
            <div class="profile-box">
                <img src="https://i.pravatar.cc/100?img=32" alt="User" />
                <span>User</span>
                <i class="bi bi-chevron-down"></i>
            </div>
        </div>

        <!-- STAT CARDS -->
        <div class="stats-row">
            <div class="stat-card">
                <div class="stat-icon icon-red"><i class="bi bi-droplet-fill"></i></div>
                <div>
                    <h4>A+</h4>
                    <span class="label">My Blood Group</span>
                    <a href="UpdateProfile.aspx" class="link" style="color:#e11d48;">View Profile</a>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon icon-blue"><i class="bi bi-clipboard-data-fill"></i></div>
                <div>
                    <h4>2</h4>
                    <span class="label">My Requests</span>
                    <a href="RequestStatus.aspx" class="link" style="color:#2563eb;">View Status</a>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon icon-orange"><i class="bi bi-heart-fill"></i></div>
                <div>
                    <h4>Not a Donor</h4>
                    <a href="RegisterAsDonor.aspx" class="link" style="color:#dc2626; font-weight:700;">Register Now</a>
                    <a href="RegisterAsDonor.aspx" class="link" style="color:#d97706;">Join as Donor</a>
                </div>
            </div>
        </div>

        <!-- QUICK ACCESS -->
    <div class="qa-title">Quick Access</div>
     <div class="quick-access">
         <a href="UpdateProfile.aspx" class="qa-card"><i class="bi bi-person" style="color:#0e4f4a;"></i>Update Profile</a>
         <a href="RegisterAsDonor.aspx" class="qa-card"><i class="bi bi-heart" style="color:#e11d48;"></i>Register as Donor</a>
         <a href="SearchBloodGroup.aspx" class="qa-card"><i class="bi bi-search" style="color:#2563eb;"></i>Search Blood Group</a>
         <a href="RequestBlood.aspx" class="qa-card"><i class="bi bi-clipboard-plus" style="color:#e11d48;"></i>Request Blood</a>
         <a href="RequestStatus.aspx" class="qa-card"><i class="bi bi-list-task" style="color:#16a34a;"></i>View Request Status</a>
         <a href="ContactBloodBank.aspx" class="qa-card"><i class="bi bi-chat-dots" style="color:#7c3aed;"></i>Contact Blood Bank</a>
        <a href="userLogin.aspx" class="qa-card" style="text-decoration:none;">
        <i class="bi bi-box-arrow-right" style="color:#e11d48;"></i> Logout
        </a>
     </div>
</div>

</div>
</asp:Content>
