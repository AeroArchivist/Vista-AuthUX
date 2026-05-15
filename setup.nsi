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
# Change the external file icon and window header icon
!define MUI_ICON "${__FILEDIR__}\app_icon.ico"

# Define the custom branding graphic artwork files
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
    
    SetOutPath "$INSTDIR"
    
    # Pack your primary screensaver file
    File "${__FILEDIR__}\AuthUX.dll"
SectionEnd

Section "Optional Documentation" SecDocs
    # This component is optional and can be unchecked by the user
    SetOutPath "$INSTDIR"
    
    # Pack a secondary text readme file if you want
    File "${__FILEDIR__}\readme.txt"
SectionEnd

# ----------------------------------------
# Component Selection Descriptions
# ----------------------------------------
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
    !insertmacro MUI_DESCRIPTION_TEXT ${SecCore} "Copies the required system files to get a Vista login screen for AuthUX."
    !insertmacro MUI_DESCRIPTION_TEXT ${SecDocs} "Copies user guides, patch notes, and help documents."
!insertmacro MUI_FUNCTION_DESCRIPTION_END
