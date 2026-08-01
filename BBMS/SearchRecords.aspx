<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SearchRecords.aspx.cs" Inherits="BBMS.SearchRecords" %>
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
            <li><a href="ContactMessages.aspx"><i class="bi bi-chat-dots"></i> View Contact Messages</a></li>
            <li><a href="Reports.aspx"><i class="bi bi-bar-chart"></i> Generate Reports</a></li>
            <li><a href="SearchRecords.aspx" class="active"><i class="bi bi-search"></i> Search Records</a></li>
            <li><a href="Login.aspx"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
        </ul>
    </div>

    <!-- MAIN -->
    <div class="main-content">
        <div class="topbar">
            <h3>Search Records</h3>
            <div class="profile-box">
                <img src="https://i.pravatar.cc/100?img=12" alt="Admin" />
                <span>Admin</span>
                <i class="bi bi-chevron-down"></i>
            </div>
        </div>

        <!-- SEARCH BAR -->
        <div style="background:#fff; border-radius:14px; padding:20px; box-shadow:0 3px 10px rgba(0,0,0,.05); margin-bottom:20px; display:flex; gap:14px; align-items:flex-end; flex-wrap:wrap;">
            <div style="flex:1; min-width:200px;">
                <label style="font-size:13px; font-weight:600; color:#6b7280; display:block; margin-bottom:5px;">Search (name, email, blood group...)</label>
                <asp:TextBox ID="txtSearch" runat="server" style="width:100%; padding:9px; border:1px solid #e5e7eb; border-radius:8px;" placeholder="Tusaale: Ahmed, A+, ..." />
            </div>
            <div>
                <label style="font-size:13px; font-weight:600; color:#6b7280; display:block; margin-bottom:5px;">Record Type</label>
                <asp:DropDownList ID="ddlType" runat="server" style="padding:9px; border:1px solid #e5e7eb; border-radius:8px;">
                    <asp:ListItem Text="All" Value="all" />
                    <asp:ListItem Text="Users" Value="users" />
                    <asp:ListItem Text="Donors" Value="donors" />
                    <asp:ListItem Text="Requests" Value="requests" />
                </asp:DropDownList>
            </div>
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click"
                style="background:#172a4f; color:#fff; border:none; padding:10px 22px; border-radius:8px; font-weight:600; cursor:pointer;" />
        </div>

        <!-- RESULTS -->
        <div style="background:#fff; border-radius:14px; padding:20px; box-shadow:0 3px 10px rgba(0,0,0,.05);">
            <table style="width:100%; border-collapse:collapse; font-size:14px;">
                <thead>
                    <tr style="text-align:left; color:#6b7280; border-bottom:1px solid #eef0f4;">
                        <th style="padding:10px;">#</th>
                        <th style="padding:10px;">Name</th>
                        <th style="padding:10px;">Type</th>
                        <th style="padding:10px;">Blood Group</th>
                        <th style="padding:10px;">Contact</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rptResults" runat="server">
                        <ItemTemplate>
                            <tr style="border-bottom:1px solid #f4f5f7;">
                                <td style="padding:12px;"><%# Container.ItemIndex + 1 %></td>
                                <td style="padding:12px; font-weight:600;"><%# Eval("Name") %></td>
                                <td style="padding:12px;"><%# Eval("Type") %></td>
                                <td style="padding:12px;">
                                    <span class="badge badge-group"><%# Eval("BloodGroup") %></span>
                                </td>
                                <td style="padding:12px; color:#6b7280;"><%# Eval("Contact") %></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>
    </div>
</div>


</asp:Content>
