#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>

#include "Statistics.h"

using namespace std;

int main(int argc, char** argv) {
  double a, s, n;
  double d, m, f, mc, z1, z2, flag, t1, t2, t3;

  Statistics *z_tc, *z_mc, *zn_tc, *zn_mc;

  string file_name = "/home/guilherme/projects/multicoloring/results/" + to_string(atoi(argv[1])) + "-" + to_string(atoi(argv[2])) + ".txt";
  ifstream in;
  in.open(file_name);
  if(in.is_open()) {
    z_tc = new Statistics();
    z_mc = new Statistics();
    zn_tc = new Statistics();
    zn_mc = new Statistics();

    while(in >> a >> s >> n >> d >> m >> f >> mc >> z1 >> z2 >> flag >> t1 >> t2 >> t3) {
      if(flag==0){
        if(mc==1) {
          z_tc->add_sample(z2);
	  z_mc->add_sample(z1);
	  zn_tc->add_sample(z2/n);
          zn_mc->add_sample(z1/n);
        }
      }
    }

    in.close();

    z_tc->calculate();
    z_mc->calculate();
    zn_tc->calculate();
    zn_mc->calculate();

    cout << a << "\t" << n << "\t";
    cout << z_tc->get_samples() << "\t";
    cout << setprecision(6) << z_tc->get_av()  << "\t" << z_tc->get_sd()  << "\t" << z_tc->get_ci()  << "\t";
    cout << setprecision(6) << z_mc->get_av()  << "\t" << z_mc->get_sd()  << "\t" << z_mc->get_ci()  << "\t";
    cout << setprecision(6) << zn_tc->get_av() << "\t" << zn_tc->get_sd() << "\t" << zn_tc->get_ci() << "\t";
    cout << setprecision(6) << zn_mc->get_av() << "\t" << zn_mc->get_sd() << "\t" << zn_mc->get_ci() << endl;

    delete z_tc, z_mc, zn_tc, zn_mc;

    return 0;
  }

  cout << "file not found" << endl;
  return 0;
}
