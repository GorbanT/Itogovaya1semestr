;
#define   Name       "BALLS"
;  
#define   Version    "1.1.1"
; -
#define   Publisher  "Timur Gorban"
;   
#define   URL        "https://vk.com/hoposhiyparen"
;   
#define   ExeName    "Balls.exe"

;------------------------------------------------------------------------------
;    
;------------------------------------------------------------------------------
[Setup]

;   , 
;  Tools -> Generate GUID
AppId={{F2E91C8B-FAB9-442E-85D8-8501FBF1FD00}

;  ,   
AppName={#Name}
AppVersion={#Version}
AppPublisher={#Publisher}
AppPublisherURL={#URL}
AppSupportURL={#URL}
AppUpdatesURL={#URL}

;   -
DefaultDirName={pf}\{#Name}
;     ""
DefaultGroupName={#Name}

; ,     setup    
OutputDir=C:\Users\Admin\Desktop\1\Itogovaya1semestr\installer
OutputBaseFileName=Balls

;  
SetupIconFile=C:\Users\Admin\Desktop\AFANIM.ico

;  
Compression=lzma
SolidCompression=yes

;------------------------------------------------------------------------------
;       
;------------------------------------------------------------------------------
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; LicenseFile: "License_ENG.txt"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"; LicenseFile: "License_RUS.txt"

;------------------------------------------------------------------------------
;    -  ,     
;------------------------------------------------------------------------------
[Tasks]
;     
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

;------------------------------------------------------------------------------
;   ,      
;------------------------------------------------------------------------------
[Files]

;  
Source: "C:\Users\Admin\Desktop\itogovaya\Release\BALLS.exe"; DestDir: "{app}"; Flags: ignoreversion

;  

; VS Redistributable package
Source: "C:\Users\Admin\Desktop\1\Itogovaya1semestr\installer\VC_redist.x64.exe"; DestDir: "{tmp}"; Flags: deleteafterinstall
;------------------------------------------------------------------------------
;    ,     
;------------------------------------------------------------------------------ 
[Icons]

Name: "{group}\{#Name}"; Filename: "{app}\{#ExeName}"

Name: "{commondesktop}\{#Name}"; Filename: "{app}\{#ExeName}"; Tasks: desktopicon

[Run]
;------------------------------------------------------------------------------
;      VS
;------------------------------------------------------------------------------
Filename: {tmp}\VC_redist.x64.exe; Parameters: "/q:a /c:""install /l /q"""; StatusMsg: VS redistributable package is installed. Please wait...
