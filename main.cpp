#include <iostream>
#include <fstream>
#include <string>

#include "Statistics.h"

using namespace std;
//10000 2 100 2 21 102042 1 3.5 4 0 1.31052 1.53971 2.85024

int main(int argc, char** argv) {
  double a, s, n;
  double d, m, f, mc, z1, z2, flag, t1, t2, t3;

  Statistics* links, fsets, multi, objfn;

  string file_name = argv[1];
  ifstream in;
  if(in.open(file_name)) {
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
    cout << a << "\t" << s << "\t" << n << "\t" << links->get_samples() << "\t";
    cout << links->set_av() << "\t" << links->set_sd() << "\t" << links->set_ci() << "\t";
    cout << fsets->set_av() << "\t" << fsets->set_sd() << "\t" << fsets->set_ci() << "\t";
    cout << multi->set_av() << "\t" << multi->set_sd() << "\t" << multi->set_ci() << "\t";
    cout << objfn->set_av() << "\t" << objfn->set_sd() << "\t" << objfn->set_ci() << endl;
  }
  return 0;
}
