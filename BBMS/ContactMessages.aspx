<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ContactMessages.aspx.cs" Inherits="BBMS.ContactMessages" %>
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
            <li><a href="BloodInventory.aspx"><i class="bi bi-briefcase"></i> Manage Blood Stock</a></li>
            <li><a href="BloodRequests.aspx"><i class="bi bi-clipboard-data"></i> View Blood Requests</a></li>
            <li><a href="ApproveRejectRequests.aspx"><i class="bi bi-check2-square"></i> Approve/Reject Requests</a></li>
            <li><a href="ContactMessages.aspx" class="active"><i class="bi bi-chat-dots"></i> View Contact Messages</a></li>
            <li><a href="Reports.aspx"><i class="bi bi-bar-chart"></i> Generate Reports</a></li>
            <li><a href="SearchRecords.aspx"><i class="bi bi-search"></i> Search Records</a></li>
            <li><a href="Login.aspx"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
        </ul>
    </div>

    <!-- MAIN -->
    <div class="main-content">
        <div class="topbar">
            <h3>Contact Messages</h3>
            <div class="profile-box">
                <img src="https://i.pravatar.cc/100?img=12" alt="Admin" />
                <span>Admin</span>
                <i class="bi bi-chevron-down"></i>
            </div>
        </div>

        <div style="display:flex; flex-direction:column; gap:14px;">
            <asp:Repeater ID="rptMessages" runat="server">
                <ItemTemplate>
                    <div style="background:#fff; border-radius:14px; padding:18px 20px; box-shadow:0 3px 10px rgba(0,0,0,.05); display:flex; justify-content:space-between; align-items:flex-start;">
                        <div>
                            <div style="display:flex; align-items:center; gap:10px; margin-bottom:6px;">
                                <strong style="color:#172a4f;"><%# Eval("Name") %></strong>
                                <span style="color:#9ca3af; font-size:12px;"><%# Eval("Email") %></span>
                            </div>
                            <p style="margin:0; color:#4b5563; font-size:14px;"><%# Eval("Message") %></p>
                        </div>
                        <span style="color:#9ca3af; font-size:12px; white-space:nowrap; margin-left:14px;"><%# Eval("Date") %></span>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</div>

</asp:Content>
