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

  Statistics *fsets0, *fsets1, *objfn0, *objfn1;

  string file_name = "/home/guilherme/projects/multicoloring/results-links/" + to_string(atoi(argv[1])) + ".csv";
  ifstream in;
  in.open(file_name);
  if(in.is_open()) {
    fsets0 = new Statistics();
    objfn0 = new Statistics();
    fsets1 = new Statistics();
    objfn1 = new Statistics();

    while(in >> a >> s >> n >> d >> m >> f >> mc >> z1 >> z2 >> flag >> t1 >> t2 >> t3) {
      if(m > count) {
        fsets0->calculate();
        objfn0->calculate();
        fsets1->calculate();
        objfn1->calculate();

        cout << a << "\t" << m << "\t";
        cout << fsets0->get_samples() << "\t";
        cout << setprecision(6) << fsets0->get_av() << "\t" << fsets0->get_sd() << "\t" << fsets0->get_ci() << "\t";
        cout << setprecision(6) << objfn0->get_av() << "\t" << objfn0->get_sd() << "\t" << objfn0->get_ci() << "\t";
        cout << fsets1->get_samples() << "\t";
        cout << setprecision(6) << fsets1->get_av() << "\t" << fsets1->get_sd() << "\t" << fsets1->get_ci() << "\t";
        cout << setprecision(6) << objfn1->get_av() << "\t" << objfn1->get_sd() << "\t" << objfn1->get_ci() << endl;

        count = m;

        fsets0->reset();
        objfn0->reset();
        fsets1->reset();
        objfn1->reset();
      }

      if(flag == 0) {
        if(mc==0) {
          fsets0->add_sample(f);
          objfn0->add_sample(z1);
        } else {
          fsets1->add_sample(f);
          objfn1->add_sample(z1);
        }
      }
    }

    in.close();

    delete fsets0, fsets1, objfn0, objfn1;

    return 0;
  }

  cout << "file not found" << endl;
  return 0;
}
