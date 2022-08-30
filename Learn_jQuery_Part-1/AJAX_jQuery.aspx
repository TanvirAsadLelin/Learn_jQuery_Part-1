<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AJAX_jQuery.aspx.cs" Inherits="Learn_jQuery_Part_1.AJAX_jQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  
         <script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
   <script>
    $(document).ready(function () {
        $("#p2").click(function () {
      
            $("#div1").load("Load_FileForTest.txt #p1");
        });

        $("#btnLoadListfromFile").click(function () {
            $("#div2").load("Load_FileForTest.txt");
        });

        $("#loadWithParam").click(function () {
            $("#div3").load("Load_FileForTest.txt", function (responseTxt, statusTxt, xhr) {
                alert(responseTxt)
                if (statusTxt == "success")
                    alert("Success")
                if (statusTxt == "error")
                    alert("Error: " + xhr.status + xhr.statusTxt)
            });
        });


    });
   </script>

    <script>
        $(document).ready(function () {
            $("#getMethodCall").click(function () {
                $.get("Load_FileForTest.txt", function (data, status) {
                    alert("Data : " + data + "\n Status: " + status)
                })
            });
        });
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row align-content-center">
                <h3 style="text-align:center;">Learn Load() Mthod In jQuery AJAX</h3>
                <br />

                <div class="col-sm-4">

                    <div class="card">
                        <div class="card-body">
                            <div id="div1">

                    </div>

                     <p id="p2">Get External Content Click me</p>
                        </div>
                    </div>
                    
 
                </div>

                <div class="col-sm-4">

                       <div class="card">
                        <div class="card-body">
                    <div id="div2">

                    </div>
                    <a id="btnLoadListfromFile">Load List Click me</a>
                            </div>
                           </div>

                </div>

                  <div class="col-sm-4">

                         <div class="card">
                        <div class="card-body">
                    <div id="div3">

                    </div>
                    <a id="loadWithParam">Load file with callback Click me</a>
                              </div>
                           </div>
                </div>


            </div>

            <div class="row">
                     <h3 style="text-align:center;">Learn get() & post() Mthod In jQuery AJAX</h3>
                <br />
                <div class="col-sm-6">
                              <div class="card">
                        <div class="card-body">
                    <div id="div4">

                    </div>
                    <a id="getMethodCall">Get data Click me</a>
                              </div>
                           </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
