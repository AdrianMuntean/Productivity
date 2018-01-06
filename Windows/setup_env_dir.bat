 @ECHO OFF
 :: Create working dirs
 if not exist "%USERPROFILE%\Source\" mkdir %USERPROFILE%\Source\
 if not exist "%USERPROFILE%\Tools\" mkdir %USERPROFILE%\Tools\
 if not exist "%USERPROFILE%\Scripts\" mkdir %USERPROFILE%\Scripts\
 
 :: Update user variables
 setx SOURCE "%USERPROFILE%\Source"
 setx TOOLS "%USERPROFILE%\Tools"
 setx SCRIPTS "%USERPROFILE%\Scripts"
