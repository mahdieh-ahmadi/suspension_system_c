/*******************************************************
This program was created by the
Codelite 

Project : car suspension system
Date    : 10/24/2020
Author  : Mahdie Ahmadi & Zahra Karimi
Company : isfahan university of technology
Comments: this function is the controller of the system


Program type            : simulation
*******************************************************/

float controller (float Error_x1 ,float Error_dx1){
   /***************** cotroller coefficient ******************/
   int Kp = 300; /* proportionality coefficien */
   int Kd = 300; /* Derivative coefficient */
   
   /************* calcute the cotrol signal *******************/
   float u = Kp * Error_x1 + Kd * Error_dx1; /* control signal */
   return u;
    
    }