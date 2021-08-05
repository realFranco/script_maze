echo "Composing a Big CSV"
echo ""

mkdir main/output
echo "" > main/output/csv.csv

# Fetch executables c++ scripts
cpp_set=$(find -iname "*.cpp")

# Fetch executables java scripts
java_set=$(find -iname "*.java")

# Fetch executables perl scripts
perl_set=$(find -iname "*.pl")
# perl_set=$(echo $perl_set | tr "\n" "\n") # trim

# Fetch executables python scripts
python_set=$(find . -iname "*[^__].py")
# python_set=$(echo $python_set | tr "\n" "\n") # trim

# Fetch executables R scripts
r_set=$(find . -iname "*.r")

# Fetch executables ruby scripts
ruby_set=$(find . -iname "*.rb")

# Compose the whole set of scripts to be running
script_container="$cpp_set \n $java_set \n $perl_set \n $python_set \n $r_set \n $ruby_set"
script_container=$(echo $script_container | tr "\n" "\n") # trim

# echo "$script_container"

for script in $script_container
do
    case $script in

        *".cpp")
            echo -n "We are running an C++ code"
            g++ $script -o compiled_object
            ./compiled_object >> main/output/csv.csv
            echo ""
            ;;

        *".java")
            echo -n "We are running an Java code"
            javac $script
            mv main/entry_point.class entry_point.class
            # Running the external class to the main
            java entry_point >> main/output/csv.csv
            echo ""
            ;;

        *".m")
            echo -n "We are running an Octave code"
            octave --persist $script >> main/output/csv.csv
            echo ""
            ;;

        *".pl")
            echo -n "We are running an Perl code"
            perl $script >> main/output/csv.csv
            echo ""
            ;;

        *".py")
            echo -n "We are running an Python code"
            python3 $script >> main/output/csv.csv
            echo ""
            ;;

        *".r")
            echo -n "We are running an R code"
            Rscript $script >> main/output/csv.csv
            echo ""
            ;;

        *".rb")
            echo -n "We are running an Ruby code"
            ruby $script >> main/output/csv.csv
            echo ""
            ;;

        *)
            echo ""
            ;;
    esac
done

echo "Removing temporary objects"
rm entry_point.class compiled_object
echo ""

echo "End of the bash execution :)"
echo ""
