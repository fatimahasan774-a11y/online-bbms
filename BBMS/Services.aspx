<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="BBMS.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Our Services - Blood Bank Management System
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<!-- ===== PAGE HEADER (DARK RED / BURGUNDY BACKGROUND) ===== -->
<div class="page-header" style="background:linear-gradient(135deg, #3d0a10, #5c1018); padding:70px 32px; text-align:center;">
    <div class="page-header-inner" style="max-width:700px; margin:0 auto;">
        <span class="eyebrow" style="display:inline-block; font-size:12px; font-weight:700; letter-spacing:1.2px; text-transform:uppercase; color:#ffccd5; margin-bottom:10px;">What We Offer</span>
        <h1 style="font-family:'Poppins',sans-serif; font-size:34px; font-weight:800; color:#fff;">Our Blood Bank Services 🩸</h1>
        <p style="color:#f3d1d5; font-size:15px; margin-top:14px; line-height:1.6; font-weight:500;">
            We provide comprehensive, fast, and secure blood donation and emergency response services to ensure timely medical care for everyone in need.
        </p>
    </div>
</div>

<!-- ===== SERVICES ASYMMETRIC GRID SECTION WITH IMAGE8 BACKGROUND ===== -->
<div class="services-main-section" style="padding:90px 32px; background:url('images/image8.jpg') center/cover no-repeat; position:relative; overflow:hidden;">
    
    <div class="services-container" style="max-width:1200px; margin:0 auto; display:grid; grid-template-columns: 1fr 1.3fr; gap:60px; align-items:center; position:relative; z-index:1;">
        
        <!-- Left Column: Title, Subtitle & Action Button -->
        <div class="services-intro">
            <span style="font-size:12px; font-weight:700; letter-spacing:1.2px; text-transform:uppercase; color:#ffccd5; display:block; margin-bottom:8px;">Comprehensive Care</span>
            <h2 style="font-family:'Poppins',sans-serif; font-size:36px; font-weight:800; color:#ffffff; line-height:1.25; margin-bottom:20px;">
                We Provide Best Blood Banking & Emergency Services
            </h2>
            <p style="color:#e0e1dd; font-size:15px; line-height:1.7; margin-bottom:30px;">
                Our platform seamlessly bridges the gap between voluntary blood donors and hospitals, streamlining emergency requests and ensuring total safety and efficiency at every step.
            </p>
            <a href="RequestBlood.aspx" style="display:inline-block; background:#e11d2e; color:#fff; padding:14px 28px; border-radius:10px; text-decoration:none; font-weight:700; font-size:14px; box-shadow:0 8px 20px rgba(0,0,0,0.3); transition:all 0.3s ease;">
                VIEW ALL SERVICES <i class="bi bi-arrow-right" style="margin-left:6px;"></i>
            </a>
        </div>

        <!-- Right Column: Asymmetric Modern Grid Cards with Dark Navy Blue background -->
        <div class="services-organic-grid" style="display:grid; grid-template-columns:repeat(2, 1fr); gap:20px;">
            
            <!-- Card 1: Featured Red/Orange Card -->
            <div style="background:linear-gradient(135deg, #e11d2e, #b91c1c); border-radius:24px; padding:32px; color:#fff; box-shadow:0 12px 30px rgba(0,0,0,0.3); display:flex; flex-direction:column; justify-content:space-between;">
                <div style="width:50px; height:50px; background:rgba(255,255,255,0.2); border-radius:14px; display:flex; align-items:center; justify-content:center; font-size:22px; margin-bottom:20px;">
                    <i class="bi bi-heart-pulse-fill"></i>
                </div>
                <div>
                    <h3 style="font-family:'Poppins',sans-serif; font-size:19px; font-weight:700; margin-bottom:10px; color:#fff;">Emergency Blood Delivery</h3>
                    <p style="font-size:13.5px; opacity:0.9; line-height:1.6; margin:0;">Instant dispatch coordination for critical hospital requirements and surgeries.</p>
                </div>
            </div>

            <!-- Card 2: Dark Navy Blue Card -->
            <div style="background:#0d1b2a; border:1px solid #1b263b; border-radius:24px; padding:32px; box-shadow:0 6px 20px rgba(0,0,0,0.3); display:flex; flex-direction:column; justify-content:space-between;">
                <div style="width:50px; height:50px; background:#fde8e8; color:#e11d2e; border-radius:14px; display:flex; align-items:center; justify-content:center; font-size:22px; margin-bottom:20px;">
                    <i class="bi bi-shield-check"></i>
                </div>
                <div>
                    <h3 style="font-family:'Poppins',sans-serif; font-size:19px; font-weight:700; margin-bottom:10px; color:#ffffff;">Donor Health Screening</h3>
                    <p style="font-size:13.5px; color:#e0e1dd; line-height:1.6; margin:0;">Strict laboratory testing protocols ensuring pure and safe blood donations.</p>
                </div>
            </div>

            <!-- Card 3: Dark Navy Blue Card -->
            <div style="background:#0d1b2a; border:1px solid #1b263b; border-radius:24px; padding:32px; box-shadow:0 6px 20px rgba(0,0,0,0.3); display:flex; flex-direction:column; justify-content:space-between;">
                <div style="width:50px; height:50px; background:#fde8e8; color:#e11d2e; border-radius:14px; display:flex; align-items:center; justify-content:center; font-size:22px; margin-bottom:20px;">
                    <i class="bi bi-people"></i>
                </div>
                <div>
                    <h3 style="font-family:'Poppins',sans-serif; font-size:19px; font-weight:700; margin-bottom:10px; color:#ffffff;">Community Donor Network</h3>
                    <p style="font-size:13.5px; color:#e0e1dd; line-height:1.6; margin:0;">Connecting active local volunteers directly with regional blood drives.</p>
                </div>
            </div>

            <!-- Card 4: Dark Navy Blue Card -->
            <div style="background:#0d1b2a; border:1px solid #1b263b; border-radius:24px; padding:32px; box-shadow:0 6px 20px rgba(0,0,0,0.3); display:flex; flex-direction:column; justify-content:space-between;">
                <div style="width:50px; height:50px; background:#fde8e8; color:#e11d2e; border-radius:14px; display:flex; align-items:center; justify-content:center; font-size:22px; margin-bottom:20px;">
                    <i class="bi bi-gear-wide-connected"></i>
                </div>
                <div>
                    <h3 style="font-family:'Poppins',sans-serif; font-size:19px; font-weight:700; margin-bottom:10px; color:#ffffff;">Inventory Management</h3>
                    <p style="font-size:13.5px; color:#e0e1dd; line-height:1.6; margin:0;">Real-time tracking of blood units across storage facilities and hospitals.</p>
                </div>
            </div>

        </div>

    </div>
</div>

<!-- ===== OUR EXPERTS SECTION (MAROON BACKGROUND) ===== -->
<div class="experts-section" style="padding:90px 32px; background:linear-gradient(135deg, #3d0a10, #5c1018); text-align:center;">
    <div style="max-width:1180px; margin:0 auto 50px;">
        <span style="font-size:12px; font-weight:700; letter-spacing:1.2px; text-transform:uppercase; color:#ffccd5;">Our Leadership</span>
        <h2 style="font-family:'Poppins',sans-serif; font-size:32px; font-weight:800; color:#ffffff; margin-top:8px;">Our Experts</h2>
        <p style="font-size:14px; color:#f3d1d5; margin-top:8px;">Credibly innovate granular internal or organic sources</p>
    </div>

    <div style="max-width:1180px; margin:0 auto; display:grid; grid-template-columns:repeat(3, 1fr); gap:30px;">
        
        <!-- Expert 1 (image12) -->
        <div style="background:#4a0d14; border-radius:24px; overflow:hidden; box-shadow:0 10px 30px rgba(0,0,0,0.3); border:1px solid #6b1620; text-align:center; padding-bottom:20px;">
            <div style="height:280px; overflow:hidden; background:#3d0a10;">
                <img src="images/image12.jpg" alt="Saskia Daly" style="width:100%; height:100%; object-fit:cover;" />
            </div>
            <div style="padding:24px 20px 10px;">
                <h4 style="font-family:'Poppins',sans-serif; font-size:18px; font-weight:700; color:#ffffff; margin-bottom:4px;">Saskia Daly</h4>
                <span style="font-size:13px; color:#ffccd5; font-weight:500;">Founder</span>
            </div>
        </div>

        <!-- Expert 2 (image13) -->
        <div style="background:#4a0d14; border-radius:24px; overflow:hidden; box-shadow:0 10px 30px rgba(0,0,0,0.3); border:1px solid #6b1620; text-align:center; padding-bottom:20px;">
            <div style="height:280px; overflow:hidden; background:#3d0a10;">
                <img src="images/image13.jpg" alt="Shayne Wallace" style="width:100%; height:100%; object-fit:cover;" />
            </div>
            <div style="padding:24px 20px 10px;">
                <h4 style="font-family:'Poppins',sans-serif; font-size:18px; font-weight:700; color:#ffffff; margin-bottom:4px;">Shayne Wallace</h4>
                <span style="font-size:13px; color:#ffccd5; font-weight:500;">HR Manager</span>
            </div>
        </div>

        <!-- Expert 3 (image14) -->
        <div style="background:#4a0d14; border-radius:24px; overflow:hidden; box-shadow:0 10px 30px rgba(0,0,0,0.3); border:1px solid #6b1620; text-align:center; padding-bottom:20px;">
            <div style="height:280px; overflow:hidden; background:#3d0a10;">
                <img src="images/image14.jpg" alt="Niko Anderson" style="width:100%; height:100%; object-fit:cover;" />
            </div>
            <div style="padding:24px 20px 10px;">
                <h4 style="font-family:'Poppins',sans-serif; font-size:18px; font-weight:700; color:#ffffff; margin-bottom:4px;">Niko Anderson</h4>
                <span style="font-size:13px; color:#ffccd5; font-weight:500;">CEO</span>
            </div>
        </div>

    </div>
</div>
    <!-- ===== VIDEO SECTION ===== -->
<div class="video-section" style="padding:90px 32px; background:#0d1b2a; text-align:center;">
    <div style="max-width:800px; margin:0 auto 40px;">
        <span style="font-size:12px; font-weight:700; letter-spacing:1.2px; text-transform:uppercase; color:#ffccd5;">Watch Our Story</span>
        <h2 style="font-family:'Poppins',sans-serif; font-size:32px; font-weight:800; color:#ffffff; margin-top:8px;">See How We Save Lives</h2>
        <p style="font-size:14px; color:#e0e1dd; margin-top:8px;">A quick look into our blood donation process and community impact.</p>
    </div>

    <div style="max-width:900px; margin:0 auto; border-radius:24px; overflow:hidden; box-shadow:0 15px 35px rgba(0,0,0,0.5); border:1px solid #1b263b; background:#000;">
        <video width="100%" controls autoplay muted loop style="display:block; max-height:500px; object-fit:cover;">
            <source src="videos/video1.mp4" type="video/mp4" />
            Your browser does not support the video tag.
        </video>
    </div>
</div>

<!-- ===== OUR PROCESS SECTION (MAROON BACKGROUND WITH DARK NAVY CARDS) ===== -->
<div class="process-section" style="padding:90px 32px; background:linear-gradient(135deg, #3d0a10, #5c1018); text-align:center; border-top:1px solid #6b1620;">
    <div style="max-width:1180px; margin:0 auto 50px;">
        <h2 style="font-family:'Poppins',sans-serif; font-size:32px; font-weight:800; color:#ffffff; margin-bottom:8px;">Our Process</h2>
        <div style="width:50px; height:3px; background:#e11d2e; margin:0 auto;"></div>
    </div>

    <div style="max-width:1100px; margin:0 auto; display:grid; grid-template-columns:repeat(3, 1fr); gap:40px; text-align:center;">
        
        <!-- Step 1 Card -->
        <div style="background:#0d1b2a; padding:40px 30px; border-radius:20px; box-shadow:0 6px 20px rgba(0,0,0,0.3); border:1px solid #1b263b;">
            <h3 style="font-family:'Poppins',sans-serif; font-size:42px; font-weight:800; color:#ffffff; margin-bottom:10px; opacity:0.8;">01</h3>
            <h4 style="font-family:'Poppins',sans-serif; font-size:18px; font-weight:700; color:#ffccd5; margin-bottom:14px;">Step 1</h4>
            <p style="font-size:14px; color:#e0e1dd; line-height:1.6; margin:0;">Lorem ipsum dolor sit amet, consecte adipiscin elit, sed eiusmod tempor incididunt labore et dolore magna aliqua minim.</p>
        </div>

        <!-- Step 2 Card -->
        <div style="background:#0d1b2a; padding:40px 30px; border-radius:20px; box-shadow:0 6px 20px rgba(0,0,0,0.3); border:1px solid #1b263b;">
            <h3 style="font-family:'Poppins',sans-serif; font-size:42px; font-weight:800; color:#ffffff; margin-bottom:10px; opacity:0.8;">02</h3>
            <h4 style="font-family:'Poppins',sans-serif; font-size:18px; font-weight:700; color:#ffccd5; margin-bottom:14px;">Step 2</h4>
            <p style="font-size:14px; color:#e0e1dd; line-height:1.6; margin:0;">Lorem ipsum dolor sit amet, consecte adipiscin elit, sed eiusmod tempor incididunt labore et dolore magna aliqua minim.</p>
        </div>

        <!-- Step 3 Card -->
        <div style="background:#0d1b2a; padding:40px 30px; border-radius:20px; box-shadow:0 6px 20px rgba(0,0,0,0.3); border:1px solid #1b263b;">
            <h3 style="font-family:'Poppins',sans-serif; font-size:42px; font-weight:800; color:#ffffff; margin-bottom:10px; opacity:0.8;">03</h3>
            <h4 style="font-family:'Poppins',sans-serif; font-size:18px; font-weight:700; color:#ffccd5; margin-bottom:14px;">Step 3</h4>
            <p style="font-size:14px; color:#e0e1dd; line-height:1.6; margin:0;">Lorem ipsum dolor sit amet, consecte adipiscin elit, sed eiusmod tempor incididunt labore et dolore magna aliqua minim.</p>
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