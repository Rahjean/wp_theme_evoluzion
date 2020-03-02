<?php

     //echo "category-17";

    get_header('category');


	?>

<div class="separator" >
   <div class="ligne1" ></div>
   <div class="ligne2" ></div>
</div>



    	<div class="container" >
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