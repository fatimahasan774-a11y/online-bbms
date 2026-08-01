<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="BBMS.Reports" %>
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
            <li><a href="Reports.aspx" class="active"><i class="bi bi-bar-chart"></i> Generate Reports</a></li>
            <li><a href="SearchRecords.aspx"><i class="bi bi-search"></i> Search Records</a></li>
            <li><a href="Login.aspx"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
        </ul>
    </div>

    <!-- MAIN -->
    <div class="main-content">
        <div class="topbar">
            <h3>Generate Reports</h3>
            <div class="profile-box">
                <img src="https://i.pravatar.cc/100?img=12" alt="Admin" />
                <span>Admin</span>
                <i class="bi bi-chevron-down"></i>
            </div>
        </div>

        <!-- FILTER BAR -->
        <div style="background:#fff; border-radius:14px; padding:20px; box-shadow:0 3px 10px rgba(0,0,0,.05); margin-bottom:20px; display:flex; gap:14px; align-items:flex-end; flex-wrap:wrap;">
            <div>
                <label style="font-size:13px; font-weight:600; color:#6b7280; display:block; margin-bottom:5px;">Report Type</label>
                <asp:DropDownList ID="ddlReportType" runat="server" style="padding:9px; border:1px solid #e5e7eb; border-radius:8px; min-width:200px;">
                    <asp:ListItem Text="Donations Summary" Value="donations" />
                    <asp:ListItem Text="Blood Stock Summary" Value="stock" />
                    <asp:ListItem Text="Requests Summary" Value="requests" />
                </asp:DropDownList>
            </div>
            <div>
                <label style="font-size:13px; font-weight:600; color:#6b7280; display:block; margin-bottom:5px;">From</label>
                <asp:TextBox ID="txtFrom" runat="server" TextMode="Date" style="padding:9px; border:1px solid #e5e7eb; border-radius:8px;" />
            </div>
            <div>
                <label style="font-size:13px; font-weight:600; color:#6b7280; display:block; margin-bottom:5px;">To</label>
                <asp:TextBox ID="txtTo" runat="server" TextMode="Date" style="padding:9px; border:1px solid #e5e7eb; border-radius:8px;" />
            </div>
            <asp:Button ID="btnGenerate" runat="server" Text="Generate" OnClick="btnGenerate_Click"
                style="background:#172a4f; color:#fff; border:none; padding:10px 22px; border-radius:8px; font-weight:600; cursor:pointer;" />
        </div>

        <!-- SUMMARY CARDS -->
        <div class="stats-row">
            <div class="stat-card">
                <div class="stat-icon icon-red"><i class="bi bi-droplet-fill"></i></div>
                <div><h4>250</h4><span class="label">Total Units Donated</span></div>
            </div>
            <div class="stat-card">
                <div class="stat-icon icon-green"><i class="bi bi-person-check-fill"></i></div>
                <div><h4>85</h4><span class="label">Active Donors</span></div>
            </div>
            <div class="stat-card">
                <div class="stat-icon icon-orange"><i class="bi bi-clipboard-data-fill"></i></div>
                <div><h4>18</h4><span class="label">Total Requests</span></div>
            </div>
            <div class="stat-card">
                <div class="stat-icon icon-purple"><i class="bi bi-bar-chart-fill"></i></div>
                <div><h4>72%</h4><span class="label">Fulfilment Rate</span></div>
            </div>
        </div>

        <!-- TABLE -->
        <div style="background:#fff; border-radius:14px; padding:20px; box-shadow:0 3px 10px rgba(0,0,0,.05);">
            <div style="display:flex; justify-content:space-between; align-items:center; margin-bottom:18px;">
                <h5 style="margin:0; font-weight:700; color:#172a4f;">Monthly Breakdown</h5>
                <button style="background:#16a34a; color:#fff; border:none; padding:9px 18px; border-radius:8px; font-weight:600; cursor:pointer;">
                    <i class="bi bi-download"></i> Export PDF
                </button>
            </div>
            <table style="width:100%; border-collapse:collapse; font-size:14px;">
                <thead>
                    <tr style="text-align:left; color:#6b7280; border-bottom:1px solid #eef0f4;">
                        <th style="padding:10px;">Month</th>
                        <th style="padding:10px;">Donations</th>
                        <th style="padding:10px;">Requests</th>
                        <th style="padding:10px;">Units Used</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rptReport" runat="server">
                        <ItemTemplate>
                            <tr style="border-bottom:1px solid #f4f5f7;">
                                <td style="padding:12px; font-weight:600;"><%# Eval("Month") %></td>
                                <td style="padding:12px;"><%# Eval("Donations") %></td>
                                <td style="padding:12px;"><%# Eval("Requests") %></td>
                                <td style="padding:12px;"><%# Eval("UnitsUsed") %></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>
    </div>
</div>


</asp:Content>
