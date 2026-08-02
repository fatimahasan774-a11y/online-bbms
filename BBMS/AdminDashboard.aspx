<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="BBMS.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="dash-wrapper theme-admin">

    <!-- ===== SIDEBAR ===== -->
    <div class="sidebar">
        <div class="sidebar-brand">
            <div class="drop"><i class="bi bi-droplet-fill"></i></div>
            <div>
                <h5>BLOOD BANK</h5>
                <small>ADMIN PANEL</small>
            </div>
        </div>
        <ul class="sidebar-menu">
            <li><a href="AdminDashboard.aspx" class="active"><i class="bi bi-grid-fill"></i> Dashboard</a></li>
            <li><a href="ManageUsers.aspx"><i class="bi bi-people"></i> Manage Users</a></li>
           <li><a href="DonorManagement.aspx"><i class="bi bi-person-badge"></i> Manage Donors</a></li>
            <li><a href="AddBloodGroup.aspx"><i class="bi bi-droplet"></i> Add Blood Group</a></li>
            <li><a href="BloodInventory.aspx"><i class="bi bi-briefcase"></i> Manage Blood Stock</a></li>
            <li><a href="BloodRequests.aspx"><i class="bi bi-clipboard-data"></i> View Blood Requests</a></li>
            <li><a href="ApproveRejectRequests.aspx"><i class="bi bi-check2-square"></i> Approve/Reject Requests</a></li>
            <li><a href="ContactMessages.aspx"><i class="bi bi-chat-dots"></i> View Contact Messages</a></li>
            <li><a href="Reports.aspx"><i class="bi bi-bar-chart"></i> Generate Reports</a></li>
            <li><a href="SearchRecords.aspx"><i class="bi bi-search"></i> Search Records</a></li>
            <li><a href="Logout.aspx"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
        </ul>
    </div>

    <!-- ===== MAIN CONTENT ===== -->
    <div class="main-content">

        <div class="topbar">
            <h3>Dashboard</h3>
            <div class="profile-box">
                <img src="https://i.pravatar.cc/100?img=12" alt="Admin" />
                <span>Admin</span>
                <i class="bi bi-chevron-down"></i>
            </div>
        </div>

        <!-- STAT CARDS -->
        <div class="stats-row">
            <div class="stat-card">
                <div class="stat-icon icon-blue"><i class="bi bi-people-fill"></i></div>
                <div>
                    <h4>120</h4>
                    <span class="label">Total Users</span>
                    <a href="ManageUsers.aspx" class="link" style="color:#2563eb;">View all</a>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon icon-green"><i class="bi bi-person-check-fill"></i></div>
                <div>
                    <h4>85</h4>
                    <span class="label">Total Donors</span>
                    <a href="DonorManagement.aspx" class="link" style="color:#16a34a;">View all</a>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon icon-red"><i class="bi bi-droplet-fill"></i></div>
                <div>
                    <h4>250</h4>
                    <span class="label">Units in Stock</span>
                    <a href="BloodInventory.aspx" class="link" style="color:#e11d48;">View details</a>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon icon-orange"><i class="bi bi-clipboard-data-fill"></i></div>
                <div>
                    <h4>18</h4>
                    <span class="label">Blood Requests</span>
                    <a href="BloodRequests.aspx" class="link" style="color:#d97706;">View all</a>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon icon-purple"><i class="bi bi-chat-dots-fill"></i></div>
                <div>
                    <h4>12</h4>
                    <span class="label">Contact Messages</span>
                    <a href="ContactMessages.aspx" class="link" style="color:#7c3aed;">View all</a>
                </div>
            </div>
        </div>

        <!-- QUICK ACCESS -->
        <div class="qa-title">Quick Access</div>
        <div class="quick-access">
            <a href="ManageUsers.aspx" class="qa-card"><i class="bi bi-people" style="color:#2563eb;"></i>Manage Users</a>
            <a href="DonorManagement.aspx" class="qa-card"><i class="bi bi-person-badge" style="color:#16a34a;"></i>Manage Donors</a>
            <a href="AddBloodGroup.aspx" class="qa-card"><i class="bi bi-droplet-half" style="color:#e11d48;"></i>Add Blood Group</a>
            <a href="BloodInventory.aspx" class="qa-card"><i class="bi bi-briefcase" style="color:#d97706;"></i>Manage Blood Stock</a>
            <a href="BloodRequests.aspx" class="qa-card"><i class="bi bi-file-earmark-text" style="color:#2563eb;"></i>View Blood Requests</a>
            <a href="ApproveRejectRequests.aspx" class="qa-card"><i class="bi bi-check2-circle" style="color:#16a34a;"></i>Approve/Reject Requests</a>
            <a href="ContactMessages.aspx" class="qa-card"><i class="bi bi-chat-dots" style="color:#7c3aed;"></i>View Contact Messages</a>
            <a href="Reports.aspx" class="qa-card"><i class="bi bi-bar-chart" style="color:#d97706;"></i>Generate Reports</a>
            <a href="SearchRecords.aspx" class="qa-card"><i class="bi bi-search" style="color:#2563eb;"></i>Search Records</a>
            <a href="Login.aspx" class="qa-card"><i class="bi bi-box-arrow-right" style="color:#e11d48;"></i>Logout</a>
        </div>

    </div>
</div>


</asp:Content>
