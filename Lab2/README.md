# Lab 2: Lexical Analyzer for Token Recognition Using Flex

## Aim

To design and implement a lexical analyzer for token recognition using Flex.

---

# Objective

* To understand lexical analysis.
* To recognize tokens using Flex.
* To identify keywords, identifiers, operators, and numbers.
* To generate a lexical analyzer automatically.
* To compile and execute the generated scanner.

---

# Theory

Lexical Analysis is the first phase of a compiler.

A lexical analyzer reads the source code character by character and converts it into meaningful units called **tokens**.

## Types of Tokens

* Keywords
* Identifiers
* Operators
* Constants
* Special Symbols

---

# What is Flex?

Flex (Fast Lexical Analyzer Generator) is a tool used to generate lexical analyzers automatically from regular expressions and rules.

A Flex program contains three sections:

```text
Definitions
%%
Rules
%%
User Functions
```

---

# Software Requirements

| Software           | Purpose                    |
| ------------------ | -------------------------- |
| Visual Studio Code | Code Editor                |
| WinFlexBison       | Lexical Analyzer Generator |
| GCC (MinGW)        | Compilation                |
| Windows OS         | Execution Environment      |

---

# Installation Steps

## Step 1: Install WinFlexBison

Open PowerShell as Administrator and run:

```powershell
choco install winflexbison3
```

Verify installation:

```cmd
win_flex --version
win_bison --version
```

---

## Step 2: Install GCC Compiler (MinGW)

Download and install MinGW.

Verify:

```cmd
gcc --version
```

---

## Step 3: Install VS Code

Install Visual Studio Code and recommended extensions:

* C/C++
* Code Runner

---

# Algorithm

1. Start the program.
2. Read input from the user.
3. Match patterns using Flex rules.
4. Identify tokens.
5. Display token type.
6. Stop after end of input.

---

# Program

## File: lexer.l

```c
%{
#include <stdio.h>
%}

DIGIT      [0-9]
LETTER     [a-zA-Z]
ID         {LETTER}({LETTER}|{DIGIT})*

%%

"int"          { printf("KEYWORD: int\n"); }
"float"        { printf("KEYWORD: float\n"); }
"if"           { printf("KEYWORD: if\n"); }
"else"         { printf("KEYWORD: else\n"); }

"+"            { printf("OPERATOR: +\n"); }
"-"            { printf("OPERATOR: -\n"); }
"*"            { printf("OPERATOR: *\n"); }
"/"            { printf("OPERATOR: /\n"); }

"="            { printf("ASSIGNMENT OPERATOR\n"); }

{DIGIT}+       { printf("NUMBER: %s\n", yytext); }

{ID}           { printf("IDENTIFIER: %s\n", yytext); }

[ \t\n]+       ;

.              { printf("UNKNOWN TOKEN: %s\n", yytext); }

%%

int main() {
    printf("Enter input:\n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
```

---

# Compilation Steps

## Step 1: Generate Scanner

```cmd
win_flex lexer.l
```

This generates:

```text
lex.yy.c
```

---

## Step 2: Compile Program

```cmd
gcc lex.yy.c -o lexer.exe
```

---

## Step 3: Run Program

```cmd
lexer.exe
```

---

# Sample Input

```text
int a = 25 + 10
```

---

# Sample Output

```text
KEYWORD: int
IDENTIFIER: a
ASSIGNMENT OPERATOR
NUMBER: 25
OPERATOR: +
NUMBER: 10
```

---

# Explanation

* `int` is recognized as a keyword.
* `a` is recognized as an identifier.
* `=` is recognized as an assignment operator.
* `25` and `10` are recognized as numbers.
* `+` is recognized as an operator.

---

# Result

Thus, the lexical analyzer for token recognition was successfully implemented using Flex.

The program correctly identified:

* Keywords
* Identifiers
* Numbers
* Operators

---

# Conclusion

This experiment demonstrated lexical analysis using Flex.

Flex automatically generates lexical analyzers using regular expression rules and simplifies token recognition in compiler design.

The lexical analyzer successfully recognized different tokens such as keywords, identifiers, operators, and numbers from the input source code.

---

