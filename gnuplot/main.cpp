#define _USE_MATH_DEFINES
#include <cmath>
#include <fstream>
#include <stdlib.h>

using namespace std;

int main(){

    ofstream outFile;
    outFile.open("data.txt");
    outFile << "# x y z" << endl;
    double theta, r;
    double z_inc = 4.0/99.0; double theta_inc = (8.0 * M_PI)/99.0;
    
    for (double i = 0; i < 100; i += 1) {
        theta = -4.0 * M_PI + theta_inc*i;
        float z = -2.0 + z_inc*i;
        r = z*z + 1;
        float x = r * sin(theta);
        float y = r * cos(theta);

        outFile << x << " " << y << " " << z << endl;
    }
    outFile.close();

    // call the gnuplot script
    std::string res;
	res = system("bash ../plot3d.sh");

    return 0;
}