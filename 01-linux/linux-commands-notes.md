# Linux — My Personal GitHub Notes

> Draft for my review: wording and illustrative examples have been rewritten. Commands and technical terms are kept accurate; I will verify examples before publishing.

> Personal Linux reference notes written in my own study style. I have reworded explanations, replaced recognizable analogies and examples, and retained the commands and core learning topics for practice.

## Contents

- Linux introduction and distributions
- Terminal and basic commands
- File and directory management
- Help, history, search, and text viewing/editing
- Text processing: `grep`, `head`, `tail`, `wc`, `sort`, `uniq`, `cut`, `paste`, `diff`, `tr`
- System information: `date`, `file`, `which`, `whereis`, `tree`, `tee`
- Storage and memory: `du`, `free`, `df`
- Practice challenges and quick review

---

## page 1

💡
🎯 Introduction
◦ Welcome to Linux PDF…

These are my working notes for learning Linux administration, cloud and DevOps fundamentals, and security-related tasks.
Linux is one of the most widely used operating systems in the world and plays an
important role in servers, cloud computing, software development, and
cybersecurity.

◦ In this guide, you will learn:

### Introduction to Linux
Linux File System
Basic Linux Commands
File and Directory Management+
Users and Permissions

---

## page 2

Process Management
Networking Basics
Shell Scripting Fundamentals
Linux for Cybersecurity
By the end of this course, you will have the knowledge and confidence to work
comfortably in a Linux environment and continue exploring more advanced topics.
I’ll build my Linux skills step by step.

↘ Introduction to Linux…
Have you ever wondered what powers websites like Google, YouTube, Instagram,
and millions of servers around the world?
The answer is often Linux.
1. Linux is an operating system, just like Windows and macOS. It helps you
interact with your computer, manage files, run programs, and use hardware
such as your keyboard, mouse, and storage devices.
2. What makes Linux special is that it is powerful, secure, fast, and free to use.
Because of these advantages, Linux is used in servers, cloud platforms,
cybersecurity labs, smartphones, supercomputers, and even space
technology.
3. Today, Linux is one of the most important skills for anyone interested in
technology, programming, cloud computing, system administration, or
cybersecurity.
4. I’m starting with the fundamentals and gradually learn how
Linux works, how to use the terminal, and how to perform real-world tasks
confidently.
💡 Do You Know?
● Android is based on Linux kernel.
● Most websites you visit every day run on Linux servers.
● Many cybersecurity professionals use Linux as their primary operating

---

## page 3

system.
● Linux is used in supercomputers, cloud platforms, and even space
technology.
These notes are useful even when Linux is new to me—this guide is designed for
complete beginners.

↘ Why Use Linux for Cybersecurity?
Linux is the most widely used operating system in the cybersecurity world. Many
security professionals, ethical hackers, penetration testers, and system
administrators use Linux as their primary operating system.
Some reasons why Linux is preferred in cybersecurity are:
It is free and open source.
It provides powerful command-line tools.
Most cybersecurity tools are built for Linux.
It offers better control over the system.
It is widely used on servers and cloud platforms.
It is considered stable and secure.
Popular cybersecurity distributions such as Kali Linux, Parrot OS, and BlackArch
are based on Linux and come with many security tools pre-installed.
For anyone interested in cybersecurity, learning Linux is one of the most important
skills to develop.

↘ Linux Distributions
Imagine three people want to use Linux:
👨‍🎓 A student wants an easy system.
👨‍💻 A cybersecurity learner wants hacking tools.
🖥️ A company wants a stable server.
Should all of them use the same Linux version?

 

```text
e Linux is used in supercomputers, cloud platforms, and even space
z A student wants an easy system.
FS A cybersecurity learner wants hacking tools.
```


---

## page 4

Probably not.
Linux is not a single operating system that looks the same everywhere. Instead, it
comes in many versions called Distributions (Distros), each created to meet
different needs and preferences.

● Why Are There Different Distributions?

User Type                                Best Choice
Beginner                                 Ubuntu, Linux Mint
Developer                                Fedora
Cybersecurity Learner                    Kali Linux, Parrot OS
Server Administrator                     Debian
Old Computer User                        Linux Lite
Different users have different needs, so different distributions exist to make Linux
easier and more useful.

● Popular Linux Distributions

Distribution               Best For                      Difficulty
Ubuntu                     Beginners                 ⭐
Linux Mint                 Windows Users             ⭐
Fedora                     Developers                ⭐⭐
Debian                     Servers                   ⭐⭐⭐
Kali Linux                 Cybersecurity             ⭐⭐⭐
Parrot OS                  Cybersecurity & Privacy   ⭐⭐⭐
OpenWrt
Routers & Networking
Devices
⭐⭐⭐
Arch Linux
Advanced Users & Learning
Linux Deeply
⭐⭐⭐⭐
● Desktop Preview

 

```text
e Why Are There Different Distributions?
e Popular Linux Distributions
Ubuntu Beginners 4
Fedora Developers fete
Debian Servers tee
Kali Linux Cybersecurity te te te
Parrot OS Cybersecurity & Privacy woke
openwt Routers & Networking wet
Arch Linux Linux Deeply Yee ek
e Desktop Preview
```


---

## page 5

Linux Mint                     Fedora
Ubuntu

OpenWrt
Kali Linux                                            Arch Linux

↘ Ready to Use Linux?
So far, we have learned:
✅     What Linux is
✅     Why Linux is important
✅     Why Linux is widely used in cybersecurity
✅     Different Linux distributions
⛔ Now it's time to stop reading about Linux and start using it.
From this point onward, you'll learn the commands used every day by Linux users,
system administrators, and cybersecurity professionals.
This is where the real Linux journey begins.
Let's start with the most important tool in Linux: The Terminal.

↘ The Terminal
● What is the Terminal?

 

```text
e What is the Terminal?
```


---

## page 6

### The Terminal is a text-based interface that allows you to communicate directly
with the operating system by typing commands. Instead of clicking through
multiple menus, you can perform tasks quickly and efficiently using simple
commands.

A Terminal window in Kali Linux.

When most people use a computer, they click icons, open menus, and use a
mouse to perform tasks.
Linux can do all of that too.
However, one of the biggest reasons Linux is so powerful is the Terminal.

● With the Terminal, you can:
Navigate (move), through files and directories
Create, copy, move, and delete files
Manage users and permissions
Install and update software
Monitor system activity

 

```text
e With the Terminal, you can:
```


---

## page 7

Perform advanced administrative tasks
At first, the Terminal may look intimidating, but don't worry. Most Linux users felt
the same way when they started, I may find the terminal unfamiliar at first      😅
but once you learn a few basic commands, you'll discover why the Terminal is one
of the most powerful tools in Linux.
Let's begin with our first Linux commands.

↘ Before We Start
Before learning commands, let's understand how commands are actually used.
When you open a terminal, Linux waits for your instructions. You type a command,
press Enter, and Linux gives Output.

For example        👇🏼

Here, date is the command and the text below it is the output.
In Linux, you'll use this pattern again and again   👊🏼
Command      👉🏼 Enter 👉🏼 Output ✌🏼
Now that you know how commands work, let's learn some useful ones.

### Basic Commands —
☝🏻      Disclaimer
Before moving forward, keep this in mind: every advanced Linux skill
is built upon these basic commands. Whether your goal is scripting,
system administration, cybersecurity, or ethical hacking, a weak
understanding of the fundamentals will slow your progress. Take the
time to observe, understand, and practice every command with full

 1. Basic Navigation Commands

```text
pwd

Displays the present working directory

ls

Lists files and directories in the current directory

ls -a

Lists all files and directories, including hidden files

cd directory-name

Changes to the specified directory

cd ..

Moves to the parent directory

cd .

Refers to the current directory

cd ~

Moves to the user's home directory

cd /

Moves to the root directory
```
2. Create Files and Directories

```text

mkdir test

Creates a directory named test

touch a.txt

Creates an empty file named a.txt

echo "Hello Linux"

Prints text on the terminal

echo "Hello Linux" > a.txt

Writes text into a.txt

Note: The > operator overwrites the existing content of a file. If the file does not exist, it creates a new file.

```

3. View File Content

```text
cat a.txt
Displays the content of a file

man ls
Displays the manual page for the ls command

ls --help
Displays help information for the ls command

```

4. Copy, Move and Delete

```text
cp a.txt b.txt

Copies a.txt to b.txt

cp -r test backup

Copies a directory and its contents recursively

mv a.txt b.txt
Renames or moves a file

rm a.txt
Deletes a file

rmdir test
Deletes an empty directory

rm -r test
Deletes a directory and its contents recursively

Important: Be careful with the rm command. Deleted files may not be recoverable.

```

5. Search Files and Directories

```text
find . -name b.txt

find — searches for files and directories

. — starts the search from the current directory

-name — specifies the name to search for

b.txt — the file name to search

```

6. Other Useful Commands

```text
clear
Clears the terminal screen

history
Displays previously entered commands

whatis ls
Displays a brief description of the command

info ls
Displays information about the command

```


7. Important Directory References

```text
/
Root directory of the Linux filesystem

~
User's home directory

.
Current directory

..
Parent directory

Example:

cd ~
Takes you to your user's home directory.

cd /
Takes you to the root directory.

```

---

## page 8

attention and interest. Mastering these basics today will make learning
advanced Linux topics significantly easier tomorrow.

### 1. Who Am I? ( whoami )
When you log in to Linux, you are using a specific user account.
But how can you find out which user you are currently logged in as?

Linux provides a simple command for this:

What is whoami ?
The whoami command displays the username of the currently logged-in user, as
mine is zoro.
This is useful because Linux keeps track of who is performing actions on the
system. Different users can have different permissions and access levels.
💡 Many Linux systems are shared by multiple users, so knowing which account
you are using is important.

● Practice       👊🏼
"The lines starting with a hash (#) are comments, added to ma
ke you understand
things better"

# Open the terminal and run:
```bash
whoami
```

Does Linux Show Your Username?

 

```text
The whoani Command displays the username of the currently logged-in user, as
e Practice “/)
```


---

## page 9

### 2. Where Am I? ( pwd )
Imagine you are moving through many folders and suddenly forget where you are.
How can you check your current location?
Linux provides a simple command for this:

What is pwd ?
The pwd command stands for Print Working Directory.
It displays the full path of the directory you are currently in.

● Practice     👊🏼
# Open the terminal and run:
```bash
pwd
```

See What Path Linux Shows On Your System.

### 3. What's Here? ( ls )
Now that you know where you are, the next step is to see what files and folders
are available in your current location.
Linux provides a simple command for this:     👇🏼

What is ls ?
The ls command stands for List.
It displays the files and folders present in your current location.
💡 This is one of the most commonly used Linux commands.

 

```text
The pw Command stands for Print Working Directory.
e Practice /))
3. What's Here? ( is )
Whatis is ?
The is command stands for List.
9 This is one of the most commonly used Linux commands.
```


---

## page 10

● Practice        👊🏼
# Open the terminal and run:

```bash
ls         # list directories
```

# Note: Folders are called Directories in linux.

Can you identify any files or folders in your current directory?‘

# Blue colored text means directories and white in colour are
files
Example: files & Directory

✪ Hidden Files
Sometimes, Linux hides certain files and directories from normal view.
To display them, use:

You can observe files start from . , which are hidden files.

What is -a ?
The -a is an option which stands for all.

💡 Options give a command additional instructions.
ls → Gives Normal output
ls -a → Shows all files, including hidden ones
💡 In Linux, files and directories that start with a dot ( ) are hidden by default,
.

you can observe in the provided screenshot and can try on your terminal for

 

```text
e Practice i)
> 1s # list directories
Is -a = Shows all files, including hidden ones
9 In Linux, files and directories that start with a dot ( . ) are hidden by default,
```


---

## page 11

better understanding
Examples:

.bashrc
.config
.profile
# These are files hidden in home "~" directory of the user.

● Practice          👊🏼
# show all files, including hidden ones
ls -a

Can you find any files or directories that were not visible when you used ls ?

### 4. Moving Around ( cd )
You can now see the files and folders in your current location.
But how do you enter one of those folders?
Linux provides the cd command for this.

~   represents user’s home directory and when we executed cd the location changes to
~/Desktop

What is cd ?
The cd command stands for Change Directory.
It allows you to move from one directory to another.
💡 Think of a directory as a folder. The         cd   command lets you travel between
folders in Linux.

 

```text
e Practice «))
Can you find any files or directories that were not visible when you used is ?
Linux provides the ca command for this.
```


---

## page 12

Common Examples
Go to the Documents folder:

```bash
cd Documents
```

Go back one directory:

# .          means "where you are right now"
# .. means "go one folder back"

```bash
cd ..
```

Go to your Home directory:

# Tilde (~) represents user's home directory.
# Every user have their own home directory.
```bash
cd ~
```

● Practice         👊🏼
1. Run:

```bash
cd Documents
```
```bash
pwd           # print working Directory
```

Did your location change?
2. Run:

# /home contains the home directories of all users.
```bash
cd /home
```
```bash
ls    # Here you see user names, most probably only one use
```
r will be there,
#   Which is you

 

```text
> cd...
e Practice «

```


---

## page 13

### 5. Creating Folders ( mkdir )
Until now, I have worked with directories that already exist.
To make a new directory, I can use the following command:
Linux provides the mkdir command for this.

After running this command, a new directory named folder will be created.

What is mkdir ?
The mkdir command stands for Make Directory.
It is used to create new directories (folders) in Linux.

Common Examples                🎯
Create a directory named Notes:

# make a directory named Notes.
```bash
mkdir Notes
```

Create a directory named Projects:

# make a directory named Projects.
```bash
mkdir Projects
```

● Practice    👊🏼
Create a practice directory:

```bash
mkdir Linux_Practice
```

 

```text
e Practice
```


---

## page 14

Now check if it was created:

```bash
ls
```

Can you see Linux_Practice in the output?

🧠 Mini Challenge :-
1. Create a directory named “CyberSecurity”
2. Enter in CyberSecurity folder using cd
3. Verify your location using pwd

### 6. Creating Files ( touch )
Creating folders is useful, but most of the time you'll also need files to store data,
notes, scripts, and programs.
Linux provides the touch command for this.

# .txt or .sh are only file extensions. Files can be created
with or without
them.
```bash
touch notes.txt
```

After running this command, a new file named notes.txt will be created.

What is touch ?
The touch command is commonly used to create empty files.

Common Examples                🎯
Create a text file:

```bash
touch notes.txt
```

Create a script file:

 

```text
2. Enter in CyberSecurity folder using <a
3. Verify your location using pws
```


---

## page 15

```bash
touch script.sh
```

Create multiple files at once:

```bash
touch file1.txt file2.txt file3.txt
```

● Practice    👊🏼
Create a file inside your practice directory:

# enter the practice directory you created
```bash
cd Linux_Practice
```

# create a file
```bash
touch notes.txt
```

# check if the file was created
```bash
ls
```

Can you see notes.txt in the output?

### 7. Displaying Text (echo)
Think of `echo` as a quick way to send a message to the terminal. It prints the text you provide.
Example:

Basic syntax: `echo "text"`

What is echo ?
`echo` writes text or variable values to standard output, usually the terminal.

🎯
I can use it to display status messages or send text into another command or a file.

 

```text
> touch filel.txt file2.txt file3.txt
e Practice ij)
> cd Linux Practice
Basic form: `echo "message"`
```


---

## page 16

Common Examples               🎯
Display a message:

Display your name:

● Practice    👊🏼
Run:

```bash
echo "Linux helps me manage servers"
```

Did Linux display your message?

● Saving Text to a File ( > )
The > operator is used to save output into a file.

echo "My first Linux note" > notes.txt

This command writes the message into `notes.txt`.
💡 If the file already contains data, will replace it with the new content.
>

🤔 Quick Question :-
The > operator replaces old content.
But what if we want to keep the old content and add new text too?

● Practice    👊🏼

```text
echo "add more content" >> `notes.txt`.
```


---

## page 17

echo "Practicing terminal commands" > notes.txt

In the next section, we'll learn how to view the contents of the file.

### 8. Reading Files ( cat )
So far, you've learned how to create files.
But how do you view what's inside them?
Linux provides the cat command for this.

If the file contains text, Linux will display it in the terminal.

What is cat ?
The cat command stands for Concatenate.
The most common use of cat is to view the contents of a file.

Common Examples                  🎯
View a file:

# display contents of notes.txt
```bash
cat notes.txt
```

View multiple files:

# display contents of multiple files
```bash
cat file1.txt file2.txt
```

● Practice       👊🏼
First, create a file:

 

```text
The most common use of «at is to view the contents of a file.
> cat filel.txt file2.txt
e Practice ©)
```


---

## page 18

# create a file
```bash
touch notes.txt
```

Now add some content:

# write content into the file using '>' redirection operator.
```bash
echo "Hello Linux!" > notes.txt
```

Finally, read the file:

# display file contents
```bash
cat notes.txt
```

Expected Output:

Hello Linux!

Can you see the text stored inside the file?

### 9. Removing Files & Directories ( rm )
Sometimes files and directories are no longer needed.
Linux provides the rm command to remove them.
⚠️ Be careful when using . Unlike Windows, deleted files usually do not go to a
rm

Recycle Bin.

Removing Files            ▶
Delete a file:

 

```text
Removing Files [J
la.txt b.txt
```


---

## page 19

Verify that it was deleted:

Removing Empty Directories                          ▶
To remove an empty directory, use:

💡     rmdir      only works if the directory is empty.

Removing Directories with Files Inside                        ▶
If a directory contains files, use:

What does -r mean?
-r = Recursive            ...     # What does this mean ??

It simply means that remove the directory along with all th
e files and
folders present in it.

It tells Linux to remove the directory and all files/sub-directories inside it.

Common Examples                       🎯
Delete a file:

 

```text
Removing Empty Directories [J
be txt
Removing Directories with Files Inside [9
```


---

## page 20

```bash
rm notes.txt
```

Delete an empty directory:

```bash
rmdir Linux_Practice
```

Delete a directory containing files:

```bash
rm -r Linux_Practice
```

● Practice      👊🏼
Create a test directory:

```bash
mkdir TestFolder
```

Create a file inside it:

```bash
touch TestFolder/test.txt
```
# Using this we can create file named test.txt inside TestFol
der

Now remove the directory and everything inside it:

```bash
rm -r TestFolder
```

Verify it was deleted:

```bash
ls
```

Can you still see TestFolder?

### 10. Copying Files & Directories ( cp )

 

```text
e Practice i)
```


---

## page 21

Sometimes you may want to create a copy of a file or directory instead of
modifying the original one.
Linux provides the cp command for this.

⍩ Copying Files
To create a copy of a file:

# copy notes.txt to backup.txt
```bash
cp notes.txt backup.txt
```
# 1st write file or directory which we want to copy then wher
e to copy.

Now both files will exist:

notes.txt
backup.txt

What is cp ?
The cp command stands for Copy.
It is used to create copies of files and directories.

⍩ Copying Directories
To copy a directory and everything inside it:

# copy a directory and its contents
```bash
cp -r Linux_Practice Backup
```
# -r for coping every single file and sub-folders of linux_pr
actice to backup.
Without -r, cp cannot copy sub-folders and file.

Common Examples                 🎯

 

```text
> cp -r Linux Practice Backup
```


---

## page 22

Copy a file:

Copy a file to another directory:

Copy a directory:

● Practice    👊🏼
Create a copy of a file:

# create a copy
```bash
cp notes.txt backup.txt
```

# verify both files exist
```bash
ls
```

Can you see both notes.txt and backup.txt?

### 11. Moving & Renaming ( mv )
Sometimes you may want to move a file to another location or simply rename it.
Linux provides the mv command for this.

Renaming Files :)
To rename a file:

 

```text
e Practice ©)
Linux provides the »y command for this.
```


---

## page 23

# rename notes.txt to mynotes.txt
```bash
mv notes.txt mynotes.txt
```

The file name will change, but the contents will remain the same.

Moving Files :)
To move a file to another directory:

# move notes.txt to Documents
```bash
mv notes.txt Documents/
```

After running this command, the file will no longer be in the current directory, It
will move to Documents.

What is mv ?
The mv command stands for Move.
It is used to move or rename files and directories.

Common Examples                🎯
Rename a file:

Move a file:

Rename a directory:

 

```text
d.txt Desktop/
Desktop2 Backup
```


---

## page 24

Move a directory:

● Practice       👊🏼
Rename a file:

# rename backup.txt
```bash
mv backup.txt backup_old.txt
```

# verify the change
```bash
ls
```

Can you see backup_old.txt in the output?

🏆 Practice Challenge - Must do
Complete the following tasks:

1. Create a directory named Linux_Lab.

2. Enter the Linux_Lab directory.

3. Create a file named notes.txt.

4. Save the text:
"I am practicing Linux commands."

5. Display the contents of notes.txt.

6. Create a copy named backup.txt.

7. Rename backup.txt to final_notes.txt.

8. Create a directory named Archive.

9. Move final_notes.txt into Archive.

10. Verify that final_notes.txt exists inside Archive.

 

```text
Backup Desktop/
e Practice «jj
> mv backup.txt backup old.txt
1. Create a directory named Linux Lab.
2. Enter the Linux Lab directory.
```


---

## page 25

### 11. Delete notes.txt.   [ Hint- rm -f ] (-f for forcefully removing something.)

# Commands you may need: ls, cat, rm, touch, mkdir, mv, cp, echo, cd.

🎯 Bonus Questions
1. Which command shows your current location?

2. Which command shows files and directories?

3. Which command creates a directory?

4. Which command creates an empty file?

5. Which command copies a file?

6. Which command moves or renames a file?

7. Which command removes a file?

💡 Try completing the challenge without looking at the previous sections.

### 12. Getting Help ( man )
No one remembers every Linux command.
When you need help, Linux provides a built-in manual called man.

```bash
man ls
```

This command opens the manual page for the ls command.

What is man ?
The man command stands for Manual.
It provides detailed information about Linux commands, their options, and how to
use them.

🎯

 

```text
# Conmands you may need: 1s, cat, rm, touch, mkdir, mv, cp, echo, cd
9 Try completing the challenge without looking at the previous sections.
> man 1s
This command opens the manual page for the is command.
The an Command stands for Manual.
```


---

## page 26

Common Examples                     🎯
View the manual for ls :

```bash
man ls
```

This is how manual page looks. press q to exit and arrow keys for going up and down...

● Practice        👊🏼
View the manual for cp :

```bash
man cp
```

View the manual for rm :

```bash
man rm
```

View the manual for pwd :

```bash
man pwd
```

Can you find what pwd stands for?

 

```text
View the manual for 1s:
ls - list directory contents
List information about the FILEs (the current directory by default). Sort
entries alphabetically if none of nor is specified.
Mandatory arguments to long options are mandatory for short options too.
do not ignore entries starting with .
do not list implied . and ..
e Practice
Can you find what px stands for?
```


---

## page 27

Alternates of ( man )   🤔 hein ?
You may ask “why we need alternates of man as it gives very good detailing of a
command.”
So the answer is, As we observed that man command gives details reguarding a
particular command so deeply but what if we want a little bit info just to make us
understand quickly about a particular command so we uses these commands
given below.

# There are many more commands that tells us about the other
commands like man and they are :-
1. info <command>
2. whatis <command>
### 3. <command> --help (--help is an option just like -f or -r)

You must try all these methods right now !! Go    👊🏼
### 13. Clearing the Terminal ( clear )
As you run more commands, the terminal can become crowded with output.

Like this…

 

```text
Alternates of (nan) () hein?
You must try all these methods right now !! Go i)
txt Desketop/
Desktop Desktop2
bbitxt cotxt att te
txt Desktop/
Desktop2 Backup
Backup Desktop/
```


---

## page 28

Linux provides the clear command to clean the terminal screen.

After running this command, the terminal screen will be cleared.

The clear command removes the visible text from the terminal screen, giving you
a clean workspace.
💡 This command does not delete files or commands. It only clears what you see
on the screen.

● Practice   👊
Run:

```bash
clear
```

Did the terminal become clean?

### 14. Command History ( history )

 

```text
Linux provides the command to clean the terminal screen.
The command removes the visible text from the terminal screen, giving you
e Practice
```


---

## page 29

Have you ever forgotten a command you typed a few minutes ago?
Linux keeps a record of previously used commands.

Example Output:

You can observe that the last command was clear which i used while teaching you.

The history command displays commands you have used in the terminal.
💡 This is useful when you want to repeat or review previous commands.
● Practice      👊🏼
Run:

# go and use this command and observe which which command you
have learned
so far.
```bash
history
```

Can you find some commands you learned in this course?

 

```text
22 1s
214 Touch a.tat b.tet > te
345. touch altxt bitxt > test_folder
216 toch altxt bltxt < test folder
217 touch actxt botat /test. Folder
220. 1s test_fotder
226 cp ectxt Desktop
28 1s
229 my a.tet ditxt
231 mv d.txt Desktop
9 This is useful when you want to repeat or review previous commands.
e Practice ))
```


---

## page 30

### 15. Finding Files ( find )
As your data becomes larger, it becomes harder to remember where every file is
stored.
Linux provides the find command to search for files and directories.

Found 3 files named b.txt which i created while teaching you touch, cp and mv command…

How to use find ?
Understanding the Command
Take a look at this:

```bash
find . -name b.txt
```

At first glance, it might look a little confusing     😅
But don't worry. We've already seen some of these parts before.
The first word, find , is simply the command we're using.
Now look at the .
Does it look familiar?
Remember when we learned:

cd ..

There, I mentioned that:

.     = your current location
..    = one folder back

 

```text
The first word, ‘inc, is simply the command we're using.
```


---

## page 31

So in our find command:

find . -name b.txt

The . simply tells Linux:
"Start searching from my current location."
The -name part means:
"Search by name."
And b.txt is the file we're looking for.
So this command basically says:
"Start searching from here ( . ) and find a file named b.txt."

Common Examples                 🎯
Find a file in the current directory:

# search for notes.txt
```bash
find . -name notes.txt
```

Find a directory:

# search for Linux_Lab directory
```bash
find . -name Linux_Lab
```

Again What does "." mean?
. = Current Directory

Linux will start searching from your current location.

● Practice          👊🏼

 

```text
The -nane part means:
e Practice #))
```


---

## page 32

# search for your own created file
```bash
find . -name file.txt
```

Create a file somewhere and try finding it… its quite fun right?

### 16. Reading Large Files ( less )
Until now, most of the files we've worked with have been very small.
But what happens when a file contains hundreds of lines?    🤔
Earlier, we used the cat command to read files. It works great for small files, but
things get messy when the file is large.
Run this example on a real Linux file:

# .bashrc is a hidden file present in almost every user's hom
e directory.
```bash
cat .bashrc
```

You'll probably notice that the entire file gets dumped onto the screen at once   😅

 

```text
Create a file somewhere and try finding it... its quite fun right?
16. Reading Large Files ( 1ess )
> cat .bashre
```


---

## page 33

Reading a large file this way can quickly become frustrating.
That's where the less command comes in.

You might see a lot of strange text and commands. That's completely normal   😄

 

```text
$ less .bashre
```


---

## page 34

Like this.

The .bashrc file contains settings that help customize your terminal, and we
haven't learned those topics yet.
For now, don't focus on understanding the contents. Instead, notice how much
easier it is to read the file using less .
😄
Just scroll around for a bit . Once you've used both cat and less , the
difference becomes pretty clear.

● Practice    👊🏼
Open the file:

```bash
less .bashrc
```

Can you scroll through the file and return to the terminal using q ?   😎
### 17. Editing Files ( nano )
So far, we've created files and read them.

 

```text
Sis mR f9 slo. r Serer
# ~/.bashre: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
# If not running interactively, don't do anything
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
The file contains settings that help customize your terminal, and we
easier it is to read the file using q
Just scroll around for a bit ©. Once you've used both and , the
e Practice
> -bashrc
```


---

## page 35

But what if you want to actually write or edit something inside a file?   🤔
Linux provides a simple text editor called nano .
Let's open our file:

A text editor will appear inside the terminal.

Like this

Now try typing a few lines like i wrote:

 

```text
Sime ie alo Serres
Help Write Out (fj Where Is Cut fl Execute §@ Location
Exit K Read File il Replace Paste WB Justify J Go To Line
```


---

## page 36

Unlike cat or less , you can actually edit the file here.

Exiting Nano
When you're finished editing the file:

Ctrl + X

Nano will ask whether you want to save your changes.

After choosing Y or N, press:

Enter

to return to the terminal.

 

```text
Sisme fees alo : Veena
Linux helps me manage servers,
I am practicing Linux commands.
Nano is easy to use.|
Help ff Write Out fj where Is gl cut Wj Execute Location
Exit Wi Read File gl} Replace i Paste @ Justify J Go To Line
Unlike or , you Can actually edit the file here.
Save modified buffer?
```


---

## page 37

💡 Don't worry if this feels confusing at first. After using Nano a few times, it
becomes very easy 😄

● Practice    👊🏼
Open a file:

```bash
nano notes.txt
```

Type a few lines, save the file, and exit nano.
Now check your work:

```bash
cat notes.txt
```

Can you see the text you added?    😎
### 18. Finding Text ( grep )
Imagine a file containing hundreds of lines.
Would you really want to read the entire file just to find one word?   😅
That's where the grep command comes in.
Before we begin, create a file named practice.txt using Nano and add the
following text:

# You can copy this text and paste in practice.txt file..
Note: In linux if you want to paste you will have to use [ ct
rl + shift + v ]

Copy this text and paste       👇🏻
1. Linux makes everyday administration easier.
2. I am practicing Linux commands.
3. Linux is useful for security labs.

 

```text
9 Don't worry if this feels confusing at first. After using Nano a few times, it
e Practice i)
```


---

## page 38

4. Windows and Linux are different operating systems.
5. Many server environments run on Linux.

Your file should look something like this:   👇🏻

Once you're done, save the file and return to the terminal.
Now let's search for the word Linux:

Output:

Notice what happened?    🤔
Instead of showing the entire file, grep only displayed the lines containing the
word Linux.

 

```text
GNU nano 9.0 practice.txt *
1. Linux makes everyday administration easier.
2. I am practicing Linux commands.
3. Linux is useful for security labs.
Linux practice.txt
I am learning |.
Cybersecurity uses 1005.
Instead of showing the entire file, only displayed the lines containing the
```


---

## page 39

That's what makes it so useful.

Understanding the Command
```bash
grep Linux practice.txt
```

grep      → Search command

Linux     → The word we're looking for

practice.txt   → The file to search in

If we read whole command like a sentence it is saying:
"Search for the word Linux inside practice.txt."

● Practice          👊🏼
Can you find all lines containing the word:

Cybersecurity

# Hint: grep Cybersecurity practice.txt

Quick Question         😎
Both find and grep are used to search.
Can you figure out what is the difference then? Find out.

### 19. Viewing the Beginning of a File ( head )
Let's create a slightly larger file.

 

```text
e Practice i)
```


---

## page 40

Add around 12–15 lines of text (anything you like) and save the file.
Now read the entire file:

Imagine a file containing hundreds of lines. Reading the entire file every time
wouldn't be very practical  😅
Sometimes, you only want to see the beginning of a file.

 

```text
Some 3 vse ses |a6
1. Linux is awesone.
2. 1 am learning Linux.
3. Linux is useful for security labs.
4. Windows and Linux are different operating systems.
5. Linux powers many servers
6. Linux makes everyday administration easier.
7. 1 am learning Linux.
8. Linux is useful for security labs.
9. Windows and Linux are different operating systems.
10. Linux powers many servers
11. Linux is awesone.
32. T am learning Linux.
13. Linux is useful for security labs.
14. Windows and Linux are different operating systems.
15. Linux powers many servers
5 Help ro Write out Where Is 4 cut rl Execute Location
Exit Read File i Replace Paste Justify Wi Go To Line
Add around 12-15 lines of text (anything you like) and save the file.
1. Linux helps me manage servers
2. I am practicing Linux commands.
6. Linux helps me manage servers
7. I am practicing Linux commands.
11. Linux helps me manage servers
12. I am practicing Linux commands.
15. Many server environments run on Linux.
```


---

## page 41

That's where the head command comes in          😎

Notice what happened?
Even though the file contains more than 10 lines, Linux only displayed the first 10
lines.
💡 In its default behavior,    head   shows the first 10 lines of a file.
This is useful when you quickly want to inspect the start of a large file without
reading the whole thing.

Need More or Fewer Lines?
You can use the -n option to choose how many lines you want to see.
For example:

# -n stands for number

```bash
head -n 5 practice.txt
```

This will display only the first 5 lines.
Or:

 

```text
1. Linux helps me manage servers
2. I am learning Linux
3. Cybersecurity uses Linux
4. Windows and Linux are different operating systems.
5. Linux powers many servers
6. Linux makes everyday administration easier.
7. 1 am learning Linux.
8. Linux is useful for security labs.
9. Windows and Linux are different operating systems.
10. Linux powers many servers
You can use the -; option to choose how many lines you want to see.
```


---

## page 42

This will display the first 9 lines.
Think of -n as telling Linux:
"Show me exactly this many lines."

● Practice     👊🏼
Run the following commands and compare the output:

```bash
head practice.txt
```

```bash
head -n 3 practice.txt
```

```bash
head -n 15 practice.txt
```

Can you spot the difference?    🤔
### 20. Viewing the End of a File ( tail )
In the previous section, we learned how to view the beginning of a file using head .
But what if we want to see the last few lines instead?   🤔
That's where the tail command comes in.
Let's use the same file we created earlier:

 

```text
1. Linux helps me manage servers
3. Cybersecurity uses Linux
4. Windows is another operating system
5. Linux powers many servers
6. Linux helps me manage servers
7. I am Learning Linux
8. Cybersecurity uses Linux
9. Windows is another operating system
Think of -» as telling Linux:
e Practice (i)
```


---

## page 43

Notice the difference?     😎
Instead of showing the first 10 lines, Linux displayed the last 10 lines of the file.
💡 In its default behavior,    tail   shows the last 10 lines of a file.
This is especially useful when working with large ‘log’ files, where the newest
information is usually added at the end.

Need More or Fewer Lines?
Just like head , you can use the -n option.
Want only the last 5 lines?

Need the last 11 lines?

 

```text
$ tail practice.txt
6. Linux makes everyday administration easier.
7. I am practicing Linux commands.
8. Linux is useful for security labs.
9. Windows and Linux are different operating systems.
10. Linux powers many servers
11. Linux makes everyday administration easier.
12. I am practicing Linux commands.
13. Linux is useful for security labs.
14. Windows and Linux are different operating systems.
15. Many server environments run on Linux.
Just like head, you can use the -» option.
$ tail -n 5 practice.txt
42. I am practicing Linux commands.
```


---

## page 44

The -n option stands for Number and lets you choose how many lines to display.

### Quick Comparison
```bash
head practice.txt
```

Shows the beginning of the file.

```bash
tail practice.txt
```

Shows the end of the file.

● Practice   👊
Run the following commands and compare the output:

```bash
tail practice.txt
```

```bash
tail -n 3 practice.txt
```

```bash
tail -n 11 practice.txt
```

Can you spot the difference?   🤔

 

```text
5. Linux powers many servers
6. Linux helps me manage servers
7. I am learning Linux
8. Cybersecurity uses Linux
9. Windows and Linux are different operating systems.
10. Linux powers many servers
11. Linux makes everyday administration easier.
12. I am practicing Linux commands.
13. Cybersecurity uses Linux
14. Windows is another operating system
15. Many server environments run on Linux.
The -» option stands for Number and lets you choose how many lines to display.
e Practice @)
```


---

## page 45

### 21. Counting Text ( wc )
Sometimes you may want to know:
🤔 How many lines are in a file?
🤔 How many words does it contain?
🤔 How many characters are there?
Instead of counting manually, Linux can do it for us yeee     😎

The numbers represent:

Lines         Words   Characters

So the file contains:
15 lines
72 words
436 characters

What is wc ?
The wc command stands for Word Count.
It is used to count lines, words, and characters in a file.

Count Only Lines
Sometimes we only care about the number of lines.

 

```text
21. Counting Text ( we )
practice. txt
15 72 436 practice.txt
Whatis we ?
The we command stands for Word Count.
45 practice. txt
```


---

## page 46

💡     -l   stands for Lines.

Count Only Words

💡     -w   stands for Words.

Count Only Characters

💡     -c   stands for Characters.

● Practice       👊🏼
Run:

```bash
wc practice.txt
```

Then compare it with:

```bash
wc -l practice.txt
```

```bash
wc -w practice.txt
```

```bash
wc -c practice.txt
```

Can you figure out which number represents lines, words, and characters?   🤔
### 22. Sorting Text ( sort )
Imagine you have a file containing many words or names.

 

```text
Y -. stands for Lines.
72 practice. txt
436 practice. txt
Y -c stands for Characters.
e Practice
> we practice.txt
> we -l practice.txt
> we -w practice.txt
> we -c practice.txt
```


---

## page 47

Finding something in a random list can be difficult.
Linux provides the sort command to arrange text in alphabetical order.
Let's create a file:

Add:

Save the file and return to the terminal.
Now run:

Notice what happened?    🤔
Linux arranged the lines in alphabetical order.

Original File

 

```text
L$ nano fruits.txt
Session Actions Et View Help
GNU nano 8.7.1 fruits.
Lg sort fruits.txt
```


---

## page 48

Sorted Output

Compare both outputs and see the difference    😄
● Practice   👊🏼
Add a few more words to the file and run:

```bash
sort fruits.txt
```

Did Linux arrange them automatically?

● Connecting Commands ( | )
Till now, we've been running one command at a time.
But what if we want to use the output of one command as the input for another?
🤔  what does this mean ?
😄
Think of it like a pipe carrying water
Instead of displaying the output on the screen, pipe | sends it directly to the next
command.
That's where the pipe operator comes in.

```bash
command1 | command2
```

 

```text
e Practice (i)
e Connecting Commands ( | )
> command] | command2
```


---

## page 49

Let's try with an example:

Normally:

displays the contents of the file.
But with a pipe:

```bash
cat practice.txt | wc -l
```

The output of cat is sent directly to wc .
As a result, wc counts the lines instead of displaying the file.
💡 A pipe connects two commands together.
Another Example

 

```text
4. Linux makes everyday administration easier.
2. I am practicing Linux commands.
3. Linux is useful for security labs.
4. Windows and Linux are different operating systems.
5. Linux powers many servers
6. Linux makes everyday administration easier.
8. Linux is useful for security labs.
9. Windows and Linux are different operating systems.
10. Linux powers many servers
11. Linux makes everyday administration easier.
42. I am practicing Linux commands.
13. Linux is useful for security labs.
14. Windows and Linux are different operating systems.
15. Many server environments run on Linux.
> cat practice.txt | we -L
The output of cst is sent directly to wc.
```


---

## page 50

This shows only the beginning of your command history.
Without the pipe, history might display hundreds of commands   😅
● Practice      👊🏼
Run:

```bash
history | head
```

Can you see how two commands are working together?

### 23. Removing Duplicate Lines ( uniq )
Sometimes a file may contain the same line multiple times.
Let's create a file:

Add the following text:

 

```text
1 sudo su usmani
2 code
3. history
6 touch a.txt
7 nano a.txt
8 hollywood
9 sudo apt install hollywood
10 clear
e Practice «i
23. Removing Duplicate Lines ( unig )
```


---

## page 51

Save the file and return to the terminal.
Now let's see the contents:

As you can see, several lines appear more than once.
Linux provides the uniq command to remove duplicate lines.

 

```text
Session Actions Edit View Help
GNU nano 8.7.1
zoro kali)-[~
$ cat names.txt
Linux provides the unig command to remove duplicate lines.
zoroS kali)-[~
Lg nig names. txt
```


---

## page 52

Notice something?   🤔
Some duplicate lines disappeared.

But There's a Catch      😅
The uniq command only works properly when duplicate lines are next to each
other. Let me show you..

Saw ?? uniq command didn’t do anything as it only works when the duplicate
words are together.
That's why mostly uniq is used together with sort .
Try this:

```bash
sort names.txt | uniq
```

Output:

apple
banana

 

```text
The unig command only works properly when duplicate lines are next to each
Session Actions Edit View Help
GNU nano 8.7.1
> sort names.txt | unig
```


---

## page 53

linux

Now each line appears only once          😎
Understanding the Command

sort      → Arranges lines in alphabetical order

|   → Send the output to another command

uniq      → Remove duplicate lines

Think of it like this:

Sort the list
↓
Remove duplicates

● Practice           👊🏼
Add a few more duplicate words to the file and run:

```bash
sort names.txt | uniq
```

🏆 Checkpoint Challenge - Must Complete
You've learned a lot of commands so far. Let's see how many you can use without
looking back at the notes        😎
Complete the following tasks:

1. Create a directory named Linux_Challenge.

2. Move into Linux_Challenge.

 

```text
e Practice “|
> sort names.txt | unig
1. Create a directory named Linux Challenge.
2. Move into Linux Challenge
```


---

## page 54

3. Create a file named students.txt.

4. Open the file using Nano and add at least 15 lines.

5. Display the entire file using cat.

6. View only the first 5 lines.

7. View only the last 5 lines.

8. Count the total number of lines in the file.

9. Search for a word that exists inside the file.

10. Create a copy of students.txt named backup.txt.

11. Rename backup.txt to final_backup.txt.

12. Find the location of final_backup.txt.

13. Display only the first 10 commands from your history.

14. Clear the terminal.

15. Delete final_backup.txt.

🎯 Pipe Challenge
Use pipes to complete the following:

1. Display the contents of students.txt and count the lines.

2. Display the contents of students.txt and count the words.

3. Show only the first 5 commands from your history.

4. Sort the contents of students.txt and count the total lines.

🧠 Quick Questions
1. What is the difference between cat and less?

2. What is the difference between find and grep?

 

```text
3. Show only the first 5 conmands from your history.
```


---

## page 55

3. What is the difference between head and tail?

4. What is the difference between cp and mv?

5. What does the -n option do?

6. What does the | operator do?

7. Which command is used to edit files?

💡 Try completing everything on your own. If you get stuck, revisit the relevant
section and try again.

### 24. Current Date & Time ( date )
Have you ever wondered how Linux knows the current date and time?     🤔
The date command displays the system's current date and time.

Every system will show a different date and time depending on when you run the
command.
💡 The output may look slightly different on your system, and that's completely
normal.

● Practice       👊🏼
Run:

```bash
date
```

Does the date and time match your system clock?       😄
### 25. Identifying Files ( file )

 

```text
Y Try completing everything on your own. if you get stuck, revisit the relevant
9 The output may look slightly different on your system, and that's completely
e Practice «)
```


---

## page 56

Imagine someone gives you a file named:

secret

No extension.
No clue what's inside.      🤔
Is it a text file?
An image?
A script?
Or something else?
Linux provides a simple command to help us find out:

```bash
file secret
```

The file command examines a file and tells us what type of file it is.
Let's try a few examples:

what is ASCII text ??? It simply means this is a simple text file.
Now another example:

Even though its name was text file… We found that its a image file.

What I notice, right?   😎
Even though both are files, Linux recognizes them as completely different types.
💡 Linux does not rely on file extensions like Windows. It looks at the actual
contents of the file to determine what it is.

 

```text
Even though its name was text file... We found that its a image file.
Y Linux does not rely on file extensions like Windows. It looks at the actual
```


---

## page 57

Why is this Useful?
Suppose you download a file named:

update

There is no .txt , .pdf , or .png extension.
Instead of guessing, simply run:

```bash
file update
```

and Linux will tell you what kind of file it is.

● Practice     👊🏼
Run the following commands:

```bash
file notes.txt
```

```bash
file ~/.bashrc
```

Does these files have the same type?      🤔
### 26. Finding a Command ( which )
We have used many commands till now. But have you ever wondered where these
commands are stored? 🤔
💡 Fun Fact - Commands are also files created by people. You can check the
names of their creators and contributors on the last of a particular
command's manual page.
So the question is: Where do commands get stored???     🤔
And what if we could also create our own commands? How would that work??   😄
What I notice, right?

 

```text
There is no .txt, .paf, OF .png extension.
e Practice «)
> file ~/.bashre
```


---

## page 58

The answer is yes, we can create our own commands, but before that, we should
know where Linux stores the commands that already exist.
Linux provides a simple command called which that helps us find where a
command is stored on the system.
Let's use it and see where Linux keeps the cat command.

What I notice      🤔
Linux told us that the cat command is stored in:

/usr/bin/cat

In simple words, this is the location of the cat command on the system.

Let's try a few more commands:

 

```text
Linux provides a simple command called \j:ich that helps us find where a
Linux told us that the ca: command is stored in:
In simple words, this is the location of the ca: command on the system.
```


---

## page 59

Notice something?          👀
Every command we checked, points to the same location:

/usr/bin

Looks like we've just discovered where Linux keeps many of its commands       😄
Before we understand what /usr/bin means, let's first break this path down:

/
└── usr
└── bin
└── cat

You don't need to memorize this right now         😄
Just remember one thing:

/   = The starting point of the Linux filesystem

Think of it as the "main folder" of Linux. Every file and directory on the system
starts from here.
Now let's talk about the interesting part:

bin

The word bin stands for Binary. Don't let the name confuse you     😄
In Linux, many programs and commands are stored inside directories named bin .
Let's explore this directory ourselves.

 

```text
L whoa
L cat
```


---

## page 60

Now list the files inside:

```bash
ls
```

You'll probably see hundreds of files   😅
We don’t have understand every command. The goal is to simply realize that many
of the commands we've been using are stored here on the system.
Let's see if we can find some familiar ones   👀

Yee we got nano haha.

● Practice     👊🏼
```bash
ls | grep grep
```

and

```bash
ls | grep find
```

Did you find them?   😄 cool 😎
Just a few minutes ago, commands like nano , grep , and find were simply things
we typed into the terminal. But now we know that they're actual programs stored
on the system, and we even managed to find some of them ourselves inside the
/usr/bin directory. That's exactly what the which command helped us discover.

 

```text
traceroute- 9g
e Practice ‘\))
> 1s | grep grep
> 1s | grep find
Just a few minutes ago, commands like nanc, orep, aNd find were simply things
```


---

## page 61

### 27. Finding More Information ( whereis )
Previously, we used the which command to find where a command is stored.
But what if one location isn't enough?   🤔
Linux provides another command called whereis that can show more information
about a command.
Run this example:

What I notice      😄
Unlike which , the whereis command can show multiple locations related to a
command.

which vs whereis

```bash
which ls
```

Usually shows:

/usr/bin/ls

```bash
whereis ls
```

May show:

/usr/bin/ls
/usr/share/man/man1/ls.1.gz

So you can think of it like this:

 

```text
Unlike wich, the whereis command can show multiple locations related to a
```


---

## page 62

which         → Where is the command?
whereis → Show me everything related to this command.

● Practice             👊🏼
Run:

```bash
whereis grep
```

```bash
whereis cat
```

```bash
whereis find
```

I hope you are learning well          👊🏼. Let’s move Forward…
### 28. Visualizing Directories ( tree )
Have you ever wondered what your entire directory structure looks like?      🤔
Linux provides a command named:

tree

Instead of showing a simple list like ls , tree displays files and directories in a
visual structure.
This makes it much easier to understand how everything is organized.
Before understanding what tree does, follow these steps on your own terminal:

mkdir Linux_Practice
cd Linux_Practice                        # Create a directory and go inside
it

mkdir Notes Images Scripts                         # Make multiple directorie
s inside it

 

```text
e Practice «))
Instead of showing a simple list like is, tree displays files and directories ina
```


---

## page 63

touch Notes/linux.txt
touch Images/photo.png                       # Make files in the directorie
s we created
touch Scripts/test.sh

Now run:

tree

You should see a structure similar to this:

Linux_Practice
├── Notes
│   └── linux.txt
├── Images
│   └── photo.png
└── Scripts
└── test.sh

Pretty cool, right?      😄
Until now, you've been looking directories and files one by one. The tree
command finally lets you see how everything connects together.
💡 Think of       tree    as a map of your current directory.

● Practice           👊
Create the following structure:

Linux_Practice
├── Notes
│     └── linux.txt
├── Images
│   └── photo.png
└── Scripts
└── test.sh

Some Linux distributions do not install tree by default.
And if your is one of them…don’t worry

 

```text
Linux Practice
L test.sh
Y Think of tree as a map of your current directory.
e Practice
_ scripts
And if your is one of them...don't worry
```


---

## page 64

You will learn installing soon. Till then

If this is what you are facing.

Simply press y and hit Enter.
After the installation finishes, try running the tree command again   🌳
### 29. Saving and Displaying Output ( tee )
Until now, we've been using echo to create text.
For example:

Simple      😄
The text appears on the terminal, but it isn't saved anywhere.
What if we want to save it into a file?
We already know how to do that

But there's a small problem...
This time the text was saved into the file, but it wasn't displayed on the terminal
until we used cat.

 

```text
sudo apt install tree
Do you want to install it? (N/y)|
Linux is Awesome
s notes. txt
> notes. txt
```


---

## page 65

So now we have two situations:

➖       echo      → Shows output only
echo > file → Saves output only

What if we want both?     🤔
Show the output on the screen and
+
Save the same output into a file at the same time?

That's where the tee command comes in hehe.

Let's Try It         👇

You should immediately see:
Linux helps me manage servers, on your screen.
Now check the file:

What I notice      😄
This time Linux displayed the text on the terminal and saved the same text into
the file.

Understanding the Command ✓

 

```text
mmm echo + Shows output only
> L notes. txt
> notes. txt —
Understanding the Command V
```


---

## page 66

👉🏻      echo "Linux helps me manage servers" | tee notes.txt

Let's break it down:

➖       echo → Creates the text
|     → Sends the output forward
tee      → Shows the output and saves it
notes.txt → File where it will be stored

Think of tee as a splitter.

It takes one output and sends it to two places:

Terminal
+
File

● Practice       👊🏼
Run:

```bash
echo "I am learning Linux" | tee practice.txt
```

Now verify:

```bash
cat practice.txt
```

Did the text appear on the screen and inside the file?   👀
● Challenge        👊🏼
Create a file named:

 

```text
Think of ‘ce as a splitter.
```


---

## page 67

motivation.txt

and save this text into it using tee :

Never stop learning.

Then verify it using:

```bash
cat motivation.txt
```

### 30. Cutting Parts of Text ( cut )
Until now, whenever we read a file, Linux showed us the entire line.
For example:

➖       Hello_my_name_is_learn_nice_to_meet_you

But what if we only wanted a specific part of that line?   🤔
Maybe just:

➖       Hello

Linux provides a simple command for this:

```bash
cut
```

Let's create a small file first:

 

```text
and save this text into it using tcc:
mmm Hello_my_name_is_learn_nice_to_meet_you
mmm Hello
> cut.txt
```


---

## page 68

Add the following line:

Save the file and return to the terminal.
Now let's view it:

Notice that the words are separated by an underscore ( _ ).
Let's tell Linux to use _ as the separator and show only the first part:

```bash
cut -d "_" -f1 cut.txt
```

Output:

Nice     😄
Linux ignored everything after the first underscore and only displayed the first
section.

Understanding the Command ✓
Before looking at the command, let's look at the data first:

➖       linux_admin_beginner

 

```text
GNU nano 9.0
> A cut.txt
Understanding the Command V
mmm linux_admin_beginner
```


---

## page 69

Notice the underscore ( _ ) between the words         👀
Linux interprets this line as:
linux | admin | beginner
Now let's understand the command:

```bash
cut -d "_" -f1 cut.txt
```

# The word -d stands for Delimiter.
A delimiter is simply a separator between pieces of data.

-d "_" → Tell Linux that _ is being used as the separator.

➖            f1 → It is asking to show only data before first separator which is ‘ _ ‘
in our case.
cut.txt → it is simply a file name which we have created.

So basically the command:

```bash
cut -d "_" -f1 cut.txt
```

Is saying:

➖       "Read the file cut.txt, use _ as the separator, and show me only the first
part, of cut.txt file”

Which is Linux in our case as you can see         👇

---

## page 70

What if we want second word ? For that we just need to change value of f from f1
to f2:

```bash
cut -d "_" -f2 practice.txt
```

Output:

And for third word:

Another Example       👀
Create a new file:

Add:

Now run:

```bash
cut -d ";" -f1 users.txt
```

Output:

 

```text
> cut -@ 0" =f2 practice: txt
> i cut. txt
> cut. txt
GNU nano 9.0 users.txt *
```


---

## page 71

What I notice      😄
This time the separator is not _ .
It is:

➖       ;

The cut command doesn't care what the separator is.
We simply tell it which separator to use.

Common Separators ✃
_     Underscore
;     Semicolon
,     Comma
:     Colon

● Practice         👊🏼
Create a file named:

```bash
nano products.txt
```

Add:

Laptop_HP_45000
Mobile_Samsung_25000
Mouse_Logitech_1200

Now try:

 

```text
> users. txt
This time the separator is not.
The cuz Command doesn't care what the separator is.
e Practice «/)
Laptop HP_45000
Mobile Samsung 25000
Mouse Logitech 1200
```


---

## page 72

```bash
cut -d "_" -f1 products.txt
```

```bash
cut -d "_" -f2 products.txt
```

```bash
cut -d "_" -f3 products.txt
```

Can you display only the product names, brands, and prices?    😎
### 31. Combining Files Side by Side ( paste )
In the previous lesson, we used the cut command to separate text.
But what if we want to do the opposite?   🤔
What if we have information stored in different files and want to combine it
together?
Linux provides a simple command for this:

```bash
paste
```

Let's create two files.
Create the first file:

Add:

Save and exit.

 

```text
In the previous lesson, we used the cu: command to separate text.
> names. txt
GNU nano 9.0 names .txt
```


---

## page 73

Now create another file:

Add:

Save and exit.
Let's view both files:

The names are in one file and the cities are in another.
Let's combine them.
Run:

 

```text
nikhilS nikhil 192.168.1.50 CMD:2301)~|~
> nano cities.txt
GNU nano 9.0 cities.txt
> cat names.txt
nikhil nikhil 192.168.1.50 CMD: 2303 -
> cat cities.txt
nikhilS nikhil 192.168.1.50 CMD: 2304 || ~
> paste names.txt cities.txt
John London
Sarah Delhi
Mike Tokyo
```


---

## page 74

Nice     😄
Linux joined both files line by line.

Understanding the Command ㋡
```bash
paste names.txt cities.txt
```

paste         → Command

names.txt     → First file

cities.txt → Second file

Linux reads the first line from each file and joins them together.
Then it does the same for the second line.
And then the third.

Another Example                 👀
Create:

Add:

Now run:

 

```text
> ages. txt
```


---

## page 75

What I notice      😄
We combined three files instead of two.

Changing the Separator ✎
In its default behavior, paste uses a tab space between columns.
But we can choose our own separator.
Run:

# -d works same as cut command but for completely different p
urpose.

```bash
paste -d "," names.txt cities.txt
```

Output:

Now Linux is using a comma instead of space.

● Practice    👊🏼
Create:

```bash
nano fruits.txt
```

Add:

 

```text
> names.txt cities.txt ages.txt
John London 20
Sarah Delhi 22
Mike Tokyo 21
e Practice
```


---

## page 76

Apple
Banana
Mango

Create:

```bash
nano colors.txt
```

Add:

Red
Yellow
Orange

Now try:

```bash
paste fruits.txt colors.txt
```

Can you combine both files successfully?    😎
32. Finding Differences Between Files
( diff )
Imagine you have two versions of the same file.
One is the original file.
The other has been modified.
Now the question is:
How do we know exactly what changed?       🤔
Manually checking each line can be slow, especially when the files are
large.
Linux provides a simple command for this:

---

## page 77

💡        diff

Let's create two files.

Add:

Save and exit.
Now create another file:

Add:

Save and exit.
Let's view both files:
1st file

 

```text
g diff
> filel.txt
GNU nano 9.0 filel.txt *
> file2.txt|
GNU nano 9.0 file2.txt *
Ist file
Linux - A Complete Cou 7
```


---

## page 78

2nd file

Both files look very similar      👀
Let's ask Linux to compare them.

What I notice      🤔
Linux didn't display the entire contents of both files.
Instead, it only showed the difference.

💡       In file1.txt:

Python was present.

💡       While in file2.txt:

 

```text
> filel.txt
> filel.txt file2.txt
v In file1.txt:
g While in file2.txt:
```


---

## page 79

Bash was present.

Understanding the Command ✓
```bash
diff file1.txt file2.txt
```

💡            1. diff → Command
2. file1.txt → First file
3. file2.txt → Second file

Linux compares both files line by line and shows only the differences.

● When this command is useful                 👀
The diff command can be useful when:
Comparing configuration files
• Reviewing changes in a file
• Comparing backups
• Investigating suspicious modifications
Instead of reading hundreds of lines manually, Linux can quickly show what
changed.

● Practice             👊🏼
Create two files with slightly different content.
Use:

```bash
diff file1.txt file2.txt
```

Can you identify which lines Linux reports as different?   😄

 

```text
Understanding the Command V
> diff filel.txt file2.txt
g 1. diff - Command
3. file2.txt - Second file
e When this command is useful ««
e Practice «))
```


---

## page 80

### 33. Transforming Text ( tr )
Take a look at this 👀

Looks normal right?   😄
But what if we wanted all the letters to become CAPITAL?
Linux provides a simple command for this:

```bash
tr
```

Run this example     👇

What I notice      😄
The words didn't change and the sentence didn't change,
The only thing that changed was the letters.

Now let's try the opposite ⤻

What I notice      🤔
This time Linux converted all capital letters into small letters.

Command breakdown ⤻

 

```text
LINUX IS AWESOME :
```


---

## page 81

```bash
echo "server maintenance" | tr a-z A-Z
```

tr →     The command we are using.
a-z→ All lowercase letters.
A-Z→ All uppercase letters.
In plain language, the command means:

💡       "Replace every lowercase letter with its uppercase version."

The result becomes:

LINUX IS AWESOME

Let's try something else     👀

Notice the underscore (_) between the words.
What if we wanted spaces instead?

Nice     😄
Linux replaced every underscore with a space.

● Another Example       👊🏼

 

```text
linux linux Linux
e Another Example |)
```


---

## page 82

```bash
echo "devops-devops-devops" | tr "-" "_"
```

Output:

What I notice      🤔
This time Linux replaced every dash (-) with an underscore (_).
The text remains in place while the selected characters are translated.

When this command is useful   👀
The tr command can be useful when:
Converting uppercase text to lowercase
• Converting lowercase text to uppercase
• Replacing characters
• Cleaning up text before processing it

● Practice    👊🏼
Run:

```bash
echo "cyber security" | tr a-z A-Z
```

```bash
echo "SERVER MAINTENANCE" | tr A-Z a-z
```

```bash
echo "linux_ops_basics" | tr "_" "-"
```

Before running each command, try to work out what it will print.    😎
### 34. Checking Disk Usage ( du )

 

```text
e Practice “|
```


---

## page 83

So far, we've created many files and directories.
But have you ever wondered how much space they are using?   🤔
For example:

```bash
mkdir Movies
```
```bash
mkdir Pictures
```
```bash
mkdir Notes
```

At first glance, all directories look the same.
But are they really using the same amount of storage?   👀
Linux has a command for this task: du .
Run this example     👇
```bash
du
```

Output:

You might see several numbers and paths.
What I notice      😄

 

```text
Linux has a command for this task: cu .
```


---

## page 84

Linux is showing how much space different files and directories are using.

I can make the result easier to read with an option:

Run:

```bash
du -h
```

Output:

What I notice      🤔
The values are now shown in a more readable format.
Instead of large values, you may see:

4K
16K
24M

The -h option stands for:
Human Readable

 

```text
The -» option stands for:
```


---

## page 85

which makes the output easier for humans to understand.
Now let's check a specific directory.
Run:

Linux only shows information about the Documents directory.

Sometimes we only want the total size.

Run:

---

## page 86

What I notice      😄
Instead of showing every file and sub-directory, Linux only shows the final total.

● Command breakdown.

du   → Disk Usage

s → Show only the summary
h → Human Readable output
. → Directory we want to check which in our case is home directory of nikhil user.

When this command is useful    👀
The du command can help when:
A directory is becoming too large
You're running low on storage
You want to find space-hungry folders
You want to check backup sizes

● Practice     👊🏼
Run:

```bash
du -h
```

```bash
du -h /
```

```bash
du -sh ~
```

Which location is using the most storage on your system?   😎
### 35. Checking Memory Usage ( free )

 

```text
The au command can help when:
e Practice ())
```


---

## page 87

Your browser and terminal uses memory.
Even the operating system itself uses memory.
But how do we know how much memory (RAM) is being used?            🤔
Linux has a command for this task: free .

Run this example     👇

What I notice      😄
Linux is showing information about your system's memory.
But the output may look a little confusing at first.

Let's make it easier to read.

What I notice      🤔
The values are now shown in a more readable format.
Instead of large numbers, you may see values such as:

23Gi
5.5Gi
15Gi

which are much easier to understand.
What is -h ?
The -h option stands for Human Readable, same as du
It tells Linux to display sizes in a format that is easier for humans to read.

 

```text
Shap 24787964 © 24787964
total used free shared _buff/cache available
The -» option stands for Human Readable, same as du
```


---

## page 88

Let's understand the output.

Take a look at these columns      👀
total    → Total RAM installed in your system.

used    → RAM currently being used.

free    → RAM currently available.

Linux is basically telling us:

How much RAM we have.
How much RAM is being used.
How much RAM is still available.

● When this command is useful      👀
The free command can help when:
Your system feels slow.
You want to check available RAM.
You want to see how much memory programs are using.
Troubleshooting performance issues.

💡 Quick Tip
Most Linux users prefer:

```bash
free -h
```

# du command which we learned in previous lession also used w
ith -h option.

instead of:

 

```text
e When this command is useful + «
Y Quick Tip
```


---

## page 89

```bash
free
```

# or > du -h

Because the output is much easier to read.

### Practice    👊🏼
```bash
free
```
```bash
free -h
```

Can you find:
Total RAM
Used RAM
Free RAM
on your system?   😎
### 36. Checking Disk Space ( df )
In the previous lesson, we learned how to check the size of files and directories
using the du command.
But what if we want to check the storage of the entire system?   🤔
Linux provides the df command for this.

```bash
df
```

After running this command, Linux will display information about your disk space.

● What is df?
The df command stands for Disk Filesystem.

 

```text
using the au command.
Linux provides the «* command for this.
e What is df?
The a command stands for Disk Filesystem.
```


---

## page 90

It is used to check how much storage space is available and how much has
already been used.

Run this example:

You may notice that the output looks a little messy    😅
Let's make it easier to read.

💡       The -h option stands for Human Readable.

Take a quick look at the output   👀. Can you spot columns such as:
Size
Used
Avail
We'll use these to understand how much storage is available on the system.

 

```text
> df
Filesystem 1K-blocks Used Available Use% Mounted on
udev 12011168 ® 12011168 0% /dev
tmpfs 2422832 1884 2420948 1% /run
tmpfs 12114152 273856 11840296 3% /dev/shm
efivarfs 256 164 88 66% /sys/firmware/efi/efivars
none 1024 ) 1024 0% /run/credentials/systemd-journald
tmpfs 12114156 32296 12081860 1% /tmp
tmpfs 2422828 116 2422712 1% /run/user/1000
> df -h
Filesystem Size Used Avail Use% Mounted on
udev 126 @ 126 0% /dev
tmpfs 2.4G 1.9M 2.46 1% /run
tmpfs 12G 207M 12G 2% /dev/shm
efivarfs 256K 164K 88K 66% /sys/firmware/efi/efivars
none 1.0m @ 1.0M 0% /run/credentials/systemd-journald. service
tmpfs 12G 25M 12G 1% /tmp
tmpfs 2.4G 116K 2.4G 1% /run/user/1000
```


---

## page 91

💡       12G = 12 GB
445G = 445 GB
500M = 500 MB

Common Examples
Check disk space:

```bash
df
```

Check disk space in a readable format:

```bash
df -h
```

Check a specific location:

```bash
df -h .
```

# "." saying to show space from our current location.
# try using / and ~ and . or any other specific location and
observe.

💡 Think of     as a storage report card. It tells you how much disk space is
df

available and how much has already been used.

● Practice         👊🏼
### Practice       👊
Run:

df

Now run:

df -h

 

```text
y we = 1268
e Practice i)
Practice i)
```


---

## page 92

Which one is easier to understand?    😄
Take a minute to explore the output and see what you can find   👀
Can you spot:
1. The largest storage device on your system?
2. How much space has already been used?
3. How much space is still available?
Some output may be unfamiliar at first. I’ll focus on recognizing the main fields and patterns.   😊
TO BE CONTINUED —

---
