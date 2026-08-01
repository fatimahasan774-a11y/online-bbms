<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="RequestStatus.aspx.cs" Inherits="BBMS.RequestStatus" %>
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
            <li><a href="SearchBloodGroup.aspx"><i class="bi bi-search"></i> Search Blood Group</a></li>
            <li><a href="RequestBlood.aspx"><i class="bi bi-clipboard-plus"></i> Request Blood</a></li>
            <li><a href="RequestStatus.aspx" class="active"><i class="bi bi-list-task"></i> View Request Status</a></li>
            <li><a href="ContactBloodBank.aspx"><i class="bi bi-chat-dots"></i> Contact Blood Bank</a></li>
            <li><a href="Login.aspx"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
        </ul>
    </div>

    <!-- MAIN -->
    <div class="main-content">
        <div class="topbar">
            <h3>View Request Status</h3>
            <div class="profile-box">
                <img src="https://i.pravatar.cc/100?img=32" alt="User" />
                <span>User</span>
                <i class="bi bi-chevron-down"></i>
            </div>
        </div>

        <div style="background:#fff; border-radius:14px; padding:20px; box-shadow:0 3px 10px rgba(0,0,0,.05);">
            <table style="width:100%; border-collapse:collapse; font-size:14px;">
                <thead>
                    <tr style="text-align:left; color:#6b7280; border-bottom:1px solid #eef0f4;">
                        <th style="padding:10px;">#</th>
                        <th style="padding:10px;">Blood Group</th>
                        <th style="padding:10px;">Units</th>
                        <th style="padding:10px;">Hospital</th>
                        <th style="padding:10px;">Date</th>
                        <th style="padding:10px;">Status</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rptStatus" runat="server">
                        <ItemTemplate>
                            <tr style="border-bottom:1px solid #f4f5f7;">
                                <td style="padding:12px;"><%# Container.ItemIndex + 1 %></td>
                                <td style="padding:12px;">
                                    <span class="badge badge-group"><%# Eval("Group") %></span>
                                </td>
                                <td style="padding:12px;"><%# Eval("Units") %></td>
                                <td style="padding:12px;"><%# Eval("Hospital") %></td>
                                <td style="padding:12px; color:#6b7280;"><%# Eval("Date") %></td>
                                <td style="padding:12px;">
                                    <span class='<%# GetStatusClass(Eval("Status").ToString()) %>'><%# Eval("Status") %></span>
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
