#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <immintrin.h>

void initialize_matrix(float* matrix, int size) {
    // Initialize the matrix with random float values between 0 and 1
    for (int i = 0; i < size * size; i++) {
        matrix[i] = (float)rand() / RAND_MAX;
    }
}

void matrix_multiply_avx2(float* A, float* B, float* C, int size) {
    // Perform matrix multiplication using AVX2 intrinsics
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size; j++) {
            __m256 c_vec = _mm256_setzero_ps();  // Initialize the accumulator vector to 0
            for (int k = 0; k < size; k += 8) {
                // TODO: Load 8 floats from the row of A and the column of B
                __m256 a_vec = _mm256_loadu_ps(&A[i * size + k]);  // Load row of A (8 elements)
                __m256 b_vec = _mm256_loadu_ps(&B[k * size + j]);  // Load column of B (8 elements)

                // TODO: Multiply the loaded vectors and accumulate the result in c_vec
                __m256 prod = _mm256_mul_ps(a_vec, b_vec);
                c_vec = _mm256_add_ps(c_vec, prod);  
            }

            // TODO: Set C[i * size + j] to 0.0f before adding the results from c_vec
            // (This is necessary because we're summing partial products)
            C[i * size + j] = 0.0f;  // Initialize the result element to 0

            // TODO: Store the resulting vector c_vec into a temporary array and sum its elements
            float temp[8];
            _mm256_storeu_ps(temp, c_vec);  // Store the 8 elements from c_vec into temp
            for (int l = 0; l < 8; l++) {
                C[i * size + j] += temp[l];  // Sum the partial products into the result
            }
        }
    }
}

double measure_execution_time(void (*func)(float*, float*, float*, int), float* A, float* B, float* C, int size) {
    // Measure the execution time of the matrix multiplication function
    clock_t start, end;
    start = clock();
    func(A, B, C, size);
    end = clock();
    return (double)(end - start) / CLOCKS_PER_SEC;
}

int main() {
    int sizes[] = {128, 256, 512, 1024};
    int num_sizes = sizeof(sizes) / sizeof(sizes[0]);

    printf("%-10s %-30s\n", "Size", "AVX2 Time (seconds)");

    for (int i = 0; i < num_sizes; i++) {
        int size = sizes[i];

        // TODO: Allocate memory for matrices A, B, and C
        float* A = (float*)malloc(size * size * sizeof(float));  // Allocate memory for A
        float* B = (float*)malloc(size * size * sizeof(float));  // Allocate memory for B
        float* C = (float*)malloc(size * size * sizeof(float));  // Allocate memory for C

        // TODO: Initialize matrices A and B with random values
        // Call the appropriate initialization function
        initialize_matrix(A, size);  // Initialize A with random values
        initialize_matrix(B, size);  // Initialize B with random values

        // TODO: Measure the execution time of the AVX2 matrix multiplication function
        double time_avx2 = measure_execution_time(matrix_multiply_avx2, A, B, C, size); // Measure time here

        // Print the result
        printf("%-10d %-30f\n", size, time_avx2);  // Insert the measured time_avx2 value here

        // TODO: Free the allocated memory for matrices A, B, and C
        free(A);  // Free allocated memory for A
        free(B);  // Free allocated memory for B
        free(C);  // Free allocated memory for C
    }

    return 0;
}
