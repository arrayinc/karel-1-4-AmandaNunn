/*
 * File: World-1-4.k
 * ---------------------------
 * Why so many potholes everywhere? Write a reusable
 * function to make Karel check for potholes
 * autonomously.
 */
import "turns";

function FixTheStreet(){
	while(frontIsClear()){
		fillPotHole();
	}
		fillPotHole();
}


function fillPotHole(){
	if(rightIsClear()){
			turnRight();
			while(frontIsClear()){
				move();
				
				if(noBeepersPresent()){
					putBeeper();
				}
			}
			turnAround();
			
			while(beepersPresent()){
				move();
			}
			turnRight();
		}

		if(frontIsClear()){
			move();
		}
}
