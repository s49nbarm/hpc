#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

// Function to initialize arrays with random values (float)
void initialize_arrays(float* a, float* b, float* c, int size) {
    for (int i = 0; i < size; i++) {
        a[i] = (float)rand() / RAND_MAX;
        b[i] = (float)rand() / RAND_MAX;
        c[i] = 0.0f;
    }
}

// Function to initialize arrays with random values (double)
void initialize_arrays_double(double* a, double* b, double* c, int size) {
    for (int i = 0; i < size; i++) {
        a[i] = (double)rand() / RAND_MAX;
        b[i] = (double)rand() / RAND_MAX;
        c[i] = 0.0;
    }
}

// Plain loop vector addition (float)
void vector_add_plain(float* a, float* b, float* c, int size) {
    for (int i = 0; i < size; i++) {
        c[i] = a[i] + b[i];
    }
}

// Plain loop vector addition (double)
void vector_add_plain_double(double* a, double* b, double* c, int size) {
    for (int i = 0; i < size; i++) {
        c[i] = a[i] + b[i];
    }
}

// Function to measure execution time (float)
double measure_execution_time(void (*func)(float*, float*, float*, int), float* a, float* b, float* c, int size) {
    clock_t start, end;
    start = clock();
    func(a, b, c, size);
    end = clock();
    return (double)(end - start) / CLOCKS_PER_SEC;
}

// Function to measure execution time (double)
double measure_execution_time_double(void (*func)(double*, double*, double*, int), double* a, double* b, double* c, int size) {
    clock_t start, end;
    start = clock();
    func(a, b, c, size);
    end = clock();
    return (double)(end - start) / CLOCKS_PER_SEC;
}

int main() {
    int base_size = 1000000; // Base size of arrays
    int fudgefactor;

    // Print header
    printf("%-10s %-10s %-30s %-30s\n", "Serial No.", "Size", "Plain loop time (float)", "Plain loop time (double)");

    for (fudgefactor = 1; fudgefactor <= 1024; fudgefactor *= 2) {
        int size = base_size * fudgefactor;

        // TODO: Allocate memory for float arrays
        float* a = (float*)malloc(size * sizeof(float));  // Allocate memory here
        float* b = (float*)malloc(size * sizeof(float));  // Allocate memory here
        float* c = (float*)malloc(size * sizeof(float));  // Allocate memory here

        // TODO: Allocate memory for double arrays
        double* a_double = (double*)malloc(size * sizeof(double));  // Allocate memory here
        double* b_double = (double*)malloc(size * sizeof(double));  // Allocate memory here
        double* c_double = (double*)malloc(size * sizeof(double));  // Allocate memory here

        // TODO: Initialize arrays with random values for both float and double arrays
        initialize_arrays(a, b, c, size);  // Call the appropriate initialization functions
        initialize_arrays_double(a_double, b_double, c_double, size);  // Call the appropriate initialization functions

        // TODO: Measure and validate for float arrays
        double time_plain = measure_execution_time(vector_add_plain, a, b, c, size);  // Measure the time and validate the vector addition for float arrays

        // TODO: Measure and validate for double arrays
        double time_plain_double = measure_execution_time_double(vector_add_plain_double, a_double, b_double, c_double, size);  // Measure the time and validate the vector addition for double arrays

        // Print results
        printf("%-10d %-10d %-30f %-30f\n", fudgefactor, size, time_plain, time_plain_double);

        // TODO: Cleanup allocated memory
        free(a);  // Free the allocated memory
        free(b);  // Free the allocated memory
        free(c);  // Free the allocated memory
        free(a_double);  // Free the allocated memory
        free(b_double);  // Free the allocated memory
        free(c_double);  // Free the allocated memory
    }

    return 0;
}
