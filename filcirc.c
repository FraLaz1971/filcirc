#include <stdio.h>
#include <math.h>
/* shapes.c generate 2D points for a filled circle plot
 with center in 100, 100 and radius = 10 (points)
 points are set with 1800 angular steps between 0 and 2*Pi*Ma
 and 100 steps on radius fractions  */
int main(){
    int Ma=360*10; double a_step = 1, f_step = 1, fr=0;;
    int cx = 100, cy = 100, idx=0, r = 10*10;
    double ax[r*Ma], ay[r*Ma], a=0, lx=0, ly=0; double i=0, j=0;
    for(i=0; i<Ma; i = i + a_step){
        for(j=0; j<r; j = j + f_step){
            a = 2*M_PI*i/Ma; fr = (r - j)/10;
            ax[idx] = cx + fr*cos(a); 
            ay[idx] = cy + fr*sin(a); 
            if ((lx != ax[idx]) || (ly != ay[idx] ) ){
                    printf("%.6f\t%.6f\n",ax[idx], ay[idx]);
                    lx = ax[idx]; ly = ay[idx];
            }
           idx++;
        }
    }
    return 0;
}
