#include <iostream> 
using namespace std; 
int main() 
{ 
    int n = 10; 
    int m = 1; 
    
    try { 
        if (m == 0) 
        throw "Division by zero"; 
        cout << "Answer: " << n / m; 
        
    } 
    catch (const char* msg) {
        cout << "Error: " << msg; 
        
    } 
    return 0; 
    
}
