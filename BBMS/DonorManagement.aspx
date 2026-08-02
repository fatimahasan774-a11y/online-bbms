<%@ Page Title="Manage Donors" Language="C#" MasterPageFile="~/Donar.Master" AutoEventWireup="true" CodeBehind="DonorManagement.aspx.cs" Inherits="BBMS.DonorManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Midabka Custom-ka ah ee Dark Blue ka yimid sawirka */
        .custom-dark-blue {
            background-color: #1b2a4a !important;
        }
        .custom-header-blue {
            background-color: #243b6b !important;
            color: #ffffff !important;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid px-4 py-4">
        
        <!-- Page Header & Add Button -->
        <div class="d-flex justify-content-between align-items-center mb-4">
            <div>
                <h2 class="fw-bold text-dark"><i class="bi bi-person-badge text-primary"></i> Manage Donors</h2>
                <p class="text-muted mb-0">View, update, or remove donor records from the system.</p>
            </div>
            <a href="AddDonor.aspx" class="btn btn-primary shadow-sm custom-dark-blue border-0">
                <i class="bi bi-plus-circle me-1"></i> Add New Donor
            </a>
        </div>

        <!-- Donors Table Card -->
        <div class="card border-0 shadow-sm rounded-4 overflow-hidden">
            <!-- Card Header oo leh midabka buluugga madow ee aad rabto -->
            <div class="card-header custom-header-blue py-3 border-0">
                <h5 class="mb-0 fw-semibold text-white">Donor List</h5>
            </div>
            <div class="card-body p-0">
                <div class="table-responsive">
                    <table class="table table-hover align-middle mb-0">
                        <thead class="table-light text-uppercase fs-7 text-muted">
                            <tr>
                                <th class="py-3 ps-4">Donor ID</th>
                                <th class="py-3">Full Name</th>
                                <th class="py-3">Blood Group</th>
                                <th class="py-3">Phone Number</th>
                                <th class="py-3">City</th>
                                <th class="py-3 text-center">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Sample Data 1 -->
                            <tr>
                                <td class="ps-4 fw-semibold text-primary">#D-1001</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar-sm bg-light-primary text-primary rounded-circle me-2 d-flex align-items-center justify-content-center fw-bold" style="width: 35px; height: 35px;">A</div>
                                        <div>
                                            <h6 class="mb-0 fw-semibold">Ahmed Mohamed</h6>
                                            <small class="text-muted">ahmed@example.com</small>
                                        </div>
                                    </div>
                                </td>
                                <td><span class="badge bg-danger-subtle text-danger px-2 py-1 fw-bold">O+</span></td>
                                <td>+252 61 1234567</td>
                                <td>Mogadishu</td>
                                <td class="text-center">
                                    <asp:LinkButton ID="lnkEdit1" runat="server" CssClass="btn btn-sm btn-outline-primary me-1" ToolTip="Edit">
                                        <i class="bi bi-pencil-square"></i>
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="lnkDelete1" runat="server" CssClass="btn btn-sm btn-outline-danger" ToolTip="Delete">
                                        <i class="bi bi-trash"></i>
                                    </asp:LinkButton>
                                </td>
                            </tr>

                            <!-- Sample Data 2 -->
                            <tr>
                                <td class="ps-4 fw-semibold text-primary">#D-1002</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar-sm bg-light-success text-success rounded-circle me-2 d-flex align-items-center justify-content-center fw-bold" style="width: 35px; height: 35px;">F</div>
                                        <div>
                                            <h6 class="mb-0 fw-semibold">Fatima Ali</h6>
                                            <small class="text-muted">fatima@example.com</small>
                                        </div>
                                    </div>
                                </td>
                                <td><span class="badge bg-danger-subtle text-danger px-2 py-1 fw-bold">A+</span></td>
                                <td>+252 63 7654321</td>
                                <td>Hargeisa</td>
                                <td class="text-center">
                                    <asp:LinkButton ID="lnkEdit2" runat="server" CssClass="btn btn-sm btn-outline-primary me-1" ToolTip="Edit">
                                        <i class="bi bi-pencil-square"></i>
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="lnkDelete2" runat="server" CssClass="btn btn-sm btn-outline-danger" ToolTip="Delete">
                                        <i class="bi bi-trash"></i>
                                    </asp:LinkButton>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            
            <!-- Table Footer / Pagination -->
            <div class="card-footer bg-white py-3 border-0 d-flex justify-content-between align-items-center">
                <span class="text-muted small">Showing 2 of 2 entries</span>
                <nav>
                    <ul class="pagination pagination-sm mb-0">
                        <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
                        <li class="page-item active custom-dark-blue border-0"><a class="page-link text-white custom-dark-blue" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">Next</a></li>
                    </ul>
                </nav>
            </div>
        </div>

    </div>
</asp:Content>