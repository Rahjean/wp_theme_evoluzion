<?php
/*
  Template Name: Services
*/
	get_header();
	if ( have_posts() ) : while ( have_posts() ) : the_post();
?>
	<h1><?php the_title(); ?></h1>
    <div class="content">
    	<?php the_content(); ?>
    </div>

    <div>
    	<?php the_content(); ?>

    		<!-- Maka ilay slug ary am ACF -->
			<p>
			    <strong>Gerant :</strong> 
			    <?php echo get_post_meta( get_the_ID(), 'gerant', true ); ?>
			</p>

			<p>
				<!-- Raha valeur de retour no alaina fa tsy ilay ary anaty bd brut dia mapiasa get_field -->
			    <strong>Date :</strong> 
			    <?php the_field('date'); ?>
			</p>

			<p>
				<!-- Raha valeur de retour no alaina fa tsy ilay ary anaty bd brut dia mapiasa get_field -->
			    <strong>Image :</strong> 
			   
			   <!-- Raha affichena am meta -->
			    <?php

				    $image = get_post_meta( get_the_ID(), 'image', true ); 
				    $imgarray = wp_get_attachment_image_src( $image, 'full');
				    //var_dump($imgarray);
				    echo '<img src="'.$imgarray[0].'">' ;
				?>

				<!-- RAha affichena apartir anilay ACF -->
				<?php 
				 	$sary = get_field('image') ;
				 	//var_dump($sary);
					$imga = wp_get_attachment_image_src( $sary['id'], 'full');			
						echo '<img src="'.$imga[0].'">';				
				?>

			</p>

    </div>
<?php
	endwhile; endif;
	get_footer();
?>