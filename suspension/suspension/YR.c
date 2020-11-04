/*******************************************************
This program was created by the
Codelite 

Project : car suspension system
Date    : 10/24/2020
Author  : Mahdie Ahmadi & Zahra Karimi
Company : isfahan university of technology
Comments: this function simulatores road fluctuations and ascillations on the car body


Program type            : simulation
*******************************************************/

float YR (float t ){
    /****************************** variabels ***********************************/
    int select_type = 2; /* select the type of road fluctuations */
    float signal; /* value of road fluctuations */
   
    if(select_type == 1){
        signal = 0; /* road fluctuations is 0 */
    }else if(select_type == 2){
        signal = 0.1*(sin(5*t) + sin(9*t) + sin(13*t) + sin(17*t) + sin(21*t)); /* calcute the road fluctuations */
        }
        
        return signal;
    }