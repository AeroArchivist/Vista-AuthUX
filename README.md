# Windows Vista theme for AuthUX
AuthUX is a project based on the ConsoleLogon decompilation which aims to replicate the Windows 7 logon screen.

However I made a Vista editon for AuthUX, I took AuthUX.dll and replaced it's login pictures and branding with Windows Vista ones, it's pretty simple and I'll be replacing more assets in the future.

> [!IMPORTANT]
> You MUST install AuthUX first from https://github.com/world-windows-federation/AuthUX/releases/tag/v0.0.2a-beta as this is a modification to the core program.

## Manual Installation
> [!WARNING]
> Please go through this route **ONLY** if the standard installer does not work, as this way requires precision which could damage AuthUX if not done correctly.

Download the Source code by clicking "Code" then "Download Zip", after downloading extract the zip and copy `AuthUX.dll`. Then go to `C:\Program Files\AuthUX` and rename the original AuthUX.dll to AuthUX.dll.old then paste your copied AuthUX.dll and done! (Restart recommended) now enjoy your new Vista login screen!

## Manual Uninstallation
Delete the modified AuthUX.dll you put and rename the old original AuthUX.dll.old to AuthUX.dll in C:\Program Files\AuthUX and your login screen is reverted.


> [!NOTE]
> Please don't expect this project to be high quality like other ones as this is my first propper project on Github, it may get better over time
