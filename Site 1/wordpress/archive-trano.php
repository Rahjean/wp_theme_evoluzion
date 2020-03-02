<?php

 echo "archive trano" ;

    get_header('category');


	?>

        <div class="separator" >
           <div class="ligne1" ></div>
           <div class="ligne2" ></div>
        </div>

        <section class="section1" >
            <div class="container">

                <div class="container">
                        <div class="row" >
                          <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
                          <div class="col-md-3" >
                            <h1><?php the_title(); ?></h1>

                            <?php 

                              //Alaina ilay id avy aminy post_type trano apartir ilay champ mpanofa_trano izay nicrehena tao amin'ny acf 
                              $id_mpanofa_trano = get_post_meta( get_the_ID(), 'mpanofa_trano', true ); 
                              $mpanofa_trano_anarana = get_the_title($id_mpanofa_trano);
                              echo $mpanofa_trano_anarana;
                              ?><br>
                            <?php echo get_post_meta( get_the_ID(), 'hofa_trano', true ); ?><br>
                            <?php echo get_post_meta( get_the_ID(), 'abehany', true ); ?><br> 
                            
                          </div>
                           <?php endwhile; endif;?>
                        </div>
                </div>
              </div>

        </section>


<?php
	get_footer();
?>