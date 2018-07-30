; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "obs-websocket"
#define MyAppVersion "4.4.0"
#define MyAppPublisher "Stephane Lepin"
#define MyAppURL "http://github.com/Palakis/obs-websocket"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{117EE44F-48E1-49E5-A381-CC8D9195CF35}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={code:GetDirName}
DefaultGroupName={#MyAppName}
OutputBaseFilename=obs-websocket-Windows-Installer
Compression=lzma
SolidCompression=yes
LicenseFile=..\LICENSE

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"

[Files]
Source: "..\release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[Code]
// credit where it's due :
// following function come from https://github.com/Xaymar/obs-studio_amf-encoder-plugin/blob/master/%23Resources/Installer.in.iss#L45
function GetDirName(Value: string): string;
var
  InstallPath: string;
begin
  // initialize default path, which will be returned when the following registry
  // key queries fail due to missing keys or for some different reason
  Result := '{pf}\obs-studio';
  // query the first registry value; if this succeeds, return the obtained value
  if RegQueryStringValue(HKLM32, 'SOFTWARE\OBS Studio', '', InstallPath) then
    Result := InstallPath
end;

