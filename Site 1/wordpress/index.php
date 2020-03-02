<?php

	/*
	  Template Name: affichage_post
	*/
	
    if ( is_category() ) {
        get_header('category');
    }
    else {
        get_header(); 
    }


     ?>

<div class="separator" >
   <div class="ligne1" ></div>
   <div class="ligne2" ></div>
</div>



    	<div class="container" data-toggle="modal" data-target="#exampleModal<?php echo get_the_ID(); ?>" >
        	<div class="row" >
                <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
                    <?php get_template_part( 'templates_parts/template_category_post' ); ?>
                <?php endwhile; endif;?>
           </div>



            <div class="container" >
                 <!-- PAGINATION TYPE NUMERIQUE -->
                <?php bootstrap_pagination(); ?>
            </div>

<?php
	get_footer();
?>