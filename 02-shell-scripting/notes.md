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

Use letters, numbers, and underscores (`_`).
Characters such as `-`, `@`, and `!` are not valid in ordinary shell variable names.

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

------------------------------------------------------------------------------------------------------------------------

## How to config variables.sh

```
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../config/variables.sh"
```

# Shell Scripting – Arguments (`$1`, `$2`, `$0`, `$#`, `$@`)

## 1. What are Shell Script Arguments?

Shell script arguments are values passed to a script when we execute it from the terminal.

They allow us to pass different inputs to the same script without modifying the script itself.

For example:

```bash
#!/bin/bash

person1=$1
person2=$2

echo "$person1:: Hi $person2 how are you?"
echo "$person2:: Hello $person1 I am good, how about you?"
echo "$person1:: so $person2 where have you been upto"
echo "$person2:: well $person1 I am upgrading my tech stack now a days"
```

Save the file as `arguments.sh`.

## 2. How to Execute the Script

Run the script by passing two arguments:

```bash
bash arguments.sh Ravi Krishna
```

Output:

```text
Ravi:: Hi Krishna how are you?
Krishna:: Hello Ravi I am good, how about you?
Ravi:: so Krishna where have you been upto
Krishna:: well Ravi I am upgrading my tech stack now a days
```

Here:

- `Ravi` is the first argument.
- `Krishna` is the second argument.
- `$1` stores the first argument.
- `$2` stores the second argument.

**Important:** Arguments are separated by spaces. The first argument is assigned to `$1`, the second to `$2`, and so on.

## 3. Important Special Variables

| Variable | Meaning | Example |
|---|---|---|
| `$0` | Name or path used to execute the script | `arguments.sh` |
| `$1` | First positional argument | `Ravi` |
| `$2` | Second positional argument | `Krishna` |
| `$3` | Third positional argument | `AWS` |
| `${10}` | use curly braces for arguments numbered 10 and above | `Azure` |
| `$#` | Number of positional arguments | `2` |
| `$@` | All positional arguments as separate words when quoted | `"$@"` |
| `$*` | All positional arguments; quoted `"$*"` joins them into one word | `"$*"` |
| `$$` | Process ID of the current shell | Varies |
| `$?` | Exit status of the last command | `0` means success |

## 4. Understanding `$1` and `$2`

Consider this command:

```bash
bash arguments.sh Ravi Krishna
```

The shell assigns the values as follows:

```text
$0 = arguments.sh
$1 = Ravi
$2 = Krishna
$# = 2
```

When the script executes:

```bash
person1=$1
person2=$2
```

The variables receive these values:

```text
person1 = Ravi
person2 = Krishna
```

You can use `person1` and `person2` throughout the script.

## 5. Why Do We Use Double Quotes?

Example:

```bash
echo "$person1:: Hi $person2 how are you?"
```

Double quotes allow the shell to expand variables into their values while preserving spaces within the quoted string.

For example:

```bash
bash arguments.sh "Ravi Kumar" "Sri Krishna"
```

The first argument is `Ravi Kumar`, and the second argument is `Sri Krishna`.

Without quotes around multiword arguments in the command, the shell treats each word as a separate argument.

## 6. Passing Multiple Arguments

Create a script:

```bash
#!/bin/bash

echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "Third argument: $3"
echo "Total arguments: $#"
```

Execute it:

```bash
bash arguments.sh Linux AWS Ansible
```

Output:

```text
Script name: arguments.sh
First argument: Linux
Second argument: AWS
Third argument: Ansible
Total arguments: 3
```

## 7. Using `$@` to Read All Arguments

When we do not know how many arguments will be passed, we can use `"$@"`.

Example:

```bash
#!/bin/bash

# If an argument contains spaces, enclose it in single or double quotes so the shell treats it as a single argument.
# Example: bash arguments.sh "Ashok Kumar"

echo "Arguments passed to the script:"

for arg in "$@"
do
    echo "$arg"
done
```

Execute:

```bash
bash arguments.sh Linux AWS "Shell Scripting"
```

Output:

```text
Arguments passed to the script:
Linux
AWS
Shell Scripting
```

The quoted `"$@"` preserves each argument separately, including arguments containing spaces.

## 8. Using `$#` to Validate Arguments

We can check whether the required number of arguments has been provided.

Example:

```bash
#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: bash arguments.sh <person1> <person2>"
    exit 1
fi

person1=$1
person2=$2

echo "$person1 says hello to $person2"
```

Execute with two arguments:

```bash
bash arguments.sh Ravi Krishna
```

Output:

```text
Ravi says hello to Krishna
```

Execute without arguments:

```bash
bash arguments.sh
```

Output:

```text
Usage: bash arguments.sh <person1> <person2>
```

Here:

- `-ne` means **not equal**.
- `exit 1` ends the script with a non-zero exit status, indicating an error.
- `"$#"` counts the arguments passed to the script.

## 9. Real-World DevOps Use Cases

Shell script arguments are useful for passing dynamic values to automation scripts.

Examples:

**Creating a Linux user**

```bash
bash create-user.sh devuser
```

**Deploying an application to a specific environment**

```bash
bash deploy.sh staging
```

**Taking a database backup**

```bash
bash backup.sh expense_db
```

**Installing a particular software version**

```bash
bash install.sh nginx
```

These examples illustrate possible uses; the corresponding scripts must be written to process the supplied arguments.

## 10. Important Points to Remember

1. `$1`, `$2`, `$3` represent positional arguments.
2. `$0` represents the script name or invocation path.
3. `$#` gives the number of positional arguments.
4. `"$@"` is useful for processing all arguments individually.
5. Always quote variable expansions when appropriate, especially when values may contain spaces.
6. Use argument validation when a script requires a specific number of inputs.
7. Arguments are supplied when executing the script; they do not need to be hardcoded inside it.

## Practice Exercises

1. Write a script that accepts your name and age and prints both.
2. Write a script that accepts three arguments: operating system, cloud platform, and automation tool.
3. Write a script that prints the total number of arguments passed.
4. Write a script that prints every argument on a separate line using `"$@"`.
5. Write a script that accepts two numbers and displays their sum.

**Learning summary:** Shell script arguments make scripts reusable and flexible by allowing users to provide input values at execution time.