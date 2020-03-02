<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    
    <?php wp_head(); ?>
</head>
 
<body>
	<header>
		<div class="gauche">
			<p>Attention,emprunter de l'argent coute aussi de l'argent</p>
		</div>
		<div class="droite">
			<a href="#">COMPARATEUR <img class="fl_cl" src="<?php echo get_template_directory_uri(); ?>/img/fl.png"></a>
		</div>
	</header>

	<section class="section_logo">
		
		<div class="menu_logo" >
			<div class="logo" >
				<img src="<?php echo get_template_directory_uri(); ?>/img/logo.png">
			</div>

			<div class="logo_menu_li">
				<?php 
                    wp_nav_menu( 
                    array( 
                        'theme_location' => 'menu1', 
                        'container' => 'div', // afin d'éviter d'avoir une div autour 
                        'menu_class' => '', // ma classe personnalisée 
                        ) 
                    );  
                 ?>
			</div>
		</div>
	</section>


