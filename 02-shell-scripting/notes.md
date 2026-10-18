# What is shebang?
    #!/bin/bash ---- is called as shebang
    A shebang is the first line of a script that tells the operating system which interpreter to use when executing
    that script directly.
    
    In a Linux shell script, the # symbol is used to write a comment. Comments explain the code to the reader
    and are not executed as commands by the shell.

# 1. Why does a shebang start with #!?

Explanation:

- #!/bin/bash — Tells the system to use Bash to execute the script. This is called a shebang.
- '# This line explains the purpose of the script — A comment; the shell ignores it.'
- echo "Hello World" — Prints Hello World on the terminal.
- '# The following command displays the current date — Another comment.'
- date — Displays the current date and time.


-------------------------------------------------------------------------------------------------------------------


# Rules for Creating Variables in Shell Script

## 1. Variable Naming Rules

**Rule 1: No spaces around the `=` sign**

Correct:
```bash
name="Ravi"
```

Incorrect:
```bash
name = "Ravi"
```

In shell scripting, spaces around `=` change how the command is interpreted.

**Rule 2: Variable names can contain letters, numbers, and underscores.**

```bash
name="Ravi"
user_name="Ravi"
user123="Ravi"
```

**Rule 3: A variable name must not start with a number.**

Correct:
```bash
user1="Ravi"
```

Incorrect:
```bash
1user="Ravi"
```

**Rule 4: Avoid special characters in variable names.**

Use letters, numbers, and underscores (`_`). Characters such as `-`, `@`, and `!` are not valid in ordinary shell variable names.

Correct:
```bash
user_name="Ravi"
```

Incorrect:
```bash
user-name="Ravi"
```

**Rule 5: Variable names are case-sensitive.**

```bash
name="Ravi"
Name="Kumar"
NAME="Developer"

echo "$name"
echo "$Name"
echo "$NAME"
```

Output:
```text
Ravi
Kumar
Developer
```

These are three different variables.

## 2. How to Access a Variable

Use the `$` symbol to access a variable's value.

```bash
name="Ravi"

echo "$name"
```

Output:
```text
Ravi
```

You can also use curly braces to clearly identify a variable name.

```bash
name="Ravi"

echo "${name}"
```

## 3. Use Quotes When Assigning Values

Double quotes allow variable expansion.

```bash
name="Ravi"
message="Hello $name"

echo "$message"
```

Output:
```text
Hello Ravi
```

Single quotes preserve the literal text.

```bash
name="Ravi"
message='Hello $name'

echo "$message"
```

Output:
```text
Hello $name
```

## 4. Avoid Spaces in Variable Names

Incorrect:
```bash
user name="Ravi"
```

Correct:
```bash
user_name="Ravi"
```

Use underscores to separate words in variable names.

## 5. Use Curly Braces When Joining Text

```bash
name="Ravi"

echo "${name}_developer"
```

Output:
```text
Ravi_developer
```

Curly braces help distinguish the variable name from the surrounding text.

## 6. Best Practices

- Use meaningful variable names, such as `database_name` instead of `db1`.
- Use lowercase names with underscores for ordinary variables, such as `app_user`.
- Use uppercase names by convention for environment variables and constants, such as `DB_HOST`.
- Quote variable expansions, such as `"$name"`, to avoid unwanted word splitting and pathname expansion.
- Avoid spaces around the assignment operator (`=`).
- Do not start variable names with numbers.

## Quick Revision

| Rule | Example |
|---|---|
| No spaces around `=` | `name="Ravi"` |
| Start with a letter or `_` | `_name="Ravi"` |
| Do not start with a number | `user1="Ravi"` |
| Use underscores for multiple words | `user_name="Ravi"` |
| Names are case-sensitive | `name` differs from `NAME` |
| Use `$` to access a value | `echo "$name"` |
| Use braces for clarity | `echo "${name}_dev"` |