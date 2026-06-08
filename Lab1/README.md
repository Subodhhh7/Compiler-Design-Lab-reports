# Compiler Design - Phases of a Compiler

## 📖 Overview

A **Compiler** is a system software that translates a program written in a high-level programming language into machine code or another lower-level language. During this translation process, the compiler performs several phases to analyze, validate, optimize, and generate executable code.

This project explains the **six major phases of a compiler** along with their functions and examples.

---

## 🎯 Objectives

- Understand the working of a compiler.
- Learn the different phases involved in compilation.
- Study how source code is transformed into machine code.
- Understand the role of optimization and error handling.

---

# Phases of a Compiler

## 1. Lexical Analysis (Scanner)

The **Lexical Analyzer** reads the source code character by character and converts it into meaningful units called **tokens**.

### Functions

- Removes whitespaces and comments.
- Identifies keywords, identifiers, operators, and constants.
- Generates tokens for the parser.

### Example

#### Source Code

```c
int a = 10;
```

#### Tokens Generated

```text
<int> <identifier,a> <=> <number,10> <;>
```

---

## 2. Syntax Analysis (Parser)

The **Parser** checks whether the generated tokens follow the grammar rules of the programming language.

### Functions

- Validates program structure.
- Builds a Parse Tree or Syntax Tree.
- Detects syntax errors.

### Example

#### Expression

```c
a + b * c
```

The parser generates a syntax tree representing the order of operations.

---

## 3. Semantic Analysis

The **Semantic Analyzer** checks whether the program is logically correct according to language rules.

### Functions

- Type checking.
- Scope resolution.
- Variable declaration verification.
- Function parameter validation.

### Example

```c
int x;
x = "Hello";
```

#### Error

```text
Type Mismatch Error
```

---

## 4. Intermediate Code Generation

After semantic analysis, the compiler generates an intermediate representation (IR) of the source code.

### Functions

- Produces machine-independent code.
- Simplifies optimization.
- Acts as a bridge between source and target code.

### Example

#### Expression

```c
a = b + c * d;
```

#### Three-Address Code

```text
t1 = c * d
t2 = b + t1
a = t2
```

---

## 5. Code Optimization

The **Optimizer** improves the intermediate code without changing its functionality.

### Functions

- Reduces execution time.
- Minimizes memory usage.
- Eliminates redundant operations.

### Example

#### Before Optimization

```c
x = y * 1;
```

#### After Optimization

```c
x = y;
```

---

## 6. Code Generation

The final phase converts optimized intermediate code into machine code or assembly code.

### Functions

- Instruction selection.
- Register allocation.
- Machine code generation.

### Example

#### Intermediate Code

```text
a = b + c
```

#### Assembly Code

```assembly
MOV R1, b
ADD R1, c
MOV a, R1
```

---

# Supporting Components

## Symbol Table

A **Symbol Table** is a data structure used by the compiler to store information about identifiers.

### Stores Information Such As:

- Variable names
- Data types
- Scope information
- Memory locations
- Function declarations

---

## Error Handler

The **Error Handler** detects and reports errors during different phases of compilation.

### Types of Errors

| Error Type | Detected In |
|------------|------------|
| Lexical Error | Lexical Analysis |
| Syntax Error | Syntax Analysis |
| Semantic Error | Semantic Analysis |
| Runtime Error | Program Execution |

---

# Compiler Workflow

```text
Source Program
      │
      ▼
Lexical Analysis
      │
      ▼
Syntax Analysis
      │
      ▼
Semantic Analysis
      │
      ▼
Intermediate Code Generation
      │
      ▼
Code Optimization
      │
      ▼
Code Generation
      │
      ▼
Target Machine Code
```

---



---

# Conclusion

A compiler transforms high-level source code into executable machine code through multiple phases. Each phase performs a specific task, from token generation and syntax validation to optimization and code generation. Understanding these phases is essential for learning compiler design and the internal working of programming languages.

---
