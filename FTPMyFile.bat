:: Confirm that a file was passed in and that it exists
if "%1" == "" goto NoArgument
if not exist %1 goto FileNotExist

echo a2819517>>ftp_temp.txt
echo flames02>>ftp_temp.txt
echo cd public_html>>ftp_temp.txt
echo put %1>>ftp_temp.txt
echo quit>>ftp_temp.txt
ftp -s:ftp_temp.txt misterbee180.herobo.com
del ftp_temp.txt
goto:eof

:: Error handling
:NoArgument
Echo "No file Passed In"
:FileNotExist
Echo "File does not exist"