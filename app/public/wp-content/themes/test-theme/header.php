<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Blog Site Template">
    <meta name="author" content="https://youtube.com/FollowAndrew">
    <link rel="shortcut icon" href="/Users/krlmhkl/Local Sites/pilots/app/public/wp-content/themes/test-theme/assets/images/logo.png">

    <!-- FontAwesome CSS, Bootstrap CSS and Theme CSS get inserted by wp_head, check functions.php for more details -->
    <?php
    wp_head();
    ?>

	<!-- Google Fonts -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@300;400;500;600;700&display=swap" rel="stylesheet">


</head>

<body>

    <header class="header text-center">
	    <a class="site-title pt-lg-4 mb-0" href="index.html">Eesti Erapilootide Liit</a>

	    <nav class="navbar navbar-expand-lg navbar-dark" >

			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			</button>

			<div id="navigation" class="collapse navbar-collapse flex-column" >
				<img class="mb-3 mx-auto logo" src="images/logo.png" alt="logo" >

                <?php

                    wp_nav_menu(
                        array(
                            'menu' => 'primary',
                            'container' => '',
                            'theme_location' => 'primary',
                            'items_wrap' => '<ul id="" class="navbar-nav flex-column text-lg-left text-md-left text-sm-left text-xs-left">%3$s</ul>'
                        )
                    );

                ?>


				<ul class="social-list list-inline py-3 mx-auto">
					<li class="list-inline-item"><a href="#"><i class="fab fa-facebook fa-fw"></i></a></li>

				</ul>

			</div>
		</nav>
    </header>
    <div class="main-wrapper">
	    <header class="page-title theme-bg-light text-center gradient py-5">
			<h1 class="heading"><?php the_title(); ?></h1>
		</header>
