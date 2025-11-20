reader@lib15-lin-miniPC-2:~/develop/kiro$ # Unset all proxy variables
unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY no_proxy NO_PROXY
# WIFI_IP=172.22.138.45 
WIFI_IP=$(ip route show dev wlp3s0 | grep default | awk '{print $3}')

# Проверка: если IP не найден (например, нет Wi-Fi), сообщить об ошибке
if [ -z "$WIFI_IP" ]; then
    echo "Ошибка: Не удалось определить IP шлюза на интерфейсе wlp3s0"
    exit 1
fi

echo "Proxy IP detected: $WIFI_IP"

# 3. Устанавливаем прокси
export http_proxy=http://$WIFI_IP:7890
export https_proxy=http://$WIFI_IP:7890
export HTTP_PROXY=http://$WIFI_IP:7890
export HTTPS_PROXY=http://$WIFI_IP:7890
# Run your command
# NIXPKGS_ALLOW_UNFREE=1 ~/nixstatic develop --impure
NIXPKGS_ALLOW_UNFREE=1 ~/nixstatic run .#chromium --impure -- --disable-gpu --no-sandbox
Proxy IP detected: 172.22.138.45
warning: Git tree '/home/reader/develop/kiro' is dirty
libva error: dlopen of /usr/lib/x86_64-linux-gnu/dri/iHD_drv_video.so failed: libigdgmm.so.12: cannot open shared object file: No such file or directory
libva error: dlopen of /usr/lib/x86_64-linux-gnu/dri/i965_drv_video.so failed: libdrm_intel.so.1: cannot open shared object file: No such file or directory
[68555:68555:1120/160745.123015:ERROR:media/gpu/vaapi/vaapi_wrapper.cc:1631] vaInitialize failed: unknown libva error
MESA-LOADER: failed to open dri: /run/opengl-driver/lib/gbm/dri_gbm.so: cannot open shared object file: No such file or directory (search paths /run/opengl-driver/lib/gbm, suffix _gbm)
[68360:68360:1120/160745.657145:ERROR:components/dbus/xdg/request.cc:164] Request ended (non-user cancelled).
[68360:68544:1120/160750.996382:ERROR:google_apis/gcm/engine/registration_request.cc:292] Registration response error message: DEPRECATED_ENDPOINT
[68360:68544:1120/160755.383136:ERROR:google_apis/gcm/engine/connection_factory_impl.cc:434] Failed to connect to MCS endpoint with error -120
[68360:68544:1120/160815.229843:ERROR:google_apis/gcm/engine/registration_request.cc:292] Registration response error message: DEPRECATED_ENDPOINT
[chromium xdg-open] Opening Kiro link...
libva error: dlopen of /usr/lib/x86_64-linux-gnu/dri/iHD_drv_video.so failed: libigdgmm.so.12: cannot open shared object file: No such file or directory
libva error: dlopen of /usr/lib/x86_64-linux-gnu/dri/i965_drv_video.so failed: libdrm_intel.so.1: cannot open shared object file
: No such file or directory
MESA-LOADER: failed to open dri: /run/opengl-driver/lib/gbm/dri_gbm.so: cannot open shared object file: No such file or directory (search paths /run/opengl-driver/lib/gbm, suffix _gbm)
[68993:1120/160851.114310:WARNING:sandbox/policy/linux/sandbox_linux.cc:415] InitializeSandbox() called with multiple threads in process gpu-process.
[main 2025-11-20T11:08:51.706Z] [File Watcher (node.js)] Request to start watching: /home/reader/.config/Kiro/User (excludes: <none>, includes: <all>, filter: <none>, correlationId: <none>),/home/reader/.config/Kiro/User/settings.json (excludes: <none>, includes: <all>, filter: <none>, correlationId: <none>)
[main 2025-11-20T11:08:51.710Z] [File Watcher (node.js)] ignoring a path for watching who's stat info failed to resolve: /home/reader/.config/Kiro/User/settings.json (error: Error: ENOENT: no such file or directory, stat '/home/reader/.config/Kiro/User/settings.json')
[main 2025-11-20T11:08:51.711Z] [File Watcher (node.js)] starting fs.watchFile() on /home/reader/.config/Kiro/User/settings.json (correlationId: undefined)
[main 2025-11-20T11:08:51.720Z] Starting VS Code
[main 2025-11-20T11:08:51.720Z] from: /nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app
[main 2025-11-20T11:08:51.720Z] args: {
  _: [
    '/home/reader/develop/kiro/kiro:/kiro.kiroAgent/authenticate-success?code=182e7613-1ba3-440c-87b4-6a5b6fdeed79&state=e53eec57-6a6f-4442-8b62-151dd3cc6bde'
  ],
  diff: false,
  merge: false,
  add: false,
  remove: false,
  goto: false,
  'new-window': false,
  'reuse-window': false,
  wait: false,
  help: false,
  'list-extensions': false,
  'show-versions': false,
  'pre-release': false,
  'update-extensions': false,
  version: false,
  verbose: true,
  status: false,
  'prof-startup': false,
  'no-cached-data': false,
  'prof-v8-extensions': false,
  'disable-extensions': false,
  'disable-lcd-text': false,
  'disable-gpu': true,
  'disable-chromium-sandbox': false,
  sandbox: false,
  telemetry: false,
  debugRenderer: false,
  'enable-smoke-test-driver': false,
  logExtensionHostCommunication: false,
  'skip-release-notes': false,
  'skip-welcome': false,
  'skip-onboarding': false,
  'disable-telemetry': false,
  'disable-updates': false,
  transient: false,
  'use-inmemory-secretstorage': false,
  'disable-workspace-trust': false,
  'disable-crash-reporter': false,
  'skip-add-to-recently-opened': false,
  'open-url': false,
  'file-write': false,
  'file-chmod': false,
  force: false,
  'do-not-sync': false,
  'do-not-include-pack-dependencies': false,
  trace: false,
  'trace-memory-infra': false,
  'preserve-env': false,
  'force-user-env': false,
  'force-disable-user-env': false,
  'open-devtools': false,
  'disable-gpu-sandbox': false,
  '__enable-file-policy': false,
  'enable-coi': false,
  'enable-rdp-display-tracking': false,
  'disable-layout-restore': false,
  'disable-experiments': false,
  'no-proxy-server': false,
  'no-sandbox': false,
  nolazy: false,
  'force-renderer-accessibility': false,
  'ignore-certificate-errors': false,
  'allow-insecure-localhost': false,
  'disable-dev-shm-usage': false,
  'profile-temp': false,
  logsPath: '/home/reader/.config/Kiro/logs/20251120T160851'
}
[main 2025-11-20T11:08:51.723Z] Resolving machine identifier...
[main 2025-11-20T11:08:51.723Z] Resolved machine identifier: b409c1284581d659039ccf5d199ad17aa6c3e2d77843f9462452cad0c4426683
[main 2025-11-20T11:08:51.723Z] Main->SharedProcess#connect
[main 2025-11-20T11:08:51.733Z] StorageMainService: creating application storage
[main 2025-11-20T11:08:51.743Z] ElectronURLListener: waiting for window to be ready to handle URLs...
[main 2025-11-20T11:08:51.743Z] lifecycle (main): phase changed (value: 2)
[main 2025-11-20T11:08:51.744Z] windowsManager#open
[main 2025-11-20T11:08:51.748Z] windowsManager#open pathsToOpen [
  {
    fileUri: zr {
      scheme: 'file',
      authority: '',
      path: '/home/reader/develop/kiro/kiro:/kiro.kiroAgent/authenticate-success?code=182e7613-1ba3-440c-87b4-6a5b6fdeed79&state=e53eec57-6a6f-4442-8b62-151dd3cc6bde',
      query: '',
      fragment: '',
      _formatted: null,
      _fsPath: null
    },
    type: 1,
    exists: false
  }
]
[main 2025-11-20T11:08:51.749Z] windowsManager#doOpenEmpty {
  restore: true,
  remoteAuthority: undefined,
  filesToOpen: {
    filesToOpenOrCreate: [ [Object] ],
    filesToDiff: [],
    filesToMerge: [],
    remoteAuthority: undefined
  },
  forceNewWindow: true
}
[main 2025-11-20T11:08:51.752Z] IPC Object URL: Registered new channel vscode:d5b66117-eb8d-45bd-b603-1638c2f18c60.
[main 2025-11-20T11:08:51.753Z] window#validateWindowState: validating window state on 1 display(s) { mode: 1, x: 379, y: 169, width: 1200, height: 800 }
[main 2025-11-20T11:08:51.753Z] window#validateWindowState: single monitor working area { x: 0, y: 25, width: 1920, height: 1055 }
[main 2025-11-20T11:08:51.753Z] window#ctor: using window state { mode: 1, x: 379, y: 169, width: 1200, height: 800 }
[main 2025-11-20T11:08:51.839Z] Setting proxy to 'http://172.22.138.45:7890', bypassing '<local>'
[main 2025-11-20T11:08:51.846Z] window#load: attempt to load window (id: 1)
[main 2025-11-20T11:08:51.856Z] windowsManager#open used window count 1 (workspacesToOpen: 0, foldersToOpen: 0, emptyToRestore: 1, maybeOpenEmptyWindow: false)
[main 2025-11-20T11:08:51.858Z] lifecycle (main): phase changed (value: 3)
[main 2025-11-20T11:08:51.858Z] resolveShellEnv(): skipped (VSCODE_CLI is set)
[main 2025-11-20T11:08:51.861Z] update#setState idle
[main 2025-11-20T11:08:51.866Z] [File Watcher (node.js)] Started watching: '/home/reader/.config/Kiro/User'
[main 2025-11-20T11:08:52.099Z] resolveShellEnv(): skipped (VSCODE_CLI is set)
[68939:1120/160852.446688:INFO:CONSOLE:34] "%cTRACE color: #888 workbench#open(): with configuration {"_":["/home/reader/develop/kiro/kiro:/kiro.kiroAgent/authenticate-success?code=182e7613-1ba3-440c-87b4-6a5b6fdeed79&state=e53eec57-6a6f-4442-8b62-151dd3cc6bde"],"diff":false,"merge":false,"add":false,"remove":false,"goto":false,"new-window":false,"reuse-window":false,"wait":false,"help":false,"list-extensions":false,"show-versions":false,"pre-release":false,"update-extensions":false,"version":false,"verbose":true,"status":false,"prof-startup":false,"no-cached-data":false,"prof-v8-extensions":false,"disable-extensions":false,"disable-lcd-text":false,"disable-gpu":true,"disable-chromium-sandbox":false,"sandbox":false,"telemetry":false,"debugRenderer":false,"enable-smoke-test-driver":false,"logExtensionHostCommunication":false,"skip-release-notes":false,"skip-welcome":false,"skip-onboarding":false,"disable-telemetry":false,"disable-updates":false,"transient":false,"use-inmemory-secretstorage":false,"disable-workspace-trust":false,"disable-crash-reporter":false,"skip-add-to-recently-opened":false,"open-url":false,"file-write":false,"file-chmod":false,"force":false,"do-not-sync":false,"do-not-include-pack-dependencies":false,"trace":false,"trace-memory-infra":false,"preserve-env":false,"force-user-env":false,"force-disable-user-env":false,"open-devtools":false,"disable-gpu-sandbox":false,"__enable-file-policy":false,"enable-coi":false,"enable-rdp-display-tracking":false,"disable-layout-restore":false,"disable-experiments":false,"no-proxy-server":false,"no-sandbox":false,"nolazy":false,"force-renderer-accessibility":false,"ignore-certificate-errors":false,"allow-insecure-localhost":false,"disable-dev-shm-usage":false,"profile-temp":false,"logsPath":"/home/reader/.config/Kiro/logs/20251120T160851","machineId":"b409c1284581d659039ccf5d199ad17aa6c3e2d77843f9462452cad0c4426683","sqmId":"","devDeviceId":"2de33421-7443-4ee8-bbaf-dc3d1913a2bd","windowId":1,"mainPid":68939,"appRoot":"/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app","execPath":"/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/kiro","codeCachePath":"/home/reader/.config/Kiro/CachedData/f9ca0e5bdbe4a859cae02a509d4e3e9a7a719cdb","backupPath":"/home/reader/.config/Kiro/Backups/1763630565639","profiles":{"home":{"scheme":"vscode-userdata","authority":"","path":"/home/reader/.config/Kiro/User/profiles","query":"","fragment":"","_formatted":null,"_fsPath":null},"all":[{"id":"__default__profile__","name":"Default","location":{"scheme":"vscode-userdata","authority":"","path":"/home/reader/.config/Kiro/User","query":"","fragment":"","_formatted":null,"_fsPath":null},"isDefault":true,"globalStorageHome":{"scheme":"vscode-userdata","authority":"","path":"/home/reader/.config/Kiro/User/globalStorage","query":"","fragment":"","_formatted":null,"_fsPath":null},"settingsResource":{"scheme":"vscode-userdata","authority":"","path":"/home/reader/.config/Kiro/User/settings.json","query":"","fragment":"","_formatted":null,"_fsPath":null},"keybindingsResource":{"scheme":"vscode-userdata","authority":"","path":"/home/reader/.config/Kiro/User/keybindings.json","query":"","fragment":"","_formatted":null,"_fsPath":null},"tasksResource":{"scheme":"vscode-userdata","authority":"","path":"/home/reader/.config/Kiro/User/tasks.json","query":"","fragment":"","_formatted":null,"_fsPath":null},"snippetsHome":{"scheme":"vscode-userdata","authority":"","path":"/home/reader/.config/Kiro/User/snippets","query":"","fragment":"","_formatted":null,"_fsPath":null},"promptsHome":{"scheme":"vscode-userdata","authority":"","path":"/home/reader/.config/Kiro/User/prompts","query":"","fragment":"","_formatted":null,"_fsPath":null},"extensionsResource":{"scheme":"vscode-userdata","authority":"","path":"/home/reader/.kiro/extensions/extensions.json","query":"","fragment":"","_formatted":null,"_fsPath":null},"mcpResource":{"scheme":"vscode-userdata","authority":"","path":"/home/reader/.config/Kiro/User/mcp.json","query":"","fragment":"","_formatted":null,"_fsPath":null},"cacheHome":{"scheme":"file","authority":"","path":"/home/reader/.config/Kiro/CachedProfilesData/__default__profile__","query":"","fragment":"","_formatted":null,"_fsPath":null}}],"profile":"[Circular]"},"homeDir":"/home/reader","tmpDir":"/tmp","userDataDir":"/home/reader/.config/Kiro","userEnv":{"VSCODE_IPC_HOOK":"/run/user/1001/vscode-14351eb5-0.5.-main.sock","VSCODE_NLS_CONFIG":"{\"userLocale\":\"ru\",\"osLocale\":\"ru\",\"resolvedLanguage\":\"en\",\"defaultMessagesFile\":\"/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/nls.messages.json\",\"locale\":\"ru\",\"availableLanguages\":{}}"},"filesToOpenOrCreate":[{"fileUri":{"$mid":1,"path":"/home/reader/develop/kiro/kiro:/kiro.kiroAgent/authenticate-success?code=182e7613-1ba3-440c-87b4-6a5b6fdeed79&state=e53eec57-6a6f-4442-8b62-151dd3cc6bde","scheme":"file"},"type":1,"exists":false}],"filesToDiff":[],"filesToMerge":[],"logLevel":1,"loggers":[{"resource":{"scheme":"file","authority":"","path":"/home/reader/.config/Kiro/logs/20251120T160851/main.log","query":"","fragment":"","_formatted":"file:///home/reader/.config/Kiro/logs/20251120T160851/main.log","_fsPath":"/home/reader/.config/Kiro/logs/20251120T160851/main.log"},"id":"main","name":"Main"}],"product":{"vsCodeVersion":"1.103.2","nameShort":"Kiro","nameLong":"Kiro","applicationName":"kiro","dataFolderName":".kiro","win32MutexName":"kiro","licenseName":"MIT","licenseUrl":"https://github.com/kiro-team/kiro-desktop/blob/main/LICENSE.txt","serverLicenseUrl":"https://github.com/kiro-team/kiro-desktop/blob/main/LICENSE.txt","serverGreeting":[],"serverLicense":[],"serverLicensePrompt":"","serverApplicationName":"kiro-server","serverDataFolderName":".kiro-server","tunnelApplicationName":"kiro-tunnel","win32DirName":"Kiro","win32NameVersion":"Kiro","win32RegValueName":"Kiro","win32x64AppId":"{{ECDD7648-5B69-4BDC-9D21-C3452CE76CD2}","win32arm64AppId":"{{CF58DB1E-C697-42DB-9C64-722B37182E61}","win32x64UserAppId":"{{A2CA08B5-C756-463E-B13D-F051F4F11F0B}","win32arm64UserAppId":"{{C178CB1C-7689-4F22-B8CF-0952EC832496}","win32AppUserModelId":"Kiro","win32ShellNameShort":"Kiro","win32TunnelServiceMutex":"kiro-tunnelservice","win32TunnelMutex":"kiro-tunnel","darwinBundleIdentifier":"dev.kiro.desktop","darwinProfileUUID":"47827DD9-4734-49A0-AF80-7E19B11495CD","darwinProfilePayloadUUID":"CF808BE7-53F3-46C6-A7E2-7EDB98A5E95D","linuxIconName":"code-oss","licenseFileName":"LICENSE.txt","reportIssueUrl":"https://github.com/kirodotdev/Kiro/issues/new","nodejsRepository":"https://nodejs.org","urlProtocol":"kiro","updateUrl":"https://prod.download.desktop.kiro.dev","downloadUrl":"https://kiro.dev","commit":"f9ca0e5bdbe4a859cae02a509d4e3e9a7a719cdb","quality":"stable","enableTelemetry":true,"webviewContentExternalBaseUrlTemplate":"https://{{uuid}}.vscode-cdn.net/insider/ef65ac1ba57f57f2a3961bfe94aa20481caca4c6/out/vs/workbench/contrib/webview/browser/pre/","trustedExtensionProtocolHandlers":["kiro.kiroAgent"],"trustedExtensionAuthAccess":["kiro.kiroagent"],"builtInExtensions":[{"name":"kiro.kiro-agent","version":"0.1.1","s3":{"region":"us-west-2","bucket":"{extention-artifact-bucket}","keyTemplate":"kiro-extension/stable/{platform}/{arch}/kiro-extension-{version}-{platform}-{arch}.vsix"}},{"name":"ms-vscode.js-debug-companion","version":"1.1.3","sha256":"7380a890787452f14b2db7835dfa94de538caf358ebc263f9d46dd68ac52de93","repo":"https://github.com/microsoft/vscode-js-debug-companion","forceGithub":true,"metadata":{"id":"99cb0b7f-7354-4278-b8da-6cc79972169d","publisherId":{"publisherId":"5f5636e7-69ed-4afe-b5d6-8d231fb3d3ee","publisherName":"ms-vscode","displayName":"Microsoft","flags":"verified"},"publisherDisplayName":"Microsoft"}},{"name":"markdown-mermaid-aws","version":"1.0.0","sha256":"","repo":"https://github.com/Gupta-Raghav/vscode-markdown-mermaid","forceGithub":true,"metadata":{"id":"f1e2f4d4-5a9f-4d05-b0d2-edf8c51e1e89","publisherId":{"publisherId":"kiro","publisherName":"Kiro","displayName":"Kiro"},"publisherDisplayName":"Kiro"}},{"name":"ms-vscode.js-debug","version":"1.102.0","sha256":"0e8ed27ba2d707bcfb008e89e490c2d287d9537d84893b0792a4ee418274fa0b","repo":"https://github.com/microsoft/vscode-js-debug","forceGithub":true,"metadata":{"id":"25629058-ddac-4e17-abba-74678e126c5d","publisherId":{"publisherId":"5f5636e7-69ed-4afe-b5d6-8d231fb3d3ee","publisherName":"ms-vscode","displayName":"Microsoft","flags":"verified"},"publisherDisplayName":"Microsoft"}},{"name":"ms-vscode.vscode-js-profile-table","version":"1.0.10","sha256":"7361748ddf9fd09d8a2ed1f2a2d7376a2cf9aae708692820b799708385c38e08","repo":"https://github.com/microsoft/vscode-js-profile-visualizer","forceGithub":true,"metadata":{"id":"7e52b41b-71ad-457b-ab7e-0620f1fc4feb","publisherId":{"publisherId":"5f5636e7-69ed-4afe-b5d6-8d231fb3d3ee","publisherName":"ms-vscode","displayName":"Microsoft","flags":"verified"},"publisherDisplayName":"Microsoft"}}],"unsupportedExtensionIds":["amazonwebservices.amazon-q-vscode"],"extensionsGallery":{"serviceUrl":"https://open-vsx.org/vscode/gallery","itemUrl":"https://open-vsx.org/vscode/item","resourceUrlTemplate":"https://open-vsx.org/vscode/unpkg/{publisher}/{name}/{version}/{path}","controlUrl":"","recommendationsUrl":"","nlsBaseUrl":"","publisherUrl":""},"remote":{"SSH":{"serverDownloadUrlTemplate":"https://prod.download.desktop.kiro.dev/releases/remotes/${commit}/kiro-reh-${os}-${arch}.tar.gz"}},"serverDownloadUrlTemplate":"https://prod.download.desktop.kiro.dev/releases/remotes/${commit}/kiro-reh-${os}-${arch}.tar.gz","linkProtectionTrustedDomains":["https://open-vsx.org","https://oidc.*.amazonaws.com","https://device.sso.*.amazonaws.com","https://*.aws.dev","https://*.awsapps.com","https://*.kiro.dev","https://billing.stripe.com","https://checkout.stripe.com","https://support.aws.amazon.com"],"alwaysEnabledExtensions":["kiro.kiroagent"],"extensionEnabledApiProposals":{"ms-vscode.vscode-selfhost-test-provider":["testObserver","testRelatedCode"],"ms-vscode.js-debug":["portsAttributes","findTextInFiles","workspaceTrust","tunnels"],"ms-python.python":["codeActionAI","contribEditorContentMenu","quickPickSortByLabel","portsAttributes","testObserver","quickPickItemTooltip","terminalDataWriteEvent","terminalExecuteCommandEvent","notebookReplDocument","notebookVariableProvider","terminalShellEnv"],"GitHub.vscode-pull-request-github":["activeComment","chatParticipantAdditions","chatParticipantPrivate","chatSessionsProvider","codiconDecoration","codeActionRanges","commentingRangeHint","commentReactor","commentReveal","commentThreadApplicability","contribAccessibilityHelpContent","contribCommentEditorActionsMenu","contribCommentPeekContext","contribCommentThreadAdditionalMenu","contribCommentsViewThreadMenus","contribEditorContentMenu","contribMultiDiffEditorMenus","contribShareMenu","diffCommand","languageModelDataPart","languageModelToolResultAudience","quickDiffProvider","remoteCodingAgents","shareProvider","tabInputTextMerge","tokenInformation","treeViewMarkdownMessage"],"ms-python.debugpy":["contribViewsWelcome","debugVisualization","portsAttributes"],"ms-toolsai.jupyter-renderers":["contribNotebookStaticPreloads"],"ms-toolsai.jupyter":["notebookDeprecated","notebookMessaging","notebookMime","portsAttributes","quickPickSortByLabel","notebookKernelSource","interactiveWindow","notebookControllerAffinityHidden","contribNotebookStaticPreloads","quickPickItemTooltip","notebookExecution","notebookCellExecution","notebookVariableProvider","notebookReplDocument"],"dbaeumer.vscode-eslint":[],"ms-azuretools.vscode-azureappservice":["terminalDataWriteEvent"],"vscjava.vscode-java-pack":[],"jeanp413.open-remote-ssh":["resolvers","tunnels","terminalDataWriteEvent","contribRemoteHelp","contribViewsRemote"],"asbx.remote-ssh":["resolvers","tunnels","terminalDataWriteEvent","contribRemoteHelp","contribViewsRemote"]},"date":"2025-11-03T22:10:41.239Z","checksums":{"vs/base/parts/sandbox/electron-browser/preload.js":"XignvDslRpeH9ax5Qa6jn7tbIOv30GQIEfU/cT8um10","vs/workbench/workbench.desktop.main.js":"XUOoMSP9EtfawxwR9v9TPoDe1WrqDjZA8SN50Y/MrcA","vs/workbench/workbench.desktop.main.css":"+6HrKWza/APFOxGwEMbxMRRC+iqFS476WlHexF8ZFPg","vs/workbench/api/node/extensionHostProcess.js":"bWXloNbU6CXWMCWIkjRnmadj8BjtNnUbqCWKMesLrP0","vs/code/electron-browser/workbench/workbench.html":"Y9VIJgayumwi1gWWDHZmjW2lE7LXMqNsIV4Yq4za2QU","vs/code/electron-browser/workbench/workbench.js":"E1qYXFIZfZNIs4I30h69PwvPPIdDVXJ0uwoGiCTQz1g"},"version":"0.5.9"},"isInitialStartup":true,"perfMarks":[{"name":"code/timeOrigin","startTime":1763636930473.179},{"name":"code/didStartMain","startTime":1763636930828},{"name":"code/willLoadMainBundle","startTime":1763636930473},{"name":"code/didLoadMainBundle","startTime":1763636930828},{"name":"code/willStartCrashReporter","startTime":1763636930830},{"name":"code/didStartCrashReporter","startTime":1763636930848},{"name":"code/mainAppReady","startTime":1763636931546},{"name":"code/willGenerateNls","startTime":1763636931546},{"name":"code/didGenerateNls","startTime":1763636931641},{"name":"code/willLoadNls","startTime":1763636931641},{"name":"code/didLoadNls","startTime":1763636931648},{"name":"code/registerFilesystem/file","startTime":1763636931685},{"name":"code/registerFilesystem/vscode-userdata","startTime":1763636931688},{"name":"code/didRunMainBundle","startTime":1763636931696},{"name":"code/willStartMainServer","startTime":1763636931714},{"name":"code/didStartMainServer","startTime":1763636931716},{"name":"code/willCreateCodeWindow","startTime":1763636931751},{"name":"code/willRestoreCodeWindowState","startTime":1763636931752},{"name":"code/didRestoreCodeWindowState","startTime":1763636931753},{"name":"code/willCreateCodeBrowserWindow","startTime":1763636931754},{"name":"code/didCreateCodeBrowserWindow","startTime":1763636931837},{"name":"code/didCreateCodeWindow","startTime":1763636931842},{"name":"code/willOpenNewWindow","startTime":1763636931847}],"os":{"release":"6.5.0-35-generic","hostname":"lib15-lin-miniPC-2","arch":"x64"},"autoDetectHighContrast":true,"autoDetectColorScheme":false,"accessibilitySupport":false,"colorScheme":{"dark":false,"highContrast":false},"handle":{"buffer":{"0":4,"1":0,"2":192,"3":4},"byteLength":4},"fullscreen":false,"maximized":false,"partsSplash":{"zoomLevel":0,"baseTheme":"vs-dark","colorInfo":{"foreground":"#ffffff","background":"#211d25","editorBackground":"#211d25","titleBarBackground":"rgba(0, 0, 0, 0)","titleBarBorder":"rgba(0, 0, 0, 0)","activityBarBackground":"#28242e","activityBarBorder":"#4a464f","sideBarBackground":"#211d25","statusBarBackground":"rgba(0, 0, 0, 0)","statusBarNoFolderBackground":"rgba(0, 0, 0, 0)"},"layoutInfo":{"sideBarSide":"left","editorPartMinWidth":220,"titleBarHeight":35,"activityBarWidth":48,"sideBarWidth":0,"auxiliaryBarWidth":0,"statusBarHeight":22,"windowBorder":false}},"isCustomZoomLevel":false}", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160852.446864:INFO:CONSOLE:34] "%cTRACE color: #888 Renderer->SharedProcess#connect", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160852.454604:INFO:CONSOLE:34] "%cTRACE color: #888 PolicyConfiguration#initialize", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160852.455626:INFO:CONSOLE:34] "%cTRACE color: #888 PolicyConfiguration#updatePolicyDefinitions [plaintext],[go],[makefile],[shellscript],[yaml],editor.tabSize,editor.indentSize,editor.insertSpaces,editor.detectIndentation,editor.trimAutoWhitespace,editor.largeFileOptimizations,editor.wordBasedSuggestions,editor.semanticHighlighting.enabled,editor.stablePeek,editor.maxTokenizationLineLength,editor.experimental.asyncTokenization,editor.experimental.asyncTokenizationLogging,editor.experimental.asyncTokenizationVerification,editor.experimental.treeSitterTelemetry,editor.experimental.preferTreeSitter.css,editor.experimental.preferTreeSitter.typescript,editor.experimental.preferTreeSitter.ini,editor.experimental.preferTreeSitter.regex,editor.language.brackets,editor.language.colorizedBracketPairs,diffEditor.maxComputationTime,diffEditor.maxFileSize,diffEditor.renderSideBySide,diffEditor.renderSideBySideInlineBreakpoint,diffEditor.useInlineViewWhenSpaceIsLimited,diffEditor.renderMarginRevertIcon,diffEditor.renderGutterMenu,diffEditor.ignoreTrimWhitespace,diffEditor.renderIndicators,diffEditor.codeLens,diffEditor.wordWrap,diffEditor.diffAlgorithm,diffEditor.hideUnchangedRegions.enabled,diffEditor.hideUnchangedRegions.revealLineCount,diffEditor.hideUnchangedRegions.minimumLineCount,diffEditor.hideUnchangedRegions.contextLineCount,diffEditor.experimental.showMoves,diffEditor.experimental.showEmptyDecorations,diffEditor.experimental.useTrueInlineView,editor.acceptSuggestionOnCommitCharacter,editor.acceptSuggestionOnEnter,editor.accessibilitySupport,editor.accessibilityPageSize,editor.allowVariableLineHeights,editor.allowVariableFonts,editor.allowVariableFontsInAccessibilityMode,editor.autoClosingBrackets,editor.autoClosingComments,editor.screenReaderAnnounceInlineSuggestion,editor.autoClosingDelete,editor.autoClosingOvertype,editor.autoClosingQuotes,editor.autoIndent,editor.autoIndentOnPaste,editor.autoIndentOnPasteWithinString,editor.autoSurround,editor.bracketPairColorization.enabled,editor.bracketPairColorization.independentColorPoolPerBracketType,editor.guides.bracketPairs,editor.guides.bracketPairsHorizontal,editor.guides.highlightActiveBracketPair,editor.guides.indentation,editor.guides.highlightActiveIndentation,editor.codeLens,editor.codeLensFontFamily,editor.codeLensFontSize,editor.colorDecorators,editor.colorDecoratorsLimit,editor.columnSelection,editor.comments.insertSpace,editor.comments.ignoreEmptyLines,editor.copyWithSyntaxHighlighting,editor.cursorBlinking,editor.cursorSmoothCaretAnimation,editor.cursorStyle,editor.cursorSurroundingLines,editor.cursorSurroundingLinesStyle,editor.cursorWidth,editor.cursorHeight,editor.dragAndDrop,editor.dropIntoEditor.enabled,editor.dropIntoEditor.showDropSelector,editor.editContext,editor.emptySelectionClipboard,editor.experimentalGpuAcceleration,editor.experimentalWhitespaceRendering,editor.fastScrollSensitivity,editor.find.cursorMoveOnType,editor.find.seedSearchStringFromSelection,editor.find.autoFindInSelection,editor.find.addExtraSpaceOnTop,editor.find.loop,editor.find.history,editor.find.replaceHistory,editor.find.findOnType,editor.folding,editor.foldingStrategy,editor.foldingHighlight,editor.foldingImportsByDefault,editor.foldingMaximumRegions,editor.unfoldOnClickAfterEndOfLine,editor.fontFamily,editor.fontLigatures,editor.fontSize,editor.fontWeight,editor.fontVariations,editor.formatOnPaste,editor.formatOnType,editor.glyphMargin,editor.gotoLocation.multiple,editor.gotoLocation.multipleDefinitions,editor.gotoLocation.multipleTypeDefinitions,editor.gotoLocation.multipleDeclarations,editor.gotoLocation.multipleImplementations,editor.gotoLocation.multipleReferences,editor.gotoLocation.alternativeDefinitionCommand,editor.gotoLocation.alternativeTypeDefinitionCommand,editor.gotoLocation.alternativeDeclarationCommand,editor.gotoLocation.alternativeImplementationCommand,editor.gotoLocation.alternativeReferenceCommand,editor.hideCursorInOverviewRuler,editor.hover.enabled,editor.hover.delay,editor.hover.sticky,editor.hover.hidingDelay,editor.hover.above,editor.inlineSuggest.enabled,editor.inlineSuggest.showToolbar,editor.inlineSuggest.syntaxHighlightingEnabled,editor.inlineSuggest.suppressSuggestions,editor.inlineSuggest.experimental.suppressInlineSuggestions,editor.inlineSuggest.experimental.triggerCommandOnProviderChange,editor.inlineSuggest.fontFamily,editor.inlineSuggest.edits.allowCodeShifting,editor.inlineSuggest.edits.renderSideBySide,editor.inlineSuggest.edits.showCollapsed,editor.letterSpacing,editor.lightbulb.enabled,editor.lineHeight,editor.lineNumbers,editor.linkedEditing,editor.links,editor.matchBrackets,editor.minimap.enabled,editor.minimap.autohide,editor.minimap.size,editor.minimap.side,editor.minimap.showSlider,editor.minimap.scale,editor.minimap.renderCharacters,editor.minimap.maxColumn,editor.minimap.showRegionSectionHeaders,editor.minimap.showMarkSectionHeaders,editor.minimap.markSectionHeaderRegex,editor.minimap.sectionHeaderFontSize,editor.minimap.sectionHeaderLetterSpacing,editor.mouseWheelScrollSensitivity,editor.mouseWheelZoom,editor.multiCursorMergeOverlapping,editor.multiCursorModifier,editor.multiCursorPaste,editor.multiCursorLimit,editor.occurrencesHighlight,editor.occurrencesHighlightDelay,editor.overtypeCursorStyle,editor.overtypeOnPaste,editor.overviewRulerBorder,editor.padding.top,editor.padding.bottom,editor.pasteAs.enabled,editor.pasteAs.showPasteSelector,editor.parameterHints.enabled,editor.parameterHints.cycle,editor.peekWidgetDefaultFocus,editor.definitionLinkOpensInPeek,editor.quickSuggestions,editor.quickSuggestionsDelay,editor.renameOnType,editor.renderRichScreenReaderContent,editor.renderControlCharacters,editor.renderFinalNewline,editor.renderLineHighlight,editor.renderLineHighlightOnlyWhenFocus,editor.renderWhitespace,editor.roundedSelection,editor.rulers,editor.scrollbar.vertical,editor.scrollbar.horizontal,editor.scrollbar.verticalScrollbarSize,editor.scrollbar.horizontalScrollbarSize,editor.scrollbar.scrollByPage,editor.scrollbar.ignoreHorizontalScrollbarInContentHeight,editor.scrollBeyondLastColumn,editor.scrollBeyondLastLine,editor.scrollPredominantAxis,editor.selectionClipboard,editor.selectionHighlight,editor.selectionHighlightMaxLength,editor.selectionHighlightMultiline,editor.showFoldingControls,editor.showUnused,editor.snippetSuggestions,editor.smartSelect.selectLeadingAndTrailingWhitespace,editor.smartSelect.selectSubwords,editor.smoothScrolling,editor.stickyScroll.enabled,editor.stickyScroll.maxLineCount,editor.stickyScroll.defaultModel,editor.stickyScroll.scrollWithEditor,editor.stickyTabStops,editor.suggest.insertMode,editor.suggest.filterGraceful,editor.suggest.localityBonus,editor.suggest.shareSuggestSelections,editor.suggest.selectionMode,editor.suggest.snippetsPreventQuickSuggestions,editor.suggest.showIcons,editor.suggest.showStatusBar,editor.suggest.preview,editor.suggest.showInlineDetails,editor.suggest.maxVisibleSuggestions,editor.suggest.filteredTypes,editor.suggest.showMethods,editor.suggest.showFunctions,editor.suggest.showConstructors,editor.suggest.showDeprecated,editor.suggest.matchOnWordStartOnly,editor.suggest.showFields,editor.suggest.showVariables,editor.suggest.showClasses,editor.suggest.showStructs,editor.suggest.showInterfaces,editor.suggest.showModules,editor.suggest.showProperties,editor.suggest.showEvents,editor.suggest.showOperators,editor.suggest.showUnits,editor.suggest.showValues,editor.suggest.showConstants,editor.suggest.showEnums,editor.suggest.showEnumMembers,editor.suggest.showKeywords,editor.suggest.showWords,editor.suggest.showColors,editor.suggest.showFiles,editor.suggest.showReferences,editor.suggest.showCustomcolors,editor.suggest.showFolders,editor.suggest.showTypeParameters,editor.suggest.showSnippets,editor.suggest.showUsers,editor.suggest.showIssues,editor.suggestFontSize,editor.suggestLineHeight,editor.suggestOnTriggerCharacters,editor.suggestSelection,editor.tabCompletion,editor.trimWhitespaceOnDelete,editor.unicodeHighlight.nonBasicASCII,editor.unicodeHighlight.invisibleCharacters,editor.unicodeHighlight.ambiguousCharacters,editor.unicodeHighlight.includeComments,editor.unicodeHighlight.includeStrings,editor.unicodeHighlight.allowedCharacters,editor.unicodeHighlight.allowedLocales,editor.unusualLineTerminators,editor.useTabStops,editor.wordBreak,editor.wordSegmenterLocales,editor.wordSeparators,editor.wordWrap,editor.wordWrapColumn,editor.wrappingIndent,editor.wrappingStrategy,editor.showDeprecated,editor.inertialScroll,editor.inlayHints.enabled,editor.inlayHints.fontSize,editor.inlayHints.fontFamily,editor.inlayHints.padding,editor.inlayHints.maximumLength,editor.wrapOnEscapedLineFeeds,editor.tabFocusMode,editor.defaultColorDecorators,editor.colorDecoratorsActivatedOn,editor.inlineCompletionsAccessibilityVerbose,editor.scrollOnMiddleClick,editor.codeActionWidget.showHeaders,editor.codeActionWidget.includeNearbyQuickFixes,editor.codeActions.triggerOnFocusChange,workbench.list.multiSelectModifier,workbench.list.openMode,workbench.list.horizontalScrolling,workbench.list.scrollByPage,workbench.tree.indent,workbench.tree.renderIndentGuides,workbench.list.smoothScrolling,workbench.list.mouseWheelScrollSensitivity,workbench.list.fastScrollSensitivity,workbench.list.defaultFindMode,workbench.list.keyboardNavigation,workbench.list.defaultFindMatchType,workbench.tree.expandMode,workbench.tree.enableStickyScroll,workbench.tree.stickyScrollMaxItemCount,workbench.list.typeNavigationMode,editor.rename.enablePreview,extensions.allowed,http.useLocalProxyConfiguration,http.electronFetch,http.proxy,http.proxyStrictSSL,http.proxyKerberosServicePrincipal,http.noProxy,http.proxyAuthorization,http.proxySupport,http.systemCertificates,http.experimental.systemCertificatesV2,http.fetchAdditionalSupport,workbench.editorAssociations,terminal.integrated.suggest.providers,workbench.externalBrowser,workbench.editor.titleScrollbarSizing,workbench.editor.showTabs,workbench.editor.editorActionsLocation,workbench.editor.alwaysShowEditorActions,workbench.editor.wrapTabs,workbench.editor.scrollToSwitchTabs,workbench.editor.highlightModifiedTabs,workbench.editor.decorations.badges,workbench.editor.decorations.colors,workbench.editor.customLabels.enabled,workbench.editor.customLabels.patterns,workbench.editor.labelFormat,workbench.editor.untitled.labelFormat,workbench.editor.empty.hint,workbench.editor.languageDetection,workbench.editor.historyBasedLanguageDetection,workbench.editor.preferHistoryBasedLanguageDetection,workbench.editor.languageDetectionHints,workbench.editor.tabActionLocation,workbench.editor.tabActionCloseVisibility,workbench.editor.tabActionUnpinVisibility,workbench.editor.tabSizing,workbench.editor.tabSizingFixedMinWidth,workbench.editor.tabSizingFixedMaxWidth,window.density.editorTabHeight,workbench.editor.pinnedTabSizing,workbench.editor.pinnedTabsOnSeparateRow,workbench.editor.preventPinnedEditorClose,workbench.editor.splitSizing,workbench.editor.splitOnDragAndDrop,workbench.editor.dragToOpenWindow,workbench.editor.focusRecentEditorAfterClose,workbench.editor.showIcons,workbench.editor.enablePreview,workbench.editor.enablePreviewFromQuickOpen,workbench.editor.enablePreviewFromCodeNavigation,workbench.editor.closeOnFileDelete,workbench.editor.openPositioning,workbench.editor.openSideBySideDirection,workbench.editor.closeEmptyGroups,workbench.editor.revealIfOpen,workbench.editor.mouseBackForwardToNavigate,workbench.editor.navigationScope,workbench.editor.restoreViewState,workbench.editor.sharedViewState,workbench.editor.splitInGroupLayout,workbench.editor.centeredLayoutAutoResize,workbench.editor.centeredLayoutFixedWidth,workbench.editor.doubleClickTabToToggleEditorGroupSizes,workbench.editor.limit.enabled,workbench.editor.limit.value,workbench.editor.limit.excludeDirty,workbench.editor.limit.perEditorGroup,workbench.localHistory.enabled,workbench.localHistory.maxFileSize,workbench.localHistory.maxFileEntries,workbench.localHistory.exclude,workbench.localHistory.mergeWindow,workbench.commandPalette.history,workbench.commandPalette.preserveInput,workbench.commandPalette.experimental.suggestCommands,workbench.commandPalette.experimental.askChatLocation,workbench.commandPalette.experimental.enableNaturalLanguageSearch,workbench.quickOpen.closeOnFocusLost,workbench.quickOpen.preserveInput,workbench.settings.openDefaultSettings,workbench.settings.useSplitJSON,workbench.settings.openDefaultKeybindings,workbench.sideBar.location,workbench.panel.showLabels,workbench.panel.defaultLocation,workbench.panel.opensMaximized,workbench.secondarySideBar.defaultVisibility,workbench.secondarySideBar.showLabels,workbench.statusBar.visible,workbench.activityBar.location,workbench.activityBar.iconClickBehavior,workbench.view.alwaysShowHeaderActions,workbench.view.showQuietly,workbench.settings.editor,workbench.settings.showAISearchToggle,workbench.hover.delay,workbench.reduceMotion,workbench.navigationControl.enabled,workbench.layoutControl.enabled,workbench.layoutControl.type,workbench.tips.enabled,window.title,window.titleSeparator,window.commandCenter,window.menuBarVisibility,window.enableMenuBarMnemonics,window.customMenuBarAltFocus,window.openFilesInNewWindow,window.openFoldersInNewWindow,window.confirmBeforeClose,problems.visibility,zenMode.fullScreen,zenMode.centerLayout,zenMode.showTabs,zenMode.hideStatusBar,zenMode.hideActivityBar,zenMode.hideLineNumbers,zenMode.restore,zenMode.silentNotifications,screencastMode.verticalOffset,screencastMode.fontSize,screencastMode.keyboardOptions,screencastMode.keyboardOverlayTimeout,screencastMode.mouseIndicatorColor,screencastMode.mouseIndicatorSize,breadcrumbs.enabled,breadcrumbs.filePath,breadcrumbs.symbolPath,breadcrumbs.symbolSortOrder,breadcrumbs.icons,breadcrumbs.showFiles,breadcrumbs.showModules,breadcrumbs.showNamespaces,breadcrumbs.showPackages,breadcrumbs.showClasses,breadcrumbs.showMethods,breadcrumbs.showProperties,breadcrumbs.showFields,breadcrumbs.showConstructors,breadcrumbs.showEnums,breadcrumbs.showInterfaces,breadcrumbs.showFunctions,breadcrumbs.showVariables,breadcrumbs.showConstants,breadcrumbs.showStrings,breadcrumbs.showNumbers,breadcrumbs.showBooleans,breadcrumbs.showArrays,breadcrumbs.showObjects,breadcrumbs.showKeys,breadcrumbs.showNull,breadcrumbs.showEnumMembers,breadcrumbs.showStructs,breadcrumbs.showEvents,breadcrumbs.showOperators,breadcrumbs.showTypeParameters,workbench.colorTheme,workbench.preferredDarkColorTheme,workbench.preferredLightColorTheme,workbench.preferredHighContrastColorTheme,workbench.preferredHighContrastLightColorTheme,workbench.iconTheme,workbench.colorCustomizations,workbench.productIconTheme,window.autoDetectHighContrast,window.autoDetectColorScheme,editor.tokenColorCustomizations,editor.semanticTokenColorCustomizations,workbench.enableExperiments,workbench.settings.enableNaturalLanguageSearch,workbench.settings.settingsSearchTocBehavior,kiroAgent.agentAutonomy,kiroAgent.configureMCP,kiroAgent.trustReadOnlyCommands,kiroAgent.trustedCommands,kiroAgent.enableTabAutocomplete,kiroAgent.enableDebugLogs,kiroAgent.agentModelSelection,kiroAgent.modelSelection,kiroAgent.notifications.agent.actionRequired,kiroAgent.notifications.agent.failure,kiroAgent.notifications.agent.success,kiroAgent.notifications.billing,kiroAgent.ignoreFiles,kiroAgent.mcpApprovedEnvVars,kiroAgent.usageSummary,inlineChat.finishOnType,inlineChat.holdToSpeech,inlineChat.accessibleDiffView,inlineChat.lineEmptyHint,inlineChat.lineNaturalLanguageHint,inlineChat.enableV2,inlineChat.hideOnRequest,inlineChat.notebookAgent,notebook.lineNumbers,notebook.outline.showMarkdownHeadersOnly,notebook.outline.showCodeCells,notebook.outline.showCodeCellSymbols,notebook.breadcrumbs.showCodeCells,notebook.gotoSymbols.showAllSymbols,notebook.navigation.allowNavigateToSurroundingCells,notebook.diff.ignoreMetadata,notebook.diff.ignoreOutputs,notebook.diff.experimental.toggleInline,editor.defaultFormatter,notebook.displayOrder,notebook.cellToolbarLocation,notebook.showCellStatusBar,notebook.cellExecutionTimeVerbosity,notebook.diff.enablePreview,notebook.diff.overviewRuler,notebook.cellToolbarVisibility,notebook.undoRedoPerCell,notebook.compactView,notebook.cellFocusIndicator,notebook.insertToolbarLocation,notebook.globalToolbar,notebook.stickyScroll.enabled,notebook.stickyScroll.mode,notebook.consolidatedOutputButton,notebook.showFoldingControls,notebook.dragAndDropEnabled,notebook.consolidatedRunButton,notebook.globalToolbarShowLabel,notebook.output.textLineLimit,notebook.output.linkifyFilePaths,notebook.output.minimalErrorRendering,notebook.markup.fontSize,notebook.markdown.lineHeight,notebook.editorOptionsCustomizations,interactiveWindow.collapseCellInputCode,notebook.output.lineHeight,notebook.output.fontSize,notebook.output.fontFamily,notebook.output.scrolling,notebook.output.wordWrap,notebook.defaultFormatter,notebook.formatOnSave.enabled,notebook.insertFinalNewline,notebook.formatOnCellExecution,notebook.confirmDeleteRunningCell,notebook.find.filters,notebook.experimental.remoteSave,notebook.scrolling.revealNextCellOnExecute,notebook.experimental.generate,notebook.variablesView,notebook.inlineValues,notebook.cellFailureDiagnostics,notebook.backup.sizeLimit,notebook.multiCursor.enabled,notebook.markup.fontFamily,chat.editor.fontSize,chat.editor.fontFamily,chat.editor.fontWeight,chat.editor.wordWrap,chat.editor.lineHeight,chat.commandCenter.enabled,chat.implicitContext.enabled,chat.implicitContext.suggestedContext,chat.editing.autoAcceptDelay,chat.editing.confirmEditRequestRemoval,chat.editing.confirmEditRequestRetry,chat.experimental.detectParticipant.enabled,chat.detectParticipant.enabled,chat.renderRelatedFiles,chat.notifyWindowOnConfirmation,chat.tools.autoApprove,chat.sendElementsToChat.enabled,chat.sendElementsToChat.attachCSS,chat.sendElementsToChat.attachImages,chat.undoRequests.restoreInput,chat.editRequests,chat.emptyChatState.enabled,chat.checkpoints.enabled,chat.checkpoints.showFileChanges,chat.mcp.assisted.nuget.enabled,chat.useFileStorage,chat.edits2.enabled,chat.extensionTools.enabled,chat.agent.enabled,chat.math.enabled,chat.agentSessionsViewLocation,chat.promptFiles,chat.instructionsFilesLocations,chat.promptFilesLocations,chat.modeFilesLocations,chat.setup.signInDialogVariant,chat.todoListTool.enabled,chat.tools.useTreePicker,interactiveWindow.alwaysScrollOnNewCell,interactiveWindow.promptToSaveOnClose,interactiveWindow.executeWithShiftEnter,interactiveWindow.showExecutionHint,testing.automaticallyOpenPeekView,testing.showAllMessages,testing.automaticallyOpenPeekViewDuringAutoRun,testing.countBadge,testing.followRunningTest,testing.defaultGutterClickAction,testing.gutterEnabled,testing.saveBeforeTest,testing.automaticallyOpenTestResults,testing.alwaysRevealTestOnStateChange,testing.showCoverageInExplorer,testing.displayedCoveragePercent,testing.coverageBarThresholds,testing.coverageToolbarEnabled,files.exclude,files.associations,files.encoding,files.autoGuessEncoding,files.candidateGuessEncodings,files.eol,files.enableTrash,files.trimTrailingWhitespace,files.trimTrailingWhitespaceInRegexAndStrings,files.insertFinalNewline,files.trimFinalNewlines,files.autoSave,files.autoSaveDelay,files.autoSaveWorkspaceFilesOnly,files.autoSaveWhenNoErrors,files.watcherExclude,files.watcherInclude,files.hotExit,files.defaultLanguage,files.readonlyInclude,files.readonlyExclude,files.readonlyFromPermissions,files.restoreUndoStack,files.saveConflictResolution,files.dialog.defaultPath,files.simpleDialog.enable,files.participants.timeout,editor.formatOnSave,editor.formatOnSaveMode,explorer.openEditors.visible,explorer.openEditors.minVisible,explorer.openEditors.sortOrder,explorer.autoReveal,explorer.autoRevealExclude,explorer.enableDragAndDrop,explorer.confirmDragAndDrop,explorer.confirmPasteNative,explorer.confirmDelete,explorer.enableUndo,explorer.confirmUndo,explorer.expandSingleFolderWorkspaces,explorer.sortOrder,explorer.sortOrderLexicographicOptions,explorer.sortOrderReverse,explorer.decorations.colors,explorer.decorations.badges,explorer.incrementalNaming,explorer.autoOpenDroppedFile,explorer.compactFolders,explorer.copyRelativePathSeparator,explorer.copyPathSeparator,explorer.excludeGitIgnore,explorer.fileNesting.enabled,explorer.fileNesting.expand,explorer.fileNesting.patterns,files.refactoring.autoSave,search.exclude,search.mode,search.useRipgrep,search.maintainFileSearchCache,search.useIgnoreFiles,search.useGlobalIgnoreFiles,search.useParentIgnoreFiles,search.quickOpen.includeSymbols,search.ripgrep.maxThreads,search.quickOpen.includeHistory,search.quickOpen.history.filterSortOrder,search.followSymlinks,search.smartCase,search.location,search.maxResults,search.collapseResults,search.useReplacePreview,search.showLineNumbers,search.usePCRE2,search.actionsPosition,search.searchOnType,search.seedWithNearestWord,search.seedOnFocus,search.searchOnTypeDebouncePeriod,search.searchEditor.doubleClickBehaviour,search.searchEditor.singleClickBehaviour,search.searchEditor.reusePriorSearchConfiguration,search.searchEditor.defaultNumberOfContextLines,search.searchEditor.focusResultsOnSearch,search.sortOrder,search.decorations.colors,search.decorations.badges,search.defaultViewMode,search.quickAccess.preserveInput,search.experimental.closedNotebookRichContentResults,search.searchView.semanticSearchBehavior,search.searchView.keywordSuggestions,workbench.sash.size,workbench.sash.hoverDelay,scm.diffDecorations,scm.diffDecorationsGutterWidth,scm.diffDecorationsGutterVisibility,scm.diffDecorationsGutterAction,scm.diffDecorationsGutterPattern,scm.diffDecorationsIgnoreTrimWhitespace,scm.alwaysShowActions,scm.countBadge,scm.providerCountBadge,scm.defaultViewMode,scm.defaultViewSortKey,scm.autoReveal,scm.inputFontFamily,scm.inputFontSize,scm.inputMaxLineCount,scm.inputMinLineCount,scm.alwaysShowRepositories,scm.repositories.sortOrder,scm.repositories.visible,scm.showActionButton,scm.showInputActionButton,scm.workingSets.enabled,scm.workingSets.default,scm.compactFolders,scm.graph.pageOnScroll,scm.graph.pageSize,scm.graph.badges,debug.showVariableTypes,debug.allowBreakpointsEverywhere,debug.gutterMiddleClickAction,debug.openExplorerOnEnd,debug.closeReadonlyTabsOnEnd,debug.inlineValues,debug.toolBarLocation,debug.showInStatusBar,debug.internalConsoleOptions,debug.console.closeOnEnd,debug.terminal.clearBeforeReusing,debug.openDebug,debug.showSubSessionsInToolBar,debug.console.fontSize,debug.console.fontFamily,debug.console.lineHeight,debug.console.wordWrap,debug.console.historySuggestions,debug.console.collapseIdenticalLines,debug.console.acceptSuggestionOnEnter,debug.console.maximumLines,launch,debug.focusWindowOnBreak,debug.focusEditorOnBreak,debug.onTaskErrors,debug.showBreakpointsInOverviewRuler,debug.showInlineBreakpointCandidates,debug.saveBeforeStart,debug.confirmOnExit,debug.disassemblyView.showSourceCode,debug.autoExpandLazyVariables,debug.enableStatusBarColor,debug.hideLauncherWhileDebugging,debug.hideSlowPreLaunchWarning,problems.decorations.enabled,problems.autoReveal,problems.defaultViewMode,problems.showCurrentInStatus,problems.sortOrder,mergeEditor.diffAlgorithm,mergeEditor.showDeletionMarkers,multiDiffEditor.experimental.enabled,comments.openPanel,comments.openView,comments.useRelativeTime,comments.visible,comments.maxHeight,comments.collapseOnResolve,comments.thread.confirmOnCollapse,workbench.trustedDomains.promptInTrustedWorkspace,workbench.externalUriOpeners,extensions.autoUpdate,extensions.autoCheckUpdates,extensions.ignoreRecommendations,extensions.showRecommendationsOnlyOnDemand,extensions.closeExtensionDetailsOnViewChange,extensions.confirmedUriHandlerExtensionIds,extensions.webWorker,extensions.supportVirtualWorkspaces,extensions.experimental.affinity,extensions.supportUntrustedWorkspaces,extensions.experimental.deferredStartupFinishedActivation,extensions.experimental.issueQuickAccess,extensions.verifySignature,extensions.supportNodeGlobalNavigator,output.smartScroll.enabled,terminal.integrated.automationProfile.linux,terminal.integrated.automationProfile.osx,terminal.integrated.automationProfile.windows,terminal.integrated.profiles.windows,terminal.integrated.profiles.osx,terminal.integrated.profiles.linux,terminal.integrated.useWslProfiles,terminal.integrated.inheritEnv,terminal.integrated.persistentSessionScrollback,terminal.integrated.showLinkHover,terminal.integrated.ignoreProcessNames,terminal.integrated.defaultProfile.linux,terminal.integrated.defaultProfile.osx,terminal.integrated.defaultProfile.windows,terminal.integrated.sendKeybindingsToShell,terminal.integrated.tabs.defaultColor,terminal.integrated.tabs.defaultIcon,terminal.integrated.tabs.enabled,terminal.integrated.tabs.enableAnimation,terminal.integrated.tabs.hideCondition,terminal.integrated.tabs.showActiveTerminal,terminal.integrated.tabs.showActions,terminal.integrated.tabs.location,terminal.integrated.defaultLocation,terminal.integrated.tabs.focusMode,terminal.integrated.macOptionIsMeta,terminal.integrated.macOptionClickForcesSelection,terminal.integrated.altClickMovesCursor,terminal.integrated.copyOnSelection,terminal.integrated.enableMultiLinePasteWarning,terminal.integrated.drawBoldTextInBrightColors,terminal.integrated.fontFamily,terminal.integrated.fontLigatures.enabled,terminal.integrated.fontLigatures.featureSettings,terminal.integrated.fontLigatures.fallbackLigatures,terminal.integrated.fontSize,terminal.integrated.letterSpacing,terminal.integrated.lineHeight,terminal.integrated.minimumContrastRatio,terminal.integrated.tabStopWidth,terminal.integrated.fastScrollSensitivity,terminal.integrated.mouseWheelScrollSensitivity,terminal.integrated.bellDuration,terminal.integrated.fontWeight,terminal.integrated.fontWeightBold,terminal.integrated.cursorBlinking,terminal.integrated.cursorStyle,terminal.integrated.cursorStyleInactive,terminal.integrated.cursorWidth,terminal.integrated.scrollback,terminal.integrated.detectLocale,terminal.integrated.gpuAcceleration,terminal.integrated.tabs.separator,terminal.integrated.tabs.title,terminal.integrated.tabs.description,terminal.integrated.rightClickBehavior,terminal.integrated.middleClickBehavior,terminal.integrated.cwd,terminal.integrated.confirmOnExit,terminal.integrated.confirmOnKill,terminal.integrated.enableBell,terminal.integrated.enableVisualBell,terminal.integrated.commandsToSkipShell,terminal.integrated.allowChords,terminal.integrated.allowMnemonics,terminal.integrated.env.osx,terminal.integrated.env.linux,terminal.integrated.env.windows,terminal.integrated.environmentChangesIndicator,terminal.integrated.environmentChangesRelaunch,terminal.integrated.showExitAlert,terminal.integrated.windowsUseConptyDll,terminal.integrated.splitCwd,terminal.integrated.windowsEnableConpty,terminal.integrated.wordSeparators,terminal.integrated.enableFileLinks,terminal.integrated.allowedLinkSchemes,terminal.integrated.unicodeVersion,terminal.integrated.enablePersistentSessions,terminal.integrated.persistentSessionReviveProcess,terminal.integrated.hideOnStartup,terminal.integrated.hideOnLastClosed,terminal.integrated.customGlyphs,terminal.integrated.rescaleOverlappingGlyphs,terminal.integrated.shellIntegration.enabled,terminal.integrated.shellIntegration.decorationsEnabled,terminal.integrated.shellIntegration.environmentReporting,terminal.integrated.smoothScrolling,terminal.integrated.ignoreBracketedPasteMode,terminal.integrated.enableImages,terminal.integrated.focusAfterRun,terminal.integrated.accessibleViewPreserveCursorPosition,terminal.integrated.accessibleViewFocusOnCommandExecution,terminal.integrated.autoReplies,chat.tools.terminal.autoApprove,chat.agent.terminal.allowList,chat.agent.terminal.denyList,github.copilot.chat.agent.terminal.allowList,github.copilot.chat.agent.terminal.denyList,chat.agent.terminal.autoApprove,terminal.integrated.initialHint,terminal.integrated.shellIntegration.showCommandGuide,terminal.integrated.shellIntegration.history,terminal.integrated.stickyScroll.enabled,terminal.integrated.stickyScroll.maxLineCount,terminal.integrated.suggest.enabled,terminal.integrated.suggest.quickSuggestions,terminal.integrated.suggest.suggestOnTriggerCharacters,terminal.integrated.suggest.runOnEnter,terminal.integrated.suggest.selectionMode,terminal.integrated.suggest.windowsExecutableExtensions,terminal.integrated.suggest.showStatusBar,terminal.integrated.suggest.cdPath,terminal.integrated.suggest.inlineSuggestion,terminal.integrated.suggest.upArrowNavigatesHistory,terminal.integrated.localEchoLatencyThreshold,terminal.integrated.localEchoEnabled,terminal.integrated.localEchoExcludePrograms,terminal.integrated.localEchoStyle,terminal.integrated.mouseWheelZoom,task.problemMatchers.neverPrompt,task.autoDetect,task.slowProviderWarning,task.quickOpen.history,task.quickOpen.detail,task.quickOpen.skip,task.quickOpen.showAll,task.allowAutomaticTasks,task.reconnection,task.saveBeforeRun,task.verboseLogging,remote.extensionKind,remote.restoreForwardedPorts,remote.autoForwardPorts,remote.autoForwardPortsSource,remote.autoForwardPortsFallback,remote.forwardOnOpen,remote.portsAttributes,remote.otherPortsAttributes,remote.localPortHost,remote.defaultExtensionsIfInstalledLocally,workbench.remoteIndicator.showExtensionRecommendations,editor.snippets.codeActions.enabled,editor.defaultFoldingRangeProvider,update.mode,update.channel,update.showReleaseNotes,workbench.welcomePage.walkthroughs.openOnInstall,workbench.startupEditor,workbench.welcomePage.preferReducedMotion,outline.icons,outline.collapseItems,outline.problems.enabled,outline.problems.colors,outline.problems.badges,outline.showFiles,outline.showModules,outline.showNamespaces,outline.showPackages,outline.showClasses,outline.showMethods,outline.showProperties,outline.showFields,outline.showConstructors,outline.showEnums,outline.showInterfaces,outline.showFunctions,outline.showVariables,outline.showConstants,outline.showStrings,outline.showNumbers,outline.showBooleans,outline.showArrays,outline.showObjects,outline.showKeys,outline.showNull,outline.showEnumMembers,outline.showStructs,outline.showEvents,outline.showOperators,outline.showTypeParameters,workbench.experimental.cloudChanges.autoStore,workbench.cloudChanges.autoResume,workbench.cloudChanges.continueOn,workbench.experimental.cloudChanges.partialMatches.enabled,editor.codeActionsOnSave,notebook.codeActionsOnSave,timeline.pageSize,timeline.pageOnScroll,security.workspace.trust.enabled,security.workspace.trust.startupPrompt,security.workspace.trust.banner,security.workspace.trust.untrustedFiles,security.workspace.trust.emptyWindow,accessibility.verbosity.terminal,accessibility.verbosity.diffEditor,accessibility.verbosity.panelChat,accessibility.verbosity.inlineChat,accessibility.verbosity.inlineCompletions,accessibility.verbosity.keybindingsEditor,accessibility.verbosity.notebook,accessibility.verbosity.hover,accessibility.verbosity.notification,accessibility.verbosity.emptyEditorHint,accessibility.verbosity.replEditor,accessibility.verbosity.comments,accessibility.verbosity.diffEditorActive,accessibility.verbosity.debug,accessibility.verbosity.walkthrough,accessibility.accessibleView.closeOnKeyPress,accessibility.verbosity.sourceControl,accessibility.signalOptions.volume,accessibility.signalOptions.debouncePositionChanges,accessibility.signalOptions.experimental.delays.general,accessibility.signalOptions.experimental.delays.warningAtPosition,accessibility.signalOptions.experimental.delays.errorAtPosition,accessibility.signals.lineHasBreakpoint,accessibility.signals.lineHasInlineSuggestion,accessibility.signals.nextEditSuggestion,accessibility.signals.lineHasError,accessibility.signals.lineHasFoldedArea,accessibility.signals.lineHasWarning,accessibility.signals.positionHasError,accessibility.signals.positionHasWarning,accessibility.signals.onDebugBreak,accessibility.signals.noInlayHints,accessibility.signals.taskCompleted,accessibility.signals.taskFailed,accessibility.signals.terminalCommandFailed,accessibility.signals.terminalCommandSucceeded,accessibility.signals.terminalQuickFix,accessibility.signals.terminalBell,accessibility.signals.diffLineInserted,accessibility.signals.diffLineModified,accessibility.signals.diffLineDeleted,accessibility.signals.chatEditModifiedFile,accessibility.signals.notebookCellCompleted,accessibility.signals.notebookCellFailed,accessibility.signals.progress,accessibility.signals.chatRequestSent,accessibility.signals.chatResponseReceived,accessibility.signals.codeActionTriggered,accessibility.signals.codeActionApplied,accessibility.signals.voiceRecordingStarted,accessibility.signals.voiceRecordingStopped,accessibility.signals.clear,accessibility.signals.editsUndone,accessibility.signals.editsKept,accessibility.signals.save,accessibility.signals.format,accessibility.signals.chatUserActionRequired,accessibility.underlineLinks,accessibility.debugWatchVariableAnnouncements,accessibility.replEditor.readLastExecutionOutput,accessibility.replEditor.autoFocusReplExecution,accessibility.windowTitleOptimized,accessibility.openChatEditedFiles,accessibility.dimUnfocused.enabled,accessibility.dimUnfocused.opacity,accessibility.hideAccessibleView,workbench.experimental.share.enabled,editor.pasteAs.preferences,editor.dropIntoEditor.preferences,telemetry.editStats.enabled,editor.aiStats.enabled,telemetry.editStats.details.enabled,telemetry.editStats.showStatusBar,telemetry.editStats.showDecorations,workbench.settings.applyToAllProfiles,application.shellEnvironmentResolutionTimeout,window.confirmSaveUntitledWorkspace,window.openWithoutArgumentsInNewWindow,window.restoreWindows,window.restoreFullscreen,window.zoomLevel,window.zoomPerWindow,window.newWindowDimensions,window.closeWhenEmpty,window.doubleClickIconToClose,window.titleBarStyle,window.controlsStyle,window.customTitleBarVisibility,window.menuStyle,window.dialogStyle,telemetry.enableCrashReporter,security.promptForLocalFileProtocolHandling,security.promptForRemoteFileProtocolHandling,keyboard.dispatch,telemetry.telemetryAndContentCollectionForServiceImprovement,telemetry.feedback.enabled,telemetry.enableTelemetry,remote.downloadExtensionsLocally,application.experimental.rendererProfiling,remote.tunnels.access.hostNameOverride,remote.tunnels.access.preventSleep", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160852.455837:INFO:CONSOLE:34] "%cTRACE color: #888 AccountPolicyService#_updatePolicyDefinitions: Got 8 policy definitions", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160852.455985:INFO:CONSOLE:34] "%cTRACE color: #888 PolicyConfiguration#update extensions.allowed,chat.tools.autoApprove,chat.extensionTools.enabled,chat.agent.enabled,chat.promptFiles,update.mode,telemetry.telemetryAndContentCollectionForServiceImprovement,telemetry.feedback.enabled", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160852.456153:INFO:CONSOLE:34] "%cTRACE color: #888 PolicyConfiguration#updatePolicyDefinitions editor.find.globalFindClipboard,workbench.fontAliasing,search.globalFindClipboard,extensions.autoRestart,extensions.gallery.serviceUrl,update.enableWindowsBackgroundUpdates,window.nativeTabs,window.nativeFullScreen,window.clickThroughInactive,window.border,keyboard.touchbar.enabled,keyboard.touchbar.ignored,keyboard.mapAltGrToCtrlAlt,window.systemColorTheme", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160852.456200:INFO:CONSOLE:34] "%cTRACE color: #888 AccountPolicyService#_updatePolicyDefinitions: Got 9 policy definitions", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160852.456331:INFO:CONSOLE:34] "%cTRACE color: #888 PolicyConfiguration#update extensions.gallery.serviceUrl", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160852.458888:INFO:CONSOLE:34] "%cTRACE color: #888 Renderer->UtilityProcess#createWorker", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[main 2025-11-20T11:08:52.469Z] StorageMainService: creating workspace storage (1763630565639)
[68939:1120/160852.498161:INFO:CONSOLE:34] "%cTRACE color: #888 [lifecycle] starting up (startup kind: 1)", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160852.499024:INFO:CONSOLE:34] "%cTRACE color: #888 lifecycle: phase changed (value: 2)", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[main 2025-11-20T11:08:52.513Z] [File Watcher (node.js)] Request to stop watching: /home/reader/.config/Kiro/User/settings.json (excludes: <none>, includes: <all>, filter: <none>, correlationId: <none>)
[main 2025-11-20T11:08:52.513Z] [File Watcher (node.js)] stopping file watcher (/home/reader/.config/Kiro/User/settings.json (excludes: <none>, includes: <all>, filter: <none>, correlationId: <none>))
[68939:1120/160852.560361:INFO:CONSOLE:34] "%cTRACE color: #888 Initial editor state [object Object]", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160852.593232:INFO:CONSOLE:34] "%cTRACE color: #888 TimelineService#registerTimelineProvider: id=timeline.localHistory", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160852.596571:INFO:CONSOLE:34] "%cTRACE color: #888 ConfigurationService#updateDefaults: begin", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160852.702454:INFO:CONSOLE:34] "%cTRACE color: #888 Layout#layout, height: 800, width: 1200", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[main 2025-11-20T11:08:52.743Z] window#load: window reported ready (id: 1)
[main 2025-11-20T11:08:52.744Z] ElectronURLListener#flush(): flushing URLs
[68939:1120/160852.745879:INFO:CONSOLE:2384] "Got token path with schema file and path /home/reader/.aws/sso/cache/kiro-auth-token.json", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (2384)
[68939:1120/160852.754508:INFO:CONSOLE:34] "%cTRACE color: #888 [backup tracker] scheduling backup untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D182e7613-1ba3-440c-87b4-6a5b6fdeed79%26state%3De53eec57-6a6f-4442-8b62-151dd3cc6bde ", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160852.755536:INFO:CONSOLE:34] "%cTRACE color: #888 [backup tracker] clearing pending backup creation untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D182e7613-1ba3-440c-87b4-6a5b6fdeed79%26state%3De53eec57-6a6f-4442-8b62-151dd3cc6bde ", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160852.755870:INFO:CONSOLE:34] "%cTRACE color: #888 [backup tracker] scheduling backup untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D182e7613-1ba3-440c-87b4-6a5b6fdeed79%26state%3De53eec57-6a6f-4442-8b62-151dd3cc6bde ", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160852.784240:INFO:CONSOLE:34] "%cTRACE color: #888 [IE] (editor:vs.editor.ICodeEditor:1) NEW controller", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160852.875505:INFO:CONSOLE:34] "%cTRACE color: #888 Started scanning system extensions", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160852.875832:INFO:CONSOLE:34] "%cTRACE color: #888 Started scanning user extensions [object Object]", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[main 2025-11-20T11:08:52.938Z] [UtilityProcess id: 1, type: extensionHost, pid: <none>]: creating new...
[main 2025-11-20T11:08:52.949Z] [UtilityProcess id: 1, type: extensionHost, pid: 69311]: successfully created
[68939:1120/160852.949933:INFO:CONSOLE:34] "%cTRACE color: #888 CommandService#executeCommand kiroAgent.onboarding.checkSteps", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160852.950038:INFO:CONSOLE:2384] "Got token path with schema file and path /home/reader/.aws/sso/cache/kiro-auth-token.json", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (2384)
[68939:1120/160852.957206:INFO:CONSOLE:34] "%c INFO color: #33f Started local extension host with pid 69311.", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160853.078351:INFO:CONSOLE:34] "%cTRACE color: #888 [History stack global-default]: notifyNavigation() (editor: untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D182e7613-1ba3-440c-87b4-6a5b6fdeed79%26state%3De53eec57-6a6f-4442-8b62-151dd3cc6bde, event: <none>)", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160853.079108:INFO:CONSOLE:34] "%cTRACE color: #888 [History stack global-default]: notifyNavigation() not ignoring (editor: untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D182e7613-1ba3-440c-87b4-6a5b6fdeed79%26state%3De53eec57-6a6f-4442-8b62-151dd3cc6bde, event: <none>)", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160853.079678:INFO:CONSOLE:34] "%cTRACE color: #888 [History stack global-default]: onSelectionAwareEditorNavigation() (editor: untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D182e7613-1ba3-440c-87b4-6a5b6fdeed79%26state%3De53eec57-6a6f-4442-8b62-151dd3cc6bde, event: <none>)", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160853.080131:INFO:CONSOLE:34] "%cTRACE color: #888 [History stack global-default]: add() (editor: untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D182e7613-1ba3-440c-87b4-6a5b6fdeed79%26state%3De53eec57-6a6f-4442-8b62-151dd3cc6bde, event: <none>)", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160853.080568:INFO:CONSOLE:34] "%cTRACE color: #888 [History stack global-default]: index: 0, navigating: false
- group: 0, editor: untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D182e7613-1ba3-440c-87b4-6a5b6fdeed79%26state%3De53eec57-6a6f-4442-8b62-151dd3cc6bde, selection: line: 1-1, col:  1-1
			", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160853.084298:INFO:CONSOLE:34] "%cTRACE color: #888 lifecycle: phase changed (value: 3)", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160853.086446:INFO:CONSOLE:34] "%cTRACE color: #888 Renderer->SharedProcess#connect: before acquirePort", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[main 2025-11-20T11:08:53.087Z] [SharedProcess] onWindowConnection for: vscode:createSharedProcessChannelConnectionResult
[main 2025-11-20T11:08:53.088Z] [UtilityProcess type: shared-process, pid: <none>]: creating new...
[main 2025-11-20T11:08:53.094Z] [UtilityProcess type: shared-process, pid: <none>]: payload sent via postMessage()
[main 2025-11-20T11:08:53.095Z] [UtilityProcessWorker]: createWorker(window: 1, moduleId: vs/platform/files/node/watcher/watcherMain)
[main 2025-11-20T11:08:53.096Z] [UtilityProcess id: 1, type: fileWatcher, pid: <none>]: creating new...
[main 2025-11-20T11:08:53.124Z] [UtilityProcess type: shared-process, pid: 69324]: successfully created
[main 2025-11-20T11:08:53.125Z] [UtilityProcess id: 1, type: fileWatcher, pid: 69325]: successfully created
[68939:1120/160853.126298:INFO:CONSOLE:34] "%cDEBUG background: #eee; color: #888 Using cached extensions scan result user vscode-userdata:/home/reader/.kiro/extensions/extensions.json", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160853.307441:INFO:CONSOLE:34] "%cTRACE color: #888 [backup tracker] scheduling backup untitled:/home/reader/develop/kiro/https%3A/prod.us-east-1.auth.desktop.kiro.dev/login%3Fidp%3DGoogle%26redirect_uri%3Dkiro%3A/kiro.kiroAgent/authenticate-success%26code_challenge%3DjOFkn1zxT5rDfZI0B84XHg7RE_xEbWqmP36fNtnZo2M%26code_challenge_method%3DS256%26state%3D4e59d8ac-1f91-4960-a911-473e2952759c ", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160853.310043:INFO:CONSOLE:34] "%cTRACE color: #888 [backup tracker] clearing pending backup creation untitled:/home/reader/develop/kiro/https%3A/prod.us-east-1.auth.desktop.kiro.dev/login%3Fidp%3DGoogle%26redirect_uri%3Dkiro%3A/kiro.kiroAgent/authenticate-success%26code_challenge%3DjOFkn1zxT5rDfZI0B84XHg7RE_xEbWqmP36fNtnZo2M%26code_challenge_method%3DS256%26state%3D4e59d8ac-1f91-4960-a911-473e2952759c ", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160853.311476:INFO:CONSOLE:34] "%cTRACE color: #888 [backup tracker] scheduling backup untitled:/home/reader/develop/kiro/https%3A/prod.us-east-1.auth.desktop.kiro.dev/login%3Fidp%3DGoogle%26redirect_uri%3Dkiro%3A/kiro.kiroAgent/authenticate-success%26code_challenge%3DjOFkn1zxT5rDfZI0B84XHg7RE_xEbWqmP36fNtnZo2M%26code_challenge_method%3DS256%26state%3D4e59d8ac-1f91-4960-a911-473e2952759c ", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160853.314903:INFO:CONSOLE:34] "%cTRACE color: #888 [backup tracker] scheduling backup untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%26code_challenge%3DjOFkn1zxT5rDfZI0B84XHg7RE_xEbWqmP36fNtnZo2M%26code_challenge_method%3DS256%26state%3D4e59d8ac-1f91-4960-a911-473e2952759c ", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160853.316985:INFO:CONSOLE:34] "%cTRACE color: #888 [backup tracker] clearing pending backup creation untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%26code_challenge%3DjOFkn1zxT5rDfZI0B84XHg7RE_xEbWqmP36fNtnZo2M%26code_challenge_method%3DS256%26state%3D4e59d8ac-1f91-4960-a911-473e2952759c ", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[68939:1120/160853.318377:INFO:CONSOLE:34] "%cTRACE color: #888 [backup tracker] scheduling backup untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%26code_challenge%3DjOFkn1zxT5rDfZI0B84XHg7RE_xEbWqmP36fNtnZo2M%26code_challenge_method%3DS256%26state%3D4e59d8ac-1f91-4960-a911-47




[72013:72013:1120/161513.321808:ERROR:ui/gl/angle_platform_impl.cc:42] Display.cpp:1093 (initialize): ANGLE Display::initialize error 12289: glXQueryExtensionsString returned NULL
ERR: Display.cpp:1093 (initialize): ANGLE Display::initialize error 12289: glXQueryExtensionsString returned NULL
[72013:72013:1120/161513.321887:ERROR:ui/gl/egl_util.cc:92] EGL Driver message (Critical) eglInitialize: glXQueryExtensionsString returned NULL
[72013:72013:1120/161513.321934:ERROR:ui/gl/gl_display.cc:639] eglInitialize OpenGLES failed with error EGL_NOT_INITIALIZED
[72013:72013:1120/161513.321980:ERROR:ui/gl/gl_display.cc:674] Initialization of all EGL display types failed.
[72013:72013:1120/161513.322022:ERROR:ui/ozone/common/gl_ozone_egl.cc:26] GLDisplayEGL::Initialize failed.
[72013:72013:1120/161513.334290:ERROR:ui/gl/angle_platform_impl.cc:42] Display.cpp:1093 (initialize): ANGLE Display::initialize error 12289: glXQueryExtensionsString returned NULL
ERR: Display.cpp:1093 (initialize): ANGLE Display::initialize error 12289: glXQueryExtensionsString returned NULL
[72013:72013:1120/161513.334401:ERROR:ui/gl/egl_util.cc:92] EGL Driver message (Critical) eglInitialize: glXQueryExtensionsString returned NULL
[72013:72013:1120/161513.334452:ERROR:ui/gl/gl_display.cc:639] eglInitialize OpenGL failed with error EGL_NOT_INITIALIZED, trying next display type
[72013:72013:1120/161513.334766:ERROR:ui/gl/angle_platform_impl.cc:42] Display.cpp:1093 (initialize): ANGLE Display::initialize error 12289: glXQueryExtensionsString returned NULL
ERR: Display.cpp:1093 (initialize): ANGLE Display::initialize error 12289: glXQueryExtensionsString returned NULL
[72013:72013:1120/161513.334842:ERROR:ui/gl/egl_util.cc:92] EGL Driver message (Critical) eglInitialize: glXQueryExtensionsString returned NULL
[72013:72013:1120/161513.334887:ERROR:ui/gl/gl_display.cc:639] eglInitialize OpenGLES failed with error EGL_NOT_INITIALIZED
[72013:72013:1120/161513.334929:ERROR:ui/gl/gl_display.cc:674] Initialization of all EGL display types failed.
[72013:72013:1120/161513.334969:ERROR:ui/ozone/common/gl_ozone_egl.cc:26] GLDisplayEGL::Initialize failed.
[72013:72013:1120/161513.339253:ERROR:components/viz/service/main/viz_main_impl.cc:189] Exiting GPU process due to errors during initialization
libva error: dlopen of /usr/lib/x86_64-linux-gnu/dri/iHD_drv_video.so failed: libigdgmm.so.12: cannot open shared object file: No such file or directory
libva error: dlopen of /usr/lib/x86_64-linux-gnu/dri/i965_drv_video.so failed: libdrm_intel.so.1: cannot open shared object file: No such file or directory
[72031:72031:1120/161513.405484:ERROR:media/gpu/vaapi/vaapi_wrapper.cc:1631] vaInitialize failed: unknown libva error
MESA-LOADER: failed to open dri: /run/opengl-driver/lib/gbm/dri_gbm.so: cannot open shared object file: No such file or directory (search paths /run/opengl-driver/lib/gbm, suffix _gbm)
[71644:71775:1120/161518.024478:ERROR:google_apis/gcm/engine/registration_request.cc:292] Registration response error message: DEPRECATED_ENDPOINT
[main 2025-11-20T11:15:18.993Z] update#checkForUpdates, state =  idle
[main 2025-11-20T11:15:18.994Z] update#setState checking for updates
[main 2025-11-20T11:15:18.996Z] resolveShellEnv(): skipped (VSCODE_CLI is set)
[main 2025-11-20T11:15:18.999Z] #2: https://prod.download.desktop.kiro.dev/stable/metadata-linux-x64-stable.json?bg=true - begin undefined L4 { b: {}, a: [Object: null prototype] {} }
[main 2025-11-20T11:15:19.734Z] #2: https://prod.download.desktop.kiro.dev/stable/metadata-linux-x64-stable.json?bg=true - end undefined 200 {
  'accept-ranges': 'bytes',
  'cache-control': 'no-store',
  'content-length': '786',
  'content-type': 'application/json',
  date: 'Thu, 20 Nov 2025 11:15:20 GMT',
  etag: '"e4a101082181e636be8c0d34cc6910cf"',
  'last-modified': 'Mon, 17 Nov 2025 15:40:11 GMT',
  server: 'AmazonS3',
  vary: 'Origin',
  via: '1.1 650363fa7465273dd14fde086a851a86.cloudfront.net (CloudFront)',
  'x-amz-cf-id': 'BEPdFzLP_jE9D_teW439CMqSblUIU_ZYqfDvPC9tg2oOCHYLKPIu6g==',
  'x-amz-cf-pop': 'AMS58-P1',
  'x-amz-server-side-encryption': 'aws:kms',
  'x-amz-server-side-encryption-aws-kms-key-id': 'arn:aws:kms:us-west-2:677276099600:key/a3c5260a-564a-4ca2-bdce-2c55ba8b86e5',
  'x-amz-version-id': '5QO5xUpOwat5w9cTzAF_bmqo2u4RmVKs',
  'x-cache': 'Miss from cloudfront'
}
[main 2025-11-20T11:15:19.737Z] update#setState available for download
[70406:1120/161519.740721:INFO:CONSOLE:34] "%cTRACE color: #888 [Extensions]: Checking for updates. Reason: Product update", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[71644:71775:1120/161522.660009:ERROR:google_apis/gcm/engine/connection_factory_impl.cc:434] Failed to connect to MCS endpoint with error -120
[70406:1120/161543.015228:INFO:CONSOLE:34] "%cDEBUG background: #eee; color: #888 Comments: URIs of continue on comments to add to storage .", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[chromium xdg-open] Opening Kiro link...
[71644:71775:1120/161545.087369:ERROR:google_apis/gcm/engine/registration_request.cc:292] Registration response error message: DEPRECATED_ENDPOINT
libva error: dlopen of /usr/lib/x86_64-linux-gnu/dri/iHD_drv_video.so failed: libigdgmm.so.12: cannot open shared object file: No such file or directory
libva error: dlopen of /usr/lib/x86_64-linux-gnu/dri/i965_drv_video.so failed: libdrm_intel.so.1: cannot open shared object file: No such file or directory
MESA-LOADER: failed to open dri: /run/opengl-driver/lib/gbm/dri_gbm.so: cannot open shared object file: No such file or directory (search paths /run/opengl-driver/lib/gbm, suffix _gbm)
[72147:1120/161545.502400:WARNING:sandbox/policy/linux/sandbox_linux.cc:415] InitializeSandbox() called with multiple threads in process gpu-process.
[main 2025-11-20T11:15:45.610Z] [File Watcher (node.js)] Request to start watching: /home/reader/.config/Kiro/User (excludes: <none>, includes: <all>, filter: <none>, correlationId: <none>),/home/reader/.config/Kiro/User/settings.json (excludes: <none>, includes: <all>, filter: <none>, correlationId: <none>)
[main 2025-11-20T11:15:45.618Z] [File Watcher (node.js)] ignoring a path for watching who's stat info failed to resolve: /home/reader/.config/Kiro/User/settings.json (error: Error: ENOENT: no such file or directory, stat '/home/reader/.config/Kiro/User/settings.json')
[main 2025-11-20T11:15:45.618Z] [File Watcher (node.js)] starting fs.watchFile() on /home/reader/.config/Kiro/User/settings.json (correlationId: undefined)
[main 2025-11-20T11:15:45.636Z] Sending env to running instance...
[main 2025-11-20T11:15:45.643Z] [File Watcher (node.js)] Started watching: '/home/reader/.config/Kiro/User'
[main 2025-11-20T11:15:45.651Z] Received data from other instance:  {
  _: [
    '/home/reader/develop/kiro/kiro:/kiro.kiroAgent/authenticate-success?code=85d32e3e-8d6f-4daa-bf14-0cf8a90b31e7&state=0ce4a200-4a5d-4bab-bb5b-6a18bd4a0195'
  ],
  diff: false,
  merge: false,
  add: false,
  remove: false,
  goto: false,
  'new-window': false,
  'reuse-window': false,
  wait: false,
  help: false,
  'list-extensions': false,
  'show-versions': false,
  'pre-release': false,
  'update-extensions': false,
  version: false,
  verbose: true,
  status: false,
  'prof-startup': false,
  'no-cached-data': false,
  'prof-v8-extensions': false,
  'disable-extensions': false,
  'disable-lcd-text': false,
  'disable-gpu': true,
  'disable-chromium-sandbox': false,
  sandbox: false,
  telemetry: false,
  debugRenderer: false,
  'enable-smoke-test-driver': false,
  logExtensionHostCommunication: false,
  'skip-release-notes': false,
  'skip-welcome': false,
  'skip-onboarding': false,
  'disable-telemetry': false,
  'disable-updates': false,
  transient: false,
  'use-inmemory-secretstorage': false,
  'disable-workspace-trust': false,
  'disable-crash-reporter': false,
  'skip-add-to-recently-opened': false,
  'open-url': false,
  'file-write': false,
  'file-chmod': false,
  force: false,
  'do-not-sync': false,
  'do-not-include-pack-dependencies': false,
  trace: false,
  'trace-memory-infra': false,
  'preserve-env': false,
  'force-user-env': false,
  'force-disable-user-env': false,
  'open-devtools': false,
  'disable-gpu-sandbox': false,
  '__enable-file-policy': false,
  'enable-coi': false,
  'enable-rdp-display-tracking': false,
  'disable-layout-restore': false,
  'disable-experiments': false,
  'no-proxy-server': false,
  'no-sandbox': false,
  nolazy: false,
  'force-renderer-accessibility': false,
  'ignore-certificate-errors': false,
  'allow-insecure-localhost': false,
  'disable-dev-shm-usage': false,
  'profile-temp': false,
  logsPath: '/home/reader/.config/Kiro/logs/20251120T161545'
} {
  SHELL: '/bin/bash',
  SESSION_MANAGER: 'local/lib15-lin-miniPC-2:@/tmp/.ICE-unix/3038,unix/lib15-lin-miniPC-2:/tmp/.ICE-unix/3038',
  WINDOWID: '62922546',
  QT_ACCESSIBILITY: '1',
  COLORTERM: 'truecolor',
  XDG_CONFIG_DIRS: '/etc/xdg/xdg-xubuntu:/etc/xdg:/etc/xdg',
  XDG_SESSION_PATH: '/org/freedesktop/DisplayManager/Session0',
  XDG_MENU_PREFIX: 'xfce-',
  CLUTTER_BACKEND: 'x11',
  NIXPKGS_ALLOW_UNFREE: '1',
  LANGUAGE: 'ru',
  SSH_AUTH_SOCK: '/run/user/1001/keyring/ssh',
  GDK_PIXBUF_MODULE_FILE: '/nix/store/3f9ajzxcssb2n7vc1jp0fzlvl58craqy-librsvg-2.61.2/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache',
  XDG_SEAT: 'seat0',
  PWD: '/home/reader/develop/kiro',
  XDG_SESSION_DESKTOP: 'xubuntu',
  LOGNAME: 'reader',
  QT_QPA_PLATFORMTHEME: 'gtk2',
  XDG_SESSION_TYPE: 'x11',
  GPG_AGENT_INFO: '/run/user/1001/gnupg/S.gpg-agent:0:1',
  VSCODE_CODE_CACHE_PATH: '/home/reader/.config/Kiro/CachedData/f9ca0e5bdbe4a859cae02a509d4e3e9a7a719cdb',
  XAUTHORITY: '/home/reader/.Xauthority',
  ftp_proxy: 'http://proxy:3128',
  XDG_GREETER_DATA_DIR: '/var/lib/lightdm-data/reader',
  LD_PRELOAD: '',
  GDM_LANG: 'ru',
  HOME: '/home/reader',
  LANG: 'ru_RU.UTF-8',
  LS_COLORS: 'rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:',
  VSCODE_IPC_HOOK: '/run/user/1001/vscode-14351eb5-0.5.-main.sock',
  VTE_VERSION: '6800',
  GIO_EXTRA_MODULES: '/nix/store/3j2ykpv97m3jw2488xpad5g48wp8x7yd-dconf-0.40.0-lib/lib/gio/modules',
  VSCODE_CLI: '1',
  XDG_SEAT_PATH: '/org/freedesktop/DisplayManager/Seat0',
  https_proxy: 'http://172.22.138.45:7890',
  CHROME_DESKTOP: 'kiro.desktop',
  LESSCLOSE: '/usr/bin/lesspipe %s %s',
  XDG_SESSION_CLASS: 'user',
  ELECTRON_ENABLE_LOGGING: '1',
  CHROME_DEVEL_SANDBOX: '/nix/store/8kw5zqd44mc5ag2xx58r1cppr9lqy92n-chromium-142.0.7444.59-sandbox/bin/__chromium-suid-sandbox',
  TERM: 'xterm-256color',
  CHROME_WRAPPER: 'chromium',
  GTK_OVERLAY_SCROLLING: '0',
  LESSOPEN: '| /usr/bin/lesspipe %s',
  USER: 'reader',
  FTP_PROXY: 'http://proxy:3128',
  DISPLAY: ':0.0',
  VSCODE_PID: '70406',
  SHLVL: '3',
  HTTPS_PROXY: 'http://172.22.138.45:7890',
  HTTP_PROXY: 'http://172.22.138.45:7890',
  XDG_VTNR: '7',
  XDG_SESSION_ID: 'c2',
  http_proxy: 'http://172.22.138.45:7890',
  FC_FONTATIONS: '1',
  LD_LIBRARY_PATH: '/nix/store/djvx5blydrw975ymq2w3qdj7xzwmywn5-libdbusmenu-glib-16.04.0/lib:/nix/store/gb0zr4d17k98kgnlcr5xlw90a685k1vh-libva-2.22.0/lib:/nix/store/nsb1ji6fa6vdpx8bpawc4f9876zi72zr-pipewire-1.4.7/lib:/nix/store/b3gdmzfivf8dx6c6lvix14fybyig2i4w-wayland-1.23.1/lib:/nix/store/m5h40z387xjqmx0mhdss773qkyv4xild-gtk+3-3.24.49/lib:/nix/store/qjmz96pqjjdaaaq8dlkgx2yixz38hz2i-gtk4-4.18.6/lib:/nix/store/5cdzaagddbzip0rd0f9bfkfnq143bxd8-krb5-1.21.3-lib/lib',
  XDG_RUNTIME_DIR: '/run/user/1001',
  MM_NOTTTY: '1',
  ELECTRON_NO_ATTACH_CONSOLE: '1',
  XDG_DATA_DIRS: '/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/share:/nix/store/1zpgrxi5nakqkdd2k2rwrm37kbhqmdz5-gsettings-desktop-schemas-49.0/share/gsettings-schemas/gsettings-desktop-schemas-49.0:/nix/store/jg2rkynnxask3m29clsak49mg73nb2y1-gtk+3-3.24.51/share/gsettings-schemas/gtk+3-3.24.51:/nix/store/ayrq2fl6rmci12vjc8d0gcskvfvr3wgl-cups-2.4.14/share:/nix/store/m5h40z387xjqmx0mhdss773qkyv4xild-gtk+3-3.24.49/share:/nix/store/qjmz96pqjjdaaaq8dlkgx2yixz38hz2i-gtk4-4.18.6/share:/nix/store/2mbcx3xjdf4j4djj5r0vq18w9c9r60r6-adwaita-icon-theme-48.0/share:/nix/store/42vjv2dfzglf69h33p01irli7wvyphp4-hicolor-icon-theme-0.18/share:/nix/store/xfnjkhx5jf57gsqc912hxq5bqmv4r8v9-gsettings-desktop-schemas-48.0/share/gsettings-schemas/gsettings-desktop-schemas-48.0:/nix/store/m5h40z387xjqmx0mhdss773qkyv4xild-gtk+3-3.24.49/share/gsettings-schemas/gtk+3-3.24.49:/nix/store/qjmz96pqjjdaaaq8dlkgx2yixz38hz2i-gtk4-4.18.6/share/gsettings-schemas/gtk4-4.18.6:/usr/share/xubuntu:/usr/share/xfce4:/usr/local/share:/usr/share:/var/lib/snapd/desktop:/usr/share',
  GDK_BACKEND: 'x11',
  BROWSER: '/nix/store/0snahqb0rq6j7fsjan21ra3f4ni90xjq-chromium-wrapped-142.0.7444.59/bin/xdg-open',
  PATH: '/nix/store/8fjqhwcpasnzm5j7g0q67znahj0pws6k-glib-2.86.1-bin/bin:/nix/store/x1hg09529m2m87r2yf5v51xws1mqcrls-gnugrep-3.12/bin:/nix/store/jbz6j4iwnrvki1zl34hwcyj2i0m6l2y1-coreutils-9.8/bin:/nix/store/0snahqb0rq6j7fsjan21ra3f4ni90xjq-chromium-wrapped-142.0.7444.59/bin:/nix/store/zhhywq46y0bh5n6hz441r6xihg0dnhc6-kiro-wrapped-0.5.9/bin:/home/reader/apps/vscode:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/nix/store/xvxxgs9ssqmjwsxy4mq7awkbwsn54l0v-xdg-utils-1.2.1/bin',
  GDMSESSION: 'xubuntu',
  ORIGINAL_XDG_CURRENT_DESKTOP: 'undefined',
  DBUS_SESSION_BUS_ADDRESS: 'unix:path=/run/user/1001/bus',
  VSCODE_NLS_CONFIG: '{"userLocale":"ru","osLocale":"ru","resolvedLanguage":"en","defaultMessagesFile":"/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/nls.messages.json","locale":"ru","availableLanguages":{}}',
  _: '/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/kiro',
  VSCODE_CWD: '/home/reader/develop/kiro',
  NO_AT_BRIDGE: '1'
}
[main 2025-11-20T11:15:45.653Z] windowsManager#open
[main 2025-11-20T11:15:45.658Z] windowsManager#open pathsToOpen [
  {
    fileUri: zr {
      scheme: 'file',
      authority: '',
      path: '/home/reader/develop/kiro/kiro:/kiro.kiroAgent/authenticate-success?code=85d32e3e-8d6f-4daa-bf14-0cf8a90b31e7&state=0ce4a200-4a5d-4bab-bb5b-6a18bd4a0195',
      query: '',
      fragment: '',
      _formatted: 'file:///home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D85d32e3e-8d6f-4daa-bf14-0cf8a90b31e7%26state%3D0ce4a200-4a5d-4bab-bb5b-6a18bd4a0195',
      _fsPath: null
    },
    type: 1,
    exists: false
  }
]
[main 2025-11-20T11:15:45.660Z] windowsManager#doOpenFilesInExistingWindow {
  filesToOpen: {
    filesToOpenOrCreate: [ [Object] ],
    filesToDiff: [],
    filesToMerge: [],
    remoteAuthority: undefined
  }
}
[main 2025-11-20T11:15:45.669Z] windowsManager#open used window count 1 (workspacesToOpen: 0, foldersToOpen: 0, emptyToRestore: 0, maybeOpenEmptyWindow: false)
[main 2025-11-20T11:15:45.676Z] Sent env to running instance. Terminating...
[main 2025-11-20T11:15:45.678Z] Lifecycle#kill()
[70406:1120/161545.679616:INFO:CONSOLE:34] "%cTRACE color: #888 [backup tracker] scheduling backup untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D85d32e3e-8d6f-4daa-bf14-0cf8a90b31e7%26state%3D0ce4a200-4a5d-4bab-bb5b-6a18bd4a0195 ", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[main 2025-11-20T11:15:45.680Z] Lifecycle#onWillShutdown.fire()
[70406:1120/161545.696568:INFO:CONSOLE:34] "%cTRACE color: #888 [backup tracker] clearing pending backup creation untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D85d32e3e-8d6f-4daa-bf14-0cf8a90b31e7%26state%3D0ce4a200-4a5d-4bab-bb5b-6a18bd4a0195 ", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[70406:1120/161545.697792:INFO:CONSOLE:34] "%cTRACE color: #888 [backup tracker] scheduling backup untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D85d32e3e-8d6f-4daa-bf14-0cf8a90b31e7%26state%3D0ce4a200-4a5d-4bab-bb5b-6a18bd4a0195 ", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[70406:1120/161545.795480:INFO:CONSOLE:34] "%cTRACE color: #888 [History stack global-default]: notifyNavigation() (editor: untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D85d32e3e-8d6f-4daa-bf14-0cf8a90b31e7%26state%3D0ce4a200-4a5d-4bab-bb5b-6a18bd4a0195, event: <none>)", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[70406:1120/161545.795935:INFO:CONSOLE:34] "%cTRACE color: #888 [History stack global-default]: notifyNavigation() not ignoring (editor: untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D85d32e3e-8d6f-4daa-bf14-0cf8a90b31e7%26state%3D0ce4a200-4a5d-4bab-bb5b-6a18bd4a0195, event: <none>)", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[70406:1120/161545.796250:INFO:CONSOLE:34] "%cTRACE color: #888 [History stack global-default]: onSelectionAwareEditorNavigation() (editor: untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D85d32e3e-8d6f-4daa-bf14-0cf8a90b31e7%26state%3D0ce4a200-4a5d-4bab-bb5b-6a18bd4a0195, event: <none>)", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[70406:1120/161545.796539:INFO:CONSOLE:34] "%cTRACE color: #888 [History stack global-default]: add() (editor: untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D85d32e3e-8d6f-4daa-bf14-0cf8a90b31e7%26state%3D0ce4a200-4a5d-4bab-bb5b-6a18bd4a0195, event: <none>)", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[70406:1120/161545.796855:INFO:CONSOLE:34] "%cTRACE color: #888 [History stack global-default]: index: 1, navigating: false
- group: 0, editor: untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D182e7613-1ba3-440c-87b4-6a5b6fdeed79%26state%3De53eec57-6a6f-4442-8b62-151dd3cc6bde, selection: <none>
- group: 0, editor: untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D85d32e3e-8d6f-4daa-bf14-0cf8a90b31e7%26state%3D0ce4a200-4a5d-4bab-bb5b-6a18bd4a0195, selection: line: 1-1, col:  1-1
			", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[70406:1120/161545.860564:INFO:CONSOLE:34] "%cTRACE color: #888 CommandService#executeCommand _setContext", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[70406:1120/161545.861043:INFO:CONSOLE:34] "%cTRACE color: #888 CommandService#executeCommand _setContext", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[70406:1120/161545.861434:INFO:CONSOLE:34] "%cTRACE color: #888 [DEBOUNCE: Document Colors] for untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D85d32e3e-8d6f-4daa-bf14-0cf8a90b31e7%26state%3D0ce4a200-4a5d-4bab-bb5b-6a18bd4a0195 is 1000ms", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[70406:1120/161545.879004:INFO:CONSOLE:34] "%cTRACE color: #888 [DEBOUNCE: Links] for untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D85d32e3e-8d6f-4daa-bf14-0cf8a90b31e7%26state%3D0ce4a200-4a5d-4bab-bb5b-6a18bd4a0195 is 1000ms", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[70406:1120/161545.960998:INFO:CONSOLE:34] "%cTRACE color: #888 [DEBOUNCE: Folding] for untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D85d32e3e-8d6f-4daa-bf14-0cf8a90b31e7%26state%3D0ce4a200-4a5d-4bab-bb5b-6a18bd4a0195 is 200ms", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[70406:1120/161546.037755:INFO:CONSOLE:34] "%cTRACE color: #888 CommandService#executeCommand _setContext", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[70406:1120/161546.038307:INFO:CONSOLE:34] "%cTRACE color: #888 [DEBOUNCE: CodeLensProvide] for untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D85d32e3e-8d6f-4daa-bf14-0cf8a90b31e7%26state%3D0ce4a200-4a5d-4bab-bb5b-6a18bd4a0195 is 250ms", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[70406:1120/161546.692512:INFO:CONSOLE:34] "%cTRACE color: #888 [backup tracker] creating backup untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D85d32e3e-8d6f-4daa-bf14-0cf8a90b31e7%26state%3D0ce4a200-4a5d-4bab-bb5b-6a18bd4a0195 ", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[70406:1120/161546.693814:INFO:CONSOLE:34] "%cTRACE color: #888 [backup tracker] storing backup untitled:/home/reader/develop/kiro/kiro%3A/kiro.kiroAgent/authenticate-success%3Fcode%3D85d32e3e-8d6f-4daa-bf14-0cf8a90b31e7%26state%3D0ce4a200-4a5d-4bab-bb5b-6a18bd4a0195 ", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[70406:1120/161549.650386:INFO:CONSOLE:34] "%cDEBUG background: #eee; color: #888 Comments: URIs of continue on comments to add to storage .", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[70406:1120/161555.935637:INFO:CONSOLE:34] "%cDEBUG background: #eee; color: #888 Comments: URIs of continue on comments to add to storage .", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[71644:71775:1120/161641.750755:ERROR:google_apis/gcm/engine/registration_request.cc:292] Registration response error message: DEPRECATED_ENDPOINT
[70406:1120/161649.654708:INFO:CONSOLE:34] "%cDEBUG background: #eee; color: #888 Comments: URIs of continue on comments to add to storage .", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)



s#enable-unsafe-swiftshader) flag to opt in to lower security guarantees for trusted content.
[75797:1120/164136.205966:INFO:CONSOLE:34] "%cDEBUG background: #eee; color: #888 Comments: URIs of continue on comments to add to storage .", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)
[chromium xdg-open] Opening Kiro link...
Warning: 'k' is not in the list of known options, but still passed to Electron/Chromium.
Warning: 'i' is not in the list of known options, but still passed to Electron/Chromium.
Warning: 'o' is not in the list of known options, but still passed to Electron/Chromium.
libva error: dlopen of /usr/lib/x86_64-linux-gnu/dri/iHD_drv_video.so failed: libigdgmm.so.12: cannot open shared object file: No such file or directory
libva error: dlopen of /usr/lib/x86_64-linux-gnu/dri/i965_drv_video.so failed: libdrm_intel.so.1: cannot open shared object file: No such file or directory
MESA-LOADER: failed to open dri: /run/opengl-driver/lib/gbm/dri_gbm.so: cannot open shared object file: No such file or directory (search paths /run/opengl-driver/lib/gbm, suffix _gbm)
[78007:1120/164138.518364:WARNING:sandbox/policy/linux/sandbox_linux.cc:415] InitializeSandbox() called with multiple threads in process gpu-process.
[main 2025-11-20T11:41:38.601Z] [File Watcher (node.js)] Request to start watching: /home/reader/.config/Kiro/User (excludes: <none>, includes: <all>, filter: <none>, correlationId: <none>),/home/reader/.config/Kiro/User/settings.json (excludes: <none>, includes: <all>, filter: <none>, correlationId: <none>)
[main 2025-11-20T11:41:38.605Z] [File Watcher (node.js)] ignoring a path for watching who's stat info failed to resolve: /home/reader/.config/Kiro/User/settings.json (error: Error: ENOENT: no such file or directory, stat '/home/reader/.config/Kiro/User/settings.json')
[main 2025-11-20T11:41:38.605Z] [File Watcher (node.js)] starting fs.watchFile() on /home/reader/.config/Kiro/User/settings.json (correlationId: undefined)
[main 2025-11-20T11:41:38.612Z] Sending env to running instance...
[main 2025-11-20T11:41:38.613Z] [File Watcher (node.js)] Started watching: '/home/reader/.config/Kiro/User'
[main 2025-11-20T11:41:38.621Z] Received data from other instance:  {
  _: [],
  diff: false,
  merge: false,
  add: false,
  remove: false,
  goto: false,
  'new-window': false,
  'reuse-window': true,
  wait: false,
  help: false,
  'list-extensions': false,
  'show-versions': false,
  'pre-release': false,
  'update-extensions': false,
  version: false,
  verbose: true,
  status: false,
  'prof-startup': false,
  'no-cached-data': false,
  'prof-v8-extensions': false,
  'disable-extensions': false,
  'disable-lcd-text': false,
  'disable-gpu': true,
  'disable-chromium-sandbox': false,
  sandbox: false,
  telemetry: false,
  debugRenderer: false,
  'enable-smoke-test-driver': false,
  logExtensionHostCommunication: false,
  'skip-release-notes': false,
  'skip-welcome': false,
  'skip-onboarding': false,
  'disable-telemetry': false,
  'disable-updates': false,
  transient: false,
  'use-inmemory-secretstorage': false,
  'disable-workspace-trust': false,
  'disable-crash-reporter': false,
  'skip-add-to-recently-opened': false,
  'open-url': false,
  'file-write': false,
  'file-chmod': false,
  force: false,
  'do-not-sync': false,
  'do-not-include-pack-dependencies': false,
  trace: false,
  'trace-memory-infra': false,
  'preserve-env': false,
  'force-user-env': false,
  'force-disable-user-env': false,
  'open-devtools': false,
  'disable-gpu-sandbox': false,
  '__enable-file-policy': false,
  'enable-coi': false,
  'enable-rdp-display-tracking': false,
  'disable-layout-restore': false,
  'disable-experiments': false,
  'no-proxy-server': false,
  'no-sandbox': false,
  nolazy: false,
  'force-renderer-accessibility': false,
  'ignore-certificate-errors': false,
  'allow-insecure-localhost': false,
  'disable-dev-shm-usage': false,
  'profile-temp': false,
  logsPath: '/home/reader/.config/Kiro/logs/20251120T164138'
} {
  SHELL: '/bin/bash',
  SESSION_MANAGER: 'local/lib15-lin-miniPC-2:@/tmp/.ICE-unix/3038,unix/lib15-lin-miniPC-2:/tmp/.ICE-unix/3038',
  WINDOWID: '62922546',
  QT_ACCESSIBILITY: '1',
  COLORTERM: 'truecolor',
  XDG_CONFIG_DIRS: '/etc/xdg/xdg-xubuntu:/etc/xdg:/etc/xdg',
  XDG_SESSION_PATH: '/org/freedesktop/DisplayManager/Session0',
  XDG_MENU_PREFIX: 'xfce-',
  CLUTTER_BACKEND: 'x11',
  NIXPKGS_ALLOW_UNFREE: '1',
  LANGUAGE: 'ru',
  SSH_AUTH_SOCK: '/run/user/1001/keyring/ssh',
  GDK_PIXBUF_MODULE_FILE: '/nix/store/3f9ajzxcssb2n7vc1jp0fzlvl58craqy-librsvg-2.61.2/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache',
  XDG_SEAT: 'seat0',
  PWD: '/home/reader/develop/kiro',
  XDG_SESSION_DESKTOP: 'xubuntu',
  LOGNAME: 'reader',
  QT_QPA_PLATFORMTHEME: 'gtk2',
  XDG_SESSION_TYPE: 'x11',
  GPG_AGENT_INFO: '/run/user/1001/gnupg/S.gpg-agent:0:1',
  VSCODE_CODE_CACHE_PATH: '/home/reader/.config/Kiro/CachedData/f9ca0e5bdbe4a859cae02a509d4e3e9a7a719cdb',
  XAUTHORITY: '/home/reader/.Xauthority',
  ftp_proxy: 'http://proxy:3128',
  XDG_GREETER_DATA_DIR: '/var/lib/lightdm-data/reader',
  LD_PRELOAD: '',
  GDM_LANG: 'ru',
  HOME: '/home/reader',
  LANG: 'ru_RU.UTF-8',
  LS_COLORS: 'rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:',
  VSCODE_IPC_HOOK: '/run/user/1001/vscode-14351eb5-0.5.-main.sock',
  VTE_VERSION: '6800',
  GIO_EXTRA_MODULES: '/nix/store/3j2ykpv97m3jw2488xpad5g48wp8x7yd-dconf-0.40.0-lib/lib/gio/modules',
  VSCODE_CLI: '1',
  XDG_SEAT_PATH: '/org/freedesktop/DisplayManager/Seat0',
  CHROME_DESKTOP: 'kiro.desktop',
  LESSCLOSE: '/usr/bin/lesspipe %s %s',
  XDG_SESSION_CLASS: 'user',
  ELECTRON_ENABLE_LOGGING: '1',
  CHROME_DEVEL_SANDBOX: '/nix/store/8kw5zqd44mc5ag2xx58r1cppr9lqy92n-chromium-142.0.7444.59-sandbox/bin/__chromium-suid-sandbox',
  TERM: 'xterm-256color',
  CHROME_WRAPPER: 'chromium',
  GTK_OVERLAY_SCROLLING: '0',
  LESSOPEN: '| /usr/bin/lesspipe %s',
  USER: 'reader',
  FTP_PROXY: 'http://proxy:3128',
  DISPLAY: ':0.0',
  VSCODE_PID: '75797',
  SHLVL: '3',
  XDG_VTNR: '7',
  XDG_SESSION_ID: 'c2',
  FC_FONTATIONS: '1',
  LD_LIBRARY_PATH: '/nix/store/djvx5blydrw975ymq2w3qdj7xzwmywn5-libdbusmenu-glib-16.04.0/lib:/nix/store/gb0zr4d17k98kgnlcr5xlw90a685k1vh-libva-2.22.0/lib:/nix/store/nsb1ji6fa6vdpx8bpawc4f9876zi72zr-pipewire-1.4.7/lib:/nix/store/b3gdmzfivf8dx6c6lvix14fybyig2i4w-wayland-1.23.1/lib:/nix/store/m5h40z387xjqmx0mhdss773qkyv4xild-gtk+3-3.24.49/lib:/nix/store/qjmz96pqjjdaaaq8dlkgx2yixz38hz2i-gtk4-4.18.6/lib:/nix/store/5cdzaagddbzip0rd0f9bfkfnq143bxd8-krb5-1.21.3-lib/lib',
  XDG_RUNTIME_DIR: '/run/user/1001',
  MM_NOTTTY: '1',
  ELECTRON_NO_ATTACH_CONSOLE: '1',
  XDG_DATA_DIRS: '/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/share:/nix/store/1zpgrxi5nakqkdd2k2rwrm37kbhqmdz5-gsettings-desktop-schemas-49.0/share/gsettings-schemas/gsettings-desktop-schemas-49.0:/nix/store/jg2rkynnxask3m29clsak49mg73nb2y1-gtk+3-3.24.51/share/gsettings-schemas/gtk+3-3.24.51:/nix/store/ayrq2fl6rmci12vjc8d0gcskvfvr3wgl-cups-2.4.14/share:/nix/store/m5h40z387xjqmx0mhdss773qkyv4xild-gtk+3-3.24.49/share:/nix/store/qjmz96pqjjdaaaq8dlkgx2yixz38hz2i-gtk4-4.18.6/share:/nix/store/2mbcx3xjdf4j4djj5r0vq18w9c9r60r6-adwaita-icon-theme-48.0/share:/nix/store/42vjv2dfzglf69h33p01irli7wvyphp4-hicolor-icon-theme-0.18/share:/nix/store/xfnjkhx5jf57gsqc912hxq5bqmv4r8v9-gsettings-desktop-schemas-48.0/share/gsettings-schemas/gsettings-desktop-schemas-48.0:/nix/store/m5h40z387xjqmx0mhdss773qkyv4xild-gtk+3-3.24.49/share/gsettings-schemas/gtk+3-3.24.49:/nix/store/qjmz96pqjjdaaaq8dlkgx2yixz38hz2i-gtk4-4.18.6/share/gsettings-schemas/gtk4-4.18.6:/usr/share/xubuntu:/usr/share/xfce4:/usr/local/share:/usr/share:/var/lib/snapd/desktop:/usr/share',
  GDK_BACKEND: 'x11',
  BROWSER: '/nix/store/ivb6n9vpd23cbrldx58jb8pyc157d1m1-chromium-wrapped-142.0.7444.59/bin/xdg-open',
  PATH: '/nix/store/8fjqhwcpasnzm5j7g0q67znahj0pws6k-glib-2.86.1-bin/bin:/nix/store/x1hg09529m2m87r2yf5v51xws1mqcrls-gnugrep-3.12/bin:/nix/store/jbz6j4iwnrvki1zl34hwcyj2i0m6l2y1-coreutils-9.8/bin:/nix/store/ivb6n9vpd23cbrldx58jb8pyc157d1m1-chromium-wrapped-142.0.7444.59/bin:/nix/store/0ydrb4qha1kkbq5qgmd8g764a94l7yaa-kiro-wrapped-0.5.9/bin:/home/reader/apps/vscode:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/nix/store/xvxxgs9ssqmjwsxy4mq7awkbwsn54l0v-xdg-utils-1.2.1/bin',
  GDMSESSION: 'xubuntu',
  ORIGINAL_XDG_CURRENT_DESKTOP: 'undefined',
  DBUS_SESSION_BUS_ADDRESS: 'unix:path=/run/user/1001/bus',
  VSCODE_NLS_CONFIG: '{"userLocale":"ru","osLocale":"ru","resolvedLanguage":"en","defaultMessagesFile":"/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/nls.messages.json","locale":"ru","availableLanguages":{}}',
  _: '/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/kiro',
  VSCODE_CWD: '/home/reader/develop/kiro',
  NO_AT_BRIDGE: '1'
}
[main 2025-11-20T11:41:38.624Z] Sent env to running instance. Terminating...
[main 2025-11-20T11:41:38.624Z] Lifecycle#kill()
[main 2025-11-20T11:41:38.625Z] Lifecycle#onWillShutdown.fire()
[77311:77333:1120/164139.162768:ERROR:google_apis/gcm/engine/registration_request.cc:292] Registration response error message: DEPRECATED_ENDPOINT
[75797:1120/164146.403035:INFO:CONSOLE:34] "%cDEBUG background: #eee; color: #888 Comments: URIs of continue on comments to add to storage .", source: vscode-file://vscode-app/nix/store/h3a243g2chbb9v8pqh2wrqpgaaq807cs-kiro-0.5.9/lib/kiro/resources/app/out/vs/workbench/workbench.desktop.main.js (34)


