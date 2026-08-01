<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="SearchBloodGroup.aspx.cs" Inherits="BBMS.SearchBloodGroup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   

<div class="dash-wrapper theme-user">

    <!-- SIDEBAR -->
    <div class="sidebar">
        <div class="sidebar-brand">
            <div class="drop"><i class="bi bi-droplet-fill"></i></div>
            <div>
                <h5>BLOOD BANK</h5>
                <small>USER PANEL</small>
            </div>
        </div>
        <ul class="sidebar-menu">
            <li><a href="PatientDashboard.aspx"><i class="bi bi-grid-fill"></i> Dashboard</a></li>
            <li><a href="UpdateProfile.aspx"><i class="bi bi-person"></i> Update Profile</a></li>
            <li><a href="RegisterAsDonor.aspx"><i class="bi bi-heart"></i> Register as Donor</a></li>
            <li><a href="SearchBloodGroup.aspx" class="active"><i class="bi bi-search"></i> Search Blood Group</a></li>
            <li><a href="RequestBlood.aspx"><i class="bi bi-clipboard-plus"></i> Request Blood</a></li>
            <li><a href="RequestStatus.aspx"><i class="bi bi-list-task"></i> View Request Status</a></li>
            <li><a href="ContactBloodBank.aspx"><i class="bi bi-chat-dots"></i> Contact Blood Bank</a></li>
            <li><a href="Login.aspx"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
        </ul>
    </div>

    <!-- MAIN -->
    <div class="main-content">
        <div class="topbar">
            <h3>Search Blood Group</h3>
            <div class="profile-box">
                <img src="https://i.pravatar.cc/100?img=32" alt="User" />
                <span>User</span>
                <i class="bi bi-chevron-down"></i>
            </div>
        </div>

        <div style="background:#fff; border-radius:14px; padding:20px; box-shadow:0 3px 10px rgba(0,0,0,.05); margin-bottom:20px; display:flex; gap:14px; align-items:flex-end;">
            <div>
                <label style="font-size:13px; font-weight:600; color:#6b7280; display:block; margin-bottom:5px;">Blood Group</label>
                <asp:DropDownList ID="ddlGroup" runat="server" style="padding:9px; border:1px solid #e5e7eb; border-radius:8px; min-width:150px;">
                    <asp:ListItem Text="A+" /><asp:ListItem Text="A-" />
                    <asp:ListItem Text="B+" /><asp:ListItem Text="B-" />
                    <asp:ListItem Text="AB+" /><asp:ListItem Text="AB-" />
                    <asp:ListItem Text="O+" /><asp:ListItem Text="O-" />
                </asp:DropDownList>
            </div>
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click"
                style="background:#0e4f4a; color:#fff; border:none; padding:10px 22px; border-radius:8px; font-weight:600; cursor:pointer;" />
        </div>

        <div style="background:#fff; border-radius:14px; padding:20px; box-shadow:0 3px 10px rgba(0,0,0,.05);">
            <table style="width:100%; border-collapse:collapse; font-size:14px;">
                <thead>
                    <tr style="text-align:left; color:#6b7280; border-bottom:1px solid #eef0f4;">
                        <th style="padding:10px;">Blood Bank</th>
                        <th style="padding:10px;">Blood Group</th>
                        <th style="padding:10px;">Units Available</th>
                        <th style="padding:10px;">Location</th>
                        <th style="padding:10px;">Contact</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rptResults" runat="server">
                        <ItemTemplate>
                            <tr style="border-bottom:1px solid #f4f5f7;">
                                <td style="padding:12px; font-weight:600;"><%# Eval("BankName") %></td>
                                <td style="padding:12px;">
                                    <span class="badge badge-group"><%# Eval("Group") %></span>
                                </td>
                                <td style="padding:12px;"><%# Eval("Units") %></td>
                                <td style="padding:12px; color:#6b7280;"><%# Eval("Location") %></td>
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
