<!DOCTYPE html>
<html lang="en">

<head>
	<!-- Meta -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Eesti Erapilootide Liit">
	<meta name="author" content="Karl-Mihkel Truu">
	<link rel="shortcut icon" href="./wp-content/uploads/2022/04/EEL_logo2-removebg-preview.png">

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
	<video id="background-video" autoplay loop muted poster="./wp-content/uploads/2022/05/poster.png">
		<source src="./wp-content/uploads/2022/04/clouds-bg-sm.mp4" type="video/mp4">
	</video>
	<!-- Facebook plugin -->
	<div id="fb-root"></div>
	<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v13.0" nonce="BbQtlEWV"></script>


	<div class="make-things-work">

		<header class="header text-center">

			<!-- <a class="site-title pt-lg-4 mt-4" href="https://pilots.ee"><?php echo get_bloginfo('name'); ?></a>
 -->


			<nav class="navbar navbar-dark">

				<div class="burger">
					<div class="line1"></div>
					<div class="line2"></div>
					<div class="line3"></div>
				</div>

				<div id="navigation" class=" flex-column ">
					<?php
					if (function_exists('the-custom-logo')) {
						$custom_logo_id = get_theme_mod('custom_logo');
						$logo = wp_get_attachment_image_src($custom_logo_id);
					}
					?>
					<a href="./"><img class="mb-3 mx-auto logo" src="./wp-content/uploads/2022/04/EEL_logo2-removebg-preview.png" alt="logo"></a>

					<?php

					wp_nav_menu(
						array(
							'menu' => 'primary',
							'container' => '',
							'theme_location' => 'primary',
							'items_wrap' => '<ul id="" class="navbar-nav flex-column text-lg-left text-md-left text-sm-left text-xs-left skew">%3$s</ul>'
						)
					);

					?>


					<ul class="social-list list-inline py-3 mx-auto">
						<li class="list-inline-item"><a href="https://www.facebook.com/pilots.ee"><i class="fab fa-facebook fa-fw"></i></a></li>

					</ul>

				</div>



			</nav>
			<?php
			dynamic_sidebar('sidebar-1');
			?>
		</header>

		<div class="main-wrapper">
			<div class="page-title text-center gradient py-5">
				<h2 class="heading"><?php the_title(); ?></h1>
			</div>
