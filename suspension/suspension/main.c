/*******************************************************
This program was created by the
Codelite 

Project : car suspension system
Date    : 10/24/2020
Author  : Mahdie Ahmadi & Zahra Karimi
Company : isfahan university of technology
Comments: this project simulatores car suspension system and ascillations it


Program type            : simulation
*******************************************************/

#include <stdio.h>

#include "controller.h"
#include "system.h"
#include "setpoint.h"
#include "YR.h"

int main(int argc, char **argv)
{

    /************** initial value *****************/
    float dx1 = 0; /* initial value of v1 */
    float dx2 = 0; /* initial value of v2 */
    float x1=0.2; /* initial value of x2 */
    float x2=0; /* initial value of x3 */
    float u=0; /* initial value of u */
    float yr=0.00; /* initial value of YR */
    float d2_x1 = 0; /* initial value of d2_x1 */
    float d2_x2 = 0; /* initil value of d2_x2 */
    
    /**************** vaiabels *****************/
    float  *out; /* out put of system */
    float set_point; /* set point of controller and system in time t */
    float set_point_h; /* set point of controller and system in time t+h */
    float dSet_point; /* derivation of set point */
    float h = 0.0000001; /* value for derivation */
    float step = 0.01; /* steps of modeling */
    
    float d2_x1_old = 0; /* holds the previous value of second derivation of x1 */
    float d2_x2_old = 0; /* holds the previous value of second derivation of x2 */
    float dx1_old = 0; /* holds the previous value of first derivation of x1 */
    float dx2_old = 0; /* holds the previous value of first derivation of x2 */
    float i=0; /* counter of duration of model */
  
    /*********************** start the model ************************/
    for( i = 0 ; i <= 10 ; i += step ){
        set_point = setpoint(i); /* calcute setpoint in time i */
        set_point_h = setpoint(i+h); /* calcute setpoint in time i+h */
        dSet_point = (set_point_h-set_point)/(h); /* calcute the derivation of setpoint */
        
        yr = YR(i); /* calcute the road fluctuations */
        //printf("%f \n",yr);
        
        /****************************** run model of system *******************************/
        out = system(dx1 ,  dx2 ,  x1 ,  x2 ,  u ,  yr); /* calcute the second derivations of variables with model of system */
        d2_x1 = *out; /* read the value of second derivation of x1 in memory with pointer */
        d2_x2 = *(out+1); /* read the value of second derivation of x2 in memory with pointer */
        
        /**************************** integral ******************************/
        dx1 =  ((d2_x1_old + d2_x1)* step / 2)+dx1; /* calcute the integral of second derivation of x1 to get first derivation of x1 */
        dx2 = ((d2_x2_old + d2_x2)* step / 2)+dx2; /* calcute the integral of second derivation of x2 to get first derivation of x2 */
        x1 = ((dx1_old + dx1)* step / 2)+x1; /* calcute the integral of first derivation of x1 to get  x1 */
        x2 = ((dx2_old + dx2)* step / 2)+x2; /* calcute the integral of first derivation of x2 to get x2 */
        
       printf(" %f \n" ,  x1 ); /* show the value of x1 */
        
        u = controller((set_point-x1),(dSet_point-dx1)); /* calcute the control signal */
        
        /***************************** save previous value***********************************/
        d2_x1_old = d2_x1; /* save the second derivation of x1 */
        d2_x2_old = d2_x2; /* save the second derivation of x2 */
        dx1_old = dx1; /*save the second first of x1 */
        dx2_old = dx2; /* save the second first of x2 */
    }
   
    
	return 0;
}
