#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>

#include "Statistics.h"

using namespace std;

int main(int argc, char** argv) {
  double a, s, n;
  double d, m, f, mc, z1, z2, flag, t1, t2, t3;

  Statistics *links0, *fsets0, *objfn0;
  Statistics *links1, *fsets1, *objfn1;

  string file_name = "/home/guilherme/projects/multicoloring/results/" + to_string(atoi(argv[1])) + "-" + to_string(atoi(argv[2])) + ".txt";
  ifstream in;
  in.open(file_name);
  if(in.is_open()) {
    links0 = new Statistics();
    fsets0 = new Statistics();
    objfn0 = new Statistics();

    links1 = new Statistics();
    fsets1 = new Statistics();
    objfn1 = new Statistics();

    while(in >> a >> s >> n >> d >> m >> f >> mc >> z1 >> z2 >> flag >> t1 >> t2 >> t3) {
      if(flag==0) {
        if(mc==0) {
          links0->add_sample(m);
          fsets0->add_sample(f);
          objfn0->add_sample(z1);
        } else {
          links1->add_sample(m);
          fsets1->add_sample(f);
          objfn1->add_sample(z2);
        }
      }
    }

    in.close();

    links0->calculate();
    fsets0->calculate();
    objfn0->calculate();

    links1->calculate();
    fsets1->calculate();
    objfn1->calculate();

    cout << a << "\t" << n << "\t"
    cout << links0->get_samples() << "\t";
    cout << setprecision(6) << links0->get_av() << "\t" << links0->get_sd() << "\t" << links0->get_ci() << "\t";
    cout << setprecision(6) << fsets0->get_av() << "\t" << fsets0->get_sd() << "\t" << fsets0->get_ci() << "\t";
    cout << setprecision(6) << objfn0->get_av() << "\t" << objfn0->get_sd() << "\t" << objfn0->get_ci() << "\t";
    cout << links1->get_samples() << "\t";
    cout << setprecision(6) << links1->get_av() << "\t" << links1->get_sd() << "\t" << links1->get_ci() << "\t";
    cout << setprecision(6) << fsets1->get_av() << "\t" << fsets1->get_sd() << "\t" << fsets1->get_ci() << "\t";
    cout << setprecision(6) << objfn1->get_av() << "\t" << objfn1->get_sd() << "\t" << objfn1->get_ci() << endl;

    delete links0, fsets0, objfn0;
    delete links1, fsets1, objfn1;

    return 0;
  }

  cout << "file not found" << endl;
  return 0;
}
