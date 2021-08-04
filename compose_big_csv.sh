echo "This will be the script container of the solutions"
echo ""

# Example of trim and echos
# IN="bla@some.com;john@home.com"
# mails=$(echo $IN | tr ";" "\n")

# Fetch executables c++ scripts
# cpp_set=$(find -iname "*.cpp")

# Fetch executables perl scripts
perl_set=$(find -iname "*.pl")
# perl_set=$(echo $perl_set | tr "\n" "\n") # trim

# Fetch executables python scripts
python_set=$(find . -iname "*[^__].py")
# python_set=$(echo $python_set | tr "\n" "\n") # trim

# Compose the whole set of scripts to be running
script_container="$perl_set \n $python_set"
script_container=$(echo $script_container | tr "\n" "\n") # trim

# echo "$script_container"

for script in $script_container
do
    case $script in

        *".cpp")
            echo -n "We are running a C++ code"
            # g++ $x -o object
            # ./object >> main/output/csv.csv
            echo ""
            ;;

        *".java")
            echo -n "We are running a Java code"
            echo ""
            ;;

        *".pl")
            echo -n "We are running a Perl code"
            echo ""
            ;;

        *".py")
            echo -n "We are running a Python code"
            # python3 $script >> main/output/csv.csv
            echo ""
            ;;

        *".r")
            echo -n "We are running a R code"
            echo ""
            ;;

        *".rb")
            echo -n "We are running a Ruby code"
            echo ""
            ;;

        *)
            echo -n "unknown $script"
            echo ""
            ;;
    esac
done
