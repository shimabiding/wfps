以下に本リポジトリの環境構築方法を記す。

使用するソフトウェアは以下の通りとする。
7z
  7z2408-extra.7z
VSCode
  VSCode-win32-x64-1.95.2
postgresql portable
  postgresql-16.1-1-windows-x64-full

以下の通りC:\直下にディレクトリおよびbatファイルを作成する。
C:
  \ws
    \7z2408-extra
    \pgsql
    \repos
    \vsc
    templete.bat
    vscRun.bat

作成した各ディレクトリの直下に実行ファイルが来るよう展開する。
Windows標準機能の展開は低速であるため、7zaがあるディレクトリにパスを通し、配置したいディレクトリにアーカイブを置き、そのディレクトリにcdしてから7zaを実行するとよい。
実行コマンドの例は次の通りである。7za x archive.zip
batファイルには以下の通り書き込むこと。

[templete.bat]
--------------------------------------------
set PATH=C:\ws\7z2408-extra;%PATH%
set PATH=C:\ws\vsc;%PATH%
set PATH=C:\ws\vsc\data\user-data\User\globalStorage\ms-dotnettools.vscode-dotnet-runtime;%PATH%
--------------------------------------------

[vscRun.bat]
--------------------------------------------
call C:\ws\templete.bat
C:\ws\vsc\Code.exe
--------------------------------------------

今回はvscをポータブルモードで使用する。
ポータブルモードのトリガーはCode.exeと同一の階層にdataという名前のディレクトリを作成することである。
作成後はvscRun.batから起動する。以後、Code.exeではなくvscRun.batから起動すること。

VSCodeで実行すべき事項
下記Extensionの導入
C$
Git Graph
IntelliCode
IntellSence
PowerShell

MinGitの導入
  作者のリポジトリにあるprtの中のDocumentからMinGitを導入、VSCodeのオプションへ追記すること。

最期に、本リポジトリをCloneすれば導入は完了となる。
Ctrl+Shift+@でターミナルを開きbuild.ps1を実行することで、実行ファイルがコンパイルされる。
同一ディレクトリにNpgsql.dllとMono.Security.dllを配置した状態で実行ファイルを実行すること。




