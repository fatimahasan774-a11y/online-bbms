<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="BBMS.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    About Us - Blood Bank Management System
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<!-- ===== PAGE HEADER (DARK RED / BURGUNDY BACKGROUND WITH WELCOME MESSAGE & EMOJI) ===== -->
<div class="page-header" style="background:linear-gradient(135deg, #3d0a10, #5c1018); padding:70px 32px; text-align:center;">
    <div class="page-header-inner" style="max-width:700px; margin:0 auto;">
        <span class="eyebrow" style="display:inline-block; font-size:12px; font-weight:700; letter-spacing:1.2px; text-transform:uppercase; color:#ffccd5; margin-bottom:10px;">Who We Are</span>
        <h1 style="font-family:'Poppins',sans-serif; font-size:34px; font-weight:800; color:#fff;">About Our Mission ❤️</h1>
        <p style="color:#f3d1d5; font-size:15px; margin-top:14px; line-height:1.6; font-weight:500;">
            👋 Welcome to our official platform! We welcome you with an open heart and warm arms. We are dedicated to saving the lives of your people and siblings affected by blood shortages, serving you efficiently, with compassion, and with unwavering commitment.
        </p>
    </div>
</div>

<!-- ===== ABOUT MAIN SECTION WITH FULL BACKGROUND IMAGE ===== -->
<div class="about-section" style="position:relative; padding:80px 32px; overflow:hidden;">
    
    <!-- Background Image fully visible -->
    <div style="position:absolute; top:0; left:0; width:100%; height:100%; background:url('images/blood-bg.jpg') center/cover no-repeat; z-index:0;"></div>

    <div class="about-grid" style="position:relative; z-index:1; max-width:1200px; margin:0 auto; display:grid; grid-template-columns:1fr 1fr; gap:60px; align-items:center;">
        
        <!-- Left Side: Image Gallery Collage -->
        <div class="about-image-collage" style="position:relative; height:420px;">
            <img src="images/image1.jpg" alt="Blood Donation Camp" style="width:65%; height:240px; object-fit:cover; border-radius:14px; box-shadow:0 10px 25px rgba(0,0,0,0.2); position:absolute; top:0; left:0; z-index:1;" />
            <img src="images/image2.jpg" alt="Donors Caring" style="width:55%; height:200px; object-fit:cover; border-radius:14px; box-shadow:0 10px 25px rgba(0,0,0,0.25); position:absolute; bottom:0; right:0; z-index:2; border:4px solid #fff;" />
            <div style="position:absolute; top:110px; right:30px; background:#e11d2e; color:#fff; padding:18px 22px; border-radius:14px; z-index:3; box-shadow:0 8px 20px rgba(225,29,46,0.3);">
                <h4 style="font-family:'Poppins',sans-serif; font-size:20px; font-weight:800; margin:0;">100%</h4>
                <span style="font-size:12px; opacity:0.9;">Safe & Verified</span>
            </div>
        </div>

        <!-- Right Side: Text & Features with Dark Navy Blue background wrapper -->
        <div class="about-text" style="background:#0d1b2a; padding:35px; border-radius:16px; box-shadow:0 10px 30px rgba(0,0,0,0.3); border: 1px solid #1b263b;">
            <span style="font-size:12px; font-weight:700; letter-spacing:1px; color:#ff4d4d; text-transform:uppercase;">Trusted Network</span>
            <h2 style="font-family:'Poppins',sans-serif; font-size:30px; font-weight:800; color:#ffffff; margin:8px 0 16px; line-height:1.25;">Saving Lives Through Community Action & Care</h2>
            <p style="color:#e0e1dd; font-size:15px; line-height:1.7; margin-bottom:24px;">Our blood bank platform connects voluntary donors directly with hospitals and patients. We streamline the emergency request workflow to guarantee timely delivery when every single second counts.</p>
            
            <div class="about-points" style="display:flex; flex-direction:column; gap:16px;">
                <div class="about-point" style="display:flex; align-items:center; gap:12px; font-size:15px; color:#ffffff; font-weight:600;">
                    <i class="bi bi-check-circle-fill" style="color:#ff4d4d; font-size:18px;"></i> Rapid Emergency Response System
                </div>
                <div class="about-point" style="display:flex; align-items:center; gap:12px; font-size:15px; color:#ffffff; font-weight:600;">
                    <i class="bi bi-check-circle-fill" style="color:#ff4d4d; font-size:18px;"></i> Strict Medical Quality & Screening Standards
                </div>
                <div class="about-point" style="display:flex; align-items:center; gap:12px; font-size:15px; color:#ffffff; font-weight:600;">
                    <i class="bi bi-check-circle-fill" style="color:#ff4d4d; font-size:18px;"></i> Dedicated Community of Lifesaving Donors
                </div>
            </div>
        </div>

    </div>
</div>

<!-- ===== STATS STRIP ===== -->
<div class="about-stats-strip" style="background:#f3f5fa; padding:40px 32px;">
    <div class="about-stats-inner" style="max-width:1000px; margin:0 auto; display:grid; grid-template-columns:repeat(4,1fr); text-align:center; gap:20px;">
        <div>
            <h3 style="font-family:'Poppins',sans-serif; font-size:30px; font-weight:800; color:#e11d2e; margin:0 0 4px;">2,450+</h3>
            <span style="font-size:13px; color:#6b7280; font-weight:500;">Units Available</span>
        </div>
        <div>
            <h3 style="font-family:'Poppins',sans-serif; font-size:30px; font-weight:800; color:#e11d2e; margin:0 0 4px;">1,280+</h3>
            <span style="font-size:13px; color:#6b7280; font-weight:500;">Registered Donors</span>
        </div>
        <div>
            <h3 style="font-family:'Poppins',sans-serif; font-size:30px; font-weight:800; color:#e11d2e; margin:0 0 4px;">980+</h3>
            <span style="font-size:13px; color:#6b7280; font-weight:500;">Requests Fulfilled</span>
        </div>
        <div>
            <h3 style="font-family:'Poppins',sans-serif; font-size:30px; font-weight:800; color:#e11d2e; margin:0 0 4px;">3,500+</h3>
            <span style="font-size:13px; color:#6b7280; font-weight:500;">Lives Saved</span>
        </div>
    </div>
</div>

<!-- ===== CORE VALUES SECTION (BURGUNDY BACKGROUND & NAVY BLUE CARDS WITH IMAGES 5-8) ===== -->
<div class="values-section" style="padding:80px 32px; background:linear-gradient(135deg, #3d0a10, #5c1018);">
    <div class="role-heading" style="max-width:1180px; margin:0 auto 40px; text-align:center;">
        <span style="font-size:12px; font-weight:700; letter-spacing:1.2px; text-transform:uppercase; color:#ffccd5;">What Drives Us</span>
        <h2 style="font-family:'Poppins',sans-serif; font-size:30px; font-weight:800; color:#ffffff; margin-top:6px;">Our Core Values</h2>
    </div>

    <div class="values-grid" style="max-width:1180px; margin:0 auto; display:grid; grid-template-columns:repeat(4, 1fr); gap:24px;">
        
        <div class="value-card" style="background:#0d1b2a; border:1px solid #1b263b; border-radius:16px; overflow:hidden; box-shadow:0 4px 15px rgba(0,0,0,0.2);">
            <div style="height:140px; overflow:hidden;">
                <img src="images/image5.jpg" alt="Compassion" style="width:100%; height:100%; object-fit:cover;" />
            </div>
            <div style="padding:22px;">
                <h3 style="font-family:'Poppins',sans-serif; font-size:17px; font-weight:700; margin-bottom:8px; color:#ffffff;">Compassion</h3>
                <p style="font-size:13.5px; color:#e0e1dd; line-height:1.6; margin:0;">Every donor and patient is treated with dignity, care, and utmost respect.</p>
            </div>
        </div>

        <div class="value-card" style="background:#0d1b2a; border:1px solid #1b263b; border-radius:16px; overflow:hidden; box-shadow:0 4px 15px rgba(0,0,0,0.2);">
            <div style="height:140px; overflow:hidden;">
                <img src="images/image6.jpg" alt="Safety" style="width:100%; height:100%; object-fit:cover;" />
            </div>
            <div style="padding:22px;">
                <h3 style="font-family:'Poppins',sans-serif; font-size:17px; font-weight:700; margin-bottom:8px; color:#ffffff;">Safety</h3>
                <p style="font-size:13.5px; color:#e0e1dd; line-height:1.6; margin:0;">Strict screening and handling procedures protect every single donation.</p>
            </div>
        </div>

        <div class="value-card" style="background:#0d1b2a; border:1px solid #1b263b; border-radius:16px; overflow:hidden; box-shadow:0 4px 15px rgba(0,0,0,0.2);">
            <div style="height:140px; overflow:hidden;">
                <img src="images/image7.jpg" alt="Speed" style="width:100%; height:100%; object-fit:cover;" />
            </div>
            <div style="padding:22px;">
                <h3 style="font-family:'Poppins',sans-serif; font-size:17px; font-weight:700; margin-bottom:8px; color:#ffffff;">Speed</h3>
                <p style="font-size:13.5px; color:#e0e1dd; line-height:1.6; margin:0;">We move quickly when every minute counts for a patient in critical need.</p>
            </div>
        </div>

        <div class="value-card" style="background:#0d1b2a; border:1px solid #1b263b; border-radius:16px; overflow:hidden; box-shadow:0 4px 15px rgba(0,0,0,0.2);">
            <div style="height:140px; overflow:hidden;">
                <img src="images/image8.jpg" alt="Community" style="width:100%; height:100%; object-fit:cover;" />
            </div>
            <div style="padding:22px;">
                <h3 style="font-family:'Poppins',sans-serif; font-size:17px; font-weight:700; margin-bottom:8px; color:#ffffff;">Community</h3>
                <p style="font-size:13.5px; color:#e0e1dd; line-height:1.6; margin:0;">A growing network of generous donors who always show up for neighbors.</p>
            </div>
        </div>

    </div>
</div>

<!-- ===== EMERGENCY BAR ===== -->
<div class="emergency-bar" style="background:linear-gradient(90deg, #7a1420, #a31d2b); padding:26px 32px;">
    <div class="emergency-inner" style="max-width:1300px; margin:0 auto; display:flex; align-items:center; gap:34px; color:#fff;">
        <div class="emergency-item" style="display:flex; align-items:center; gap:14px;">
            <div class="emergency-icon" style="width:44px; height:44px; border-radius:50%; background:#fff; color:#a31d2b; display:flex; align-items:center; justify-content:center; font-size:17px; flex-shrink:0;"><i class="bi bi-telephone-fill"></i></div>
            <div><strong>Need Blood Urgently?</strong><p style="font-size:12.5px; opacity:.85; margin:2px 0 0;">We're here to help you. Contact us now.</p></div>
        </div>
        <div class="emergency-divider" style="width:1px; height:36px; background:rgba(255,255,255,.25);"></div>
        <div class="emergency-item" style="display:flex; align-items:center; gap:14px;">
            <div><strong style="font-size:17px;">+252 61 2345678</strong><p style="font-size:12.5px; opacity:.85; margin:2px 0 0;">Available 24/7</p></div>
        </div>
        <a href="ContactBloodBank.aspx" class="btn-emergency" style="margin-left:auto; background:#fff; color:#a31d2b; padding:11px 24px; border-radius:8px; text-decoration:none; font-weight:700; font-size:14px; display:flex; align-items:center; gap:8px;"><i class="bi bi-send-fill"></i> Contact Us</a>
    </div>
</div>

</asp:Content>