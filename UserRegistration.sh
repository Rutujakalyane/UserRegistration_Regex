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

firstNameRegex
lastNameRegex
emailRegex
