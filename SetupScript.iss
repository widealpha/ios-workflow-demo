[Setup]
AppName=My Application
AppVersion=1.0
DefaultDirName={pf}\MyApplication
DefaultGroupName=My Application
UninstallDisplayIcon={app}\MyApp.exe
OutputDir=userdocs:Inno Setup Examples Output

[Files]
Source: "build\windows\x64\runner\Release\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs

[Icons]
Name: "{group}\My Application"; Filename: "{app}\MyApp.exe"
Name: "{group}\Uninstall My Application"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\MyApp.exe"; Description: "Launch My Application"; Flags: postinstall
