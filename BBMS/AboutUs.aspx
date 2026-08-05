<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="BBMS.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  

<div class="page-header">
    <div class="page-header-inner">
        <span class="eyebrow-light">About Us</span>
        <h1>Saving lives, one donation at a time</h1>
        <p>We connect donors, hospitals, and patients to make sure blood is always available when it matters most.</p>
    </div>
</div>

<div class="about-section">
    <div class="about-grid">
        <div class="about-image">
            <img src="https://images.unsplash.com/photo-1584515933487-779824d29309?w=800&q=80" alt="Blood bank team" />
        </div>
        <div class="about-text">
            <span class="eyebrow">Our Mission</span>
            <h2>Building a reliable blood supply for every community</h2>
            <p>Blood Bank Management System was founded to close the gap between willing donors and patients in urgent need. We combine technology with compassion to make donating, requesting, and managing blood simple and transparent.</p>
            <div class="about-points">
                <div class="about-point"><i class="bi bi-check-circle-fill"></i> Fast, verified blood requests</div>
                <div class="about-point"><i class="bi bi-check-circle-fill"></i> Real-time inventory tracking</div>
                <div class="about-point"><i class="bi bi-check-circle-fill"></i> A growing network of registered donors</div>
            </div>
        </div>
    </div>
</div>

<div class="about-stats-strip">
    <div class="about-stats-inner">
        <div><h3>2,450+</h3><span>Units Available</span></div>
        <div><h3>1,280+</h3><span>Registered Donors</span></div>
        <div><h3>980+</h3><span>Requests Fulfilled</span></div>
        <div><h3>3,500+</h3><span>Lives Saved</span></div>
    </div>
</div>

<div class="values-section">
    <div class="role-heading">
        <span class="eyebrow">What drives us</span>
        <h2>Our Core Values</h2>
    </div>
    <div class="values-grid">
        <div class="value-card">
            <div class="value-icon" style="background:#fde0e0; color:#e11d2e;"><i class="bi bi-heart-fill"></i></div>
            <h3>Compassion</h3>
            <p>Every donor and patient is treated with dignity, care, and respect.</p>
        </div>
        <div class="value-card">
            <div class="value-icon" style="background:#dceaff; color:#2563eb;"><i class="bi bi-shield-check"></i></div>
            <h3>Safety</h3>
            <p>Strict screening and handling procedures protect every donation.</p>
        </div>
        <div class="value-card">
            <div class="value-icon" style="background:#dcf5e3; color:#16a34a;"><i class="bi bi-lightning-charge-fill"></i></div>
            <h3>Speed</h3>
            <p>We move quickly when every minute counts for a patient in need.</p>
        </div>
        <div class="value-card">
            <div class="value-icon" style="background:#ece0fb; color:#7c3aed;"><i class="bi bi-people-fill"></i></div>
            <h3>Community</h3>
            <p>A growing network of donors who show up for their neighbors.</p>
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
