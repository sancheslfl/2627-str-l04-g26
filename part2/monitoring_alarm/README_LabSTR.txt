
Some information about STR development environment in the Lab
=============================================================


User account in Lab PCs (Windows):
----------------------------------

user: STR
password: str



Mbed CLI 1 related installations done in Lab:
---------------------------------------------

Windows installer (Mbed_installer_v0.4.10.exe)   --- installation done as administrator

Miniconda3-latest-Windows-x86_64.exe             ... conda virtual environment, installation done as normal user (str)


created directory MbedProjects (C:\Users\str\MbedProjects)  --- to host mbed projects

C:\Users\str\MbebProjects\txCmdFRTOS   --- example mbed application that uses FreeRTOS and the command interpreter



Execution environment
---------------------

Open "Anaconda Power Shell" (terminal with command line interface):

  conda create -n mbed              --- first time create a virtual environment called mbed (need to accept the terms (a))

  conda activate mbed               --- to select the mbed virtual environment


--- first time:

  mbed config -G GCC_ARM_PATH 'C:\Program Files (x86)\GNU Tools Arm Embedded\6 2017-q2-update\bin'   --- define compiler location

  pip install jsonschema
  pyton -m pip install --upgrade pip    --- if error installing jsonschema, upgrade pip and repeat
  pip install jsonschema

  pip install pyelftools==0.29      --- if error with elftools, install version 0.29 of pyelftools


--- normal use:

  cd txCmdFRTOS                     --- move to project directory

  mbed target LPC1768               --- if was not done before define target (it will be saved)

  mbed toolchain GCC_ARM            --- if was not done before define toolchain (it will be saved)

  mbed config --list                --- list current configuration: compiler path; target; toolchain

  mbed deploy                       --- need to run "mbed deploy" if new files are added to project

  mbed compile                              --- to compile the project and generate application image

  mbed compile --profile release -c -v      --- other options when compiling (release version; -c clear before compiling; -v verbose)

--- application code image

  generated image will be available in the BUILD directory: e.g. "./BUILD/LPC1768/GCC_ARM/txCmdFRTOS.bin"

  copy that image to the mbed board (it is seen as a pen (MBED) in the host computer)

  reset mbed board and it will restart with the new application (most recent binary file)


--- use of mbed serial port:

  in order to use the mbed serial port in Windows, in the first time the driver must be installed (mbedWinSerial_16466.exe)
  (installation done as administrator and with the mbed board connected to the computer)

  use the terminal emulator "putty" to access the serial port
  (in Windows, you may need to use the driver manager to check what was the COM port that was assigned to the board)

  configuration of serial port: baudrate 115200; enforce CR in every LF; force local echo
