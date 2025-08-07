  #!/bin/bash
myfun()
{
        for i in {1..3} 
        do
                echo "calling from myfun at $i"
        done
}
fun2()
{
 for i in {a..c}
 do
         echo "calling from fun2 at $i"
 done
}
#calling function

read -p "Enter your name: " name

if [ "$name" == "Ayesha" ]
then
	 echo "User is Valid"
        myfun
else
        echo "User is inValid"
               fun2
        fi
