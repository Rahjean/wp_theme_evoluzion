
	<div class="col-md-4" data-toggle="modal" data-target="#exampleModal<?php echo get_the_ID(); ?>">

                        <?php 

                        $categories = get_the_category();
     
                        if ( ! empty( $categories) ) {
                            //maka ilay valeur anlay categorie
                           $cat = esc_html( $categories[0]->name );   
                        }

                        if ($cat == 'Promotion') {
                            echo '<div class="couleur promotion" >' ;
                        }
                        if ($cat == 'Reseau') {
                            echo '<div class="couleur reseau">' ;
                        }
                        if ($cat == 'Sponsoring') {
                            echo '<div class="couleur sponsort" >' ;
                        }


                       ?>

              
                            <section class="section1" >
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-4" >
                                            <?php
                                                $image = get_post_meta( get_the_ID(), 'logo', true ); 
                                                $imgarray = wp_get_attachment_image_src( $image, 'full');
                                                echo '<img class="img_border" src="'.$imgarray[0].'">' ;
                                            ?>
                                        </div>

                                        <div class="col-md-8" >
                                            <p class="x" ><?php echo get_post_meta( get_the_ID(), 'nom_boutique', true ); ?><br>
                                               Gerant: <?php echo get_post_meta( get_the_ID(), 'gerant', true ); ?><br>
                                               <span class="date" >Date de creation: <?php the_field('date'); ?><br></span>
                                               Effectif: <?php echo get_post_meta( get_the_ID(), 'effectif', true ); ?> 
                                            </p>    
                                        </div>
                                    </div>
                                  </div>
                            </section>

                            <section class="container">
                                <h5 class="titre" > <?php the_title(); ?> </h5>
                            </section>

                            <section class="tags-css" >
                                <div class="font" >

                                    <!-- RESULTAT -->
                                    <div class="nom1" >
                                        <p>Resultat :
                                             <?php                                       
                                                 // $resultat = get_field('resultat');
                                                  $data_key = get_field_object('field_5e219a5e1da89')['choices'];
                                                    foreach ($data_key as $res) {
                                                        $class = '';

                                                        $value = get_post_meta(get_the_ID(), 'resultat', true);
                                                        
                                                        if ($res == 'Bon') { 
                                                            $class = 'trans vert';
                                                            if ($value[0] == 'Bon') {
                                                            $class .= ' active';
                                                            }
                                                        };

                                                        if ($res == 'Moyen') {
                                                            $class = 'trans orange';
                                                            if ($value[0]  == 'Moyen') {
                                                                $class .= ' active';
                                                            }
                                                        } ;

                                                        if ($res == 'Mauvais') { 
                                                            $class = 'trans violet';
                                                            if ($value[0]  == 'Mauvais') {
                                                                $class .= ' active';
                                                            }
                                                         } ;
                                                        echo ' <span class="'.$class.'" > '.$res.' </span>' ; 
                                                    }
                                            ?>
                                         </p>                                      
                                   </div>


                                    <!-- MISE EN OEUVRE -->
                                    <div class="nom" >
                                        <p>Mise en oeuvres : </p>

                                             <?php                                       
                                                 // $resultat = get_field('resultat');
                                                  $data_key = get_field_object('field_5e21a884ddf8b')['choices'];
                                                    foreach ($data_key as $res) {
                                                        $class = '';

                                                        $value = get_post_meta(get_the_ID(), 'mise_en_oeuvre', true);
                                                        
                                                        if ($res == 'Simple') { 
                                                            $class = 'trans vert';
                                                            if ($value[0] == 'Simple') {
                                                            $class .= ' active';
                                                            }
                                                        };

                                                        if ($res == 'Faible') {
                                                            $class = 'trans orange';
                                                            if ($value[0]  == 'Faible') {
                                                                $class .= ' active';
                                                            }
                                                        } ;

                                                        if ($res == 'Complexe') { 
                                                            $class = 'trans violet';
                                                            if ($value[0]  == 'Complexe') {
                                                                $class .= ' active';
                                                            }
                                                         } ;
                                                        echo ' <span class="'.$class.'" > '.$res.' </span>' ; 
                                                    }
                                            ?>
                                        
                                    </div>


                                    <!-- COUT -->
                                <div class="nom3" >
                                    <p>Cout :
                                        <?php                                       
                                             // $resultat = get_field('resultat');
                                              $data_key = get_field_object('field_5e21a9f648e6c')['choices'];
                                                foreach ($data_key as $res) {
                                                    $class = '';

                                                    $value = get_post_meta(get_the_ID(), 'cout', true);
                                                    
                                                    if ($res == 'Faible') { 
                                                        $class = 'trans vert';
                                                        if ($value[0] == 'Faible') {
                                                        $class .= ' active';
                                                        }
                                                    };

                                                    if ($res == 'Modere') {
                                                        $class = 'trans orange';
                                                        if ($value[0]  == 'Modere') {
                                                            $class .= ' active';
                                                        }
                                                    } ;

                                                    if ($res == 'Eleve') { 
                                                        $class = 'trans violet';
                                                        if ($value[0]  == 'Eleve') {
                                                            $class .= ' active';
                                                        }
                                                     } ;
                                                    echo ' <span class="'.$class.'" > '.$res.' </span>' ; 
                                                }
                                        ?>
                                     </p>
                                  </div>
                                </div>
                                
                            </section>

                            <section class="container image" >
                                <p>
                                    <?php
                                        $image = get_post_meta( get_the_ID(), 'image', true ); 
                                        $imgarray = wp_get_attachment_image_src( $image, 'full');
                                        if (!empty($imgarray)) {
                                        	echo '<img class="img_border" src="'.$imgarray[0].'">' ;
                                        }
                                    ?>
                                </p>   
                            </section>

                            <section class="container" >
                            	
                            	<!-- the_content rehefa apahany  -->
                            	<!-- the excerpt rehefa lava b -->
                            	<?php if (is_single()) { ?>
                            		<p><?php the_content(); ?></p>
                            	<?php } else { ?>
                            		<p><?php the_excerpt(); ?></p>
                            		<?php  
                            	}
                            	?>


                               
                            </section>

                        </div>
                        

                
                        <div class="container section2" >
                            <div class="row" >
                            <?php 
                                $tags = get_the_tags();
                                //make sure we have some
                                if ($tags) {
                                 //foreach entry in array of tags, access the tag object
                                    foreach( $tags as $tag ) {
                                       //echo the name field from the tag object 
                                       // echo '<div class="tags" >'.$tag->name.'</div>';

                                        if ($cat == 'Promotion') {
                                            echo '<div class="couleur promotion_tags" >'.$tag->name.'</div>';
                                        }
                                        if ($cat == 'Reseau') {
                                            echo '<div class="couleur reseau_tags" >'.$tag->name.'</div>';
                                        }
                                        if ($cat == 'Sponsoring') {
                                            echo '<div class="couleur sponsort_tags" >'.$tag->name.'</div>';
                                        }
                                    }
                                }
                            ?>
                            </div>
                        </div> 
                    
                    </div>