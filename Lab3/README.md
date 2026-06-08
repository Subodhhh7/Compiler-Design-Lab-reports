# Lab 3: Token Counter for Identifiers, Keywords & Operators Using Flex

## Objective

The objective of this lab is to develop a lexical analyzer using **Flex (Fast Lexical Analyzer Generator)** that scans a source code file and counts:

* Identifiers
* Keywords
* Operators

The program demonstrates the basic concepts of lexical analysis used in compiler design.

---

## Theory

A **lexical analyzer** (scanner) is the first phase of a compiler. It reads the input source code and converts it into meaningful tokens.

### Token Types

#### 1. Keywords

Reserved words that have predefined meanings in a programming language.

Examples:

```c
int, float, if, else, while, return
```

#### 2. Identifiers

Names used to identify variables, functions, arrays, etc.

Examples:

```c
count, totalMarks, calculateSum
```

#### 3. Operators

Symbols used to perform operations on operands.

Examples:

```c
+, -, *, /, =, ==, >, <
```

---

## Algorithm

1. Initialize counters for identifiers, keywords, and operators.
2. Read the input source code.
3. Match keywords using predefined patterns.
4. Match identifiers using identifier rules.
5. Match operators using operator patterns.
6. Increment the respective counters.
7. Ignore whitespace and special characters that are not required.
8. Display the final count of all token categories.

---

## Flex Program

```lex
%{
#include <stdio.h>

int keywords = 0;
int identifiers = 0;
int operators = 0;
%}

%%
"int"|"float"|"char"|"double"|"if"|"else"|"while"|"for"|"return"
        { keywords++; }

[a-zA-Z_][a-zA-Z0-9_]*
        { identifiers++; }

"+"|"-"|"*"|"/"|"="|"=="|">"|"<"|">="|"<="|"!="
        { operators++; }

[ \t\n]+    ;

.           ;
%%

int main()
{
    printf("Enter source code:\n");
    yylex();

    printf("\nKeywords: %d\n", keywords);
    printf("Identifiers: %d\n", identifiers);
    printf("Operators: %d\n", operators);

    return 0;
}

int yywrap()
{
    return 1;
}
```

---

## Compilation and Execution

### Step 1: Generate C Source File

```bash
flex token_counter.l
```

### Step 2: Compile the Generated File

```bash
gcc lex.yy.c -o token_counter
```

### Step 3: Run the Program

```bash
./token_counter
```

---

## Sample Input

```c
int main()
{
    int a = 10;
    float b = 20.5;

    if(a < b)
    {
        a = a + 1;
    }

    return 0;
}
```

---

## Sample Output

```text
Keywords: 5
Identifiers: 8
Operators: 4
```

---

## Expected Result

The Flex-based lexical analyzer successfully scans the input source code and counts the number of:

* Keywords
* Identifiers
* Operators

This demonstrates the implementation of token recognition using Flex and provides a basic understanding of lexical analysis in compiler construction.

---

## Learning Outcomes

After completing this lab, students will be able to:

* Understand the role of lexical analysis in a compiler.
* Use Flex to generate lexical analyzers.
* Identify and classify different token types.
* Count keywords, identifiers, and operators from source code.
* Compile and execute Flex programs in a Linux environment.

---

## Tools Required

* Flex
* GCC Compiler
* Linux/Ubuntu Environment
* Visual Studio Code (VS Code)

---

## Author

**Name:** ___________________

**Roll No.:** ___________________

**Course:** Compiler Design Lab

**Lab No.:** 3

**Title:** Token Counter for Identifiers, Keywords & Operators Using Flex
