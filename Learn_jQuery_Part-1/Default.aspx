<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Learn_jQuery_Part_1.Default" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Learn jQuery</title>

    <script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <script>
        $(document).ready(function () {
            $("#btnHide").click(function () {
                $("#testHideShow").hide();
            });
            $("#btnShow").click(function () {
                $("#testHideShow").show();
            });
        });

    </script>

    <script>
        $(document).ready(function () {
            $("#btnFadeIn").click(function () {

                $("#fadeDiv").fadeToggle(1000);

            });
        });
    </script>


    <script>
        $(document).ready(function () {
            $("#btnSlide").click(function () {

                $("#slideDiv").slideToggle("slow");
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            $("#btnAnimate").click(function () {
                var div = $("#animateDiv");
                div.animate({
                    left: '250px',
                    height: '+=100px',
                    width: '+=100px'
                });
            });
        });

        $(document).ready(function () {
            $("#btnAnimate2").click(function () {
                var div2 = $("#animateDiv2");
                div2.animate({
                    height: 'toggle'
                });

                var div3 = $("#animateDiv3");


                div3.animate({ height: '300px', opacity: '0.4' }, "slow");
                div3.animate({ width: '300px', opacity: '0.8' }, "slow");
                div3.animate({ height: '100px', opacity: '0.4' }, "slow");
                div3.animate({ width: '100px', opacity: '0.8' }, "slow");


            });
        });
    </script>

    <script>
        $(document).ready(function () {
            var div = $("#divGoStopBack");
            $("#btnGo").click(function () {
               
                div.animate({ left:"+=400px" },2500);
            });

            $("#btnStop").click(function () {
                div.stop();
            });


            $("#btnBack").click(function () {
                div.animate({ left: "-=400px" }, 2000);
            });
        });
    </script>

    <%--Callback Method --%>

    <script>
        $(document).ready(function () {
            $("#btnCallback").click(function () {

                function fnc1(value) {
                    alert(value);
                }

                function fnc2(value) {
                    alert("fnc2 talk:" + value);
                    return false;
                }
                var callbacks = $.Callbacks();
                callbacks.add(fnc1);

                // Outputs: foo!
                callbacks.fire("foo!");

                callbacks.add(fnc2);

                // Outputs: bar!, fn2 talk: bar!
                callbacks.fire("bar!");
            });
        });
    </script>
       
    <%--Chaining jQuery --%>


    <script>
        $(document).ready(function () {
            $("#btnChaining").click(function () {
                $("#pChaining").css("color", "#fb7c7c").fadeOut(1000).fadeIn(1000);
            });
        });
    </script>




</head>

<body>

    <div class="container-fluid p-5 bg-primary text-white text-center">
        <h1>Learn jQuery</h1>
        <a style="color: aliceblue;" href="https://www.w3schools.com/jquery/jquery_get_started.asp">Learn jQuery from here...</a>
    </div>

    <div class="container mt-5">
        <div class="row">

            <div class="col-sm-12">
                <h3>Hide, Show, Toggle</h3>
                <p id="testHideShow">Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>

                <br />
                <button id="btnHide" runat="server" class="btn btn-primary">Hide</button>
                &nbsp; &nbsp;
                    <button id="btnShow" runat="server" class="btn btn-primary">Show</button>
            </div>

        </div>
        <div class="row">
            <div class="col-sm-6 border-3">
                <h3>Fade</h3>
                <div id="fadeDiv" style="width: 200px; height: 200px; background-color: dimgray; text-align: center;">
                    Fade Here
                </div>
                <br />
                <button id="btnFadeIn" runat="server" class="btn btn-primary">Fade</button>
            </div>

            <div class="col-sm-6 border-2">
                <h3>Slide</h3>
                <div id="slideDiv" style="width: 200px; height: 200px; background-color: dimgray; text-align: center;">
                    Slide Here
                </div>
                <br />
                <button id="btnSlide" runat="server" class="btn btn-primary">SlideToggle</button>
            </div>
            <br />
            &nbsp;

        </div>

        <div class="row">
            <div class="col-sm-6">
                <h3>Animation</h3>
                <div id="animateDiv" style="width: 100px; height: 100px; background-color: gray;"></div>
                <br />
                <button id="btnAnimate" class="btn btn-primary">Animate</button>
            </div>


            <div class="col-sm-6">
                <button id="btnAnimate2" class="btn btn-primary">Start Animate</button>
                <br />
                <div id="animateDiv2" style="width: 100px; height: 100px; background-color: gray;"></div>
                &nbsp; &nbsp;

                 <div id="animateDiv3" style="width: 100px; height: 100px; background-color: gray;"></div>
            </div>
        </div>

        <div class="row">

            <div class="col-sm-6">
                <h3>Go/Stop/Back</h3>

                <br />
                <button id="btnGo">Go</button>
                &nbsp;
            <button id="btnStop">Stop</button>
                &nbsp;
            <button id="btnBack">Back</button>
                <br />
                &nbsp;
                <div>
                     <div id="divGoStopBack" style="position:absolute; margin-left:200px; background-color: #abc; left: 0px; width: 60px; height: 60px; ">
                </div>
                </div>
               
            </div>

        </div>

        <div class="row">
            <div class="col-sm-6">
                <h3>Callback Method ibn jQuery</h3>

                <button id="btnCallback" class="btn btn-primary">Callback Start</button>
            </div>

            <div class="col-sm-6">
                <h3>Chaining</h3>

                <p id="pChaining">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id dictum velit. </p>

                <br />

                <button id="btnChaining" class="btn btn-light">jQuery Chaining</button>
            </div>
        </div>


        <div class="row" style="text-align:center;">
            <div class="col-12 align-content-center">
                <a href="Html_jQuery.aspx" style="font-size:32px;">Learn jQuery HTML....</a>
            </div>
        </div>

            <div class="row" style="text-align:center;">
            <div class="col-12 align-content-center">
                <a href="Traversing_jQuery.aspx" style="font-size:32px;">Learn jQuery Traversing....</a>
            </div>
        </div>

                 <div class="row" style="text-align:center;">
            <div class="col-12 align-content-center">
                <a href="AJAX_jQuery.aspx" style="font-size:32px;">Learn jQuery AJAX....</a>
            </div>
        </div>

    </div>

</body>
</html>
