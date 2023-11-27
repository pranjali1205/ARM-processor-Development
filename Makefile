compile : tokenizer.l parser.y helper.cpp translator.cpp helper.h
	lex tokenizer.l
	yacc -d parser.y 
	yacc parser.y -o gm.cc
	cc -c lex.yy.c -o lex.yy.o
	g++ lex.yy.o gm.cc helper.cpp translator.cpp -o genTemp
	rm gm.cc lex.yy.c y.tab.h lex.yy.o y.tab.c
	./genTemp <input.cpp> tacASM.txt

clean:
	rm -f gm.cc lex.yy.c y.tab.h lex.yy.o y.tab.c
	rm -f genTemp tacASM.txt assembly.txt
	

