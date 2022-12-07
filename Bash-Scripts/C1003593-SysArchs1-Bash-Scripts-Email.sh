#!/bin/sh
echo "Please run this program as a root user"
apt install ssmtp -y 
cd /home
EFile="email.txt" 
echo "Subject: Test email. Testing email" > $EFile
read -p "Enter email address you wish to send email to: " EMAIL 
sendmail $EMAIL < email.txt #This will send the email to the email that is entered.
#This function wont actually work as there is no email server
#However the demonstration of code shows how it would work.
