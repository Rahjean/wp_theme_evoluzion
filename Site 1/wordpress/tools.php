<!-- Affichage sidebar -->
<aside class="site__sidebar">
  <ul>
      <?php dynamic_sidebar( 'blog-sidebar' ); ?>
  </ul>
</aside>

--------------------------------------------------------------------------------------------------------------------

<!-- RECHERCHE INPUT WP -->
<!-- recherche wordpress par defaut raha tsisy searchform.php noforonina dia ilay an wp par defaut no iafficheny azy-->
<?php get_search_form(); ?>

-------------------------------------------------------------------------------------------------------------------


<!-- afficher le page suivant et precedent  na mapiasa ilay voalo na ilay faharoa raha T imodifier ny ao anatiny-->
<!-- <?php posts_nav_link(); ?> -->
<div class="site__navigation">
    <div class="site__navigation__prev">
        <?php previous_posts_link( 'Page Précédente' ); ?>
    </div>
    <div class="site__navigation__next">
        <?php next_posts_link( 'Page Suivante' ); ?> 
    </div>
</div>



----------------------------------------------------------------------------------------------------------------

<!-- PAGINATION TYPE NUMERIQUE -->
<?php the_posts_pagination(); ?>
<!-- RAHA T imodifier css anilay pagination numerique -->
<nav class="navigation pagination" role="navigation">
    <h2 class="screen-reader-text">Navigation des articles</h2>
    <div class="nav-links">
        <a class="prev page-numbers" href="https://wp.local/blog/">Précédent</a>
        <a class="page-numbers" href="https://wp.local/blog/">1</a>
        <span aria-current="page" class="page-numbers current">2</span>
        <a class="page-numbers" href="https://wp.local/blog/page/3/">3</a>
        <span class="page-numbers dots">…</span>
        <a class="page-numbers" href="https://wp.local/blog/page/6/">6</a>
        <a class="next page-numbers" href="https://wp.local/blog/page/3/">Suivant</a>
    </div>
</nav>







----------------------------------------------------------------------------------------------------------

<!-- MENUUUUUUUUUUU placer dana le header.php -->
<?php wp_head();
	// wp_enqueue_style('bootstrap_css',  get_template_directory_uri() . '/css/acceuil.css', );
    // wp_nav_menu( array( 'theme_location' => 'menu1' ) );
    wp_nav_menu( 
    array( 
        'theme_location' => 'menu1', 
        'container' => 'div', // afin d'éviter d'avoir une div autour 
        'menu_class' => 'menu1', // ma classe personnalisée 
        ) 
    );   
?>


<!-- affichage menu footer  -->
<?php wp_footer(); 

	wp_nav_menu( array( 'theme_location' => 'menu_' ) );

?>
</body>
</html>


-----------------------------------------------------------------------------------------------------------------------

<?php 



    //CUSTOM PAGINATION AVEC BOOTSTRAP a mettre dans le fonction et appeler le nom du fonction dans view
    //   <?php bootstrap_pagination();
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




----------------------------------------------------------------------------------------------------------------------------

// ######### tiana anana page anazy manokana ny category rehefa aseo dia micreer fichier atao oe category-{id}.php ary asina id anilay category nocrehena izay ita ary am B.O an wordpress
//Mila alaina ilay id isaky ny category -- CLICK DROIT eo amilay category ohatra oe Promotion

----------------------------------------------------------------------------------------------------------------------------




//Affichage image au lieu de lien dans le menu
$terms = get_terms('category');
if ( ! is_wp_error( $terms ) && ! empty( $terms ) ) {
    echo '<ul>';
    foreach ($terms as $term) {
        $sary = get_field('image_cat', $term);
        echo '<a href="'.get_term_link($term->slug, 'category').'"><img src="'.$sary.'"></a>';
    }
    echo '</ul>';
}



-------------------------------------------------------------------------------------------------------------------------

//TEMPLATES-Parts

<?php get_template_part( 'templates_parts/template_category_post' ); ?>

<!-- Ampiasaina ny  get_template_part(); rehefa tsy tiana ny icreer view iray miverimberina any anaty site

    ohatra: ao anaty index.php no apetrako ilay <?php get_template_part( 'templates_parts/template_category_post' ); ?>
 
    satria tiko iheritier anilay vue io daholy ny page rehetra.

-->



--------------------------------------------------------------------------------------------------------

<!-- MAMOKA SARY AU LIEU DE LIEN SUR LE HEADER -->


<?php 

    //Affichage ilay category de type image fa tsy lien menu
    $terms = get_terms('category');
        if ( ! is_wp_error( $terms ) && ! empty( $terms ) ) {
            echo '<ul>';
            foreach ($terms as $term) {
                $sary = get_field('image_cat', $term);
                echo '<a href="'.get_term_link($term->slug, 'category').'"><img src="'.$sary.'"></a>';
            }
            echo '</ul>';
        }



 ?>


 ?>


--------------------------------------------------------------------------------------------------------------
<?php 

    //#################Lire la suite d'un article #####################################""

function lireSuite(){
  global $lire;
  return '<a href="'.get_permalink($lire->ID).'"> Lire la suite </a>';
}
add_filter('excerpt_more', 'lireSuite');



//mila atao ary amilay index.php na izay view tiana isihanilay "lire la suite" ito 
if (is_single()) { ?>
    <p><?php the_content(); ?></p>
     <?php } else { ?>
    <p><?php the_excerpt(); ?></p>
    <?php  
}
?>


 ?>


 --------------------------------------------------------------------------------------------------------------------

 <?php 

//##################################Creation post type ####################

function capitaine_register_post_types() {
  
    // CPT Portfolio
    $labels = array(
        'name' => 'Portfolio',
        'all_items' => 'Tous les projets',  // affiché dans le sous menu
        'singular_name' => 'Projet',
        'add_new_item' => 'Ajouter un projet',
        'edit_item' => 'Modifier le projet',
        'menu_name' => 'Portfolio'
    );

  $args = array(
        'labels' => $labels,
        'public' => true,
        'show_in_rest' => true,
        'has_archive' => true,
        'supports' => array( 'title', 'editor','thumbnail' ),
        'menu_position' => 5, 
        'menu_icon' => 'dashicons-admin-customizer',
  );

  register_post_type( 'portfolio', $args );
}
add_action( 'init', 'capitaine_register_post_types' ); // Le hook init lance la fonction

  ?>

  --------------------------------------------------------------------------------

  <?php 

    //Shortcode
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

?>

