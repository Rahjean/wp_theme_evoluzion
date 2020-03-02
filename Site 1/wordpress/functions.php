<?php 

// Ajouter la prise en charge des images mises en avant
add_theme_support( 'post-thumbnails' );//afaka manisy miniature anlay wordpress pour tous les pages ou articles

// Ajouter automatiquement le titre du site dans l'en-tête du site
add_theme_support( 'title-tag' );

// Menu
register_nav_menus( array(
    'menu1' => 'Menu1',
    'menu2' => 'Menu2',
    'menu3' => 'Menu3',
) );

// WIDGET ET SIDBAR
register_sidebar( array(
    'id' => 'blog-sidebar', //id no iaffichena anazy any am view zay tinao
    'name' => 'Sideber droigt',
    //manisy p na div ary amilay view
   'before_widget'  => '<div class="site__sidebar__widget %2$s">',
   'after_widget'  => '</div>',
   'before_title' => '<p class="site__sidebar__widget__title">',
   'after_title' => '</p>',
) );

//initialisation au debut de wordpress
// function test() {
//     echo "kkkkkkkkkkkkkk";
// }
// function test2() {
//     echo "test22222222222222222";
// }
// add_action('init', 'test'); //mapiditra hock
// add_action('init', 'test2'); //mapiditra hock
// remove_action('init', 'test');  //manala hock

add_theme_support( 'post-formats', array( 'aside', 'gallery' ) );//miaficher anlay type de format ary am articles oh: gallery, aside, ....


// Manala apartir an hock
//Manala menu ary am B.O
function capitaine_remove_menu_pages() {
 // remove_menu_page( 'tools.php' ); //manala ilay menu outils
    remove_menu_page( 'edit-comments.php' ); //manala ilay menu commentaire 
}
add_action( 'admin_menu', 'capitaine_remove_menu_pages' );



// resaka css sy jquery
// Rehefa tiana atao any ambany ny js dia asina true
function capitaine_register_assets() {
	wp_enqueue_style( 'acceuil_css', get_template_directory_uri() . '/css/acceuil.css');

	// BOOTSTRAP JS
    wp_enqueue_style('bootstrap_css', get_template_directory_uri() . '/bootstrap/css/bootstrap.min.css');
    // BOOTSTRAP JS

    
    // Déclarer jQuery
    wp_enqueue_script( 'jquery');
    
    // Déclarer le JS
	 wp_enqueue_script( 'capitaine', get_template_directory_uri() . '/js/script.js', array( 'jquery' ), '1.0', true);

   wp_enqueue_script( 'bootstrap', get_template_directory_uri() . '/bootstrap/js/bootstrap.min.js', true );


    
}
add_action( 'wp_enqueue_scripts', 'capitaine_register_assets' );





//Custom pagination avec bootstrap
function bootstrap_pagination( \WP_Query $wp_query = null, $echo = true ) {

  if ( null === $wp_query ) {
    global $wp_query;
  }

  $pages = paginate_links( [
      'base'         => str_replace( 999999999, '%#%', esc_url( get_pagenum_link( 999999999 ) ) ),
      'format'       => '?paged=%#%',
      'current'      => max( 1, get_query_var( 'paged' ) ),
      'total'        => $wp_query->max_num_pages,
      'type'         => 'array',
      'show_all'     => false,
      'end_size'     => 3,
      'mid_size'     => 1,
      'prev_next'    => true,
      'prev_text'    => __( '« Prev' ),
      'next_text'    => __( 'Next »' ),
      'add_args'     => false,
      'add_fragment' => ''
    ]
  );

  if ( is_array( $pages ) ) {
    //$paged = ( get_query_var( 'paged' ) == 0 ) ? 1 : get_query_var( 'paged' );

    $pagination = '<div class="pagination"><ul class="pagination">';

    foreach ($pages as $page) {
                        $pagination .= '<li class="page-item' . (strpos($page, 'current') !== false ? ' active' : '') . '"> ' . str_replace('page-numbers', 'page-link', $page) . '</li>';
                }

    $pagination .= '</ul></div>';

    if ( $echo ) {
      echo $pagination;
    } else {
      return $pagination;
    }
  }

  return null;
}


//#################Lire la suite d'un article #####################################""

function lireSuite(){
  global $lire;
  return '<a href="'.get_permalink($lire->ID).'"> Lire la suite </a>';
}
add_filter('excerpt_more', 'lireSuite');




//##################################Creation post type ####################

// Our custom post type function
// function trano() {
 
//     register_post_type( 'trano',
//     // CPT Options
//         array(
//             'labels' => array(
//                 'name' => __( 'Trano' ),
//                 'singular_name' => __( 'Trano' )
//             ),
//             'public' => true,
//             'has_archive' => true,
//             'rewrite' => array('slug' => 'trano'),
//         )
//     );

//     register_post_type( 'mpanofa_trano',
//     // CPT Options
//         array(
//             'labels' => array(
//                 'name' => __( 'Mpanofa_trano' ),
//                 'singular_name' => __( 'Mpanofa_trano' )
//             ),
//             'public' => true,
//             'has_archive' => true,
//             'rewrite' => array('slug' => 'mpanofa_trano'),
//         )
//     );
// }


// // Hooking up our function to theme setup
// add_action( 'init', 'trano' );


function capitaine_register_post_types() {
  
    // CPT Portfolio
    $labels = array(
        'name' => 'Trano',
        'all_items' => 'Trano rehetra',  // affiché dans le sous menu
        'singular_name' => 'Projet Trano',
        'add_new_item' => 'Ajouter un trano',
        'edit_item' => 'Modifier le projet',
        'menu_name' => 'Trano'
    );

  $args = array(
        'labels' => $labels,
        'public' => true,
        'show_in_rest' => true,
        'has_archive' => true,
        'supports' => array( 'title', 'thumbnail' ),
        'menu_position' => 5, 
        'menu_icon' => 'dashicons-admin-customizer',
  );

  register_post_type( 'trano', $args );

    $labels = array(
        'name' => 'mpanofatrano',
        'all_items' => 'Mpanofa tranorehetra',  // affiché dans le sous menu
        'singular_name' => 'Projet Trano',
        'add_new_item' => 'Ajouter un trano',
        'edit_item' => 'Modifier le projet',
        'menu_name' => 'Mpanofa trano'
    );

  $args = array(
        'labels' => $labels,
        'public' => true,
        'show_in_rest' => true,
        'has_archive' => true,
        'supports' => array( 'title', 'thumbnail' ),
        'menu_position' => 5, 
        'menu_icon' => 'dashicons-admin-customizer',
  );

  register_post_type( 'mpanofatrano', $args );
}
add_action( 'init', 'capitaine_register_post_types' ); // Le hook init lance la fonction


// #######################" Shortcode
function foobar_func( $atts ){
  $args = array( 'post_type' => 'trano' );
  $query = new WP_Query( $args );
 
// The Loop
while ( $query->have_posts() ) {
    $query->the_post();
    $output = $output . get_the_title();
}
  return  $output;

}
add_shortcode( 'foobar', 'foobar_func' );



