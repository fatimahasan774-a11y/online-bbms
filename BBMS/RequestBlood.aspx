<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="RequestBlood.aspx.cs" Inherits="BBMS.RequestBlood" %>
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
            <li><a href="RequestBlood.aspx" class="active"><i class="bi bi-clipboard-plus"></i> Request Blood</a></li>
            <li><a href="RequestStatus.aspx"><i class="bi bi-list-task"></i> View Request Status</a></li>
            <li><a href="ContactBloodBank.aspx"><i class="bi bi-chat-dots"></i> Contact Blood Bank</a></li>
            <li><a href="Login.aspx"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
        </ul>
    </div>

    <!-- MAIN -->
    <div class="main-content">
        <div class="topbar">
            <h3>Request Blood</h3>
            <div class="profile-box">
                <img src="https://i.pravatar.cc/100?img=32" alt="User" />
                <span>User</span>
                <i class="bi bi-chevron-down"></i>
            </div>
        </div>

        <div style="background:#fff; border-radius:14px; padding:24px; box-shadow:0 3px 10px rgba(0,0,0,.05); max-width:600px;">

            <div style="margin-bottom:14px;">
                <label style="font-size:13px; font-weight:600; color:#6b7280;">Blood Group Needed</label><br />
                <asp:DropDownList ID="ddlGroup" runat="server" style="width:100%; padding:9px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;">
                    <asp:ListItem Text="A+" /><asp:ListItem Text="A-" />
                    <asp:ListItem Text="B+" /><asp:ListItem Text="B-" />
                    <asp:ListItem Text="AB+" /><asp:ListItem Text="AB-" />
                    <asp:ListItem Text="O+" /><asp:ListItem Text="O-" />
                </asp:DropDownList>
            </div>

            <div style="margin-bottom:14px;">
                <label style="font-size:13px; font-weight:600; color:#6b7280;">Units Needed</label><br />
                <asp:TextBox ID="txtUnits" runat="server" TextMode="Number" style="width:100%; padding:9px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;" />
            </div>

            <div style="margin-bottom:14px;">
                <label style="font-size:13px; font-weight:600; color:#6b7280;">Hospital / Location</label><br />
                <asp:TextBox ID="txtHospital" runat="server" style="width:100%; padding:9px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;" />
            </div>

            <div style="margin-bottom:14px;">
                <label style="font-size:13px; font-weight:600; color:#6b7280;">Urgency</label><br />
                <asp:DropDownList ID="ddlUrgency" runat="server" style="width:100%; padding:9px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;">
                    <asp:ListItem Text="Normal" />
                    <asp:ListItem Text="Urgent" />
                    <asp:ListItem Text="Emergency" />
                </asp:DropDownList>
            </div>

            <div style="margin-bottom:18px;">
                <label style="font-size:13px; font-weight:600; color:#6b7280;">Additional Notes</label><br />
                <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="3" style="width:100%; padding:9px; border:1px solid #e5e7eb; border-radius:8px; margin-top:5px;" />
            </div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit Request" OnClick="btnSubmit_Click"   style="background:#0e4f4a; color:#fff; border:none; padding:11px 22px; border-radius:8px; font-weight:600; cursor:pointer; width:100%;"  />


            <asp:Label ID="lblMsg" runat="server" style="display:block; margin-top:12px; font-weight:600;" />
        </div>
    </div>
</div>


</asp:Content>
