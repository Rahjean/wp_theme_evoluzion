<?php 

// Ajouter la prise en charge des images mises en avant
add_theme_support( 'post-thumbnails' );

// Ajouter automatiquement le titre du site dans l'en-tête du site
add_theme_support( 'title-tag' );

//manala ilay menubar-admin rehefa ary am site
add_filter('show_admin_bar', '__return_false');

function capitaine_register_assets() {
	wp_enqueue_style( 'acceuil_css', get_template_directory_uri() . '/css/accueil.css');
 
}
add_action( 'wp_enqueue_scripts', 'capitaine_register_assets' );

// Menu
register_nav_menus( array(
    'menu1' => 'Menu1',
    'menu2' => 'Menu',
) );