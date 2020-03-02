<?php

 //echo "################ single page #############################" ;

    get_header('category');


	?>

        <div class="separator" >
           <div class="ligne1" ></div>
           <div class="ligne2" ></div>
        </div>

        <section class="section1" >
           

            <div class="container">
                
                <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
                    <?php echo get_post_meta( get_the_ID(), 'hofa_trano', true ); ?><br>
                    <?php echo get_post_meta( get_the_ID(), 'abehany', true ); ?><br>    
                <?php endwhile; endif;?>
              </div>
        </section>




<?php
	get_footer();
?>