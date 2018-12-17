<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Popover #1 -->
        <hr />
        <a href="#" class="btn btn-primary" tabindex="0" data-toggle="popover" data-popover-content="#a1" data-placement="top">Popover Example255</a>

        <hr>

        <!-- Content for Popover #1 -->
        <div id="a1" class="hidden">
            <div class="popover-heading">This is the heading for #1</div>
            <div class="popover-body">
                This is the body for #1
          <input type="text" class="form-control" id="inputZip" />
                <button>
                </button>
            </div>
        </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $("[data-toggle=popover]").popover({
                html: true,
                content: function () {
                    var content = $(this).attr("data-popover-content");
                    return $(content).children(".popover-body").html();
                },
                title: function () {
                    var title = $(this).attr("data-popover-content");
                    return $(title).children(".popover-heading").html();
                }
            });
        });
    </script>
</body>
</html>
