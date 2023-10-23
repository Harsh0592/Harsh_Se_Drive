//Write a program of to sort the array using templates.

#include <iostream>

template <typename T>
void swap(T &a, T &b) {
    T temp = a;
    a = b;
    b = temp;
}
template <typename T>
void bubbleSort(T arr[], int size) {
    for (int i = 0; i < size - 1; ++i) {
        for (int j = 0; j < size - i - 1; ++j) {
            if (arr[j] > arr[j + 1]) {
                swap(arr[j], arr[j + 1]);
            }
        }
    }
}
template <typename T>
void displayArray(const T arr[], int size) {
    for (int i = 0; i < size; ++i) {
        std::cout << arr[i] << " ";
    }
    std::cout << std::endl;
}

int main() {
    int intArray[] = {64, 34, 25, 12, 22, 11, 90};
    int intSize = sizeof(intArray) / sizeof(int);
    std::cout << "Before sorting (integers): ";
    displayArray(intArray, intSize);
    bubbleSort(intArray, intSize);
    std::cout << "After sorting (integers): ";
    displayArray(intArray, intSize);
    double doubleArray[] = {3.14, 2.71, 1.618, 0.577, 1.414};
    int doubleSize = sizeof(doubleArray) / sizeof(double);
    std::cout << "Before sorting (doubles): ";
    displayArray(doubleArray, doubleSize);
    bubbleSort(doubleArray, doubleSize);
    std::cout << "After sorting (doubles): ";
    displayArray(doubleArray, doubleSize);

    return 0;
}

