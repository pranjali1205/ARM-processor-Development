#include <bits/stdc++.h>
#include "font8x8.h"

using namespace std;

#define DISPLAYSTART 0
#define DISPLAYEND 2399

#define FONTDATASTART 2400
#define FONTDATAEND 2655

#define OSSTART 2656

#define MEMORYSIZE 16384

vector<string> osmachinecode;

void printChar(char x)
{
    for (int j = 0; j < 8; j++)
    {
        if ((x & (1 << j)))
            cout << "1";
        else
            cout << "0";
    }
}

void genBitStream()
{
    int index = 0;
    /*for (int i = DISPLAYSTART; i <= DISPLAYEND; i++)
    {
        cout << string(32, '0') << '\n';
        index++;
    }

    int curChar = 0;
    for (int i = FONTDATASTART; i <= FONTDATAEND; i += 2)
    {
        // each character is stored in 2 words
        for (int byte = 0; byte < 4; byte++)
        {
            printChar(font8x8_basic[curChar][byte]);
        }
        cout << '\n';
        for (int byte = 4; byte < 8; byte++)
        {
            printChar(font8x8_basic[curChar][byte]);
        }
        cout << '\n';
        index += 2;
        curChar++;
    }
    */

    for (auto x : osmachinecode)
    {
        cout << x << '\n';
        index++;
    }

	for( int i = index ; i < MEMORYSIZE ; i++ )
		cout << string(32, '0') << '\n';
}

int main()
{
    int n;
    cin >> n;
    for (int i = 0; i < n; i++)
    {
        string inst;
        cin >> inst;
        osmachinecode.emplace_back(inst);
    }
    genBitStream();
}
