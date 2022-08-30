<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Html_jQuery.aspx.cs" Inherits="Learn_jQuery_Part_1.Html_jQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Learn jQuery</title>

    <script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <script>
        $(document).ready(function () {

            $("#btnGet").click(function () {
                alert("My input text is: " + $("#text").val());
            });

            $("#btnSet").click(function () {
                $("#text").val("Hello jQuery");
            });

        });
    </script>

    <script>
       
        $(document).ready(function () {
            
            $("#btnAddLineText").click(function () {
                $("#textAdd").append("<b>Text 1 </b>").css("color", "#fb7c7c");
            });

            $("#btnAddListItem").click(function () {
                var value = $("#text").val();
                console.log("Hi" + value);
                $("#listItemAdd").append("<li>" + value + "</li>");
            });
        });
    </script>

    <script>
        $(document).ready(function () {
          
            var value = $("#text").width();

            alert(value);
            $("#lbltext").append("<b>" + value + "</b>")
        });
        
    </script>
</head>
<body>
    <div class="container">


        <div class="row">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                         <input id="text" type="text" placeholder="Write here..." />
                        <br />

                        &nbsp;
                       <button id="btnGet">Get</button>

                        &nbsp;
                        <button id="btnSet">Set value with html</button>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                         <p id="textAdd">Hello from there </p>
                            <br />
                            <ol id="listItemAdd">
                                <li>Oil</li>
                                <li>Sugar</li>
                            </ol>
                            <br />
                            <button id="btnAddLineText">Add Text in Line</button>
                            &nbsp;
                            <button id="btnAddListItem">Add Item in List</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <p id="lbltext"></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">

            </div>
        </div>
 
    </div>
</body>
</html>
