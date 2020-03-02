<?php

	/*
	  Template Name: affichage_post
	*/

	get_header(); ?>
    	<div class="container" >
    		<div class="row" >
			<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
                
                <div class="container" >
                    <div class="col-md-4 article" >
                        <div class="row">
                            <div class="col-md-4" >
                                <?php
                                    $image = get_post_meta( get_the_ID(), 'image', true ); 
                                    $imgarray = wp_get_attachment_image_src( $image, 'full');
                                    echo '<img src="'.$imgarray[0].'">' ;
                                ?>
                            </div>

                            <div class="col-md-8" >
                                <p>Gerant: <?php echo get_post_meta( get_the_ID(), 'gerant', true ); ?><br>
                                   Date de creation: <?php the_field('date'); ?><br>
                                   Effectif: <?php echo get_post_meta( get_the_ID(), 'gerant', true ); ?> 
                                </p>    
                            </div>
                        </div>

                        <div class="row" >
                            <p> <?php echo get_post_meta( get_the_ID(), 'titre', true ); ?> </p>
                        </div>

                        <div class="row" >
                            <?php 

                                  $resultat = get_field('resultat');
                                  
                                  // $resultat = get_field('resultat');
                                  $data_key = get_field_object('field_5e219a5e1da89')['choices'];
                                    foreach ($data_key as $res) {
                                        // echo '<span>' .$res. '</span>' ;
                                        if ($res == 'Bon') { 
                                            $class = 'trans vert';
                                            if ($resultat[0] == 'Bon') {
                                            $class .= 'active';
                                            }
                                        };
                                        if ($res == 'Moyen') {
                                            $class = 'trans orange';
                                            if ($resultat[0] == 'Moyen') {
                                                $class .= 'active';
                                            }
                                        } ;  
                                        if ($res == 'Mauvais') { 
                                            $class = 'trans violet';
                                            if ($resultat[0]) {
                                                $class .= 'active';
                                            }
                                         } ;
                                        echo '<span class="'.$class.'" > '.$res.' </span>' ; 
                                    }
                            ?>

                        </div>

                        <div class="row" >
                            <?php the_excerpt(); ?>
                        </div>
                    </div>
                </div>

                   
                    <div class="container">
                        <div class="row" >
                        <?php 
                            $tags = get_the_tags();
                            //make sure we have some
                            if ($tags) {
                             //foreach entry in array of tags, access the tag object
                                foreach( $tags as $tag ) {
                                   //echo the name field from the tag object 
                                   echo '<div class="tags" >'.$tag->name.'</div>';
                                }
                            }
                         ?>
                        </div>  
                    </div>
   
		<?php
		endwhile; endif;
		?>
</div>
</div>
<?php
	get_footer();
?>