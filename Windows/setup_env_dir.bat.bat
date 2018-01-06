 @ECHO OFF
 :: Create working dirs
 if not exist "%USERPROFILE%\Source\" mkdir %USERPROFILE%\Source\
 if not exist "%USERPROFILE%\Tools\" mkdir %USERPROFILE%\Tools\
 
 :: Update user variables
 setx SOURCE "%USERPROFILE%\Source"
 setx TOOLS "%USERPROFILE%\Tools"
