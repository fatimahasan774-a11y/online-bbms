<%@ Page Title="Admin Login" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="BBMS.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Gadaasha bogga oo dhan (Gradient background) */
        body.login-page {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Qurxinta Card-ka */
        .login-card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            overflow: hidden;
            transition: transform 0.3s ease;
            background-color: rgba(255, 255, 255, 0.95); /* Wax yar oo hufan */
            backdrop-filter: blur(10px); /* Saamaynta galaaska gadaashiisa */
        }

        .login-card:hover {
            transform: translateY(-5px);
        }

        /* Qeybta sare ee card-ka */
        .card-header {
            background: transparent !important;
            border-bottom: none;
            padding: 30px 20px 10px;
            text-align: center;
        }

        .card-header h4 {
            color: #333;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .card-header i {
            font-size: 3rem;
            color: #764ba2;
            margin-bottom: 10px;
        }

        /* Qeybta hoose ee card-ka */
        .card-body {
            padding: 30px;
        }

        /* Qaabeynta Input-ka */
        .form-label {
            font-weight: 600;
            color: #555;
        }

        .form-control {
            border-radius: 10px;
            padding: 12px;
            border: 1px solid #ddd;
            transition: all 0.3s;
        }

        .form-control:focus {
            border-color: #764ba2;
            box-shadow: 0 0 8px rgba(118, 75, 162, 0.3);
        }

        /* Badhanka Login-ka */
        .btn-login {
            background: linear-gradient(to right, #667eea, #764ba2);
            border: none;
            border-radius: 10px;
            padding: 12px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
            color: white;
            transition: all 0.4s;
        }

        .btn-login:hover {
            background: linear-gradient(to right, #764ba2, #667eea);
            box-shadow: 0 5px 15px rgba(118, 75, 162, 0.4);
        }

        /* Fariinta Khaladka */
        .text-danger {
            font-size: 0.9rem;
            font-weight: 600;
        }
    </style>
    
    <!-- Script-kan yar wuxuu class ku darayaa body-ga si uu u shaqeeyo background-ka gaarka ah -->
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            document.body.classList.add('login-page');
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-4"> <!-- Cabirka card-ka oo la yareeyay (col-md-4) -->
                <div class="card login-card">
                    <div class="card-header">
                        <i class="bi bi-shield-lock-fill"></i> <!-- Icon cusub oo ka qurux badan -->
                        <h4>Admin Panel</h4>
                    </div>
                    <div class="card-body">
                        <!-- Error message display -->
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger mb-3 d-block text-center"></asp:Label>

                        <div class="mb-3">
                            <label for="txtUsername" class="form-label">Username</label>
                            <div class="input-group">
                                <span class="input-group-text"><i class="bi bi-person-fill"></i></span>
                                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter admin username"></asp:TextBox>
                            </div>
                        </div>

                        <div class="mb-4"> <!-- Margin bottom ka badan -->
                            <label for="txtPassword" class="form-label">Password</label>
                            <div class="input-group">
                                <span class="input-group-text"><i class="bi bi-key-fill"></i></span>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter password"></asp:TextBox>
                            </div>
                        </div>

                        <div class="d-grid">
                            <asp:Button ID="btnLogin" runat="server" Text="Sign In" CssClass="btn btn-login" OnClick="btnLogin_Click" />
                        </div>

                        <div class="text-center mt-3">
                            <a href="#" class="text-muted" style="font-size: 0.8rem; text-decoration: none;">Forgot Password?</a>
                        </div>
                    </div>
                </div>
                <div class="text-center mt-3 text-white-50" style="font-size: 0.8rem;">
                    &copy; 2023 BBMS System. All rights reserved.
                </div>
            </div>
        </div>
    </div>
</asp:Content>