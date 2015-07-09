{% import "../mixins/flash-messages.swig" as FlashMessages %}

<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<title>{{ title|default("Specky Blog") }}</title>
		<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
        <meta name="description" content="Specky Intelligent Job Descriptions">
        <meta name="keywords" content="recruting, passive candidates, job specs, job descriptions">
        <link rel="icon" type="image/png" href="/img/favicons/favicon-196x196.png" sizes="196x196" />
        <link rel="icon" type="image/png" href="/img/favicons/favicon-96x96.png" sizes="96x96" />
        <link rel="icon" type="image/png" href="/img/favicons/favicon-32x32.png" sizes="32x32" />
        <link rel="icon" type="image/png" href="/img/favicons/favicon-16x16.png" sizes="16x16" />
        <link rel="icon" type="image/png" href="/img/favicons/favicon-128.png" sizes="128x128" />        
        
		{# Customise the stylesheet for your site by editing /public/styles/site.less
		//- All .less files will be automatically compiled and minified in production. #}
		<link href="/styles/site.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css" media="all" />
        <link rel="stylesheet" href="assets/css/font-awesome.min.css" type="text/css" media="all" />
        <link rel="stylesheet" href="assets/css/font-lineicons.css" type="text/css" media="all" />
        <link rel="stylesheet" href="assets/css/animate.css" type="text/css" media="all" />
        <link rel="stylesheet" href="assets/css/toastr.min.css" type="text/css" media="all" />
        <link rel="stylesheet" href="assets/css/style.css" type="text/css" media="all" />        

		{# This file provides the default styling for the KeystoneJS Content Editor #}
		{%- if user and user.canAccessKeystone -%}
			<link href="/keystone/styles/content/editor.min.css" rel="stylesheet">
		{%- endif -%}

		{# HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries
		   Safely remove this block if you are not targeting IE8 #}
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->

		{# Include template-specific stylesheets by extending the css block #}
		{%- block css %}{% endblock -%}

		{# Add any other template-specific HEAD tags by extending the head block #}
		{%- block head %}{% endblock %}
	</head>
	<body id="landing-page">

		{# HEADER #}
	 <!-- Preloader -->
        <div id="mask">
            <div id="loader"></div>
        </div>

        <header>
            <nav class="navigation navigation-header">
                <div class="container">
                    <div class="navigation-brand">
                        <div class="brand-logo">
                            <a href="index.html" class="logo"></a>
                            <span class="sr-only">Specky</span>
                        </div>
                        <button class="navigation-toggle visible-xs" type="button" data-toggle="dropdown" data-target=".navigation-navbar">
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="navigation-navbar">
                        <ul class="navigation-bar navigation-bar-left">
                            <li class="active"><a href="#hero">Home</a></li>
                            <li><a href="#about">About</a></li>
                            <li><a href="#features">Features</a></li>
                            <li><a href="#product">Prices</a></li>
                            <li><a href="/blog">Blog</a></li>
                            <li><a href="/keystone">Keystone</a></li>
                            <li><a href="#guarantee">Contacts</a></li>
                        </ul>
                        <ul class="navigation-bar navigation-bar-right">
                            <li><a href="register.html">Login</a></li>
                            <li class="featured"><a href="register.html">Sign up</a></li>
                        </ul>  
                    </div>
                </div>
            </nav>
        </header>

		{# BODY #}
		<div id="body">
			{# NOTE:
			   There is no .container wrapping class around body blocks to allow more flexibility in design.
			   Remember to include it in your templates when you override the intro and content blocks! #}

			{# The Intro block appears above flash messages (used for temporary information display) #}
			{%- block intro -%}{%- endblock -%}

			{# Flash messages allow you to display once-off status messages to users, e.g. form
			   validation errors, success messages, etc. #}
			{{ FlashMessages.renderMessages(messages) }}

			{# The content block should contain the body of your template"s content #}
			{%- block content -%}{%- endblock -%}
		</div>

		{# FOOTER #}
      <footer id="footer" class="footer light">
            <div class="container">
                <div class="footer-content row">
                    <div class="col-sm-4">
                        <div class="logo-wrapper">
                            <img src="assets/img/logo.png" alt="logo" />
                        </div>
                        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco. Qui officia deserunt mollit anim id est laborum. Ut enim ad minim veniam, quis nostrud exercitation ullamco. Nisi ut aliquid ex ea commodi consequatur?</p>
                        <p><strong>John Doeson, Founder</strong>.</p>
                    </div>
                    <div class="col-sm-5 social-wrap">
                        <div class="footer-title">Social Networks</div>
                        <ul class="list-inline socials">
                            <li><a href="#"><span class="icon icon-socialmedia-08"></span></a></li>
                            <li><a href="#"><span class="icon icon-socialmedia-09"></span></a></li>
                            <li><a href="#"><span class="icon icon-socialmedia-16"></span></a></li>
                            <li><a href="#"><span class="icon icon-socialmedia-04"></span></a></li>
                        </ul>
                        <ul class="list-inline socials">
                            <li><a href="#"><span class="icon icon-socialmedia-07"></span></a></li>
                            <li><a href="#"><span class="icon icon-socialmedia-16"></span></a></li>
                            <li><a href="#"><span class="icon icon-socialmedia-09"></span></a></li>
                            <li><a href="#"><span class="icon icon-socialmedia-08"></span></a></li>
                        </ul>
                    </div>
                    <div class="col-sm-3">
                        <div class="footer-title">Our Contacts</div>
                        <ul class="list-unstyled">
                            <li>
                                <span class="icon icon-chat-messages-14"></span> 
                                <a href="mailto:info@startup.ly">info@startup.ly</a>
                            </li>
                            <li>
                                <span class="icon icon-seo-icons-34"></span> 
                                2901 Marmora road, Glassgow, Seattle, WA 98122-1090
                            </li>
                            <li>
                                <span class="icon icon-seo-icons-17"></span>
                                1 - 234-456-7980
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="copyright">startup.ly 2014. All rights reserved.</div>
        </footer>

        <div class="back-to-top"><i class="fa fa-angle-up fa-3x"></i></div>

		{# JAVASCRIPT #}

        <!--[if lt IE 9]>
            <script type="text/javascript" src="assets/js/jquery-1.11.0.min.js?ver=1"></script>
        <![endif]-->  
        <!--[if (gte IE 9) | (!IE)]><!-->  
         <script type="text/javascript" src="assets/js/jquery-2.1.0.min.js?ver=1"></script>
        <!--<![endif]-->  

        <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="assets/js/jquery.flexslider-min.js"></script>
        <script type="text/javascript" src="assets/js/jquery.nav.js"></script>
        <script type="text/javascript" src="assets/js/jquery.appear.js"></script>
        <script type="text/javascript" src="assets/js/jquery.plugin.js"></script>
        <script type="text/javascript" src="assets/js/jquery.countdown.js"></script>
        <script type="text/javascript" src="assets/js/waypoints.min.js"></script>
        <script type="text/javascript" src="assets/js/waypoints-sticky.min.js"></script>
        <script type="text/javascript" src="assets/js/jquery.validate.js"></script>
        <script type="text/javascript" src="assets/js/toastr.min.js"></script>
        <script type="text/javascript" src="assets/js/headhesive.min.js"></script>
        <script type="text/javascript" src="assets/mailchimp/js/mailing-list.js"></script>
        <script type="text/javascript" src="assets/js/scripts.js"></script>                


		{# The KeystoneJS Content Editor provides support for ks-editable data attributes,
			which generate links to edit content for users who can access Keystone #}
		{% if user and user.canAccessKeystone -%}
	    <script src="/keystone/js/content/editor.js"></script>
		{%- endif -%}

		{# Add scripts that are globally required by your site here. #}

		{# Include template-specific javascript files by extending the js block #}
		{%- block js -%}{%- endblock -%}
	</body>
</html>
