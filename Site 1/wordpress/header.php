<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    
    <?php wp_head(); ?>
</head>

<body <?php body_class(""); ?>>


  <header class="header">

    <div class="body_kely" >
        <div class="logo" >
            <img src="<?php echo get_template_directory_uri(); ?>/img/sary1.png">
        </div>

        <div class="sary2">
           <a href="/wordpress"><img src="<?php echo get_template_directory_uri(); ?>/img/sary2.png"></a>
           
        </div>



        <div class="sary3">
            
            <div class="logo_search">
               <p class="slogon" >Rechercher categorie</p>
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
                <div class="form-group">
                    <form action="" method="get">
                        <input type="text" placeholder="Rechercher" name="s" id="search" class="form-control col-md-12" value="<?php the_search_query(); ?>" />
                    </form>
                </div>
            </div>

           
        </div>

    </div>
  </header>
