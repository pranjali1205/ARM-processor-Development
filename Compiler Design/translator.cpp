#include<bits/stdc++.h>
#include<cassert>
#include<sstream>
#include"helper.h"
#include<fstream>
#include<string>
#include<vector>
using namespace std;

#define line vector<string>

vector<line> acode;
unordered_map<string, string> labelPositions;
unordered_map<string, int> positions;
unordered_map<string, string> globalOffset;
unordered_map<string, int> globalType;

unordered_map<string, bool> jmpInst;
string sp, gp, heap;
int currentIndex;

int functionCallSize = -1;
int currentParam = -1;
string curFn = "";
int returnPassed = 0;


void getCode()
{
	ofstream fout("assembly.txt");
	fout << acode.size() << endl;
	for( int i = 0 ; i < acode.size() ; i++ ){
		//fout << acode[i].size() << endl;
		for(int j=0 ; j<acode[i].size() ; j++ ){
			fout << j << " ";
		}
		fout << endl;
	}
	fout.close();
}

void printAcode()
{
	int index = 0;
	for( int i = 0 ; i < acode.size() ; i++ ){
		cout << index << " " << index*4 << ": ";
		for(int j=0; j<acode[i].size();j++ ){
			cout << j << " ";
		}
		index++;
		cout <<"\n";
	}
}

int getConstant(string token)
{
	token = token.substr(1, token.length());
	int result = stoi(token);
	return result;
}

int computeStackSize(FunctionTable f)
{
	int stackSize = f.parameters.size() + f.localVariables.size() + f.tempVariables.size();
	//return address;
	stackSize++;
	//return values
	stackSize++;
	//space to store the heap pointer
	stackSize++;
	stackSize *= 4;
	return stackSize;
}

void load(string var, string reg, unordered_map<string, string>& offset, unordered_map<string, int>& type)
{
	if( var.front() == '#' )
	{
		vector<string> v1 ;
		v1.push_back("l1");
		v1.push_back(reg);
		v1.push_back(to_string(getConstant(var)));
		
		acode.push_back(v1);
	}
	else if( var.front() == '*' )
	{
		if( offset[var.substr(1, var.length())] != "" ){
			acode.push_back({"lwi", reg, sp, offset[var.substr(1, var.length())]});
			
		}
		else if( globalOffset[var.substr(1, var.length())] != "" )
			acode.push_back({"lwi", reg, gp, globalOffset[var.substr(1, var.length())]});
		else
			assert(false);

		if( type[var.substr(1,var.length())] == 1 )
			acode.push_back({"lbi", reg, reg, "0"});
		else
			acode.push_back({"lwi", reg, reg, "0"});
	}
	else if( var == "ReturnVal" )
	{
		acode.push_back({"lwi", reg, sp, "-4"});
	}
	else
	{
		if( offset[var] != "" )
			acode.push_back({"lwi", reg, sp, offset[var]});
		else if( globalOffset[var] != "" )
			acode.push_back({"lwi", reg, gp, globalOffset[var]});
		else
			assert(false);
	}
}

void store(string var, string reg, unordered_map<string, string>& offset, unordered_map<string, int>& type )
{
	if( var.front() == '*' ){
		if( offset[var.substr(1, var.length())] != "" )
			acode.push_back({"lwi", "R7", sp, offset[var.substr(1, var.length())]});
		else if( globalOffset[var.substr(1, var.length())] != "" )
			acode.push_back({"lwi", "R7", gp, globalOffset[var.substr(1, var.length())]});
		else
			assert(false);

		if( type[var.substr(1,var.length())] == 1 )
			acode.push_back({"sbi", reg, "R7", "0"});
		else
			acode.push_back({"swi", reg, "R7", "0"});
	}
	else{
		if( offset[var] != "" )
			acode.push_back({"swi", reg, sp, offset[var]});
		else if( globalOffset[var] != "" )
			acode.push_back({"swi", reg, gp, globalOffset[var]});
		else
			assert(false);
	}
}
void parseAssignment(vector<string>& tokens, unordered_map<string,string>& offset, unordered_map<string, int>& type )
{
	load(tokens[2], "R8", offset, type);
	store(tokens[0], "R8", offset, type);
}

void parseCompute(vector<string>& tokens, unordered_map<string, string>& offset, unordered_map<string, int>& type)
{
	load(tokens[2], "R8", offset, type);
	load(tokens[4], "R9", offset, type);
	if( tokens[3] == "+")
		acode.push_back({"add", "R10", "R8", "R9"});
	else if( tokens[3] == "-")
		acode.push_back({"sub", "R10", "R8", "R9"});
	else if( tokens[3] == "*")
		acode.push_back({"mul", "R10", "R8", "R9"});
	else if( tokens[3] == "/")
		acode.push_back({"div", "R10", "R8", "R9"});
	else if( tokens[3] == "%")
		acode.push_back({"mod", "R10", "R8", "R9"});
	else if( tokens[3] == "||")
		acode.push_back({"or", "R10", "R8", "R9"});
	else if( tokens[3] == "&&")
		acode.push_back({"and", "R10", "R8", "R9"});
	else if( tokens[3] == "<")
		acode.push_back({"lt", "R10", "R8", "R9"});
	else if( tokens[3] == "<=")
		acode.push_back({"le", "R10", "R8", "R9"});
	else if( tokens[3] == ">")
		acode.push_back({"gt", "R10", "R8", "R9"});
	else if( tokens[3] == ">=")
		acode.push_back({"ge", "R10", "R8", "R9"});
	else if( tokens[3] == "==")
		acode.push_back({"eq", "R10", "R8", "R9"});
	else if( tokens[3] == "!=")
		acode.push_back({"neq", "R10", "R8", "R9"});

	store(tokens[0], "R10", offset, type);
}

void parseIf(vector<string>& tokens, unordered_map<string, string>& offset, unordered_map<string, int>& type)
{
	load(tokens[2], "R8", offset, type);
	acode.push_back({"cmp", "R8", "R0"});
	assert(tokens[3] == "==" );
	acode.push_back({"jeq", labelPositions[tokens[7]]});
}

void parseGoto(vector<string>& tokens)
{
	acode.push_back({"jmp", labelPositions[tokens[1]]});
}


void parseArithmetic(vector<string>& tokens, unordered_map<string,string>& offset, unordered_map<string, int>& type)
{
	if( tokens.size() == 3 )
		parseAssignment(tokens, offset, type);
	else if( tokens.size() == 5)
		parseCompute(tokens, offset, type);
}

void parseFunctionCall(vector<string>& tokens)
{
	string functionName = tokens[1];
	int size = -1;
	FunctionTable fn;
	for( auto st : globalTable ){
		for( auto f : st.functionTables ){
			if( f.functionName == functionName ){
					size = computeStackSize(f);
					fn = f;
			}
		}
	}
	assert(size != -1 );
	assert(functionCallSize == -1 );
	assert(currentParam == -1);

	functionCallSize = size;
	currentParam = 0;
}

void parseParameters(vector<string>& tokens, unordered_map<string,string>& offset, unordered_map<string, int>& type )
{
	//int position = 12 +  currentParam*4;
	int position = 16 +  currentParam*4;
	load(tokens[1], "R8", offset, type);
	acode.push_back({"swi", "R8", sp, to_string(-1*position)});
	currentParam++;
}

void parseCall(vector<string>& tokens, string nextInst)
{

	acode.push_back({"la", "R8", nextInst.substr(0, nextInst.length()-1)});
	acode.push_back({"swi", "R8", sp, "-8"});
	acode.push_back({"addi", sp, sp,to_string(-1*functionCallSize)});
	acode.push_back({"jmp", tokens[1]});

	functionCallSize = -1;
	currentParam = -1;
}

void parseReturn(vector<string>& tokens, unordered_map<string, string>& offset, unordered_map<string, int>& type)
{
	assert(tokens.size() == 2 );
	returnPassed = 1;
	int size = 0;
	for( auto st : globalTable )
		for( auto f : st.functionTables )
			if( f.functionName == curFn ){
				size = computeStackSize(f);
				break;
			}

	load(tokens[1], "R8", offset, type);
	acode.push_back({"swi", "R8", sp, to_string(size-4)});
	acode.push_back({"lwi", heap, sp, to_string(size-12)});
	//acode.push_back({"add", heap, "R12", "R0"});

	int k = acode.size();
	k += 5;
	acode.push_back({"li", "R8", to_string(k*4) });
	assert(size != 0);
	acode.push_back({"lwi", "R9", sp, to_string(size-8)});
	acode.push_back({"sub", "R10", "R9", "R8"});
	acode.push_back({"addi", sp, sp, to_string(size)});
	acode.push_back({"jr", "R10"});
}

void parseMemory(vector<string>& tokens, unordered_map<string,string>& offset, unordered_map<string, int>& type )
{
	string var = tokens[1];
	string n = tokens[2];
	string size = tokens[3];

	load(n, "R8", offset, type);
	load(size, "R9", offset, type);
	acode.push_back({"mul", "R10", "R8", "R9"});
	acode.push_back({"modi", "R8", "R10", "4"});
	acode.push_back({"li", "R9", "4"});
	acode.push_back({"sub", "R8", "R9", "R8"});
	acode.push_back({"add", "R10", "R10", "R8"});
	acode.push_back({"sub", heap, heap, "R10"}); 
	store(var, heap, offset, type);
}

void parseString(vector<string>& tokens, unordered_map<string, string>& offset, unordered_map<string, int>& type)
{
	string var = tokens[1];
	string val = "";
	for( int i = 2 ; i < tokens.size() ; i++ )
		val += tokens[i] + " ";
	
	val = val.substr(1, val.length());
	val = val.substr(0, val.length()-2);


	int size = val.length();
	size++;
	if( (size/4)*4 != size )
	{
		size = (size/4)*4 + 4;
	}
	acode.push_back({"subi", heap, heap, to_string(size)});
	for( int i = 0 ; i < val.length() ; i++ )
	{
		acode.push_back({"li", "R8", to_string((int)(val[i]))});
		acode.push_back({"sbi", "R8", heap, to_string(i)});
	}
	acode.push_back({"sbi", "R0", heap, to_string(val.length())});
	store(var, heap, offset, type);	
}

void forkReturn(string dummy, string processid, unordered_map<string, string>& offset, unordered_map<string, int>& type)
{
	int functionSize = 0;
	for( auto st : globalTable )
		for( auto f : st.functionTables )
			if( f.functionName == "fork" )
			{
				functionSize = computeStackSize(f);
				break;
			}

	assert(functionSize != 0);

	//now, fork completed its execution, release its stack and heap
	//first store the process id in R11;
	load(processid, "R11", offset, type);
	//release heap
	acode.push_back({"lwi", heap, sp, to_string(functionSize-12)});
	//release stack
	acode.push_back({"addi", sp, sp, to_string(functionSize)});

	//store the registers to os_reg;
	acode.push_back({"lwi", "R6", gp, globalOffset["os_reg_0"]});
	acode.push_back({"swi", "R5", "R6", "0"});
	acode.push_back({"swi", "R7", "R6", "4"});
	acode.push_back({"swi", "R8", "R6", "8"});
	acode.push_back({"swi", "R9", "R6", "12"});
	acode.push_back({"swi", "R10", "R6", "16"});
	acode.push_back({"swi", "R12", "R6", "20"});
	acode.push_back({"swi", "R14", "R6", "24"});


	//load the registers to from_proc
	acode.push_back({"lwi", "R6", gp, globalOffset["from_proc_0"]});
	acode.push_back({"lwi", "R5", "R6", "0"});
	acode.push_back({"lwi", "R7", "R6", "4"});
	acode.push_back({"lwi", "R8", "R6", "8"});
	acode.push_back({"lwi", "R9", "R6", "12"});
	acode.push_back({"lwi", "R10", "R6", "16"});
	acode.push_back({"lwi", "R12", "R6", "20"});
	acode.push_back({"lwi", "R14", "R6", "24"});

	//set the current process back to the previous process
	load("prev_process_0", "R6", offset, type);
	store("current_process_0", "R6", offset, type);
	load("current_process_0", "R3", offset, type);

	//jump to create process return;
	acode.push_back({"jmp", "create_process_return"});
}

void forkEnter(string dummy, string id, unordered_map<string, string>& offset, unordered_map<string, int>& type)
{
	//set the current process to 1 i.e now the os will be running
	acode.push_back({"li", "R6", "1"});
	store("current_process_0", "R6", offset, type);
	load("current_process_0", "R3", offset, type);

	//load the process id to r11
	load(id, "R11", offset, type);
	
	//store the registers to from_proc
	acode.push_back({"lwi", "R6", gp, globalOffset["from_proc_0"]});
	acode.push_back({"swi", "R5", "R6", "0"});
	acode.push_back({"swi", "R7", "R6", "4"});
	acode.push_back({"swi", "R8", "R6", "8"});
	acode.push_back({"swi", "R9", "R6", "12"});
	acode.push_back({"swi", "R10", "R6", "16"});
	acode.push_back({"swi", "R12", "R6", "20"});
	acode.push_back({"swi", "R14", "R6", "24"});

	//load the os_reg to registers;
	acode.push_back({"lwi", "R6", gp, globalOffset["os_reg_0"]});
	acode.push_back({"lwi", "R5", "R6", "0"});
	acode.push_back({"lwi", "R7", "R6", "4"});
	acode.push_back({"lwi", "R8", "R6", "8"});
	acode.push_back({"lwi", "R9", "R6", "12"});
	acode.push_back({"lwi", "R10", "R6", "16"});
	acode.push_back({"lwi", "R12", "R6", "20"});
	acode.push_back({"lwi", "R14", "R6", "24"});

	int functionSize = 0;
	string functionLabel;
	for( auto st : globalTable )
		for( auto f : st.functionTables )
			if( f.functionName == "fork" )
			{
				functionSize = computeStackSize(f);
				functionLabel = f.label;
				break;
			}

	assert(functionSize != 0);

	//increment the stack for fork to execute
	acode.push_back({"addi", sp, sp,to_string(-1*functionSize)});
	//jump to fork;
	acode.push_back({"jmp", functionLabel});
}

void setFork(string pName, string proc_reg, unordered_map<string, string>& offset, unordered_map<string, int>& type)
{
	string jumpAddr;
	int functionSize = -1;
	for( auto st : globalTable )
		for( auto f : st.functionTables )
			if( f.functionName == pName )
			{
				jumpAddr = f.label;
				functionSize = computeStackSize(f);
			}

	assert(functionSize != -1);

	load(proc_reg, "R7", offset, type);
	//now r8 contains the stack pointer;
	acode.push_back({"lwi", "R8", "R7", "24"});
	acode.push_back({"la", "R6", "return_process_begin"});
	//store the return address of the process, which is the begin address of processReturn
	acode.push_back({"swi", "R6", "R8", "-8"});
	//this is subtracting the function size fromt the stack pointer
	acode.push_back({"li", "R6", to_string(functionSize)});
	acode.push_back({"sub", "R6", "R8", "R6"});
	acode.push_back({"swi", "R6", "R7", "24"});

	//this should be the address of the function to jump to + 4;
	acode.push_back({"la", "R6", jumpAddr});
	//9600 + 12+ 4 = 9616;
	acode.push_back({"li", "R8", "9616"});
	acode.push_back({"add","R6", "R6", "R8"});
	acode.push_back({"swi", "R6", "R7", "0"});
}

void switchContext(string to, string id, unordered_map<string, string>& offset, unordered_map<string, int>& type)
{
	//load the process id
	//load(id, "R11", offset, type);
	//store the registers to os
	acode.push_back({"lwi", "R6", gp, globalOffset["os_reg_0"]});
	acode.push_back({"swi", "R5", "R6", "0"});
	acode.push_back({"swi", "R7", "R6", "4"});
	acode.push_back({"swi", "R8", "R6", "8"});
	acode.push_back({"swi", "R9", "R6", "12"});
	acode.push_back({"swi", "R10", "R6", "16"});
	acode.push_back({"swi", "R12", "R6", "20"});
	acode.push_back({"swi", "R14", "R6", "24"});

	if( to == "1" )
	{
		acode.push_back({"lwi", "R6", gp, globalOffset["p1_reg_0"]});
	}
	else if( to == "2" )
	{
		acode.push_back({"lwi", "R6", gp, globalOffset["p2_reg_0"]});
	}
	else if( to == "3" )
	{
		acode.push_back({"lwi", "R6", gp, globalOffset["p3_reg_0"]});
	}
	else if( to == "4" )
	{
		acode.push_back({"lwi", "R6", gp, globalOffset["p4_reg_0"]});
	}
	else
	{
		assert(false);
	}
	acode.push_back({"lwi", "R5", "R6", "0"});
	acode.push_back({"lwi", "R7", "R6", "4"});
	acode.push_back({"lwi", "R8", "R6", "8"});
	acode.push_back({"lwi", "R9", "R6", "12"});
	acode.push_back({"lwi", "R10", "R6", "16"});
	acode.push_back({"lwi", "R12", "R6", "20"});
	acode.push_back({"lwi", "R14", "R6", "24"});

	//set the process id;
	store("current_process_0", "R11", offset, type);
	load("current_process_0", "R3", offset, type);

	//acode.push_back({"la", "R6", "switchJump"}); 
	acode.push_back({"li", "R6", to_string(acode.size()*4+20)});
	acode.push_back({"li", "R15", "9612"});
	acode.push_back({"add", "R6", "R6", "R15"});
	acode.push_back({"addi", "R6", "R6", "8"});
	acode.push_back({"sub", "R5", "R5", "R6"});
	//positions["switchJump"] = acode.size();
	acode.push_back({"jri", "R5"});
}

void processReturnEnter(string to, string id, unordered_map<string, string>& offset, unordered_map<string, int>& type)
{
	load("current_process_0", "R11", offset, type);
	acode.push_back({"li", "R6", "1"});
	store("current_process_0", "R6", offset, type);
	load("current_process_0", "R3", offset, type);


	//ignore the register contents of the process, it returned
	//why do you still need it - or is it!

	//load the os_reg to registers;
	acode.push_back({"lwi", "R6", gp, globalOffset["os_reg_0"]});
	acode.push_back({"lwi", "R5", "R6", "0"});
	acode.push_back({"lwi", "R7", "R6", "4"});
	acode.push_back({"lwi", "R8", "R6", "8"});
	acode.push_back({"lwi", "R9", "R6", "12"});
	acode.push_back({"lwi", "R10", "R6", "16"});
	acode.push_back({"lwi", "R12", "R6", "20"});
	acode.push_back({"lwi", "R14", "R6", "24"});

	int functionSize = 0;
	for( auto st : globalTable )
		for( auto f : st.functionTables )
			if( f.functionName == "processReturn" )
			{
				functionSize = computeStackSize(f);
				break;
			}
	
	assert(functionSize != 0);
	//increment the stack for switch to execute
	acode.push_back({"addi", sp, sp, to_string(-1*functionSize)});
	acode.push_back({"swi", heap, sp, to_string(functionSize-12)});
}

void processReturnExit(string to, string id, unordered_map<string, string>& offset, unordered_map<string, int>& type)
{
	int functionSize = 0;
	for( auto st : globalTable )
		for( auto f : st.functionTables )
			if( f.functionName == "processReturn" )
			{
				functionSize = computeStackSize(f);
				break;
			}
	acode.push_back({"lwi", heap, sp, to_string(functionSize-12)});
	acode.push_back({"addi", sp, sp,to_string(functionSize)});

}

void switchEnter(string to, string id, unordered_map<string, string>& offset, unordered_map<string, int>& type)
{
	load("current_process_0", "R2", offset, type);
	acode.push_back({"li", "R1", "1"});
	acode.push_back({"cmp", "R1", "R2"});
	acode.push_back({"jne", "switch_code_start"});
	acode.push_back({"li", "R2", to_string(9600 + acode.size()*4 + 28)});
	acode.push_back({"sub", "R5", "R5", "R2"});
	acode.push_back({"jri", "R5"});
	positions["switch_code_start"] = acode.size();

	load("current_process_0", "R11", offset, type);
	acode.push_back({"li", "R6", "1"});
	store("current_process_0", "R6", offset, type);
	load("current_process_0", "R3", offset, type);

	//store the registers to temp;
	acode.push_back({"lwi", "R6", gp, globalOffset["temp_reg_0"]});
	acode.push_back({"swi", "R5", "R6", "0"});
	acode.push_back({"swi", "R7", "R6", "4"});
	acode.push_back({"swi", "R8", "R6", "8"});
	acode.push_back({"swi", "R9", "R6", "12"});
	acode.push_back({"swi", "R10", "R6", "16"});
	acode.push_back({"swi", "R12", "R6", "20"});
	acode.push_back({"swi", "R14", "R6", "24"});

	//load the os_reg to registers;
	acode.push_back({"lwi", "R6", gp, globalOffset["os_reg_0"]});
	acode.push_back({"lwi", "R5", "R6", "0"});
	acode.push_back({"lwi", "R7", "R6", "4"});
	acode.push_back({"lwi", "R8", "R6", "8"});
	acode.push_back({"lwi", "R9", "R6", "12"});
	acode.push_back({"lwi", "R10", "R6", "16"});
	acode.push_back({"lwi", "R12", "R6", "20"});
	acode.push_back({"lwi", "R14", "R6", "24"});
	
	int functionSize = 0;
	for( auto st : globalTable )
		for( auto f : st.functionTables )
			if( f.functionName == "switch" )
			{
				functionSize = computeStackSize(f);
				break;
			}

	assert(functionSize != 0);
	//increment the stack for switch to execute
	acode.push_back({"addi", sp, sp,to_string(-1*functionSize)});
	acode.push_back({"swi", heap, sp, to_string(functionSize-12)});
}

void switchReturn(string to, string id, unordered_map<string, string>& offset, unordered_map<string, int>& type)
{
	int functionSize = 0;
	for( auto st : globalTable )
		for( auto f : st.functionTables )
			if( f.functionName == "switch" )
			{
				functionSize = computeStackSize(f);
				break;
			}
	acode.push_back({"lwi", heap, sp, to_string(functionSize-12)});
	acode.push_back({"addi", sp, sp,to_string(functionSize)});

}

void parseAsm(vector<string>& tokens, unordered_map<string,string>& offset, unordered_map<string, int>& type)
{
	string mode = tokens[1];
	string arg1 = tokens[2];
	string arg2 = tokens[3];
	mode = mode.substr(1, mode.length()-2);
	arg1 = arg1.substr(1, arg1.length()-2);

	if( mode == "switch" )
	{
		switchContext(arg1, arg2, offset, type);
	}
	else if( mode == "fork" )
	{
		setFork(arg1, arg2, offset, type);
	}
	else if( mode == "load" )
	{
		load(arg2, arg1, offset, type);
	}
	else if( mode == "forkEnter" )
	{
		forkEnter(arg1,arg2, offset, type);	
	}
	else if( mode == "store" )
	{
		store(arg2, arg1, offset, type);
	}
	else if( mode == "forkReturn" )
	{
		forkReturn(arg1, arg2, offset, type);
	}
	else if( mode == "label" )
	{
		positions[arg1.substr(0, arg1.length()-1)] = acode.size();
	}
	else if( mode == "switchEnter" )
	{
		switchEnter(arg1, arg2, offset, type);
	}
	else if( mode == "switchReturn" )
	{
		switchReturn(arg1, arg2, offset, type);
	}
	else if( mode == "processReturnEnter" )
	{
		processReturnEnter(arg1, arg2, offset, type);
	}
	else if( mode == "processReturnExit" )
	{
		processReturnExit(arg1, arg2, offset, type);
	}
	else
	{
		cout << "mode = &" << mode << "&" << endl;
		assert(false);
	}
}
void parseInstruction(vector<string>& tokens, unordered_map<string,string>& offset, string nextInst, unordered_map<string, int>& type )
{
	if( tokens.size() == 0 )
		return;

	if( tokens[0].back() == ':' )
		positions[tokens[0].substr(0, tokens[0].length()-1)] = acode.size();
	else if( tokens[0] == "if" )
		parseIf(tokens, offset, type);
	else if( tokens[0] == "goto" )
		parseGoto(tokens);
	else if( tokens[0] == "FunctionCall" )
		parseFunctionCall(tokens);
	else if( tokens[0] == "param" )
		parseParameters(tokens, offset, type);
	else if( tokens[0] == "call" )
		parseCall(tokens, nextInst);
	else if( tokens[0] == "Return" )
		parseReturn(tokens, offset, type);
	else if( tokens[0] == "memory" )
		parseMemory(tokens, offset, type);
	else if( tokens[0] == "string" )
		parseString(tokens, offset, type);
	else if( tokens[0] == "asm" )
		parseAsm(tokens, offset, type);
	else if( tokens[1] == "=" )
		parseArithmetic(tokens, offset, type);
	else
	{
		cout << "assertion failed" << endl;
		for( auto i : tokens )
			cout << i << " ";
		cout << endl;
		assert(false);
	}
}

void computeOffset(FunctionTable f, unordered_map<string,string>& offset )
{
	int index = 0;
	
	for( auto i : f.localVariables ){
		offset[i.name+"_"+to_string(i.scope)] = to_string(index);
		index += 4;
	}
for( auto i : f.tempVariables ){ offset[i.name+"_"+to_string(i.scope)] = to_string(index); index += 4;
	}

	int s = f.parameters.size();
	for( int i = s-1 ; i >= 0 ; i-- ){
		offset[f.parameters[i].name+"_"+to_string(f.parameters[i].scope)] = to_string(index);
		index += 4;
	}
}

void computeType(FunctionTable f, unordered_map<string, int>& type)
{
	for( auto i : f.localVariables ){
		type[i.name+"_"+to_string(i.scope)] = (i.dataType == "*char") ? 1 : 4;
	}
	
	for( auto i : f.tempVariables ){
		type[i.name+"_"+to_string(i.scope)] = (i.dataType == "*char") ? 1 : 4;
	}

	for( auto i : f.parameters ){
		type[i.name+"_"+to_string(i.scope)] = (i.dataType == "*char") ? 1 : 4;
	}
}

void printOffset(FunctionTable f, unordered_map<string, string>& offset)
{
	for( auto i : f.parameters )
		cout << i.name + "_" + to_string(i.scope) << " " << offset[i.name+"_"+to_string(i.scope)] << endl;

	for( auto i : f.localVariables )
		cout << i.name + "_" + to_string(i.scope) << " " << offset[i.name+"_"+to_string(i.scope)] << endl;

	for( auto i : f.tempVariables )
		cout << i.name + "_" + to_string(i.scope) << " " << offset[i.name+"_"+to_string(i.scope)] << endl;
}

void computeDummyLabelPositions(FunctionTable f)
{
	for( auto i : f.code )
	{
		if( i.back() == ':' )
		{
			labelPositions[i.substr(0, i.length()-1)] = i.substr(0, i.length()-1);
		}
	}
}

void printLabelPositions()
{
	for( auto i : positions )
		cout << i.first  << "-"<< i.second << endl;
}

void computeLabelPositions()
{
	for( int i = 0 ; i < acode.size() ; i++ )
	{
		if( jmpInst.find(acode[i][0]) != jmpInst.end() )
		{
			if( positions.find(acode[i][1]) != positions.end() )
				acode[i][1] = to_string((positions[acode[i][1]] - i -1 )*4);
		}
		else if( acode[i][0] == "la" )
		{
			vector<string> v{"li", acode[i][1], to_string((positions[acode[i][2]])*4)};
			acode[i] = v;
		}
	}
}

void translateFunction(FunctionTable f, vector<SymbolTableEntry>& attributes)
{
	curFn = f.functionName;
	//cout << "Parsing function - " << curFn << endl;
	unordered_map<string, string> offset;
	unordered_map<string, int> type;

	computeOffset(f, offset);
	computeType(f, type);
	printOffset(f,offset);
	computeDummyLabelPositions(f);
	returnPassed = 0;

	string intermediate;
	vector<string> tokens;

	int currentFunctionSize = computeStackSize(f);

	bool print = true;

	for( int i = 0 ; i < f.code.size() ; i++ ){
		tokens.clear();
		stringstream check(f.code[i]);
		while( getline(check, intermediate, ' ') )
			tokens.push_back(intermediate);
		
		if( print )
			cout << f.code[i] << endl;
		if( tokens[0] == "call" )
			parseInstruction(tokens,offset, f.code[i+1], type);
		else
			parseInstruction(tokens, offset, "", type);

		if( i == 0 )
		{
			acode.push_back({"swi", heap, sp, to_string(currentFunctionSize-12)});
			//acode.push_back({"add", "R12", heap, "R0"});
		}
			
		if( print ){
			for( int j = currentIndex ; j < acode.size() ; j++ ){
				//cout << j <<" " ;
				for( auto k : acode[j] )
					cout << k << " ";
				cout << endl;
			}
		}
		
		currentIndex = acode.size();
	}
	//assert(returnPassed == 1);
	returnPassed = 0;
	if( print )
		cout << "------------------" << endl;
}

void computeGlobalOffset(vector<SymbolTableEntry>& attributes)
{
	int index = 0;
	for( auto i : attributes ){
		globalOffset[i.name+"_"+to_string(i.scope)] = to_string(index);
		index += 4;
	}
	for( auto i : attributes ){
		cout << i.name + "_" + to_string(i.scope) << " " << globalOffset[i.name+"_"+to_string(i.scope)] << endl;
	}
}

void computeGlobalType(vector<SymbolTableEntry>& attributes)
{
	for( auto i : attributes ){
		globalType[i.name+"_"+to_string(i.scope)] = (i.dataType == "*char") ? 1 : 4;
	}
}

void computeInitCode()
{
	int globalSize = 0;
	for( auto st : globalTable ){
		globalSize = st.attributes.size();
		globalSize *= -4;
		for( auto f : st.functionTables ){
			if( f.functionName == "main" ){
				int size = computeStackSize(f);
				size *= -1;

				acode.push_back({"addi", gp, gp, to_string(globalSize)});
				//the return address for main should be acode.size()*4 + 16;
				acode.push_back({"li", "R8", to_string(acode.size()*4 + 16)});
				acode.push_back({"swi", "R8", sp, "-8"});
				acode.push_back({"addi", sp, sp, to_string(size)});
				acode.push_back({"jmp", f.label});
				acode.push_back({"jmp", to_string(-4)});
				
				//the address to return to interrupt should be os.start(excluding the stack and gp set instr) + acode.size()*4 + 16
				acode.push_back({"addi", "R4", "R4", "1"});
				acode.push_back({"jmp","switch_begin"});
				//acode.push_back({"li", "R2", to_string(9600 + acode.size()*4 + 28)});
				//acode.push_back({"sub", "R5", "R5", "R2"});
				//acode.push_back({"jri", "R5"});
			}
		}
	}
}

void translate()
{
	jmpInst["jmp"] = true;
	jmpInst["jeq"] = true;
	jmpInst["jne"] = true;
	sp = "R14";
	gp = "R13";
	heap = "R12";

	computeInitCode();
	currentIndex = acode.size();

	for( auto st : globalTable ){
		computeGlobalOffset(st.attributes);
		computeGlobalType(st.attributes);
		for( auto f : st.functionTables )
			translateFunction(f, st.attributes);
	}
	computeLabelPositions();
	//printLabelPositions();
	//printAcode();
	getCode();
}

