<%@ Page Title="User Login" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="userLogin.aspx.cs" Inherits="BBMS.userLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Background gradient for user login page */
        body.user-login-page {
            background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Card styling */
        .login-card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            overflow: hidden;
            transition: transform 0.3s ease;
            background-color: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
        }

        .login-card:hover {
            transform: translateY(-5px);
        }

        /* Card header styling */
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
            color: #f5576c;
            margin-bottom: 10px;
        }

        /* Card body styling */
        .card-body {
            padding: 30px;
        }

        /* Form elements styling */
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
            border-color: #f5576c;
            box-shadow: 0 0 8px rgba(245, 87, 108, 0.3);
        }

        /* Login button styling */
        .btn-user-login {
            background: linear-gradient(to right, #f093fb, #f5576c);
            border: none;
            border-radius: 10px;
            padding: 12px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
            color: white;
            transition: all 0.4s;
        }

        .btn-user-login:hover {
            background: linear-gradient(to right, #f5576c, #f093fb);
            box-shadow: 0 5px 15px rgba(245, 87, 108, 0.4);
            color: white;
        }

        /* Error text styling */
        .text-danger {
            font-size: 0.9rem;
            font-weight: 600;
        }
    </style>

    <!-- Script to automatically add custom background class to the body -->
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            document.body.classList.add('user-login-page');
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="card login-card">
                    <div class="card-header">
                        <i class="bi bi-person-circle"></i>
                        <h4>User Login</h4>
                    </div>
                    <div class="card-body">
                        <!-- Error message label -->
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger mb-3 d-block text-center"></asp:Label>

                        <div class="mb-3">
                            <label for="txtUsername" class="form-label">Username</label>
                            <div class="input-group">
                                <span class="input-group-text"><i class="bi bi-person-fill"></i></span>
                                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter your username"></asp:TextBox>
                            </div>
                        </div>

                        <div class="mb-4">
                            <label for="txtPassword" class="form-label">Password</label>
                            <div class="input-group">
                                <span class="input-group-text"><i class="bi bi-key-fill"></i></span>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter your password"></asp:TextBox>
                            </div>
                        </div>

                        <div class="d-grid">
                            <asp:Button ID="btnLogin" runat="server" Text="Sign In" CssClass="btn btn-user-login" OnClick="btnUserLogin_Click" />
                        </div>

                        <div class="text-center mt-3">
                            <a href="#" class="text-muted" style="font-size: 0.8rem; text-decoration: none;">Forgot Password?</a>
                        </div>
                    </div>
                </div>
                <div class="text-center mt-3 text-white-50" style="font-size: 0.8rem;">
                    &copy; 2026 BBMS System. All rights reserved.
                </div>
            </div>
        </div>
    </div>
</asp:Content>