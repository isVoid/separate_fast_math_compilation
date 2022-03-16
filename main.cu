#include "log_helpers.cuh"

void __global__ driver() {
  float fast_res = fast_log2(3.14f);
  float precise_res = precise_log2(3.14f);
}

int main() {
  driver<<<1, 1>>>();
}