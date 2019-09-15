#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <linux/limits.h>
#include <unistd.h>

#define DELIM								":"

extern char **environ;
char* cwd[PATH_MAX];

char* get_dir();
char* readLine(char* line, size_t len);
void split(char* input, char *argv[]);
void myclear();
void mydir(char* dir);
void myenviron();
void myquit();

int main(){
	char* input = NULL;
	char *argv[50];

	system("clear");

	while (1){
		get_dir();
		input = readLine(input, 0);
		split(input, argv);

		if (!argv[0]){}
		else if (strcmp(argv[0], "myquit")    == 0){ exit(0); }
		else if (strcmp(argv[0], "myclear")   == 0){ myclear(); }
		else if (strcmp(argv[0], "mydir")     == 0){
			if (argv[1]) mydir(argv[1]);
			else mydir("./");
		}
		else if (strcmp(argv[0], "myenviron") == 0){ myenviron(); }
		else{ system(argv[0]); }
	}

	return 0;
}

char* get_dir(){
	if (getcwd(*cwd, sizeof(*cwd)) != NULL)
		printf(":paoershell: %s", *cwd);
	else printf(":paoershell:~$ ");

	return *cwd;
}

char* readLine(char* line, size_t len){
	getline(&line, &len, stdin);
	*(line + strlen(line) - 1) = '\0';
	return line;
}

void split(char* input, char *argv[]){
	char* p;
	int argc;
	argc = 0;
	p = strtok(input, " ");

	while (p != NULL){
		argv[argc] = p;
		argc++;
		p = strtok(NULL, " ");
	}
	argv[argc] = "\0";
}

void myclear(){
	system("clear");
}

void mydir(char* dir){
	if (dir != NULL){
		char _cmd[80];
		strcpy(_cmd, "ls -la --color=tty ");
		strcat(_cmd, dir);
		system(_cmd);
	}else{
		system("ls -la --color=tty");
	}
}
void myenviron(){
	char ** env;
	env = environ;

	while (*env) { printf("%s\n", *env++); }
	free(*env);
}
