echo "This will be the script container of the solutions"
echo ""

# Fetch executables c++ scripts
# cpp_set=$(find -iname "*.cpp")

# Fetch executables perl scripts
perl_set=$(find -iname "*.pl")
perl_set=$(echo $perl_set | tr "\n" "\n") # trim

# Fetch executables python scripts
python_set=$(find . -iname "*[^__].py")
python_set=$(echo $python_set | tr "\n" "\n") # trim


for script in $python_set
do
    if [[ "$script" == *".py" ]]; then
        echo "We are running a python code"
        python3 $script >> main/output/csv.csv
    fi
    
done


# Fetch executables c++ scripts
# cpp_set=$(find -iname "*.cpp")


# gcc main/some_content_3.c -o main/out

# Execute perl
# perl function_1.pl

# for x lopp [ "hello_world.cpp", hello_world_2.cpp, hello_world_3.cpp ]:

#     g++ $x -o object

#     var = 'asdasd'
#     ./obejct > "$var" // archivo intermedio

# ./main/out

# Example of trim and echos
# IN="bla@some.com;john@home.com"
# mails=$(echo $IN | tr ";" "\n")
