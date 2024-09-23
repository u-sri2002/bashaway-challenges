# Autofill

## Scenario

Having to do the same tasks again and again is boring. It is same when it comes to filling same CLI prompts in Linux environments on daily basis. So it will be easier we can develop an answering script to provide answers for prompts.

## Task

Develop a bash script to answer the following prompts created by questions.sh script:
```
Hi! Welcome to SLIIT Bashaway 2022.
Your team name:
No. of members in your team:
Your university:
```

You should develop a bash script to answer the above prompt as follows.
```
Hi! Welcome to SLIIT Bashaway 2022.
Your team name: <Your Team Name>
No. of members in your team: <Member count>
Your university: <University Name>

```

Then the provided bash script will create a file by your team name including your team details.
Eg: `team_name.txt`

You can test it by the following command:
`./questions.sh < ./script.sh`


## `./questions.sh < ./script.sh`

### Explanation of Components:
./questions.sh: This runs the script questions.sh. The ./ indicates that the script is located in the current directory and is executable.

<: This is the input redirection operator. It redirects the input for questions.sh from another file or source, instead of taking input interactively from the terminal.

./script.sh: This file (script.sh) contains the input that would normally be typed interactively when running questions.sh. In this case, the contents of script.sh are used as the input for the prompts inside questions.sh.

#### What’s Happening:
Input redirection (<) tells Bash to feed the contents of script.sh into questions.sh as if it were typed by a user at the command line.
questions.sh expects some input (such as user prompts), and instead of the user manually typing those answers, the answers are provided automatically by reading the lines from script.sh.

