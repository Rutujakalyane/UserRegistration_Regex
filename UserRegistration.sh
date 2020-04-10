echo "Welcome to User-Registration"

echo "Enter your first name"
read firstName

firstNameRegex="^[A-Z][a-zA-Z]{2,}$"
      if [[ $firstName =~ $firstNameRegex ]]
      then
              echo valid;
      else
              echo "invalid: Starts with Cap & has minimum 3 characters";
      fi
