<!DOCTYPE HTML>
<!--[if IEMobile 7]><html class="no-js iem7 oldie"><![endif]-->
<!--[if (IE 7)&!(IEMobile)]><html class="no-js ie7 oldie" lang="en"><![endif]-->
<!--[if (IE 8)&!(IEMobile)]><html class="no-js ie8 oldie" lang="en"><![endif]-->
<!--[if (IE 9)&!(IEMobile)]><html class="no-js ie9" lang="en"><![endif]-->
<!--[if (gt IE 9)|(gt IEMobile 7)]><!--><html class="no-js" lang="en"><!--<![endif]-->
<head>

    <title>FelisCMS 4 - {$titleTag}</title>
    <!-- mete dane -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="author" content="Mateusz Serwinowski (serwin) - Blue-NET.pl">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <meta name="viewport" content="user-scalable=0, initial-scale=1.0, target-densitydpi=115">

    <!-- Style -->
	{stylesheet style=$_CSS}

    <!-- favglyphicon glyphicon-->
    <link rel="shortcut icon" href="{$TEMPLATES}assets/img/favicon.png">
    <!-- Microsoft clear type rendering -->
    <meta http-equiv="cleartype" content="on">
    <!-- JavaScript at bottom except for Modernizr -->
    <script src="{$TEMPLATES}assets/js/libs/modernizr.custom.js"></script>


    <!-- For all browsers -->
    <link rel="stylesheet" href="{$TEMPLATES}assets/css/style.css">
    <link rel="stylesheet" href="{$TEMPLATES}assets/css/felis.style.css">
    <link rel="stylesheet" href="{$TEMPLATES}assets/css/felis.colors.css">
    <link rel="stylesheet" href="{$TEMPLATES}assets/css/felis.fonts.css">
    <link rel="stylesheet" href="{$TEMPLATES}assets/css/felis.responsive.css">
    <link rel="stylesheet" media="print" href="{$TEMPLATES}assets/css/print.css">

    <!-- Additional styles -->
    <link rel="stylesheet" href="{$TEMPLATES}assets/css/felis/felis.agenda.css">
    <link rel="stylesheet" href="{$TEMPLATES}assets/css/felis/felis.dashboard.css">
    <link rel="stylesheet" href="{$TEMPLATES}assets/css/felis/felis.form.css">
    <link rel="stylesheet" href="{$TEMPLATES}assets/css/felis/felis.modal.css">
    <link rel="stylesheet" href="{$TEMPLATES}assets/css/felis/felis.progress-slider.css">
    <link rel="stylesheet" href="{$TEMPLATES}assets/css/felis/felis.switches.css">
    <link rel="stylesheet" href="{$TEMPLATES}assets/css/fonts/font-awesome/font-awesome.css">

    <!-- Webfonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300' rel='stylesheet' type='text/css'>

{block name="head"}{/block}

</head>
<body class="clearfix with-menu">


    <!-- Main content
    ================================================== -->
    <section role="main" id="main">
        <section id="mainContent">
            {include file="assets/helpview/header.tpl"}

            {block name="header"}{/block}

        <!-- Alerts messages
        ================================================== -->
        {if $permissions}
        <section id="alerts">
            {foreach from=$permissions item=item name=permission}
            <div class="alert alert-danger">
              <a class="close" data-dismiss="alert" href="#" aria-hidden="true">&times;</a>
              <strong>{lang line="default_warning"}!</strong> {lang line="folder_permission" vars=$item}.
            </div>
            {/foreach}
        </section>
        {/if}

            {block name="content"}{/block}

        </section>
    </section>

   <!-- Sidebar
    ================================================== -->
    {include file="assets/helpview/sidebar.tpl"}

{include file="assets/helpview/footer.tpl"}

{block name="jQuery"}{/block}

</body>
</html>