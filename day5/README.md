1. $0
What It Is: This variable contains the name of the script being executed.
    Example:
    #!/bin/bash
    echo "The name of this script is: $0"
If you run this script as ./myscript.sh, it will output:
    The name of the script is: ./myscript.sh
  
2. $#
Description: This variable holds the number of arguments passed to the script.
    Example
    #!/bin/bash
    echo "Number of arguments: $#"
If you run this script as ./myscript.sh arg1 arg2, it will output:
   Number of arguments: 2

3. $@
Description: This variable represents all the arguments passed to the script as separate words.
    Example:
    #!/bin/bash
    echo "All arguments: $@"

If you run this script as ./myscript.sh arg1 arg2, it will output:
    All arguments: arg1 arg2

