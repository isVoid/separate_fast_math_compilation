nvcc --use_fast_math -rdc=true -c -o fast.o fast_unit.cu
nvcc -rdc=true -c -o precise.o precise_unit.cu
nvcc -dlink fast.o precise.o -L. -o main main.cu