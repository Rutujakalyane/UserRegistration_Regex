echo "Welcome to User-Registration"
function  firstNameRegex()
{
echo "Enter your first name"
read firstName

firstNameRegex="^[A-Z][a-zA-Z]{2,}$"
      if [[ $firstName =~ $firstNameRegex ]]
      then
              echo valid;
      else
              echo "invalid: Starts with Cap & has minimum 3 characters";
      fi
}
function lastNameRegex()
{
echo "Enter your last name: "
read lastName

lastNameRegexPat="^[A-Z][a-zA-Z]{2,}$"
      if [[ $lastName =~ $lastNameRegexPat ]]
      then 
              echo valid;
      else
              echo "invalid: Starts with Cap & has minimum 3 characters";
      fi
}
function emailRegex()
{
echo "Enter your email: "
read email

emailRegexPat="^[a-zA-Z0-9]+([.+,-,_]?[a-zA-Z0-9]+)?[@][a-zA-Z]+[.][a-zA-Z]{2,4}([.][a-zA-Z]{2})?$"
      if [[ $email =~ $emailRegexPat ]]
      then 
              echo valid;
      else
              echo "invalid: Eg: abc.xyz@bl.co.in"
              echo "Email has 3 mandatory parts (abc, bl & co) and 2 optional (xyz & in) with precise @ and . positions";
      fi
}
function mobileRegex()
{
echo "Enter your mobile: "
read mobile

mobileRegexPat="^[0-9]{2}[ ][0-9]{10}$"
      if [[ $mobile =~ $mobileRegexPat ]]
      then
             echo valid;
      else
             echo "invalid: Eg: 91 9876543210"
             echo "Country code 2 digits, follows by space then 10 digits number";
      fi
}
function passwordRegex()
{
echo "Enter your password: "
read passwd

rule1="^[a-zA-Z0-9]{8,}$"
rule2="^[0-9a-z]*[A-Z]{1}"
rule3="^[0-9a-zA-Z]{1,}$"
rule4="^[~!@#$]{1}$"
        if [[ $passwd =~ $rule1 ]] && [[ $passwd =~ $rule2 ]] && [[ $passwd =~ rule3 ]] && [[ $passwd =~ rule4 ]]
        then
                echo valid;
        else
                echo "invalid: Minimum 8 characters"
                echo "Atleast 1 Capital letter"
                echo "Atlest 1 Numeric"
                echo "Atleast 1 special char"
        fi
}
firstNameRegex
lastNameRegex
emailRegex
mobileRegex
passwordRegex
