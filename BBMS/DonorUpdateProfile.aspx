<%@ Page Title="" Language="C#" MasterPageFile="~/Donar.Master" AutoEventWireup="true" CodeBehind="DonorUpdateProfile.aspx.cs" Inherits="BBMS.DonorUpdateProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
            <li><a href="DonorUpdateProfile.aspx" class="active"><i class="bi bi-person"></i> Update Profile</a></li>
            <li><a href="DonateBlood.aspx"><i class="bi bi-droplet-half"></i> Donate Blood</a></li>
            <li><a href="DonorHistory.aspx"><i class="bi bi-clock-history"></i> View Donation History</a></li>
            <li><a href="DonorEligibility.aspx"><i class="bi bi-calendar-check"></i> View Donation Eligibility</a></li>
            <li><a href="DonorNotifications.aspx"><i class="bi bi-bell"></i> Donation Notifications</a></li>
            <li><a href="Login.aspx"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
        </ul>
    </div>

    <div class="main-content">
        <div class="topbar">
            <h3>Update Profile</h3>
            <div class="profile-box"><img src="https://i.pravatar.cc/100?img=47" alt="Donor" /><span>Donor</span><i class="bi bi-chevron-down"></i></div>
        </div>

        <div style="background:#fff; border-radius:14px; padding:24px; box-shadow:0 3px 10px rgba(0,0,0,.05); max-width:560px;">
            <div style="display:flex; align-items:center; gap:16px; margin-bottom:22px;">
                <img src="https://i.pravatar.cc/100?img=47" style="width:70px; height:70px; border-radius:50%; object-fit:cover;" />
                <div>
                    <div style="font-weight:700; font-size:16px; color:#3a1f5d;">Update your info</div>
                    <div style="color:#6b7280; font-size:13px;">Xogtaadu waxay caawinaysaa Blood Bank-ka in ay kula soo xiriiraan</div>
                </div>
            </div>

            <div style="margin-bottom:14px;">
                <label style="font-size:13px; font-weight:600; color:#6b7280;">Full Name</label><br />
                <asp:TextBox ID="txtName" runat="server" Text="Donor Name" style="width:100%; padding:9px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;" />
            </div>
            <div style="margin-bottom:14px;">
                <label style="font-size:13px; font-weight:600; color:#6b7280;">Email</label><br />
                <asp:TextBox ID="txtEmail" runat="server" Text="donor@example.com" style="width:100%; padding:9px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;" />
            </div>
            <div style="margin-bottom:14px;">
                <label style="font-size:13px; font-weight:600; color:#6b7280;">Phone</label><br />
                <asp:TextBox ID="txtPhone" runat="server" Text="06XXXXXXXX" style="width:100%; padding:9px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;" />
            </div>
            <div style="margin-bottom:18px;">
                <label style="font-size:13px; font-weight:600; color:#6b7280;">Blood Group</label><br />
                <asp:DropDownList ID="ddlBloodGroup" runat="server" style="width:100%; padding:9px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;">
                    <asp:ListItem Text="A+" /><asp:ListItem Text="A-" />
                    <asp:ListItem Text="B+" /><asp:ListItem Text="B-" />
                    <asp:ListItem Text="AB+" /><asp:ListItem Text="AB-" />
                    <asp:ListItem Text="O+" /><asp:ListItem Text="O-" />
                </asp:DropDownList>
            </div>

            <asp:Button ID="btnUpdate" runat="server" Text="Save Changes" OnClick="btnUpdate_Click"
                style="background:#3a1f5d; color:#fff; border:none; padding:11px 22px; border-radius:8px; font-weight:600; cursor:pointer; width:100%;" />
            <asp:Label ID="lblMsg" runat="server" style="display:block; margin-top:12px; font-weight:600;" />
        </div>
    </div>
</div>

</asp:Content>

