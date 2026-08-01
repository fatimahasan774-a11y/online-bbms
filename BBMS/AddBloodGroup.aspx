<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddBloodGroup.aspx.cs" Inherits="BBMS.AddBloodGroup" %>
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
            <li><a href="AddBloodGroup.aspx" class="active"><i class="bi bi-droplet"></i> Add Blood Group</a></li>
            <li><a href="BloodInventory.aspx"><i class="bi bi-briefcase"></i> Manage Blood Stock</a></li>
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
            <h3>Add Blood Group</h3>
            <div class="profile-box">
                <img src="https://i.pravatar.cc/100?img=12" alt="Admin" />
                <span>Admin</span>
                <i class="bi bi-chevron-down"></i>
            </div>
        </div>

        <div style="display:flex; gap:20px; flex-wrap:wrap;">

            <!-- FORM -->
            <div style="background:#fff; border-radius:14px; padding:24px; box-shadow:0 3px 10px rgba(0,0,0,.05); flex:1; min-width:300px;">
                <h5 style="margin-top:0; font-weight:700; color:#172a4f;">New Blood Group</h5>

                <div style="margin-bottom:14px;">
                    <label style="font-size:13px; font-weight:600; color:#6b7280;">Blood Group</label><br />
                    <asp:DropDownList ID="ddlBloodGroup" runat="server" style="width:100%; padding:9px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;">
                        <asp:ListItem Text="A+" Value="A+" />
                        <asp:ListItem Text="A-" Value="A-" />
                        <asp:ListItem Text="B+" Value="B+" />
                        <asp:ListItem Text="B-" Value="B-" />
                        <asp:ListItem Text="AB+" Value="AB+" />
                        <asp:ListItem Text="AB-" Value="AB-" />
                        <asp:ListItem Text="O+" Value="O+" />
                        <asp:ListItem Text="O-" Value="O-" />
                    </asp:DropDownList>
                </div>

                <div style="margin-bottom:14px;">
                    <label style="font-size:13px; font-weight:600; color:#6b7280;">Initial Units</label><br />
                    <asp:TextBox ID="txtUnits" runat="server" TextMode="Number" style="width:100%; padding:9px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;" />
                </div>

                <asp:Button ID="btnSave" runat="server" Text="Save Blood Group" OnClick="btnSave_Click"
                    style="background:#172a4f; color:#fff; border:none; padding:11px 22px; border-radius:8px; font-weight:600; cursor:pointer; width:100%;" />

                <asp:Label ID="lblMessage" runat="server" style="display:block; margin-top:12px; font-weight:600;" />
            </div>

            <!-- EXISTING LIST -->
            <div style="background:#fff; border-radius:14px; padding:24px; box-shadow:0 3px 10px rgba(0,0,0,.05); flex:1.2; min-width:320px;">
                <h5 style="margin-top:0; font-weight:700; color:#172a4f;">Existing Blood Groups</h5>
                <asp:Repeater ID="rptGroups" runat="server">
                    <ItemTemplate>
                        <div style="display:flex; justify-content:space-between; align-items:center; padding:12px 0; border-bottom:1px solid #f4f5f7;">
                            <span style="background:#fde0e0; color:#e11d48; padding:5px 12px; border-radius:20px; font-weight:700;"><%# Eval("Group") %></span>
                            <span style="color:#6b7280; font-size:13px;"><%# Eval("Units") %> units</span>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

        </div>
    </div>
</div>


</asp:Content>
