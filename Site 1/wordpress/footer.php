	<?php wp_footer(); ?>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal<?php echo get_the_ID(); ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content bg-modal">

	      <div class="modal-body">
	      	<div class="container" >
	      		<p class="button_close float-right" data-dismiss="modal">X</p>
	      	</div>
	       	  <div class="container">
	       	  	<div class="row" >
	       	  		<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
	       	  			<?php get_template_part( 'templates_parts/template_parts_modal' ); ?>
					<?php endwhile; endif;?>	       	  		
	       	  	</div>

    		  </div>
             </div>
	      </div>
	    </div>
	  </div>

	<div>
		<?php echo do_shortcode('[foobar]'); ?>

	<br><br><br><br><!-- 	<?php 

			  $args = array( 'post_type' => 'trano' );
			  $query = new WP_Query( $args );
			 	var_dump($query);

















		 ?> -->
	</div>

</body>
</html>