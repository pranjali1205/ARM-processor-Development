all: 
	lex tokenizer.l
	yacc -d parser.y 
	yacc parser.y -o gm.cc
	cc -c lex.yy.c -o lex.yy.o
	g++ lex.yy.o gm.cc helper.cpp translator.cpp -o genParser
	g++ Assembler.cpp -o assembler
	g++ MemoryGen.cpp -o memgen
	rm gm.cc lex.yy.c y.tab.h lex.yy.o y.tab.c

parser:
	./genParser os.cpp > os.asm
run: assembler memgen
	./assembler < os_assembly.txt > os_machine.txt
	./memgen < os_machine.txt > os.mem

assembly: Assembler.cpp
	g++ Assembler.cpp -o assembler && ./assembler < os_assembly.txt > os_machine.txt

memgen: MemoryGen.cpp
	g++ MemoryGen.cpp -o memgen && ./memgen < os_machine.txt > os.mem


clean:
	rm -f genParser
	rm -f gm.cc lex.yy.c y.tab.h lex.yy.o y.tab.c
	rm assembler memgen
	rm os_assembly.txt os_machine.txt 