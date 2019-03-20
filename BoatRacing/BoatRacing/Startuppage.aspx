
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Startuppage.aspx.cs" Inherits="Startuppage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Boat Competition</title>
<!--
Ocean Theme
http://www.templatemo.com/tm-484-ocean
-->

    <!-- load stylesheets -->
    
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400"><!-- Google web font "Open Sans", https://www.google.com/fonts/specimen/Open+Sans -->
    <link rel="stylesheet" href="font-awesome-4.5.0/css/font-awesome.min.css"> <!-- Font Awesome, https://fortawesome.github.io/Font-Awesome/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">                       <!-- Bootstrap style, http://v4-alpha.getbootstrap.com/ -->
    <link rel="stylesheet" href="css/templatemo-style.css">                    <!-- Templatemo style -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
</head>

    <body>

        <form id="form1" runat="server">

        <div class="container-fluid">
            
            <div class="row"> 

                <section class="tm-section-intro">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                        
                        <div class="tm-wrapper-center">
                            <h1 class="tm-section-intro-title">
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" PostBackUrl="~/Login.aspx">Login</asp:LinkButton>
                            </h1>
                            <h1 class="tm-section-intro-title">Boat Competition
                            </h1>
                            <p class="tm-section-intro-text">Take ride and win the ride<br>
                            Feel free to participate in boat competition.
                            </p>
                            <a href="#tm-section-2" class="tm-btn-white-big">Services</a>
                        </div>            
                    </div>
                    
                </section>    

            </div>

            <div class="row" id="tm-section-2">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">

                    <!-- slider -->
                    <section>
                        <div id="tmCarousel" class="carousel slide tm-carousel" data-ride="carousel" data-interval="false"> <!-- If you want to make the carousel auto play, remove data-interval="false" -->

                            <ol class="carousel-indicators">
                                <li data-target="#tmCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#tmCarousel" data-slide-to="1" class=""></li>
                                <li data-target="#tmCarousel" data-slide-to="2" class=""></li>
                            </ol>

                            <div class="carousel-inner" role="listbox">
                            
                                <div class="carousel-item active">
                                    <div class="carousel-content">
                                        <div>
                                            <h2 class="tm-carousel-item-title">Quality</h2>
                                            <p class="tm-carousel-item-text">We provide you best qualities boats and services for competition.<br>
                                           You can easily register for competition from our website and see your results.</p>
                                        </div>
                                    </div>                               
                                </div>

                                <div class="carousel-item">
                                    <div class="carousel-content">
                                        <div>
                                            <h2 class="tm-carousel-item-title">Security</h2>
                                            <p class="tm-carousel-item-text">You can register for competition without worry because we provide you secured system<br>
                                            Your information is secured.<br>
                                            We dont compromise on personal security.</p>
                                        </div>
                                    </div>                                
                                </div>

                                <div class="carousel-item">
                                    <div class="carousel-content">
                                        <div>
                                            <h2 class="tm-carousel-item-title">Customer Satisfaction</h2>
                                            <p class="tm-carousel-item-text">You can freely register from any where of the world.<br>
                                           Also you can check your results from any where.<br>
                                            We beleive in customer satisfaction.</p>
                                        </div>
                                    </div>                                
                                </div>

                            </div>
                            
                        </div>                    
                    </section>
                </div>
            </div> <!-- row -->

            <div class="row">
                
                <section class="tm-2-col-img-text tm-2-col-img-lg-right">
                    
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-2-col-img">                    
                        <img src="img/boat1.png" alt="Image" class="img-fluid">
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-2-col-text">
                        <h2 class="tm-2-col-text-title">Yatch Racing</h2>
                        <p class="tm-2-col-text-description">
                            
                            Think big become part of a team where every crew member 
                            makes a difference? Take on the wind, push yourself
                            to the limit and race to the finish line.
                        </p>
                        <a href="#" class="tm-bordered-btn">Read More</a>
                    </div>
                    
                </section>

            </div> <!-- row -->

            <div class="row">
                
                <section class="tm-2-col-img-text tm-2-col-img-lg-left">
                    
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-2-col-img">                    
                        <img src="img/boat2.png" alt="Image" class="img-fluid">
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-2-col-text">
                        <h2 class="tm-2-col-text-title">Boat Racing</h2>
                        <p class="tm-2-col-text-description">
                            Feel the rush, embrace the moment and become world class.
                            Race alone or you can racing as a team.
                          
                        </p>
                        <a href="#" class="tm-bordered-btn">Read More</a>
                    </div>
                    
                </section>

            </div> <!-- row -->

            <!-- About -->
            <div class="row tm-section tm-blue-bg-row">
                
                <section>

                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 text-xs-center">
                            <h2 class="tm-section-title">About our Project</h2>
                            <p class="tm-section-subtitle">
                             
                                We created a boat competition system where you can register for competion according to where you are interested. We provide you best services so you can take part and feel comfortable.We provided pages for admin, user and manager.</p>    
                        </div>
                        
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                            
                            <div class="tm-icon-text-boxes-container">
                            
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                                    <div class="tm-icon-text-box">
                                        <i class="fa fa-5x fa-mixcloud"></i>
                                        <h3 class="tm-icon-text-box-title">Accessibility</h3>
                                        <p class="tm-icon-text-box-description">Our project is on the cloud github.</p>
                                    </div>
                                </div>

                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                                    <div class="tm-icon-text-box">
                                        <i class="fa fa-5x fa-line-chart"></i>
                                        <h3 class="tm-icon-text-box-title">Rating</h3>
                                        <p class="tm-icon-text-box-description">We have a great response from user after this project.</p>
                                    </div>
                                </div>

                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                                    <div class="tm-icon-text-box">
                                        <i class="fa fa-5x fa-group"></i>
                                        <h3 class="tm-icon-text-box-title">Project Developer</h3>
                                        <p class="tm-icon-text-box-description">NAMES</p>
                                    </div>
                                </div>

                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                                    <div class="tm-icon-text-box">
                                        <i class="fa fa-5x fa-globe"></i>
                                        <h3 class="tm-icon-text-box-title">Website</h3>
                                        <p class="tm-icon-text-box-description">We provide you simple website for user easibility.</p>
                                    </div>
                                </div>

                            </div>

                        </div>

                </section>

            </div> <!-- row -->

            <div class="row tm-section">
                
                <section class="tm-section-contact">
                    
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 text-xs-center">
                        
                        <h2 class="tm-section-title">Contact Us</h2>
                        <p class="tm-section-subtitle">Coventry University</p>

                    </div>

                   
                    
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-5 col-xl-5 tm-contact-right">
                        <h3 class="tm-contact-title">Our Address</h3>
                        <p class="tm-contact-info">EEC Faculty Computer Science Department Priory Street Coventry university, CV1 5FB
                        </p>
                        <p class="tm-contact-info"> 
                            Email: <a href="nuosua3@uni.coventry.ac.uk">coventry@uni.coventry.ac.uk</a><br>
                            
                        </p>
                        <p class="tm-contact-info">
                            Phone: <a href="tel:0100100110">012345678</a>
                        </p>
                        
                    </div>

                </section>

            </div>

            <div class="row">                
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">                    
                    <hr>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                 
                </div>
            </div>
            
        </div> <!-- container-fluid -->   

        <!-- load JS files -->
        <script src="js/jquery-1.11.3.min.js"></script>             <!-- jQuery, https://jquery.com/download/ -->
        <script src="https://www.atlasestateagents.co.uk/javascript/tether.min.js"></script> <!-- Tether for Bootstrap, http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h -->
        <script src="js/bootstrap.min.js"></script>                 <!-- Bootstrap, http://v4-alpha.getbootstrap.com/ -->
        <script src="js/jquery.touchSwipe.min.js"></script>         <!-- http://labs.rampinteractive.co.uk/touchSwipe/demos/ -->
        
        <script>     
       
            $(document).ready(function(){

                /* Smooth Scrolling
                 * https://css-tricks.com/snippets/jquery/smooth-scrolling/
                --------------------------------------------------------------*/
                $('a[href*="#"]:not([href="#"])').click(function() {
                    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') 
                        && location.hostname == this.hostname) {
                        
                        var target = $(this.hash);
                        target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
                        
                        if (target.length) {
                            
                            $('html, body').animate({
                                scrollTop: target.offset().top
                            }, 1000);
                            return false;
                        }
                    }
                }); 
                
                /* Enable swiping for tablets and mobile
                 * http://lazcreative.com/blog/adding-swipe-support-to-bootstrap-carousel-3-0/
                 ---------------------------------------------------------------------------------*/
                if($(window).width() <= 991) {
                    $(".carousel-inner").swipe( {
                        //Generic swipe handler for all directions
                        swipeLeft:function(event, direction, distance, duration, fingerCount) {
                            $(this).parent().carousel('next'); 
                        },
                        swipeRight: function() {
                            $(this).parent().carousel('prev'); 
                        },
                        //Default is 75px, set to 0 for demo so any distance triggers swipe
                        threshold:0
                    });
                }  

                /* Handle window resize */
                $(window).resize(function(){
                    if($(window).width() <= 991) {
                        $(".carousel-inner").swipe( {
                            //Generic swipe handler for all directions
                            swipeLeft:function(event, direction, distance, duration, fingerCount) {
                                $(this).parent().carousel('next'); 
                            },
                            swipeRight: function() {
                                $(this).parent().carousel('prev'); 
                            },
                            //Default is 75px, set to 0 for demo so any distance triggers swipe
                            threshold:0
                        });
                     }
                });              
                           
            });

        </script>             

        </form>

</body>
</html>