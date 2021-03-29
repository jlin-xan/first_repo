<#
.NOTES
    Authors: JSalvetti,Jlin
    Version History (YY.MM.DD.#):
    21.03.29.01 - Initial Development
    Chinese (PRC) - zh-CN
    English       - en-US
    Italian       - it-IT

 #>
# "Menu"
write-host "This script may take a bit to run, after finishing please sign out" -ForegroundColor DarkGreen
write-host "1.Switch to Chinese`n2.Switch to Engrish`n3.Switch to Italian`nX.Exit" 

#Prompts user to choose an option
$userInput = Read-host "Choose your option" 

if($userInput -Match "x"){
    return
}

#Array of Languages
$Languages=@("zh-CN","en-US","it-IT")

#Set the language
Set-WinSystemLocale $Languages[$UserInput-1]
Set-WinUserLanguageList $Languages[$UserInput-1]


#prompts user to log off right afterwards
$signOutVariable = Read-host "Would you like to sign out (Y/N)?"
if($signOutVariable -match "Y"){
    logoff
}       
else{
    write-host "have a good day, sign out later!"
} 

