; SB COMPLETE for Windows: one setup that runs each product's own installer silently, so every plug-in in the
; Complete licence installs in one go and each keeps its own uninstaller in Apps & features.
; Built by .github/workflows/complete.yml:  ISCC /DStage=<folder with the product setups> /DAppVersion=<x.y.z> SB-COMPLETE.iss
#ifndef Stage
  #error Stage must be defined
#endif
#ifndef AppVersion
  #define AppVersion "1.0.1"
#endif

[Setup]
AppId={{6B0E3C5A-2F4D-4E8B-9A71-5C3D2E1F0B9A}
AppName=SB COMPLETE
AppVersion={#AppVersion}
AppVerName=SB COMPLETE {#AppVersion}
AppPublisher=SoundBunker Algarve
AppPublisherURL=https://www.soundbunker.pt
CreateAppDir=no
DisableProgramGroupPage=yes
Uninstallable=no
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
MinVersion=10.0
PrivilegesRequired=admin
OutputBaseFilename=SB-COMPLETE-{#AppVersion}-Windows-x64-Setup
Compression=lzma2/ultra64
SolidCompression=yes
WizardStyle=modern

[Messages]
WelcomeLabel2=This installs every SoundBunker plug-in in your SB COMPLETE licence: SB ARMOURY (11 effects), SB NUCLEAR, SB NAPALM, SB SHRAPNEL, SB FALLOUT and SB SENTINEL.%n%nOpen any of them and paste your licence key to activate.

[Files]
Source: "{#Stage}\*.exe"; DestDir: "{tmp}"; Flags: deleteafterinstall

[Run]
Filename: "{tmp}\SoundBunker-Armoury-{#AppVersion}-Windows-x64-Setup.exe"; Parameters: "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"; StatusMsg: "Installing SB ARMOURY..."; Flags: waituntilterminated
Filename: "{tmp}\NUCLEAR-{#AppVersion}-Windows-x64-Setup.exe"; Parameters: "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"; StatusMsg: "Installing SB NUCLEAR..."; Flags: waituntilterminated
Filename: "{tmp}\NAPALM-{#AppVersion}-Windows-x64-Setup.exe"; Parameters: "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"; StatusMsg: "Installing SB NAPALM..."; Flags: waituntilterminated
Filename: "{tmp}\SHRAPNEL-{#AppVersion}-Windows-x64-Setup.exe"; Parameters: "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"; StatusMsg: "Installing SB SHRAPNEL..."; Flags: waituntilterminated
Filename: "{tmp}\FALLOUT-{#AppVersion}-Windows-x64-Setup.exe"; Parameters: "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"; StatusMsg: "Installing SB FALLOUT..."; Flags: waituntilterminated
Filename: "{tmp}\SENTINEL-{#AppVersion}-Windows-Setup.exe"; Parameters: "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"; StatusMsg: "Installing SB SENTINEL..."; Flags: waituntilterminated
