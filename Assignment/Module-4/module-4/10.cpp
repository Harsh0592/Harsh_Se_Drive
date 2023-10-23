/*Write a program to concatenate the two strings using Operator Overloading*/

#include <iostream>
#include <cstring>

class Concatenator {
private:
    char* concatenatedString;

public:
    Concatenator(const char* str1, const char* str2) {
        concatenatedString = new char[strlen(str1) + strlen(str2) + 1];
        strcpy(concatenatedString, str1);
        strcat(concatenatedString, str2);
    }
    ~Concatenator() {
        delete[] concatenatedString;
    }
    void displayConcatenatedString() const {
        std::cout << "Concatenated String: " << concatenatedString << std::endl;
    }
};

int main() {
    char str1[50], str2[50];
    std::cout << "Enter the first string: ";
    std::cin.getline(str1, sizeof(str1));
    std::cout << "Enter the second string: ";
    std::cin.getline(str2, sizeof(str2));
    Concatenator concat(str1, str2);
    concat.displayConcatenatedString();

    return 0;
}

