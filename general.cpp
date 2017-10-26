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

  Statistics *links, *fsets, *multi, *objfn;

  string file_name = "/home/guilherme/projects/multicoloring/results/" + to_string(atoi(argv[1])) + "-" + to_string(atoi(argv[2])) + ".txt";
  ifstream in;
  in.open(file_name);
  if(in.is_open()) {
    links = new Statistics();
    fsets = new Statistics();
    multi = new Statistics();
    objfn = new Statistics();

    while(in >> a >> s >> n >> d >> m >> f >> mc >> z1 >> z2 >> flag >> t1 >> t2 >> t3) {
      if(flag==0) {
        links->add_sample(m);
        fsets->add_sample(f);
        multi->add_sample(mc);
        if(mc == 0) objfn->add_sample(z1);
        else objfn->add_sample(z2);
      }
    }

    in.close();

    links->calculate();
    fsets->calculate();
    multi->calculate();
    objfn->calculate();

    cout << a << "\t" << n << "\t" << links->get_samples() << "\t";
    cout << setprecision(6) << links->get_av() << "\t" << links->get_sd() << "\t" << links->get_ci() << "\t";
    cout << setprecision(6) << fsets->get_av() << "\t" << fsets->get_sd() << "\t" << fsets->get_ci() << "\t";
    cout << setprecision(6) << multi->get_av() << "\t" << multi->get_sd() << "\t" << multi->get_ci() << "\t";
    cout << setprecision(6) << objfn->get_av() << "\t" << objfn->get_sd() << "\t" << objfn->get_ci() << endl;

    delete links, fsets, multi, objfn;

    return 0;
  }

  cout << "file not found" << endl;
  return 0;
}
