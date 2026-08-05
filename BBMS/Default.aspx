<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BBMS.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  

<!-- ===== HERO ===== -->
<div class="hero">
    <div class="hero-inner">
        <div class="hero-text">
            <h1>Donate Blood,<br /><span>Save Lives</span> <i class="bi bi-heart-fill" style="color:#e11d2e;"></i></h1>
            <p>Your one donation can save up to three lives.<br />Be a hero, donate blood today.</p>
            <div class="hero-buttons">
                <a href="RegisterAsDonor.aspx" class="btn-hero-red"><i class="bi bi-heart-fill"></i> Donate Blood</a>
                <a href="SearchBloodGroup.aspx" class="btn-hero-outline"><i class="bi bi-search"></i> Search Blood</a>
            </div>
        </div>
        <div class="hero-image">
            <img src="https://images.unsplash.com/photo-1615461066841-6116e61058f4?w=900&q=80" alt="Blood donation" />
        </div>
    </div>

    <!-- CARDS WITH IMAGES -->
    <div class="hero-stats">
        <div class="stat-box" style="padding:12px; display:flex; flex-direction:column; gap:10px;">
            <img src="images/image1.jpg" alt="Image 1" style="width:100%; height:95px; object-fit:cover; border-radius:8px;" />
            <div style="display:flex; align-items:center; gap:10px;">
                <div class="stat-icon" style="background:#fde0e0; color:#e11d2e; width:36px; height:36px; font-size:16px;"><i class="bi bi-droplet-fill"></i></div>
                <div><h4 style="font-size:17px; margin:0;">2,450+</h4><span style="font-size:11px;">Units Available</span></div>
            </div>
        </div>

        <div class="stat-box" style="padding:12px; display:flex; flex-direction:column; gap:10px;">
            <img src="images/image2.jpg" alt="Image 2" style="width:100%; height:95px; object-fit:cover; border-radius:8px;" />
            <div style="display:flex; align-items:center; gap:10px;">
                <div class="stat-icon" style="background:#fde0e0; color:#e11d2e; width:36px; height:36px; font-size:16px;"><i class="bi bi-people-fill"></i></div>
                <div><h4 style="font-size:17px; margin:0;">1,280+</h4><span style="font-size:11px;">Registered Donors</span></div>
            </div>
        </div>

        <div class="stat-box" style="padding:12px; display:flex; flex-direction:column; gap:10px;">
            <img src="images/image3.jpg" alt="Image 3" style="width:100%; height:95px; object-fit:cover; border-radius:8px;" />
            <div style="display:flex; align-items:center; gap:10px;">
                <div class="stat-icon" style="background:#fde0e0; color:#e11d2e; width:36px; height:36px; font-size:16px;"><i class="bi bi-clipboard-pulse"></i></div>
                <div><h4 style="font-size:17px; margin:0;">980+</h4><span style="font-size:11px;">Requests Fulfilled</span></div>
            </div>
        </div>

        <div class="stat-box" style="padding:12px; display:flex; flex-direction:column; gap:10px;">
            <img src="images/image4.jpg" alt="Image 4" style="width:100%; height:95px; object-fit:cover; border-radius:8px;" />
            <div style="display:flex; align-items:center; gap:10px;">
                <div class="stat-icon" style="background:#fde0e0; color:#e11d2e; width:36px; height:36px; font-size:16px;"><i class="bi bi-shield-fill-check"></i></div>
                <div><h4 style="font-size:17px; margin:0;">3,500+</h4><span style="font-size:11px;">Lives Saved</span></div>
            </div>
        </div>
    </div>
</div>

<!-- ===== WHY DONATE / WHO CAN DONATE ===== -->
<div class="info-section">
    <div class="info-grid">

        <div class="info-col">
            <h2>Why Donate Blood?</h2>
            <p>Blood donation is a simple act of kindness that has a profound impact on others.</p>

            <div class="reason-grid">
                <div class="reason-item">
                    <div class="reason-icon"><i class="bi bi-heart-fill"></i></div>
                    <div><strong>Save Lives</strong><p>Your blood can save the life of someone in need.</p></div>
                </div>
                <div class="reason-item">
                    <div class="reason-icon"><i class="bi bi-people-fill"></i></div>
                    <div><strong>Community Impact</strong><p>Help build a stronger and healthier community.</p></div>
                </div>
                <div class="reason-item">
                    <div class="reason-icon"><i class="bi bi-activity"></i></div>
                    <div><strong>Health Benefits</strong><p>Regular donation improves heart health.</p></div>
                </div>
                <div class="reason-item">
                    <div class="reason-icon"><i class="bi bi-shield-check"></i></div>
                    <div><strong>It's Safe</strong><p>Safe, quick and confidential blood donation process.</p></div>
                </div>
            </div>
        </div>

        <div class="info-col info-divider">
            <h2>Who Can Donate?</h2>
            <ul class="check-list">
                <li><i class="bi bi-check-circle-fill"></i> Age between 18 – 65 years</li>
                <li><i class="bi bi-check-circle-fill"></i> Weight more than 50 kg</li>
                <li><i class="bi bi-check-circle-fill"></i> Hemoglobin above 12.5 g/dl</li>
                <li><i class="bi bi-check-circle-fill"></i> In good general health</li>
                <li><i class="bi bi-check-circle-fill"></i> No serious illness in the last 6 months</li>
            </ul>
        </div>

        <div class="info-col info-illustration">
            <div class="blood-bag">
                <div class="bag-top"></div>
                <div class="bag-body">
                    <div class="bag-label">A+</div>
                    <div class="bag-lines"></div>
                </div>
            </div>
            <i class="bi bi-heart heart-outline"></i>
        </div>

    </div>
</div>

<!-- ===== EMERGENCY BAR ===== -->
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