int KEYBOARD;
int MAPSTART;
char *Buffer;
int current_buffer_index;
int line;
int character;
char *memory;
int displayLock;
char *Fchart;

int current_process;
int prev_process;
int pid;
int *os_reg;
int *p1_reg;
int *p2_reg;
int *p3_reg;
int *p4_reg;
int *temp_reg;
int *all_processes;
int *from_proc;

char scanf_char()
{
	int k;
	for (;;)
	{
		k = memory[KEYBOARD];
		if (k != 0)
		{
			return k;
		}
	}
}

int strlen(char *str)
{
	int count;
	count = 0;
	for (;;)
	{
		int ch;
		ch = str[count];
		if (ch == 0)
		{
			break;
		}
		count++;
	}
	return count;
}

int clear_shell()
{
	int i;
	for (i = 38399; i >= 0; i--) //here 38399 is the last memory location of the screen, each chacater is stored in 8 bits so the total number of characters in the screen is 38400(80)
	{
		memory[i] = 0;
	}
	line = 0;
	character = 0;
	return 0;
}
// screen size is 80*60 i.e 80 characters in a line and 60 lines in a screen


int printf(char *arr, int size, int l, int c)
{
	int displayStart;
	displayStart = 80 * l;

	int k;

	for (k = 0; k < 8; k++)
	{
		int j;
		int a;
		a = k * 80;
		for (j = 0; j < size; j++)
		{
			int m;
			m = a + j + c;
			if (c + j >= 80)
			{
				break;
			}
			int b;
			b = arr[j];
			b = b * 8;
			memory[displayStart + m] = memory[MAPSTART + b + k];
		}
		// here display function says that it will print the string in the given line and character,
		// where the parameter char *arr is the string to be printed, int size is the size of the string, int l is the line number and int c is the character number, here character number is
		// to print the string in the middle of the screen we have to calculate the character number, here the calculation is 80/2-strlen(arr)/2=40-strlen(arr)/2, here 40 is the middle of the screen and strlen(arr)/2 is calculated because we want to print the string in the middle of the screen,
		// if we want to print the string in the left side of the screen then we have to calculate the character number as 0,
		// if we want to print the string in the right side of the screen then we have to calculate the character number as 80-strlen(arr)
	}
	return 0;
}

int welcome_screen()
{

	char *str1;
	char *str2;
	str1 = "********************************************************************************";
	str2 = "*                                                                              *";

	printf(str1, 80, 0, 0);
	int i;
	for (i = 1; i < 59; i++)
	{
		printf(str2, 80, i, 0);
	}
	printf(str1, 80, 59, 0);

	char *hello;
	hello = "TEAM-1 ARM";
	int len;
	len = strlen(hello);
	printf(hello, len, 29, 30); // line number is 29 because it needs to be printed in the middle of the screen
	// here 30 is character because we want to print hello in the middle of the screen the calculation is 40/2-strlen(hello)/2=30 here 30. strlen(hello)/2 is calculated because
	// to print the strin hello in the middle of the screen, if we want to print the string in the left side of the screen then we have to calculate the character number as 0, if we want to print the string in the right side of the screen then we have to calculate the character number as 40-strlen(hello) and finally it becomes
	int key;
	for (;;) // this for loop waits for the user to press enter key, if the user presses enter key then the loop breaks and the welcome screen disappears
	{
		key = scanf_char();
		if (key == 13) // here 13 is the ascii value of enter key
		{
			break;
		}
	}
	clear_shell(); // this function clears the screen

	return 0;
}

int scanf_line()
{
	int i;
	for (i = 0; i < 80; i++) // here 80 is the maximum number of characters in a line
	{
		Buffer[i] = 0;
	}
	i = 0;
	for (;;)
	{
		if (i == 80) // here 80 is the maximum number of characters in a line
		{
			break;
		}
		int temp;
		temp = scanf_char();
		if (temp == 13) // here 13 is the ascii value of enter key
		{
			break;
		}
		elif (temp == 8)
		{
			if (i != 0)
			{
				i--;
				Buffer[i] = 0;
			}
		}
		else
		{
			Buffer[i] = temp;
			i++;
		}
		printf(Buffer, 75, line, character); // this line prints the string in the screen, here 35 is the maximum number of characters in a line which was calculated
	}
	current_buffer_index = 0;
	line = (line + 1) % 60; // here 60 is the maximum number of lines in a screen
	if (line == 0)
	{
		clear_shell();
	}
	character = 0;
	return i;
}

int strcmp(char *str1, char *str2)
{
	int len1, len2;
	len1 = strlen(str1);
	len2 = strlen(str2);

	if (len1 != len2)
	{
		return 1;
	}

	int i;
	int l1, l2;
	for (i = 0; i < len1; i++)
	{
		l1 = str1[i];
		l2 = str2[i];
		if (l1 != l2)
		{
			return 1;
		}
	}
	return 0;
}

int print_string(char *buff, int len, int newline)
// the difference between print_string and printf is that print_string prints the string in the next line if newline is 1 and it prints the string in the same line if newline is 0,
// but printf prints the string in the same line
// parameters of this funcion is char *buff which is the string to be printed, int len is the length of the string and int newline is the parameter which decides whether to print the string in the next line or not
{
	int i;
	for (; displayLock == 1;)
	{
		i = 0;
	}
	displayLock = 1;
	for (i = 0; i < len; i++)
	{
		if (character == 80)
		{
			line = (line + 1) % 60;
			if (line == 0)
			{
				clear_shell();
			}
			character = 0;
		}
		if (line == 60)
		{
			clear_shell();
		}

		char *b;
		int bu;
		bu = buff;
		bu = bu + i;
		b = bu;
		printf(b, 1, line, character);
		character++;
	}
	if (newline == 1)
	{
		line = (line + 1) % 60;
		if (line == 0)
		{
			clear_shell();
		}
		character = 0;
	}
	displayLock = 0;
	return 0;
}

int scanf_string(char *buff)
{
	int i;
	i = 0;
	int current;
	current = Buffer[current_buffer_index];

	if (current == 0 || current_buffer_index >= 80)
	{
		scanf_line();
	}

	for (;;)
	{
		current = Buffer[current_buffer_index];
		if (current == 0 || current == 32 || current_buffer_index >= 80) // if the current character is space or null or uf then the loop breaks
		{
			break;
		}
		elif (current == 8) // if the current character is backspace then the loop breaks because
		{
			break;
		}

		else
		{
			buff[i] = Buffer[current_buffer_index];
			current_buffer_index++;
			i++;
		}
	}
	return 0;
} // this function scans the string from the buffer and stores it in the buff array. returns the length of the string

int scanf_num()
{
	char buff[10];
	int size;
	size = scanf_string(buff);
	int num;
	num = 0;
	int i;
	int b;
	b = buff[0];
	if (b == 45) // if the first character is - then the number is negative
	{
		for (i = 1; i < size; i++)
		{
			b = buff[i];
			if (b < 48 || b > 57) // if the character is not a number then the loop breaks
			{
				return 0;
			}
			num = num * 10;
			num = num + b - 48;
		}
		return 0 - num;
	}

	for (i = 0; i < size; i++)
	{
		b = buff[i];
		if (b < 48 || b > 57) // if the character is not a number then the loop breaks
		{
			return 0;
		}
		num = num * 10;
		num = num + b - 48; //
	}
	return num;
} // this function scans the number from the buffer and returns the number

int reverse(char *str, int len)
{
	int i;
	int j;
	i = 0;
	j = len - 1;
	for (i = 0; i < j; i++)
	{
		char temp;
		temp = str[i];
		str[i] = str[j];
		str[j] = temp;
		i++;
		j--;
	}
	return 0;
}
int print_num(int num, int newline)
{
	char buff[10]; // here 10 is the maximum number of digits in a number
	int i;
	i = 0;
	int b;
	b = 1;
	if (num < 0)
	{
		num = 0 - num;
		b = 0;
	}
	for (;;)
	{
		buff[i] = num % 10 + 48;
		i++;
		num = num / 10;
		if (num == 0)
		{
			break;
		}
	}
	if (b == 0)
	{
		buff[i] = 45;
		i++;
	}
	reverse(buff, i); // this function reverses the string because the number is stored in the reverse order
	print_string(buff, i, newline);
	return 0;
}
int print_A()
{
	int i;
	int k;
	int j;
	char *a;
	a = "a";
	for (i = 0; i < 10; i++)
	{
		for (j = 0; j < 10000; j++)
		{
			k = 0;
		}
		print_string(a, 1, 0);
	}
	return 0;
}

int print_B()
{
	int i;
	char *a;
	a = "b";
	int k;
	int j;
	for (i = 0; i < 100; i++)
	{
		for (j = 0; j < 10000; j++)
		{
			k = 0;
		}
		print_string(a, 1, 0);
	}

	for (;;)
	{
		i = 0;
	}
	return 0;
}

int print_C()
{
	int i;
	int k;
	int j;
	char *a;
	a = "c";
	for (i = 0; i < 100; i++)
	{
		for (j = 0; j < 10000; j++)
		{
			k = 0;
		}
		print_string(a, 1, 0);
	}

	for (;;)
	{
		i = 0;
	}
	return 0;
}

int print_D()
{
	int i;
	int k;
	int j;
	char *a;
	a = "d";
	for (i = 0; i < 100; i++)
	{
		for (j = 0; j < 10000; j++)
		{
			k = 0;
		}
		print_string(a, 1, 0);
	}

	for (;;)
	{
		i = 0;
	}
	return 0;
}
int processReturn()
{
	__asm__("label", "return_process_begin:", pid);
	// this should store the returned process id to R11;
	__asm__("processReturnEnter", "dummy", pid);

	int pr_process;
	__asm__("store", "R11", pr_process);

	int curIndex;
	int i;
	curIndex = 10;
	for (i = 1; i < 5; i++)
	{
		if (pr_process == all_processes[i])
		{
			curIndex = i;
		}
	}

	all_processes[curIndex] = 0;

	if (curIndex == 10)
	{
		char *prompt1;
		prompt1 = "Some problem occured, system crashing";
		int len;
		len = strlen(prompt1);
		print_string(prompt1, len, 1);
	}

	int next_process;
	next_process = 10;
	for (i = curIndex + 1; i < 5; i++)
	{
		if (all_processes[i] != 0)
		{
			next_process = i;
			break;
		}
	}

	if (next_process == 10)
	{
		for (i = 1; i <= curIndex; i++)
		{
			if (all_processes[i] != 0)
			{
				next_process = i;
				break;
			}
		}
	}

	if (next_process == 10)
	{
		char *prompt1;
		prompt1 = "Some problem occured, system crashing";
		int len;
		len = strlen(prompt1);
		print_string(prompt1, len, 1);
	}

	int next_id;
	next_id = all_processes[next_process];

	__asm__("load", "R11", next_id);
	if (next_process == 1)
	{
		__asm__("processReturnExit", "dummy", next_id);
		__asm__("switch", "1", next_id);
	}
	elif (next_process == 2)
	{
		__asm__("processReturnExit", "dummy", next_id);
		__asm__("switch", "2", next_id);
	}
	elif (next_process == 3)
	{
		__asm__("processReturnExit", "dummy", next_id);
		__asm__("switch", "3", next_id);
	}
	elif (next_process == 4)
	{
		__asm__("processReturnExit", "dummy", next_id);
		__asm__("switch", "4", next_id);
	}
	return 0;
}

int fork()
{
	int process;
	__asm__("store", "R11", process);

	int i;
	int core;
	core = 10;
	for (i = 1; i < 5; i++)
	{
		if (all_processes[i] == 0)
		{
			core = i;
			break;
		}
	}

	if (core == 10)
	{
		char *prompt;
		int len;
		prompt = "Cannot create a process, process overload";
		len = strlen(prompt);
		print_string(prompt, len, 1);
		len = 0;
		__asm__("forkReturn", "dummy", len);
		return 0;
	}

	int id;
	all_processes[core] = pid;
	id = pid;
	++pid;

	int *proc_reg;

	if (core == 0)
	{
		proc_reg = os_reg;
	}
	elif (core == 1)
	{
		proc_reg = p1_reg;
	}
	elif (core == 2)
	{
		proc_reg = p2_reg;
	}
	elif (core == 3)
	{
		proc_reg = p3_reg;
	}
	elif (core == 4)
	{
		proc_reg = p4_reg;
	}

	// set the new process variables

	// r7
	proc_reg[1] = 0;
	// r8
	proc_reg[2] = 0;
	// r9
	proc_reg[3] = 0;
	// r10
	proc_reg[4] = 0;
	// r12 aka heap
	proc_reg[5] = 55000 + core * 5000;
	// r14 aka stack
	proc_reg[6] = 53000 + core * 5000;

	// r5 - the jump address is known after compilation
	if (process == 1001)
	{
		__asm__("fork", "start_shell", proc_reg);
	}
	elif (process == 1002)
	{
		__asm__("fork", "print_A", proc_reg);
	}
	elif (process == 1003)
	{
		__asm__("fork", "print_B", proc_reg);
	}
	elif (process == 1004)
	{
		__asm__("fork", "print_C", proc_reg);
	}
	elif (process == 1005)
	{
		__asm__("fork", "print_D", proc_reg);
	}

	__asm__("forkReturn", "dummy", id);
	return 0;
}

int create_process(int process)
{
	prev_process = current_process;
	int cur_core;
	int i;
	cur_core = 10;
	for (i = 0; i < 5; i++)
	{
		if (all_processes[i] == current_process)
		{
			cur_core = i;
			break;
		}
	}

	if (cur_core == 0)
	{
		from_proc = os_reg;
	}
	elif (cur_core == 1)
	{
		from_proc = p1_reg;
	}
	elif (cur_core == 2)
	{
		from_proc = p2_reg;
	}
	elif (cur_core == 3)
	{
		from_proc = p3_reg;
	}
	elif (cur_core == 4)
	{
		from_proc = p4_reg;
	}

	__asm__("forkEnter", "dummy", process);
	__asm__("label", "create_process_return:", process);
	int id;
	__asm__("store", "R11", id);
	return id;
}

int switch ()
{
	__asm__("label", "switch_begin:", pid);
	__asm__("switchEnter", "dummy", pid);

	int pr_process;
	__asm__("store", "R11", pr_process);

	int curIndex;
	int i;
	curIndex = 10;
	for (i = 1; i < 5; i++)
	{
		if (pr_process == all_processes[i])
		{
			curIndex = i;
		}
	}

	if (curIndex == 1)
	{
		from_proc = p1_reg;
	}
	elif (curIndex == 2)
	{
		from_proc = p2_reg;
	}
	elif (curIndex == 3)
	{
		from_proc = p3_reg;
	}
	elif (curIndex == 4)
	{
		from_proc = p4_reg;
	}

	from_proc[0] = temp_reg[0];
	from_proc[1] = temp_reg[1];
	from_proc[2] = temp_reg[2];
	from_proc[3] = temp_reg[3];
	from_proc[4] = temp_reg[4];
	from_proc[5] = temp_reg[5];
	from_proc[6] = temp_reg[6];

	if (curIndex == 10)
	{
		char *prompt1;
		prompt1 = "Some problem occured, system crashing";
		int len;
		len = strlen(prompt1);
		print_string(prompt1, len, 1);
	}
	int next_process;
	next_process = 10;
	for (i = curIndex + 1; i < 5; i++)
	{
		if (all_processes[i] != 0)
		{
			next_process = i;
			break;
		}
	}

	if (next_process == 10)
	{
		for (i = 1; i <= curIndex; i++)
		{
			if (all_processes[i] != 0)
			{
				next_process = i;
				break;
			}
		}
	}
	if (next_process == 10)
	{
		char *prompt1;
		prompt1 = "Some problem occured, system crashing";
		int len;
		len = strlen(prompt1);
		print_string(prompt1, len, 1);
	}

	int next_id;
	next_id = all_processes[next_process];
	__asm__("load", "R11", next_id);
	if (next_process == 1)
	{
		__asm__("switchReturn", "dummy", next_id);
		__asm__("switch", "1", next_id);
	}
	elif (next_process == 2)
	{
		__asm__("switchReturn", "dummy", next_id);
		__asm__("switch", "2", next_id);
	}
	elif (next_process == 3)
	{
		__asm__("switchReturn", "dummy", next_id);
		__asm__("switch", "3", next_id);
	}
	elif (next_process == 4)
	{
		__asm__("switchReturn", "dummy", next_id);
		__asm__("switch", "4", next_id);
	}
	return 0;
}

int fibonacci()
{
	char *prompt;
	int len;
	prompt = "Enter n";
	len = strlen(prompt);
	print_string(prompt, len, 1);

	int num;
	num = scanf_num();

	prompt = "The ";
	len = strlen(prompt);
	print_string(prompt, len, 0);

	print_num(num, 0);

	prompt = "the fibonacci number is: ";
	len = strlen(prompt);
	print_string(prompt, len, 0);

	if (num == 0)
	{
		print_num(1, 1);
	}
	elif (num == 1)
	{
		print_num(1, 1);
	}
	else
	{
		int i;
		int a;
		int b;
		a = 1;
		b = 1;
		for (i = 2; i <= num; i++)
		{
			int temp;
			temp = b;
			b = a;
			a = a + temp;
		}
		print_num(a, 1);
	}
	return 0;
}

int reverse_string()
{
	char str[30];
	int i;
	for (i = 0; i < 30; i++)
	{
		str[i] = 0;
	}
	int clen;

	char *prompt;
	int len;
	prompt = "Enter the String";
	len = strlen(prompt);
	print_string(prompt, len, 1);

	scanf_line();
	clen = scanf_string(str);

	prompt = "The Reverse of ";
	len = strlen(prompt);
	print_string(prompt, len, 0);

	print_string(str, clen, 0);

	int j;
	i = 0;
	j = clen - 1;

	for (; i < j;)
	{
		char temp;
		temp = str[i];
		str[i] = str[j];
		str[j] = temp;
		i++;
		j--;
	}

	prompt = " is ";
	len = strlen(prompt);
	print_string(prompt, len, 0);

	print_string(str, clen, 1);

	return 0;
}



int partition(int *arr, int low, int high)//for quick sort
{
	int pivot;
	pivot = arr[high];

	int i;
	i = low - 1;

	int j;
	for (j = low; j <= high; j++)
	{
		if (arr[j] < pivot)
		{
			i++;
			int temp;
			temp = arr[i];
			arr[i] = arr[j];
			arr[j] = temp;
		}
	}

	int t;
	t = arr[i + 1];
	arr[i + 1] = arr[high];
	arr[high] = t;
	return i + 1;
}

int quick_sort(int *arr, int low, int high)
{
	if (low < high)
	{
		int pi;
		pi = partition(arr, low, high);
		quick_sort(arr, low, pi - 1);
		quick_sort(arr, pi + 1, high);
	}

	return 0;
}

int sort()
{
	int n;
	char *prompt;
	int len;

	prompt = "Enter the number of elements";
	len = strlen(prompt);
	print_string(prompt, len, 1);

	n = scanf_num();

	prompt = "Enter the elements";
	len = strlen(prompt);
	print_string(prompt, len, 1);

	int arr[n];
	int i;
	for (i = 0; i < n; i++)
	{
		arr[i] = scanf_num();
	}

	prompt = "Sorted Array is";
	len = strlen(prompt);
	print_string(prompt, len, 1);

	quick_sort(arr, 0, n - 1);

	prompt = " ";
	len = 1;
	for (i = 0; i < n; i++)
	{
		print_num(arr[i], 0);
		print_string(prompt, len, 0);
	}
	print_string(prompt, len, 1);

	return 0;
}

int getIndex(int *values, int n)
{
	int i;
	for (i = 0; i < n; i++)
	{
		if (values[i] == 0 - 1)
		{
			return i;
		}
	}
	return 0 - 1;
}




int get_keypress()
{
	int k;
	k = memory[KEYBOARD];
	return k;
}
// Palindrome
int Palindrome()
{
	int n;
	int len1;
	int len2;
	int len3;
	char *str2;
	char *str3;
	char *str1;
	str1 = "Enter the number to check palindrome or not: ";
	len1 = strlen(str1);
	str2 = "Palindrome";
	len2 = strlen(str2);
	str3 = "Not Palindrome";
	len3 = strlen(str3);
	print_string(str1, len1, 0);
	n = scanf_num();

	int temp;
	temp = n;
	int res;
	res = 0;
	for (; temp != 0;)
	{
		res = res * 10;
		res = res + (temp % 10);
		temp = temp / 10;
	}
	if (res == n)
	{
		print_string(str2, len2, 0);
	}
	else
	{
		print_string(str3, len3, 0);
	}
	return 0;
}
// Sum of N natural numbers
int SumofNatural()
{
	int n;
	int len1;
	char *str1;
	str1 = "Enter the number: ";
	len1 = strlen(str1);
	print_string(str1, len1, 0);
	n = scanf_num();

	int res;
	res = 0;
	int i;
	for (i = 0; i < n; i++)
	{
		res = res + i;
	}
	print_string("Sum of natural numbers is: ", 27, 0);
	print_num(res, 1);
	return 0;
}
// Factorial of N
int rfactorial(int n)
{
	if (n == 0 || n == 1)
	{
		return 1;
	}
	else
	{
		return n * (rfactorial(n - 1));
	}
}
int Factorial_ofN()
{
	int n;
	int len1;
	int len2;
	char *str2;

	char *str1;
	str1 = "Enter the number : ";
	len1 = strlen(str1);
	str2 = "The factorial of given Number is : ";
	len2 = strlen(str2);
	print_string(str1, len1, 0);
	n = scanf_num();

	int temp;
	temp = n;
	int res;

	res = rfactorial(n);
	print_string(str2, len2, 0);
	print_num(res, 1);

	return 0;
}
// Tic Tac Toe

int checkwin()
{
	char *t0;
	char *t1;
	char *t2;
	char *t3;
	char *t4;
	char *t5;
	char *t6;
	char *t7;
	char *t8;
	t0 = Fchart[0];
	t1 = Fchart[1];
	t2 = Fchart[2];
	t3 = Fchart[3];
	t4 = Fchart[4];
	t5 = Fchart[5];
	t6 = Fchart[6];
	t7 = Fchart[7];
	t8 = Fchart[8];

	if ((strcmp(t0, t1) == 0) && (strcmp(t1, t2) == 0))
	{
		if (strcmp(t0, "X") == 0)
		{
			return 1;
		}
		else
		{
			return 2;
		}
	}
	elif ((strcmp(t3, t4) == 0) && (strcmp(t4, t5) == 0))
	{
		if (strcmp(t3, "X") == 0)
		{
			return 1;
		}
		else
		{
			return 2;
		}
	}
	elif ((strcmp(t6, t7) == 0) && (strcmp(t7, t8) == 0))
	{
		if (strcmp(t6, "X") == 0)
		{
			return 1;
		}
		else
		{
			return 2;
		}
	}
	elif ((strcmp(t0, t3) == 0) && (strcmp(t3, t6) == 0))
	{
		if (strcmp(t0, "X") == 0)
		{
			return 1;
		}
		else
		{
			return 2;
		}
	}
	elif ((strcmp(t1, t4) == 0) && (strcmp(t4, t7) == 0))
	{
		if (strcmp(t1, "X") == 0)
		{
			return 1;
		}
		else
		{
			return 2;
		}
	}
	elif ((strcmp(t2, t5) == 0) && (strcmp(t5, t8) == 0))
	{
		if (strcmp(t2, "X") == 0)
		{
			return 1;
		}
		else
		{
			return 2;
		}
	}
	elif ((strcmp(t0, t4) == 0) && (strcmp(t4, t8) == 0))
	{
		if (strcmp(t0, "X") == 0)
		{
			return 1;
		}
		else
		{
			return 2;
		}
	}
	elif ((strcmp(t2, t4) == 0) && (strcmp(t4, t6) == 0))
	{
		if (strcmp(t2, "X") == 0)
		{
			return 1;
		}
		else
		{
			return 2;
		}
	}
	elif ((strcmp(t0, t3) == 0) && (strcmp(t3, t6) == 0))
	{
		if (strcmp(t0, "X") == 0)
		{
			return 1;
		}
		else
		{
			return 2;
		}
	}
	else
	{
		return 0;
	}
}



int mark(int player, int box)
{
	if (player == 1)
	{
		Fchart[box] = "X";
	}
	else
	{
		Fchart[box] = "O";
	}
	return 0;
}
int display_chart()
{
	char *c;
	char *t;
	char *x;
	char *o;
	int i;
	for (i = 0; i < 9; i++)
	{
		c = " ";
		t = Fchart[i];
		if (strcmp(t, "X") == 0 || strcmp(t, "O") == 0)
		{
			c = Fchart[i];
		}
		print_string(c, 1, 0);
		print_string("|", 1, 0);
		if (i == 2 || i == 5 || i == 8)
		{
			print_string("\n", 1, 0);
		}
	}
	return 0;
}
int tic_tac_toe()
{	
	int player1;int player2;int i;int box;int flag;int result;
	
	player1 = 1; player2 = 2;result=0;flag=0;

	Fchart[0] = "0";
	Fchart[1] = "1";
	Fchart[2] = "2";
	Fchart[3] = "3";
	Fchart[4] = "4";
	Fchart[5] = "5";
	Fchart[6] = "6";
	Fchart[7] = "7";
	Fchart[8] = "8";
	for (i = 1; i < 5; i++)
	{

		print_string("Tic Tac Toe \n", 13, 0);
		print_string("Player 1 \n", 9, 0);
		print_num(player1, 0);
		print_string("\n Enter the Box \n", 17, 0);
		print_string("___________\n", 12, 0);
		box = scanf_num();
		mark(player1, box);
		display_chart();
		result = checkwin();
		if (result == 1)
		{
			print_string("\n Congratualtions! player ", 26, 0);
			print_num(player1, 0);
			print_string(" has Won \n", 10, 0);
			flag = 1;
			break;
		}
		elif (result == 2)
		{
			print_string("\n Congratualtions! player ", 26, 0);
			print_num(player2, 0);
			print_string(" has Won \n", 10, 0);
			flag = 1;
			break;
		}
		
	}
	if (flag == 0){
		print_string(" \n Sorry, The game is a draw ", 30, 0);
	}

	return 0;
}

int parse_command()
{
	char command[20];
	int i;
	for (i = 0; i < 20; i++)
	{
		command[i] = 0;
	}
	int clen;
	scanf_line();
	clen = scanf_string(command);

	char *clear;
	char *menu;
	char *fibo;
	char *tr;
	char *qsort;
	char *pri;
	char *rev;
	char *exit;
	char *command_not_found;
	char *space;
	char *palindrome;
	char *sumofnatural;
	char *factorialofn;
	char *notice;
	char *Hcommand;
	char *Hfunctions;
	char *Ffib;
	char *Fqsort;
	char *Fpalindrome;
	char *Fsumofnatural;
	char *Ffactorialofn;
	char *Fexit;
	char *Fclear;
	char *Fmenu;
	char *tic_tac_toe;
	char *Ftic_tac_toe;


	clear = "clear               --";
	Fclear = "clear the logs";
	menu = "menu                   --";
	Fmenu = "display the menu";
	fibo = "fibo               --";
	Ffib = "display fibonacci series for N";
	qsort = "quicksort           --";
	Fqsort = "sort the given array";
	palindrome = "palindrome          --";
	Fpalindrome = "check whether the given number is palindrome or not";
	sumofnatural = "sumofnatural        --";
	Fsumofnatural = "display sum of N natural numbers";
	factorialofn = "factorialofn        --";
	Ffactorialofn = "display factorial of N";
	exit = "exit               --";
	Fexit = "exit the shell";
	tic_tac_toe = "tic_tac_toe         --";
	Ftic_tac_toe = "play tic tac toe game";
	command_not_found = "Command Not Found";
	space = " ";
	notice = "Use the following commands to perform cetain tasks\\n";
	Hcommand = "commands";
	Hfunctions = "functions";

	if (strcmp(command, clear) == 0)
	{
		clear_shell();
	}
	elif (strcmp(command, menu) == 0)
	{	
		print_string(notice, 78, 1);//here 78 is the length of the string notice
		print_string(Hcommand, 9, 0);
		print_string(space, 1, 0);print_string(space, 1, 0);print_string(space, 1, 0);print_string(space, 1, 0);print_string(space, 1, 0);print_string(space, 1, 0);print_string(space, 1, 0);print_string(space, 1, 0);print_string(space, 1, 0);print_string(space, 1, 0);print_string(space, 1, 0);print_string(space, 1, 0);print_string(space, 1, 0);print_string(space, 1, 0);print_string(space, 1, 0);print_string(space, 1, 0);print_string(space, 1, 0);print_string(space, 1, 0);print_string(space, 1, 0);print_string(space, 1, 0);
		print_string(Hfunctions, 9, 1);

		
		print_string(fibo, 19, 0);
		print_string(Ffib, 27, 1);
		print_string(qsort, 21, 0);
		print_string(Fqsort, 21, 1);
		print_string(palindrome, 19, 0);
		print_string(Fpalindrome, 51, 1);
		print_string(sumofnatural, 21, 0);
		print_string(Fsumofnatural, 51, 1);
		print_string(factorialofn, 21, 0);
		print_string(Ffactorialofn, 51, 1);
		print_string(tic_tac_toe, 19, 0);
		print_string(Ftic_tac_toe, 23, 1);

		print_string(clear, 19, 0);
		print_string(Fclear, 15, 1);
		print_string(menu, 19, 0);
		print_string(Fmenu, 23, 1);
		print_string(exit, 19, 0);
		print_string(Fexit, 15, 1);
	}
	elif (strcmp(command, fibo) == 0)
	{
		fibonacci();
	}
	elif (strcmp(command, qsort) == 0)
	{
		sort();
	}
	elif (strcmp(command, palindrome) == 0)
	{
		Palindrome();
	}
	elif (strcmp(command, sumofnatural) == 0)
	{
		SumofNatural();
	}
	elif (strcmp(command, factorialofn) == 0)
	{
		Factorial_ofN();
	}
	elif (strcmp(command, exit) == 0)
	{
		return 2;
	}
	elif(strcmp(command,menu)){
		return 1;
	}
	elif(strcmp(command,clear)){
		return 3;
	}
	elif (strcmp(command, tic_tac_toe) == 0)
	{
		tic_tac_toe();
	}
	else
	{
		print_string(command_not_found, 17, 1);
	}
	return 1;
}
// this function will start the shell;
int start_shell()
{
	welcome_screen();
	char *arrow;
	arrow = "CSD@Team1:~$";
	int len;
	len = strlen(arrow);
	for (;;)
	{
		printf(arrow, len, line, character);
		character = character + 4;
		int r;
		r = parse_command();
		if (r == 2)//here 2 is the exit command
		{
			break;
		}
		elif(r==3){
			clear_shell();
		}
		elif(r==1){
			parse_command();
		}
	}
	return 0;
}

int main()
{
	pid = 1;
	current_process = pid;
	__asm__("load", "R3", current_process);

	KEYBOARD = 76000;// here 76000 is the starting address of the keyboard. we cna give any address in the range 76000 to 76100 according the size of the keyboard
	line = 0;
	character = 0;
	Buffer = malloc(40);
	current_buffer_index = 0;
	MAPSTART = 45000; // here 45000 is the starting address of the memory map. we can give any address in the range 45000 to 46000 according to the size of the memory map
	memory = 0;
	displayLock = 0;

	int i;
	for (i = 0; i < 40; i++)
	{
		Buffer[i] = 0;
	}

	os_reg = malloc(28);
	p1_reg = malloc(28);
	p2_reg = malloc(28);
	p3_reg = malloc(28);
	p4_reg = malloc(28);
	temp_reg = malloc(28);
	all_processes = malloc(20);

	all_processes[0] = current_process;
	all_processes[1] = 0;
	all_processes[2] = 0;
	all_processes[3] = 0;
	all_processes[4] = 0;

	++pid;
	int id;
	id = create_process(1001);
	create_process(1002);
	create_process(1003);
	__asm__("load", "R11", id);
	__asm__("switch", "1", id);
	return 0;
}
