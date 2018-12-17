<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Themeroller-Ready jQuery UI Range Picker</title>
    <script type="text/javascript" src="js/jquery-1.3.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.7.1.custom.min.js"></script>
    <script type="text/javascript" src="js/daterangepicker.jQuery.js"></script>
    <link rel="stylesheet" href="css/ui.daterangepicker.css" type="text/css" />
    <link rel="stylesheet" href="css/redmond/jquery-ui-1.7.1.custom.css" type="text/css" title="ui-theme" />
    <script type="text/javascript">
        $(function () {
            $('#rangeA').daterangepicker({
                posX: null,
                posY: null
            });
            $('#rangeb').daterangepicker({
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


    <input type="text" value="Choose a Date" id="rangeA" />
    <br />
    <input type="text" value="Choose a Date" id="rangeb" />


</body>
</html>


