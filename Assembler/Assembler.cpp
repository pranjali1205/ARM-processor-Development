#include <bits/stdc++.h>

using namespace std;
// ADD, ADDI
// SUB, SUBI
// MUL, MULI
// DIV, DIVI
// MOD, MODI
// OR, ORI
// AND, ANDI
// LSHIFT, LSHIFTI
// RSHIFT, RSHIFTI
// LDR, LDI
// STR, STI

map<string, string> registerInBinary;
map<string, string> opcode;
set<string> memInstructions;
set<string> immediateMemInstructions;
set<string> dataProcessingInstructions;
set<string> immediateDataProcessingInstructions;

string cond = "";
string op = "";
string padding = "";
string setAluFlags = "";
string loadStoreStuff = "";
string branchStuff = "";
string load = "";
string store = "";
string operation = "";
string immediate = "";
string r1 = "";
string r2 = "";
string r3 = "";
string immediateValue = "";

vector<string> machineInstructions;

string getBinary(int num, int len)
{
    string binary = "";
    while (len > 0)
    {
        binary.push_back('0' + (num % 2));
        len--;
        num /= 2;
    }
    reverse(binary.begin(), binary.end());
    return binary;
}

string getSignedBinary(int num, int len)
{
    bool neg = (num < 0);
    num = abs(num);
    if (!neg)
        return getBinary(num, len);
    int mx = (1 << len) - 1;
    int tt = mx - num;
    tt += 1;
    tt &= mx;
    return getBinary(tt, len);
}

// cmp r1 r2
void parseComparisonInstruction(vector<string> inst)
{
    cond = "1110";
    op = "00";
    setAluFlags = "1";
    immediate = "0";
    operation = opcode[inst[0]];
    r1 = "";
    r2 = registerInBinary[inst[1]];
    r3 = registerInBinary[inst[2]];
    padding = string(12, '0');
}

// lwi r1 10
//Note that li is a pseudo instruction
void parseLoadImmediateInstruction(vector<string> inst)
{

    cond = "1110";
    op = "11";
    r1 = registerInBinary[inst[1]];
    immediateValue = getSignedBinary(stoi(inst.back()), 22);
}

// sw r1 r2 r3
// lwi r1 r2 100
void parseMemoryInstruction(vector<string> inst)
{
    cond = "1110";
    op = "01";
    immediate = "1";
    loadStoreStuff = "0000";
    load = (inst[0][0] == 'l') ? "1" : "0";

    // byte instruction
    if (inst[0][1] == 'b')
    {
        loadStoreStuff = "0001";
    }

    if (immediateMemInstructions.count(inst[0]))
    {
        immediate = "0";
        padding = "";
        immediateValue = getSignedBinary(stoi(inst.back()), 12);
    }
    else
    {
        padding = string(8, '0');
        r3 = registerInBinary[inst.back()];
    }
    r1 = registerInBinary[inst[1]];
    r2 = registerInBinary[inst[2]];
}

// add r1 r2 r3
// addi r1 r2 100
// neq r1 r2 r3
void parseDataProcessingInstructions(vector<string> inst)
{
    cond = "1110";
    op = "00";
    immediate = "0";
    if (immediateDataProcessingInstructions.count(inst[0]))
    {
        immediate = "1";
        // can remove this!
        if (inst[0].back() == 'i')
            inst[0].pop_back();
        padding = "";
        immediateValue = getSignedBinary(stoi(inst.back()), 12);
    }
    else
    {
        padding = string(8, '0');
        r3 = registerInBinary[inst[3]];
    }
    setAluFlags = "0";
    operation = opcode[inst[0]];
    assert(inst.size() == 4);
    r1 = registerInBinary[inst[1]];
    r2 = registerInBinary[inst[2]];
}

// jne -1
// jmp -1
// jeq 100
void parseBranchInstructions(vector<string> inst)
{
    // branchStuff = 01 -> Interrupt Exit! -> jr
    cond = "1110";
    op = "10";
    if (inst[0] == "jeq")
        cond = "0000";
    if (inst[0] == "jne")
        cond = "0001";
    if (inst[0] == "jr")
    {
        branchStuff = "11";
        immediateValue = "";
        padding = string(20, '0');
        r3 = registerInBinary[inst.back()];
    }
    else if (inst[0] == "jri")
    {
        branchStuff = "01"; // this will let the control Unit know about the ending of the interrupt!
        immediateValue = "";
        padding = string(20, '0');
        r3 = registerInBinary[inst.back()];
    }
    else
    {
        branchStuff = "10";
        immediateValue = getSignedBinary(stoi(inst.back()), 24);
    }
}

void clearInstructionParams()
{
    cond = "";
    setAluFlags = "";
    op = "";
    padding = "";
    loadStoreStuff = "";
    branchStuff = "";
    load = "";
    store = "";
    operation = "";
    immediate = "";
    r1 = "";
    r2 = "";
    r3 = "";
    immediateValue = "";
}

void parseInstruction(vector<string> inst)
{
    clearInstructionParams();
    if (inst[0] == "cmp")
    {
        parseComparisonInstruction(inst);
    }
    else if (inst[0] == "li")
    {
        parseLoadImmediateInstruction(inst);
    }
    else if (memInstructions.count(inst[0]) || immediateMemInstructions.count(inst[0]))
    {
        parseMemoryInstruction(inst);
    }
    else if (dataProcessingInstructions.count(inst[0]) || immediateDataProcessingInstructions.count(inst[0]))
    {
        parseDataProcessingInstructions(inst);
    }
    else
    {
        parseBranchInstructions(inst);
    }
    string final_instruction = cond + op + immediate + loadStoreStuff + branchStuff + load + operation + setAluFlags + r2 + r1 + padding + r3 + immediateValue;
    assert(final_instruction.size() == 32);
    machineInstructions.push_back(final_instruction);
}

void assignRegisters()
{
    for (int i = 0; i < 16; i++)
    {
        string binary = "";
        int num = 0;
        for (int j = 3; j >= 0; j--)
        {
            if (i & (1 << j))
            {
                num += (1 << j);
                binary += "1";
            }
            else
                binary += "0";
        }
        registerInBinary["R" + to_string(num)] = binary;
    }
}

void assignOpcodes()
{
    opcode["add"] = "0000";
    opcode["sub"] = "0001";
    opcode["cmp"] = "0010";
    opcode["ldi"] = "0011";
    opcode["mul"] = "0100";
    opcode["div"] = "0101";
    opcode["mod"] = "0110";
    opcode["or"] = "0111";
    opcode["and"] = "1000";
    opcode["lt"] = "1001";
    opcode["le"] = "1010";
    opcode["gt"] = "1011";
    opcode["ge"] = "1100";
    opcode["eq"] = "1101";
    opcode["neq"] = "1110";
    //
    opcode["rshift"] = "1111";
}
vector<vector<string>> getAssembly()
{
    vector<vector<string>> assembly;
    int t;
    cin >> t;
    while (t--)
    {
        int n;
        cin >> n;
        vector<string> inst(n);
        for (int j = 0; j < n; j++)
        {
            cin >> inst[j];
        }
        assembly.push_back(inst);
    }
    return assembly;
}

vector<string> setRegister(string reg, string value)
{
    return {"li", reg, value};
}

void setGlobalRegisters()
{
    vector<string> setSP = setRegister("R14", "50000");
    vector<string> setHeap = setRegister("R12", "54000");
    vector<string> setGP = setRegister("R13", "55000");
    parseInstruction(setSP);
    parseInstruction(setGP);
    parseInstruction(setHeap);
}

int main()
{
    vector<vector<string>> assembly = getAssembly();

    assignRegisters();
    assignOpcodes();
    for (string x : {"lw", "sw", "lb", "sb"})
    {
        memInstructions.insert(x);
        immediateMemInstructions.insert(x + "i");
    }

    for (string x : {"add", "sub", "mul", "div", "mod", "or", "and"})
    {
        dataProcessingInstructions.insert(x);
        immediateDataProcessingInstructions.insert(x + "i");
    }

    for (string x : {"lt", "le", "gt", "ge", "eq", "neq"})
    {
        dataProcessingInstructions.insert(x);
    }

    setGlobalRegisters();

    for (auto instruction : assembly)
    {
	/*cout << "instruction = ";
	for( auto c : instruction )
	{
		cout << c << " ";
	}
	cout << endl;*/
        parseInstruction(instruction);
    }
    cout <<"machineInstruction.size = "<< machineInstructions.size() << '\n';
    for (auto x : machineInstructions)
    {
        cout << x << '\n';
    }
}
