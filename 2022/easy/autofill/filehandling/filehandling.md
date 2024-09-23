1. Creating Files
Files can be created using the touch command, redirection operators, or cat command.

    ```touch file.txt  # Creates an empty file named file.txt```

2. Writing to Files
You can write to files using redirection operators.

>: This operator overwrites the contents of a file.
>>: This operator appends content to the end of a file without overwriting it.

```# Overwrite (or create) file with new content
echo "Hello World" > file.txt  

# Append new content to file
echo "New line of text" >> file.txt```  

3. Reading Files
To read the contents of a file, you can use commands like cat, less, more, head, or tail.

```    # Display the contents of the file
    cat file.txt  

    # Display the first 5 lines of the file
    head -n 5 file.txt  

    # Display the last 5 lines of the file
    tail -n 5 file.txt```

4. Checking If a File Exists
You can check whether a file exists using the -e test condition in an if statement.

```    if [ -e file.txt ]; then
        echo "file.txt exists"
    else
        echo "file.txt does not exist"
    fi```

5. Deleting Files
Files can be deleted using the rm command.

```    rm file.txt  # Deletes the file```

6. Reading File Line by Line
In Bash, you can read a file line by line using the while loop and the read command.

```    #!/bin/bash
    # Read file.txt line by line
    while IFS= read -r line; do
        echo "$line"
    done < file.txt```


7. Writing Multiple Lines to a File
You can write multiple lines into a file using heredoc syntax (<<).


```    cat << EOF > file.txt
    This is the first line.
    This is the second line.
    EOF```

8. File Descriptors
File descriptors are a way to redirect input/output streams in Bash. The common file descriptors are:

0: Standard input (stdin)
1: Standard output (stdout)
2: Standard error (stderr)
You can redirect these streams using > or >>.


```    # Redirect stdout to file.txt
    echo "This will go to file.txt" > file.txt

    # Redirect stderr to error.txt
    ls nonexistentfile 2> error.txt```


### Summary of Key Commands:
    File Creation: touch, >, >>
    File Deletion: rm
    File Writing: echo, cat, >
    File Reading: cat, head, tail, read
    Checking Existence: [ -e ]
    Permissions: chmod

