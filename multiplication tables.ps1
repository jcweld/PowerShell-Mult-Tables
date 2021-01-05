<#
This is a basic math practice program for Lucy and Amelia. Lucy will get multiplication, and Amelia will get addition and subtraction.

#>

cls
# Header comments to introduce user to the game:

[int]$nameinput = Read-Host "Who are you? Please enter 1 for Lucy and 2 for Amelia. Don't forget to his enter afterwards!"
switch ($nameinput) {
	1 {$name = "Luciana"
	Write-Host "Okay. Welcome back, Luciana. You look beautiful today. Get ready for some multiplication!"}
	2 {$name = "Amelia"
	Write-Host "Hello Amelia, welcome back!"}
	Default {$name = "Amelia"
	Write-Host "Sorry, you did not enter a valid number. Assuming you are Amelia." }
	}

Write-Host "Welcome to your practice math program."
Write-Host "Enter your answer to each problem and hit Enter."

$totalwrong=0
#this is where we set total number of questions:
for ($i=1; $i -le 3;$i++){

#the variables presented in the questions:


if ($name -eq "Luciana"){
$firstnumber = Get-Random -Minimum 0 -Maximum 12
$secondnumber = Get-Random -Minimum 0 -Maximum 12
#Loop until answer is correct
Do {

Write-Host $firstnumber " x "$secondnumber " = ?"
[int]$useranswer = Read-Host
$correctanswer = $firstnumber * $secondnumber
#bug: entering a string for answer causes summary info to fail later
if ($useranswer -eq $correctanswer) {
	Write-Host ("Correct!")
	Write-Host
	$answerstatus=$true}
	Else {Write-Host ("Wrong! Try again:")
	Write-Host
	$answerstatus=$false
	$totalwrong=$totalwrong +1}
	}
	
While ($answerstatus -eq $false)

Write-Host 'Your session is over. You answered incorrectly '$totalwrong' times and completed this many qustions: '$i''
}


if ($name -eq "Amelia"){
#the variables presented as a question:
#$i=1
$firstnumber = Get-Random -Minimum 0 -Maximum 50
$secondnumber = Get-Random -Minimum 0 -Maximum 50
#Loop until answer is correct
Do {

Write-Host $firstnumber " + "$secondnumber " = ?"
[int]$useranswer = Read-Host
$correctanswer = $firstnumber + $secondnumber
#bug: entering a string for answer causes summary info to fail later
if ($useranswer -eq $correctanswer) {
	Write-Host ("Correct!")
	Write-Host
	$answerstatus=$true}
	Else {Write-Host "Wrong! Try again:"
	Write-Host
	$answerstatus=$false
	$totalwrong=$totalwrong +1}
	}
While ($answerstatus -eq $false)
Write-Host 'Your session is over. You answered incorrectly '$totalwrong' times and completed this many qustions: '$i''
}}



