/*Assume a class cricketer is declared. Declare a derived class batsman from
cricketer. Data member of batsman. Total runs, Average runs and best
performance. Member functions input data, calculate average runs, Display
data. (Single Inheritance)*/

#include <iostream>
#include <string>
using namespace std;
class Cricketer {
protected:
    string name;
    int age;
public:
    void inputBasicData() {
        cout << "Enter name: ";
        cin >> name;
        cout << "Enter age: ";
        cin >> age;
    }
    void displayBasicData() {
        cout << "Name: " << name << endl;
        cout << "Age: " << age << endl;
    }
};
class Batsman : public Cricketer {
private:
    int totalRuns;
    double averageRuns;
    int bestPerformance;
public:
    void inputData() {
        inputBasicData();
        cout << "Enter total runs: ";
        cin >> totalRuns;
        cout << "Enter best performance: ";
        cin >> bestPerformance;
    }
    void calculateAverageRuns() {
        if (bestPerformance != 0) {
            averageRuns = static_cast<double>(totalRuns) / bestPerformance;
        } else {
            averageRuns = 0.0;
        }
    }
    void displayData() {
        displayBasicData();
        cout << "Total Runs: " << totalRuns << endl;
        cout << "Average Runs: " << averageRuns << endl;
        cout << "Best Performance: " << bestPerformance << endl;
    }
};

int main() {
    Batsman batsman;
    batsman.inputData();
    batsman.calculateAverageRuns();
    batsman.displayData();

    return 0;
}

