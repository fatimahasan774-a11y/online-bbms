<%@ Page Title="" Language="C#" MasterPageFile="~/Donar.Master" AutoEventWireup="true" CodeBehind="DonorDashboard.aspx.cs" Inherits="BBMS.DonorDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  
<div class="dash-wrapper theme-donor">

    <!-- SIDEBAR -->
    <div class="sidebar">
        <div class="sidebar-brand">
            <div class="drop"><i class="bi bi-droplet-fill"></i></div>
            <div>
                <h5>BLOOD BANK</h5>
                <small>DONOR PANEL</small>
            </div>
        </div>
        <ul class="sidebar-menu">
            <li><a href="DonorDashboard.aspx" class="active"><i class="bi bi-grid-fill"></i> Dashboard</a></li>
            <li><a href="RegisterAsDonor.aspx"><i class="bi bi-person-plus"></i> Registration Donor</a></li>
            <li><a href="DonorUpdateProfile.aspx"><i class="bi bi-person"></i> Donar Update Profile</a></li>
            <li><a href="DonateBlood.aspx"><i class="bi bi-droplet-half"></i> Donate Blood</a></li>
            <li><a href="DonorHistory.aspx"><i class="bi bi-clock-history"></i> View Donation History</a></li>
            <li><a href="DonorEligibility.aspx"><i class="bi bi-calendar-check"></i> View Donation Eligibility</a></li>
            <li><a href="DonorNotifications.aspx"><i class="bi bi-bell"></i> Donation Notifications</a></li>
            <li><a href="Login.aspx"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
        </ul>
    </div>

    <!-- MAIN -->
    <div class="main-content">

        <div class="topbar">
            <h3>Dashboard</h3>
            <div class="profile-box">
                <img src="https://i.pravatar.cc/100?img=47" alt="Donor" />
                <span>Donor</span>
                <i class="bi bi-chevron-down"></i>
            </div>
        </div>

        <!-- STAT CARDS -->
        <div class="stats-row">
            <div class="stat-card">
                <div class="stat-icon icon-red"><i class="bi bi-droplet-fill"></i></div>
                <div>
                    <h4>B+</h4>
                    <span class="label">Blood Group</span>
                    <a href="DonorUpdateProfile.aspx" class="link" style="color:#e11d48;">View Profile</a>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon icon-blue"><i class="bi bi-droplet"></i></div>
                <div>
                    <h4>3</h4>
                    <span class="label">Total Donations</span>
                    <a href="DonorHistory.aspx" class="link" style="color:#2563eb;">View History</a>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon icon-green"><i class="bi bi-check2-circle"></i></div>
                <div>
                    <h4>Eligible</h4>
                    <span class="label">You can donate</span>
                    <a href="DonorEligibility.aspx" class="link" style="color:#16a34a;">View Eligibility</a>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon icon-orange"><i class="bi bi-bell-fill"></i></div>
                <div>
                    <h4>2</h4>
                    <span class="label">New Notifications</span>
                    <a href="DonorNotifications.aspx" class="link" style="color:#d97706;">View All</a>
                </div>
            </div>
        </div>

        <!-- QUICK ACCESS -->
        <div class="qa-title">Quick Access</div>
        <div class="quick-access">
            <a href="RegisterAsDonor.aspx" class="qa-card"><i class="bi bi-person-plus" style="color:#0e4f4a;"></i>Registration Donor</a>
            <a href="DonorUpdateProfile.aspx" class="qa-card"><i class="bi bi-person" style="color:#7c3aed;"></i>Update Profile</a>
            <a href="DonateBlood.aspx" class="qa-card"><i class="bi bi-droplet-half" style="color:#e11d48;"></i>Donate Blood</a>
            <a href="DonorHistory.aspx" class="qa-card"><i class="bi bi-list-ul" style="color:#2563eb;"></i>View Donation History</a>
            <a href="DonorEligibility.aspx" class="qa-card"><i class="bi bi-calendar-check" style="color:#16a34a;"></i>View Donation Eligibility</a>
            <a href="DonorNotifications.aspx" class="qa-card"><i class="bi bi-bell" style="color:#d97706;"></i>Donation Notifications</a>
            <a href="Login.aspx" class="qa-card"><i class="bi bi-box-arrow-right" style="color:#e11d48;"></i>Logout</a>
        </div>

    </div>
</div>

</asp:Content>