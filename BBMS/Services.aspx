<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="BBMS.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
<div class="page-header">
    <div class="page-header-inner">
        <span class="eyebrow-light">Our Services</span>
        <h1>Everything you need, all in one place</h1>
        <p>From urgent blood requests to donor management, we make every step simple and fast.</p>
    </div>
</div>

<div class="values-section">
    <div class="values-grid">

        <a href="RequestBlood.aspx" class="service-card">
            <div class="value-icon" style="background:#fde0e0; color:#e11d2e;"><i class="bi bi-clipboard-plus-fill"></i></div>
            <h3>Blood Requests</h3>
            <p>Submit a request for the blood group you need and track its status in real time.</p>
        </a>

        <a href="SearchBloodGroup.aspx" class="service-card">
            <div class="value-icon" style="background:#dceaff; color:#2563eb;"><i class="bi bi-search"></i></div>
            <h3>Find Blood</h3>
            <p>Search available blood groups across partner blood banks near you.</p>
        </a>

        <a href="RegisterAsDonor.aspx" class="service-card">
            <div class="value-icon" style="background:#dcf5e3; color:#16a34a;"><i class="bi bi-heart-pulse-fill"></i></div>
            <h3>Become a Donor</h3>
            <p>Register as a donor and get notified when your blood group is urgently needed.</p>
        </a>

        <a href="DonateBlood.aspx" class="service-card">
            <div class="value-icon" style="background:#ece0fb; color:#7c3aed;"><i class="bi bi-droplet-half"></i></div>
            <h3>Donation Booking</h3>
            <p>Book a donation appointment at a center and time that suits you.</p>
        </a>

        <a href="DonorEligibility.aspx" class="service-card">
            <div class="value-icon" style="background:#fdf1d0; color:#d97706;"><i class="bi bi-calendar-check-fill"></i></div>
            <h3>Eligibility Check</h3>
            <p>Quickly check whether you currently qualify to donate blood.</p>
        </a>

        <a href="ContactBloodBank.aspx" class="service-card">
            <div class="value-icon" style="background:#fde0e0; color:#e11d2e;"><i class="bi bi-chat-dots-fill"></i></div>
            <h3>24/7 Support</h3>
            <p>Reach our team any time for urgent blood needs or general questions.</p>
        </a>

    </div>
</div>

<div class="about-section" style="background:#f9fafb;">
    <div class="role-heading">
        <span class="eyebrow">Simple process</span>
        <h2>How It Works</h2>
    </div>
    <div class="values-grid" style="margin-top:10px;">
        <div class="value-card">
            <div class="value-icon" style="background:#fde0e0; color:#e11d2e; font-weight:800; font-family:'Poppins',sans-serif;">1</div>
            <h3>Register</h3>
            <p>Create an account as a user or donor in under a minute.</p>
        </div>
        <div class="value-card">
            <div class="value-icon" style="background:#dceaff; color:#2563eb; font-weight:800; font-family:'Poppins',sans-serif;">2</div>
            <h3>Request or Donate</h3>
            <p>Submit a blood request, or book your next donation.</p>
        </div>
        <div class="value-card">
            <div class="value-icon" style="background:#dcf5e3; color:#16a34a; font-weight:800; font-family:'Poppins',sans-serif;">3</div>
            <h3>Get Matched</h3>
            <p>Our team verifies and connects you with the right blood bank.</p>
        </div>
        <div class="value-card">
            <div class="value-icon" style="background:#ece0fb; color:#7c3aed; font-weight:800; font-family:'Poppins',sans-serif;">4</div>
            <h3>Track Progress</h3>
            <p>Follow your request or donation status from your dashboard.</p>
        </div>
    </div>
</div>

<div class="emergency-bar">
    <div class="emergency-inner">
        <div class="emergency-item">
            <div class="emergency-icon"><i class="bi bi-telephone-fill"></i></div>
            <div><strong>Need Blood Urgently?</strong><p>We're here to help you. Contact us now.</p></div>
        </div>
        <div class="emergency-divider"></div>
        <div class="emergency-item">
            <div><strong style="font-size:17px;">+252 61 2345678</strong><p>Available 24/7</p></div>
        </div>
        <a href="ContactBloodBank.aspx" class="btn-emergency"><i class="bi bi-send-fill"></i> Contact Us</a>
    </div>
</div>

</asp:Content>
