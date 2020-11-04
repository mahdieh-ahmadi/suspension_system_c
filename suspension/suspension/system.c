/*******************************************************
This program was created by the
Codelite 

Project : car suspension system
Date    : 10/24/2020
Author  : Mahdie Ahmadi & Zahra Karimi
Company : isfahan university of technology
Comments: this function discribe the car suspension model


Program type            : simulation
*******************************************************/

//#include <stdio.h>


float * system (float dx1 , float dx2 , float x1 , float x2 , float u , float yr ){
    /************************* constants  ************************/
    int k1 = 3000; /* spring constant (n/m) */
    int k2 = 30000; /* spring constant of tire (n/m) */
    int D = 600; /* Damper conatant (ns/m) */
    int M = 300; /* weight of car (kg) */
    int m = 50; /* weight of tire (kg) */
    
    float d2_x1; /* second derivation of x1 */
    float d2_x2; /* second derivation of x2 */
    static float outputs[2] ; /* output of model of system  */
    
    d2_x1 = (u-k1*(x1-x2)-D*(dx1-dx2))/M; /* calcute the second drivation of x1 */
    d2_x2 =  (-u-k1*(x2-x1) - D*(dx2-dx1) - k2*(x2-yr))/m; /* calcute the second drivation of x2 */
    
    outputs[0] = d2_x1; /* set output */
    outputs[1] = d2_x2; /* set output */
    
    return outputs;
    }