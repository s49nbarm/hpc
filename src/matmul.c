#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void initialize_matrix(float* matrix, int size) {
    for (int i = 0; i < size * size; i++) {
        matrix[i] = (float)rand() / RAND_MAX;
    }
}

void matrix_multiply_plain(float* A, float* B, float* C, int size) {
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size; j++) {
            // TODO: Initialize the result matrix C at position [i][j] to 0
            // (Remember: the matrix is stored as a 1D array)
            C[i * size + j] = 0;

            for (int k = 0; k < size; k++) {
                // TODO: Perform the matrix multiplication and accumulate the result in C[i * size + j]
                C[i * size + j] += A[i * size + k] * B[k * size + j];
            }
        }
    }
}

double measure_execution_time(void (*func)(float*, float*, float*, int), float* A, float* B, float* C, int size) {
    clock_t start, end;
    start = clock();
    func(A, B, C, size);
    end = clock();
    return (double)(end - start) / CLOCKS_PER_SEC;
}

int main() {
    int sizes[] = {128, 256, 512, 1024};
    int num_sizes = sizeof(sizes) / sizeof(sizes[0]);

    printf("%-10s %-30s\n", "Size", "Plain Loop Time (seconds)");

    for (int i = 0; i < num_sizes; i++) {
        int size = sizes[i];

        // TODO: Allocate memory for matrices A, B, and C
        float* A = (float*)malloc(size * size * sizeof(float));  // Allocate memory here
        float* B = (float*)malloc(size * size * sizeof(float));  // Allocate memory here
        float* C = (float*)malloc(size * size * sizeof(float));  // Allocate memory here

        // TODO: Initialize matrices A and B with random values
        // Call the appropriate initialization function
        initialize_matrix(A, size);
        initialize_matrix(B, size);

        // TODO: Measure the execution time of the plain matrix multiplication function
        double time_plain = measure_execution_time(matrix_multiply_plain, A, B, C, size);  // Measure time here

        // Print the result
        printf("%-10d %-30f\n", size, time_plain);

        // TODO: Free the allocated memory for matrices A, B, and C
        free(A);
        free(B);
        free(C);
    }

    return 0;
}
