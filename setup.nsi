# Define your product information
Name "Vista login background and branding for AuthUX"
OutFile "Vista AuthUX.exe"
InstallDir "C:\Program Files\AuthUX"
RequestExecutionLevel admin

# Include the professional Modern UI 2 system libraries
!include "MUI2.nsh"

# ----------------------------------------
# Visual Interface Customization Settings
# ----------------------------------------
!define MUI_ICON "${__FILEDIR__}\app_icon.ico"
!define MUI_WELCOMEFINISHPAGE_BITMAP "${__FILEDIR__}\welcome_banner.bmp"
!define MUI_HEADERIMAGE
!define MUI_HEADERIMAGE_BITMAP "${__FILEDIR__}\top_header.bmp"

# ----------------------------------------
# Setup Wizard Page Sequences
# ----------------------------------------
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_COMPONENTS
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

# Define the user layout language pack
!insertmacro MUI_LANGUAGE "English"

# ----------------------------------------
# Installer Component Checkbox Sections
# ----------------------------------------

Section "Vista AuthUX (Required)" SecCore
    # This component cannot be unchecked by the user
    SectionIn RO 
    
    # 1. Safely rename the original file to .old if it already exists
    IfFileExists "$INSTDIR\AuthUX.dll" 0 +2
    Rename "$INSTDIR\AuthUX.dll" "$INSTDIR\AuthUX.dll.old"
    
    # 2. Target the standard directory and extract your modified file
    SetOutPath "$INSTDIR"
    File "${__FILEDIR__}\AuthUX.dll"
SectionEnd

Section "Optional Documentation" SecDocs
    # This component is optional and can be unchecked by the user
    
    # 3. Change output target context to the live Installer folder instead of Program Files
    SetOutPath "$EXEDIR"
    
    # Pack your secondary text readme file right next to the installer
    File "${__FILEDIR__}\readme.txt"
SectionEnd

# ----------------------------------------
# Component Selection Descriptions
# ----------------------------------------
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
    !insertmacro MUI_DESCRIPTION_TEXT ${SecCore} "Copies the required system files to get a Vista login screen for AuthUX."
    !insertmacro MUI_DESCRIPTION_TEXT ${SecDocs} "Copies user guides, patch notes, and help documents directly to the installer's location."
!insertmacro MUI_FUNCTION_DESCRIPTION_END
