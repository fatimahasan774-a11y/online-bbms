<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="BloodInventory.aspx.cs" Inherits="BBMS.BloodInventory" %>
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
            <li><a href="DonorManagement.aspx"><i class="bi bi-person-badge"></i> Manage Donors</a></li>
            <li><a href="AddBloodGroup.aspx"><i class="bi bi-droplet"></i> Add Blood Group</a></li>
            <li><a href="BloodInventory.aspx" class="active"><i class="bi bi-briefcase"></i> Manage Blood Stock</a></li>
            <li><a href="BloodRequests.aspx"><i class="bi bi-clipboard-data"></i> View Blood Requests</a></li>
            <li><a href="ApproveRejectRequests.aspx"><i class="bi bi-check2-square"></i> Approve/Reject Requests</a></li>
            <li><a href="ContactMessages.aspx"><i class="bi bi-chat-dots"></i> View Contact Messages</a></li>
            <li><a href="Reports.aspx"><i class="bi bi-bar-chart"></i> Generate Reports</a></li>
            <li><a href="SearchRecords.aspx"><i class="bi bi-search"></i> Search Records</a></li>
            <li><a href="Login.aspx"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
        </ul>
    </div>

    <!-- MAIN -->
    <div class="main-content">
        <div class="topbar">
            <h3>Manage Blood Stock</h3>
            <div class="profile-box">
                <img src="https://i.pravatar.cc/100?img=12" alt="Admin" />
                <span>Admin</span>
                <i class="bi bi-chevron-down"></i>
            </div>
        </div>

        <!-- STOCK CARDS -->
        <div class="stats-row">
            <asp:Repeater ID="rptStock" runat="server">
                <ItemTemplate>
                    <div class="stat-card">
                        <div class="stat-icon icon-red"><i class="bi bi-droplet-fill"></i></div>
                        <div>
                            <h4><%# Eval("Units") %></h4>
                            <span class="label"><%# Eval("Group") %> units</span>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <div style="background:#fff; border-radius:14px; padding:20px; box-shadow:0 3px 10px rgba(0,0,0,.05);">
            <div style="display:flex; justify-content:space-between; align-items:center; margin-bottom:18px;">
                <h5 style="margin:0; font-weight:700; color:#172a4f;">Stock Details</h5>
                <button style="background:#172a4f; color:#fff; border:none; padding:9px 18px; border-radius:8px; font-weight:600; cursor:pointer;">
                    <i class="bi bi-plus-lg"></i> Update Stock
                </button>
            </div>

            <table style="width:100%; border-collapse:collapse; font-size:14px;">
                <thead>
                    <tr style="text-align:left; color:#6b7280; border-bottom:1px solid #eef0f4;">
                        <th style="padding:10px;">Blood Group</th>
                        <th style="padding:10px;">Units Available</th>
                        <th style="padding:10px;">Status</th>
                        <th style="padding:10px;">Last Updated</th>
                        <th style="padding:10px;">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rptStockTable" runat="server">
                        <ItemTemplate>
                            <tr style="border-bottom:1px solid #f4f5f7;">
                                <td style="padding:12px;">
                                    <span style="background:#fde0e0; color:#e11d48; padding:4px 10px; border-radius:20px; font-weight:700;"><%# Eval("Group") %></span>
                                </td>
                                <td style="padding:12px; font-weight:600;"><%# Eval("Units") %></td>
                                <td style="padding:12px;">
                                    <span style='background:<%# (int)Eval("Units") < 20 ? "#fde0e0" : "#dcf5e3" %>; color:<%# (int)Eval("Units") < 20 ? "#e11d48" : "#16a34a" %>; padding:4px 10px; border-radius:20px; font-size:12px; font-weight:600;'>
                                        <%# (int)Eval("Units") < 20 ? "Low Stock" : "Sufficient" %>
                                    </span>
                                </td>
                                <td style="padding:12px; color:#6b7280;"><%# Eval("Updated") %></td>
                                <td style="padding:12px;">
                                    <a href="#" style="color:#2563eb;"><i class="bi bi-pencil-square"></i></a>
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

