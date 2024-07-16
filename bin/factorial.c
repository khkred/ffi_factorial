#include <stdio.h>
// factorial.c using memoization to get the time complexity to O(n)
// Array to store memoized results (adjust size as needed)
int memo[100];

int factorial_memo(int n) {
    if (n == 0) {
        return 1;
    } else if (memo[n] != 0) {
        return memo[n]; // Return memoized result
    } else {
        memo[n] = n * factorial_memo(n - 1);
        return memo[n];
    }
}