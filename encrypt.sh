#!/bin/bash

echo "Welcome to the file encrypter/decrypter."
echo "Note: This script must be run in the same directory as the file you want to encrypt/decrypt."
echo "Please select an option:"

choice="Encrypt Decrypt"
select option in $choice; do
    if [ $REPLY = 1 ];
then 
    echo "You have selected to encrypt a file."
    echo "Please select the filename:"
    read filename;
    gpg -c $filename    
    rm -r $filename # removes the original unencrypted file
    echo "$filename has been encrypted."
elif
    echo "You have selected to decrypt a file."
    echo "Please enter a filename:"
    read filename2;
    gpg -d $filename2
    rm -r $filename2 # removes the original encrypted file
    echo "$filename2 has been decrypted."
else
    echo "That is not a valid option. Please select an option."
fi

done
