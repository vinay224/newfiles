<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JqueryDateRange.aspx.cs" Inherits="WebApplication1.JqueryDateRange" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Themeroller-Ready jQuery UI Range Picker</title>
     <link rel="stylesheet" href="css/ui.daterangepicker.css" type="text/css" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker.css" rel="stylesheet">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script> 
    <script type="text/javascript" src="js/daterangepicker.jQuery.js"></script>
       



    <script type="text/javascript">
        $(function () {
            $('#rangeA').daterangepicker({
                posX: null,
                posY: null
            });
           
        });
    </script>

    <!-- from here down, demo-related styles and scripts -->
    <style type="text/css">
        body {
            font-size: 62.5%;
        }

        input {
            width: 196px;
            height: 1.1em;
            display: block;
        }
    </style>
</head>
<body>


    <input type="text" class="form-control" value="Choose a Date" id="rangeA" />



</body>
</html>
