<?php

	/*
	  Template Name: Acceuil
	*/

	get_header(); ?>
    	<div class="container" >
    		<div class="row" >
			<?php 
    		if ( have_posts() ) : while ( have_posts() ) : the_post();
    		?>
    			



    			<div class="col-md-4 article" >

    				<?php the_content(); ?>
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
    					<p>" <?php echo get_post_meta( get_the_ID(), 'titre', true ); ?> "</p>
    				</div>

    				<div class="row" >
    					<p>Resultat: <?php the_field('resultat'); ?> <br>
    					   Mise en oeuvres:  <?php the_field('mise_en_oeuvre'); ?><br>
    					   Cout:  <?php the_field('cout'); ?>
    					</p>
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