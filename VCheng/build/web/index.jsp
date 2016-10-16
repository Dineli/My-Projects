<%-- 
    Document   : index
    Created on : Nov 2, 2015, 8:46:10 PM
    Author     : Dineli
--%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Viktor Cheng - Personal Portfolio</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/cover.css" rel="stylesheet">

<!--        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,600" rel="stylesheet" type="text/css">-->

        <!--        <link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">-->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- Custom styles for side bar -->
        <link href="css/app.css" rel="stylesheet" type="text/css">


        <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
        <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
        <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>

    <body background="images/pic.jpg">
        <!-- SIDE BAR -->
        <div id="contentWrapper">
            <div id="contentLeft">
                <div id="logo" style="margin-top: 10px">
                    <a href="#" class="home"> <img src="images/logo1.png" style="height:170px;width:170px"/></a>
                </div>
                <ul id="leftNavigation">
                    <li class="active123">
                        <a href="#" class="home"><i class="fa fa-ellipsis-v">&nbsp;</i>HOME</a>
                    </li>
                    <li>
                        <a href="#" class="about"><i class="fa fa-ellipsis-v">&nbsp;</i>PROFILE</a>
                    </li>
                    <li>
                        <a href="#" class="exp"><i class="fa fa-ellipsis-v">&nbsp;</i>EXPERIENCE</a>
                        <ul>
                            <li>
                                <a href="#" class="affiliation"><i class="fa fa-angle-right "></i> AFFILIATIONS</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="pubs"><i class="fa fa-ellipsis-v">&nbsp; </i>PUBLICATIONS</a>
                    </li>
                    <li>
                        <a href="#" class="edu"><i class="fa fa-ellipsis-v">&nbsp; </i>EDUCATION</a>
                    </li>
                    <li>
                        <a href="#" class="awards"><i class="fa fa-ellipsis-v">&nbsp; </i>AWARDS</a>
                    </li>
                    <li>
                        <a href="#" class="contact"><i class="fa fa-ellipsis-v">&nbsp;</i>CONTACT   </a>
                    </li>
                    <p> &copy; ~Viktor Cheng. All Rights Reserved~</p>
                </ul>
            </div>
            <div class="site-wrapper">
                <div class="site-wrapper-inner">
                    <div class="cover-container">
                        <div class="masthead clearfix">
                            <div class="inner">
                            </div>
                        </div>

                        <div class="inner cover">
                            <div id="content">
                            </div>
                            <p class="lead">
                            </p>
                        </div>
                        <div class="mastfoot">
                            <div class="inner">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- eof SIDE BAR -->

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <!--        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery-1.11.3.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
        <script src="js/sidebar/jquery.ssd-vertical-navigation.min.js"></script>
        <script src="js/sidebar/app.js"></script>

        <script type="text/javascript">
           
            $(document).ready(function() {
                               
                displayHomePage();
                $('a.home').on('click',function(){
                    displayHomePage();
                });
                
                function displayHomePage() {
                    $("li").removeClass("active");
                    $.ajax({
                        type: "GET",
                        url: "content/home.jsp",
                        data: {},
                        success: function(data) {
                            $("#content").html( data ).show();
                        }
                    });
                };

                $('a.about').on('click',function(){
                    $.ajax({
                        type: "GET",
                        url: "content/about.jsp",
                        data: {},
                        success: function(data) {
                            $("#content").html( data ).show();
                        }
                    });
                });
                
                $('a.exp').on('click',function(){
                    $.ajax({
                        type: "GET",
                        url: "content/experience.jsp",
                        data: {},
                        success: function(data) {
                            $("#content").html( data ).show();
                        }
                    });
                });
                
                $('a.edu').on('click',function(){
                    $.ajax({
                        type: "GET",
                        url: "content/education.jsp",
                        data: {},
                        success: function(data) {
                            $("#content").html( data ).show();
                        }
                    });
                });
                
                $('a.pubs').on('click',function(){
                    $.ajax({
                        type: "GET",
                        url: "content/publications.jsp",
                        data: {},
                        success: function(data) {
                            $("#content").html( data ).show();
                        }
                    });
                });
                
                $('a.contact').on('click',function(){
                    $.ajax({
                        type: "GET",
                        url: "content/contact.jsp",
                        data: {},
                        success: function(data) {
                            $("#content").html( data ).show();
                        }
                    });
                });
                
                $('a.awards').on('click',function(){
                    $.ajax({
                        type: "GET",
                        url: "content/awards.jsp",
                        data: {},
                        success: function(data) {
                            $("#content").html( data ).show();
                        }
                    });
                });
                
                $('a.affiliation').on('click',function(){
                    $.ajax({
                        type: "GET",
                        url: "content/affiliations.jsp",
                        data: {},
                        success: function(data) {
                            $("#content").html( data ).show();
                        }
                    });
                });
                
            });
        </script>
    </body>
</html>


