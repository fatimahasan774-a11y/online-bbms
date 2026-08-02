<%@ Page Title="" Language="C#" MasterPageFile="~/Donar.Master" AutoEventWireup="true" CodeBehind="DonateBlood.aspx.cs" Inherits="BBMS.DonateBlood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">Donar Blood
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
            <li><a href="DonateBlood.aspx" class="active"><i class="bi bi-droplet-half"></i> Donate Blood</a></li>
            <li><a href="DonorHistory.aspx"><i class="bi bi-clock-history"></i> View Donation History</a></li>
            <li><a href="DonorEligibility.aspx"><i class="bi bi-calendar-check"></i> View Donation Eligibility</a></li>
            <li><a href="DonorNotifications.aspx"><i class="bi bi-bell"></i> Donation Notifications</a></li>
            <li><a href="Logout.aspx"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
        </ul>
    </div>

    <div class="main-content">
        <div class="topbar">
            <h3>Donate Blood</h3>
            <div class="profile-box"><img src="https://i.pravatar.cc/100?img=47" alt="Donor" /><span>Donor</span><i class="bi bi-chevron-down"></i></div>
        </div>

        <div style="background:#fff; border-radius:14px; padding:24px; box-shadow:0 3px 10px rgba(0,0,0,.05); max-width:600px;">

            <div style="display:flex; align-items:center; gap:14px; margin-bottom:20px; background:#f2ecfb; padding:14px 16px; border-radius:10px;">
                <i class="bi bi-droplet-half" style="font-size:26px; color:#3a1f5d;"></i>
                <div style="font-size:13.5px; color:#3a1f5d;">Choose a date and location to donate blood. The Blood Bank will contact you to confirm.</div>
            </div>

            <div style="margin-bottom:14px;">
                <label style="font-size:13px; font-weight:600; color:#6b7280;">Preferred Date</label><br />
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date" style="width:100%; padding:9px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;" />
            </div>

            <div style="margin-bottom:14px;">
                <label style="font-size:13px; font-weight:600; color:#6b7280;">Donation Center</label><br />
                <asp:DropDownList ID="ddlCenter" runat="server" style="width:100%; padding:9px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;">
                    <asp:ListItem Text="Central Blood Bank" />
                    <asp:ListItem Text="Banadir Hospital Bank" />
                    <asp:ListItem Text="Digfer Blood Center" />
                </asp:DropDownList>
            </div>

            <div style="margin-bottom:18px;">
                <label style="font-size:13px; font-weight:600; color:#6b7280;">Notes (optional)</label><br />
                <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="3" style="width:100%; padding:9px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;" />
            </div>

            <asp:Button ID="btnBook" runat="server" Text="Book Donation"  OnClick="btnBook_Click"
                style="background:#3a1f5d; color:#fff; border:none; padding:11px 22px; border-radius:8px; font-weight:600; cursor:pointer; width:100%;" />
            <asp:Label ID="lblMsg" runat="server" style="display:block; margin-top:12px; font-weight:600;" />
        </div>
    </div>
</div>


</asp:Content>
