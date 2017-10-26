#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>

#include "Statistics.h"

using namespace std;
//10000 2 100 2 21 102042 1 3.5 4 0 1.31052 1.53971 2.85024

int main(int argc, char** argv) {
  double a, s, n;
  double d, m, f, mc, z1, z2, flag, t1, t2, t3;
  uint64_t count = 1;

  Statistics *z_tc, *z_mc, *zn_tc, *zn_mc;

  string file_name = "/home/guilherme/projects/multicoloring/results-links/" + to_string(atoi(argv[1])) + ".csv";
  ifstream in;
  in.open(file_name);
  if(in.is_open()) {
    z_tc = new Statistics();
    z_mc = new Statistics();
    zn_tc = new Statistics();
    zn_mc = new Statistics();

    while(in >> a >> s >> n >> d >> m >> f >> mc >> z1 >> z2 >> flag >> t1 >> t2 >> t3) {
      if(m > count) {
        z_tc->calculate();
        z_mc->calculate();
        zn_tc->calculate();
        zn_mc->calculate();

        cout << a << "\t" << m << "\t";
        cout << z_tc->get_samples() << "\t";
        cout << setprecision(6) << z_tc->get_av()  << "\t" << z_tc->get_sd()  << "\t" << z_tc->get_ci()  << "\t";
        cout << setprecision(6) << z_mc->get_av()  << "\t" << z_mc->get_sd()  << "\t" << z_mc->get_ci()  << "\t";
        cout << setprecision(6) << zn_tc->get_av() << "\t" << zn_tc->get_sd() << "\t" << zn_tc->get_ci() << "\t";
        cout << setprecision(6) << zn_mc->get_av() << "\t" << zn_mc->get_sd() << "\t" << zn_mc->get_ci() << endl;

        count = m;

        z_tc->reset();
        z_mc->reset();
        zn_tc->reset();
        zn_mc->reset();
      }

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

    delete z_tc, z_mc, zn_tc, zn_mc;

    return 0;
  }

  cout << "file not found" << endl;
  return 0;
}
