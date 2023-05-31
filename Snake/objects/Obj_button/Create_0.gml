switch(buttontype){
	case "Default":	show_message("There's nothing here"); break;
	case "Start": 
		what_do_u_do = function(){
		if(mouse_check_button_pressed(mb_left)) && (rectangle_in_rectangle(x-sprite_width/2,y-sprite_height/4,x+sprite_width/2,y+sprite_height/4,mouse_x,mouse_y,mouse_x,mouse_y) == 2){
				room_goto_next();	
			}
		}
		what_to_say = buttontype;
	break;
	case "Exit": 
		what_do_u_do = function(){
			if(mouse_check_button_pressed(mb_left)) && (rectangle_in_rectangle(x-sprite_width/2,y-sprite_height/4,x+sprite_width/2,y+sprite_height/4,mouse_x,mouse_y,mouse_x,mouse_y) == 2){
				if(show_question("Why?")){
					if(show_question("Why?")){
						if(show_question("Why?")){
							if(show_question("What?")){
								if(show_question("What?")){
									if(show_question("What?")){
										if(show_question("What?")){
											if(show_question("What?")){
												if(show_question("Don't")){
													if(show_question("Don't")){
														if(show_question("Don't")){
															if(!show_question("Sure. Do it")){
																if(!show_question("Do it")){
																	if(!show_question("Do it")){
																		if(!show_question("Do it")){
																			if(show_question("")){
																				show_message("Hope you're happy.");
																				game_end();
																			}
																		}	
																	}	
																}	
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				
			}
		}
		what_to_say = buttontype; 
	break;
}