<%@ Page Title="" Language="C#" MasterPageFile="~/Donar.Master" AutoEventWireup="true" CodeBehind="DonorHistory.aspx.cs" Inherits="BBMS.DonorHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">Donar History
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

   

<div class="dash-wrapper theme-donor">
    <div class="sidebar">
        <div class="sidebar-brand">
            <div class="drop"><i class="bi bi-droplet-fill"></i></div>
            <div><h5>BLOOD BANK</h5><small>DONOR PANEL</small></div>
        </div>
        <ul class="sidebar-menu">
            <li><a href="DonorDashboard.aspx"><i class="bi bi-grid-fill"></i> Dashboard</a></li>
            <li><a href="DonorUpdateProfile.aspx"><i class="bi bi-person"></i> Update Profile</a></li>
            <li><a href="DonateBlood.aspx"><i class="bi bi-droplet-half"></i> Donate Blood</a></li>
            <li><a href="DonorHistory.aspx" class="active"><i class="bi bi-clock-history"></i> View Donation History</a></li>
            <li><a href="DonorEligibility.aspx"><i class="bi bi-calendar-check"></i> View Donation Eligibility</a></li>
            <li><a href="DonorNotifications.aspx"><i class="bi bi-bell"></i> Donation Notifications</a></li>
            <li><a href="Logout.aspx"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
        </ul>
    </div>

    <div class="main-content">
        <div class="topbar">
            <h3>View Donation History</h3>
            <div class="profile-box"><img src="https://i.pravatar.cc/100?img=47" alt="Donor" /><span>Donor</span><i class="bi bi-chevron-down"></i></div>
        </div>

        <div style="background:#fff; border-radius:14px; padding:20px; box-shadow:0 3px 10px rgba(0,0,0,.05);">
            <table style="width:100%; border-collapse:collapse; font-size:14px;">
                <thead>
                    <tr style="text-align:left; color:#6b7280; border-bottom:1px solid #eef0f4;">
                        <th style="padding:10px;">#</th>
                        <th style="padding:10px;">Date</th>
                        <th style="padding:10px;">Center</th>
                        <th style="padding:10px;">Units Given</th>
                        <th style="padding:10px;">Status</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rptHistory" runat="server">
                        <ItemTemplate>
                            <tr style="border-bottom:1px solid #f4f5f7;">
                                <td style="padding:12px;"><%# Container.ItemIndex + 1 %></td>
                                <td style="padding:12px; color:#6b7280;"><%# Eval("Date") %></td>
                                <td style="padding:12px; font-weight:600;"><%# Eval("Center") %></td>
                                <td style="padding:12px;"><%# Eval("Units") %></td>
                                <td style="padding:12px;">
                                    <span class="badge badge-approved"><%# Eval("Status") %></span>
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
