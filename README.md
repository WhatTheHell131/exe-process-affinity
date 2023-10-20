# exe-process-affinity
On "$processName" and "$processPath" you can set the name of the executable file to be affected by set affinity script, there is also a "$initializationOptions" function if you want to put something on startup, the "$affinityMask" function is where you can set which cores will be enabled or disabled in "hexadecimal"

For this to work properly you need to set: Set-ExecutionPolicy Unrestricted on powershell, also place the ".ps1" file on the executable path and make a shortcut to desktop after

If you dont want to Right click and "Execute with powershell" to run the script, then set: C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -File on your desktop shortcut

Guide to which value to use on $affinityMask: https://www.windowsdigitals.com/how-to-set-process-cpu-affinity-priority-permanently-in-windows-10/
