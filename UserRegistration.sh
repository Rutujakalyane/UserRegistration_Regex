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

firstNameRegex
lastNameRegex
