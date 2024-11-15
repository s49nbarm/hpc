#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <immintrin.h>
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

// Vector addition using AVX2 intrinsics (float)
void vector_add_avx2(float* a, float* b, float* c, int size) {
    int i;
    // TODO: Use AVX2 intrinsics to add elements of a and b, and store the result in c for each group of 8 elements
    for (i = 0; i <= size - 8; i += 8) {
        // TODO: Load 8 floats from a and b, add them, and store the result in c
        __m256 va = _mm256_loadu_ps(&a[i]);
        __m256 vb = _mm256_loadu_ps(&b[i]);
        __m256 vc = _mm256_add_ps(va, vb);
        _mm256_storeu_ps(&c[i], vc);
    }
    // TODO: Handle remaining elements that do not fit into a full AVX2 register
    for (; i < size; i++) {
        // TODO: Add the remaining elements and store the result in c
        c[i] = a[i] + b[i];
    }
}

// Vector addition using AVX2 intrinsics (double)
void vector_add_avx2_double(double* a, double* b, double* c, int size) {
    int i;
    // TODO: Use AVX2 intrinsics to add elements of a and b, and store the result in c for each group of 4 elements
    for (i = 0; i <= size - 4; i += 4) {
        // TODO: Load 4 doubles from a and b, add them, and store the result in c
        __m256d va = _mm256_loadu_pd(&a[i]);
        __m256d vb = _mm256_loadu_pd(&b[i]);
        __m256d vc = _mm256_add_pd(va, vb);
        _mm256_storeu_pd(&c[i], vc);
    }
    // TODO: Handle remaining elements that do not fit into a full AVX2 register
    for (; i < size; i++) {
        // TODO: Add the remaining elements and store the result in c
        c[i] = a[i] + b[i];
    }
}

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
    printf("%-10s %-10s %-30s %-30s\n",
           "Serial No.", "Size", "AVX2 time (float)", "AVX2 time (double)");

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
        initialize_arrays(a, b, c, size); // Call the appropriate initialization functions
        initialize_arrays_double(a_double, b_double, c_double, size);

        // TODO: Measure and validate for float arrays
        double time_avx2 = measure_execution_time(vector_add_avx2, a, b, c, size); // Measure the time and validate the vector addition for float arrays using AVX2

        // TODO: Measure and validate for double arrays
        double time_avx2_double = measure_execution_time_double(vector_add_avx2_double, a_double, b_double, c_double, size); // Measure the time and validate the vector addition for double arrays using AVX2

        // Print results
        printf("%-10d %-10d %-30f %-30f\n",
            fudgefactor, size, time_avx2, time_avx2_double);

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
