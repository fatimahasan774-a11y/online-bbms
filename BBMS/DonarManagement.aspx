<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DonarManagement.aspx.cs" Inherits="BBMS.DonarManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
<div class="dash-wrapper theme-admin">

    <!-- SIDEBAR -->
    <div class="sidebar">
        <div class="sidebar-brand">
            <div class="drop"><i class="bi bi-droplet-fill"></i></div>
            <div>
                <h5>BLOOD BANK</h5>
                <small>ADMIN PANEL</small>
            </div>
        </div>
        <ul class="sidebar-menu">
            <li><a href="AdminDashboard.aspx"><i class="bi bi-grid-fill"></i> Dashboard</a></li>
            <li><a href="ManageUsers.aspx"><i class="bi bi-people"></i> Manage Users</a></li>
            <li><a href="DonorManagement.aspx" class="active"><i class="bi bi-person-badge"></i> Manage Donors</a></li>
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

    <!-- MAIN -->
    <div class="main-content">
        <div class="topbar">
            <h3>Manage Donors</h3>
            <div class="profile-box">
                <img src="https://i.pravatar.cc/100?img=12" alt="Admin" />
                <span>Admin</span>
                <i class="bi bi-chevron-down"></i>
            </div>
        </div>

        <div style="background:#fff; border-radius:14px; padding:20px; box-shadow:0 3px 10px rgba(0,0,0,.05);">

            <div style="display:flex; justify-content:space-between; align-items:center; margin-bottom:18px;">
                <input type="text" placeholder="Search donors..." style="padding:9px 14px; border:1px solid #e5e7eb; border-radius:8px; width:260px;" />
                <a href="AddDonor.aspx" style="background:#172a4f; color:#fff; border:none; padding:9px 18px; border-radius:8px; font-weight:600; text-decoration:none;">
                    <i class="bi bi-plus-lg"></i> Add New Donor
                </a>
            </div>

            <table style="width:100%; border-collapse:collapse; font-size:14px;">
                <thead>
                    <tr style="text-align:left; color:#6b7280; border-bottom:1px solid #eef0f4;">
                        <th style="padding:10px;">Donor ID</th>
                        <th style="padding:10px;">Full Name</th>
                        <th style="padding:10px;">Blood Group</th>
                        <th style="padding:10px;">Phone</th>
                        <th style="padding:10px;">City</th>
                        <th style="padding:10px;">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rptDonors" runat="server">
                        <ItemTemplate>
                            <tr style="border-bottom:1px solid #f4f5f7;">
                                <td style="padding:12px; font-weight:600; color:#172a4f;">#<%# Eval("DonorId") %></td>
                                <td style="padding:12px;">
                                    <div style="font-weight:600; color:#1b2333;"><%# Eval("FullName") %></div>
                                    <div style="font-size:12px; color:#9ca3af;"><%# Eval("Email") %></div>
                                </td>
                                <td style="padding:12px;">
                                    <span class="badge badge-group"><%# Eval("BloodGroup") %></span>
                                </td>
                                <td style="padding:12px;"><%# Eval("Phone") %></td>
                                <td style="padding:12px;"><%# Eval("City") %></td>
                                <td style="padding:12px;">
                                    <a href="#" style="color:#2563eb; margin-right:10px;"><i class="bi bi-pencil-square"></i></a>
                                    <a href="#" style="color:#e11d48;"><i class="bi bi-trash"></i></a>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>

        </div>
    </div>
</div>

</asp:Content>

