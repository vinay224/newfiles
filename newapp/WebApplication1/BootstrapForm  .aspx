<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BootstrapForm  .aspx.cs" Inherits="WebApplication1.BootstrapForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bootstrap Example</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        .mb-3 {
            margin-bottom: 1rem !important;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: sans-serif;
        }

        .formBox {
            margin-top: 90px;
            padding: 50px;
        }

            .formBox h1 {
                margin: 0;
                padding: 0;
                text-align: center;
                margin-bottom: 50px;
                text-transform: uppercase;
                font-size: 48px;
            }

        .inputBox {
            position: relative;
            box-sizing: border-box;
            margin-bottom: 50px;
        }

            .inputBox .inputText {
                position: absolute;
                font-size: 24px;
                line-height: 50px;
                transition: .5s;
                opacity: .5;
            }

            .inputBox .input {
                position: relative;
                width: 100%;
                height: 50px;
                background: transparent;
                border: none;
                outline: none;
                font-size: 24px;
                border-bottom: 1px solid rgba(0,0,0,.5);
            }

        .focus .inputText {
            transform: translateY(-30px);
            font-size: 18px;
            opacity: 1;
            color: #00bcd4;
        }

        textarea {
            height: 100px !important;
        }

        .button {
            width: 100%;
            height: 50px;
            border: none;
            outline: none;
            background: #03A9F4;
            color: #fff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%--   <div class="container" style="max-width: 960px;">
            <div class="py-5 text-center">
                <img class="d-block mx-auto mb-4" src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
                <h2>Electronic Virtual Card Payment Acceptance Form</h2>
                <p class="lead">As a Preferred vendor of Chatham County Schools please complete the acceptance form below. We will immediately move you to our Preferred Virtual Payment Platform enabling you to get paid much faster than the traditional check process. can be triggered by attempting to submit the form without completing it.</p>
            </div>
            <h4 class="mb-3">Billing address</h4>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="exampleFormControlInput1">Email address</label>
                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="exampleFormControlInput1">Email address</label>
                    <select class="form-control" id="country" required="">
                        <option value="">Choose...</option>
                        <option>United States</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="exampleFormControlInput1">Email address</label>
                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="exampleFormControlInput1">Email address</label>
                    <select class="form-control" id="country" required="">
                        <option value="">Choose...</option>
                        <option>United States</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="exampleFormControlInput1">Email address</label>
                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="exampleFormControlInput1">Email address</label>
                    <select class="form-control" id="country" required="">
                        <option value="">Choose...</option>
                        <option>United States</option>
                    </select>
                </div>
            </div>


        </div>--%>

        <br />
        <%--   <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <label class="col-sm-4" for="exampleFormControlInput1">Email address</label>
                    <div class="col-sm-8">
                        <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com" />
                    </div>

                </div>
                <div class="col-sm-6">
                    <label class="col-sm-2" for="exampleFormControlInput1">address</label>
                    <select class="col-sm-4 form-control" id="country" required="">
                        <option value="">Choose...</option>
                        <option>United States</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <label for="exampleFormControlSelect1">Example select</label>
                    <select class="form-control" id="exampleFormControlSelect1">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <label for="exampleFormControlSelect2">Example multiple select</label>
                    <select multiple class="form-control" id="exampleFormControlSelect2">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <label for="exampleFormControlTextarea1">Example textarea</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
            </div>
        </div>--%>

        <div class="container-fluid">
            <div class="container">
                <div class="formBox">


                    <div class="row">
                        <div class="col-sm-12">
                            <h1>Contact form</h1>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="inputBox ">
                                <div class="inputText">First Name</div>
                                <input type="text" name="" class="input">
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="inputBox">
                                <div class="inputText">Last Name</div>
                                <input type="text" name="" class="input">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="inputBox">
                                <div class="inputText">Email</div>
                                <input type="text" name="" class="input">
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="inputBox">
                                <div class="inputText">Mobile</div>
                                <input type="text" name="" class="input">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="inputBox">
                                <div class="inputText">Email</div>
                                <textarea class="input"></textarea>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-12">
                            <input type="submit" name="" class="button" value="Send Message">
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script type="text/javascript">
        $(".input").focus(function () {
            $(this).parent().addClass("focus");
        })
	 </script>
</body>
</html>
