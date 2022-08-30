<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Traversing_jQuery.aspx.cs" Inherits="Learn_jQuery_Part_1.Traversing_jQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        .ancestors * {
            display: block;
            border: 2px solid lightgrey;
            color: lightgrey;
            padding: 5px;
            margin: 15px;
        }

        .descendants * {
            display: block;
            border: 2px solid lightgrey;
            color: lightgrey;
            padding: 5px;
            margin: 15px;
        }
    </style>
    <script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <%--jQuery for Traversing ancestors--%>

    <script>
        $(document).ready(function () {
            $("#btngetParent").click(function () {
                $("#parentSpan").parent().css({ "color": "red", "border": "2px solid red" });
            });

            $("#btngetParentsAll").click(function () {
                $("#parentsAllSpan").parents("ul").css({ "color": "red", "border": "2px solid green" });
            });

            $("#btnParentsUntil").click(function () {
                $("#parentsAllSpan").parentsUntil("div").css({ "color": "red", "border": "2px solid green" });
            })
        });
    </script>

       <%--jQuery for Traversing descendants--%>

        <script>
            $(document).ready(function () {
                $("#btnDgetChildern").click(function () {
                    $("#childTest").children().css({ "color": "red", "border": "2px solid red" });
                });


                $("#btnFind").click(function () {
                    $("div").find("span.first").css({ "color": "red", "border": "2px solid green" });
                });

                $("#btnFilterChild").click(function () {

                    $("div.descendants").children("li").css({ "color": "red", "border": "2px solid green" });
                })


            });
        </script>

</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-6">
                <h3>jQuery Traversing - Ancestors
                </h3>

                <div class="ancestors">
                    <div style="width: 500px;">
                        div (great-grandparent)
                              <ul>
                                  ul (grandparent)  
                              <li>li (direct parent)
                              <span id="parentsAllSpan">span all Prents and untill div</span>
                              </li>
                              </ul>
                    </div>
                    <button id="btngetParentsAll" class="btn btn-primary">Get Parents All</button>
                    &nbsp; &nbsp;
                         <button id="btnParentsUntil" class="btn btn-primary">Get Parents Until Div</button>

                </div>
            </div>

            <div class="col-6">
                <div class="ancestors">


                    <div style="width: 500px;">
                        div (grandparent)   
                           <p>
                               p (direct parent)
                          <span id="parentSpan">span parent only</span>
                           </p>
                    </div>
                    <button id="btngetParent" class="btn btn-primary">Get Parent Only</button>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-6">
                <h3>jQuery Traversing - Descendants
                </h3>

                <div class="descendants">
                    <div style="width: 500px;">
                        div (great-grandparent)
                              <ul>
                                  ul (grandparent)  
                              <li>li (direct parent)
                              <span id="DparentsAllSpan">span all Prents and untill div</span>
                              </li>

                                  <li>
                                      <span class="first">Hello i am second span</span>
                                  </li>
                              </ul>
                    </div>
                    <button id="btnFind" class="btn btn-primary">Find area</button>
                    &nbsp; &nbsp;
                         <button id="btnFilterChild" class="btn btn-primary">Get filter Childern</button>

                </div>
            </div>

            <div class="col-6">
                <div class="ancestors">


                    <div id="childTest" style="width: 500px;">
                        div (grandparent)   
                           <p>
                               p (direct parent)
                          <span id="DparentSpan">span parent only</span>
                           </p>
                    </div>
                    <button id="btnDgetChildern" class="btn btn-primary">Get Child</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
