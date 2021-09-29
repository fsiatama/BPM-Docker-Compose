@ECHO OFF
set HOME=%USERPROFILE%

if not exist "bpm_data\" (
  mkdir "bpm_data\"
  if "!errorlevel!" EQU "0" (
    echo Folder created successfully
  ) else (
    echo Error while creating folder
  )
) else (
  echo Folder already exists
)

if not exist "bpm-react-ui\" (
    git clone https://gitlab.com/bpm-royal/bpm-react-ui.git
    if "!errorlevel!" EQU "0" (
        echo Folder created successfully
    ) else (
        echo Error while creating folder
    )
) else (
    echo bpm-react-ui ya fue clonado
    cd "bpm-react-ui\"
    git pull origin master
    cd ..
)

if not exist "bpm-task-api\" (
    git clone https://gitlab.com/bpm-royal/bpm-task-api.git
    if "!errorlevel!" EQU "0" (
        echo Folder created successfully
    ) else (
        echo Error while creating folder
    )
) else (
    echo bpm-task-api ya fue clonado
    cd "bpm-task-api\"
    git pull origin master
    cd ..
)

ECHO Termino!
PAUSE