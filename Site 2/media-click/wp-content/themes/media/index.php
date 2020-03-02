<!DOCTYPE html>
<html lang="fr">
<head>
  <title>Test</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <?php get_header(); ?>
</head>
<body>
	
	<section class="section_2">
	         <?php

	            $args = array( 
	                'post_type' => 'page',
	            );
	            $query = new WP_Query( $args );
	            // The Loop
	            while ( $query->have_posts() ) {         
	                $query->the_post();
	               
	                $titre_section_1 = get_post_meta( get_the_ID(), 'titre_section_1', true );
	                $contenu_section_1 = get_post_meta( get_the_ID(), 'contenu_section_1', true );
	                
	                echo '<h3>'.$titre_section_1.'</h3>
	               		  <p>'.$contenu_section_1.'</p>';
	            }
	        ?>

	</section>


	<section class="section_3">
		
		<div class="section_3_img">
			<?php

	            $args = array( 
	                'post_type' => 'page',
	            );
	            $query = new WP_Query( $args );
	            // The Loop
	            while ( $query->have_posts() ) {         
	                $query->the_post();

	                $tous = get_field('image_section_2');
                    $image = $tous['url'];
	                
	                echo '<img class="" src="'.$image.'">
	                	</div>';
	            }
	        ?>
		

		<div class="section_3_p">
			<div class="section_3_p">
			<?php

	            $args = array( 
	                'post_type' => 'page',
	            );
	            $query = new WP_Query( $args );
	            // The Loop
	            while ( $query->have_posts() ) {         
	                $query->the_post();

                    $titre_section_2 = get_post_meta( get_the_ID(), 'titre_section_2', true );
	                $contenu_section_2 = get_post_meta( get_the_ID(), 'contenu_section_2', true );
	                
	                echo '<h3>'.$titre_section_2.'</h3>
							<p>'.$contenu_section_2.'</p>';
	            }
	        ?>
	        </div>
		</div>


	</section>

	
	<section class="section_4" >
		<div>
			
		</div>

	</section>


	
</body>
</html>











