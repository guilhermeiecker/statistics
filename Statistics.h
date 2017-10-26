#include <iostream>
#include <vector>
#include <math.h>

using namespace std;

class Statistics {
private:
  uint64_t n;
  vector<double> samples;
  double sum, alpha;
  double average, standard_deviation, confidence_interval;

public:
  Statistics(double _a = 0.05) {
    n = 0;
    alpha = _a;
    sum = 0.0;
    average = standard_deviation = confidence_interval = 0.0;
  }

  void add_sample(double);
  void calculate();

  double get_av();
  double get_sd();
  double get_ci();

  uint64_t get_samples();
  void reset();
};

void Statistics::add_sample(double _x) {
  n++;
  samples.push_back(_x);
  sum += _x;
}

void Statistics::calculate() {
  average = sum/n;
  double partial_sum = 0.0;
  for (vector<double>::iterator it = samples.begin() ; it != samples.end(); ++it)
    partial_sum += pow((*it - average), 2);
  standard_deviation = sqrt(partial_sum/(n - 1));
  //TODO: implement different confidence interval dependending on the provided alpha
  confidence_interval = 1.86 * standard_deviation / sqrt(n);
}

double Statistics::get_av() { return average; }
double Statistics::get_sd() { return standard_deviation; }
double Statistics::get_ci() { return confidence_interval; }
uint64_t Statistics::get_samples() { return n; }

void Statistics::reset() {
  average = standard_deviation = confidence_interval = sum = 0.0;
  n = 0;
  samples.clear();
}
