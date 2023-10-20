# exe-process-affinity
On "$processName" and "$processPath" you can set the name of the executable file to be affected by set affinity script, there is also a "$initializationOptions" function if you want to put something on startup, the "$affinityMask" function is where you can set which cores will be enabled or disabled "in hexadecimal"
For this to work properly you need to set: Set-ExecutionPolicy Unrestricted, on powershell, also place the ".ps1" file on the executable path and make a shortcut to desktop after
