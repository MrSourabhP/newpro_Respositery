<%@page import="com.Entity.Dropdown"%>
<%@page import="java.util.List"%>
<%@page import="com.connection.connection"%>
<%@page import="com.Module.pro_module"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="Header.jsp" %>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Tables / General - NiceAdmin Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Updated: Apr 20 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <main id="main" class="main">

    <div class="pagetitle">
      <h4 style="color: maroon;">Supplier Table</h4>
      
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        
     
        <div class="col-lg-8">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title" align="center" style="color: green;">Customer Provider</h5>

              <!-- Table with stripped rows -->
              <table class="table table-striped">
                <thead>
                  <tr>
                    <th>Id</th>
                    <th>Supplier_Name</th>
                    <th>Mobile No</th>
                    <th>Product_Name</th>
                    <th>Price</th>
                    <th>Bill</th>
                  </tr>
                </thead>
                
                <%
                  try{
                	  pro_module p=new pro_module(connection.getConnection());
                	  List<Dropdown> w=p.alldropdown();
                	  for(Dropdown b:w){
                %>
                
                <tr>
                     <td><%=b.getId() %></td>
                     <td><%=b.getName() %></td>
                     <td><%=b.getMobile() %></td>
                     <td><%=b.getProdname() %></td>
                     <td><%=b.getPrice() %></td>
                     <td>
                         <button type="submit" class="btn btn-primary" style="background-color: white;"><a href="Supplier_Bill.jsp?id=<%=b.getId() %>">Bill</a></button>
                     </td>
                </tr>
                
                <%
                	  }
                	  
                  }
                    catch(Exception e){
                    	e.printStackTrace();
                    }
                 
                %>
                
              </table>
              

            </div>
          </div>
          
            </div>
          </div>

        
      
    </section>

  </main><!-- End #main -->

  

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
<%@include file="Footer.jsp" %>
</body>

</html>