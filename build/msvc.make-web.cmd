@quantum-script --execution-time --cmd "%0"
@exit %errorlevel%

Script.requireExtension("Shell");
Script.requireExtension("ShellFind");
Script.requireExtension("Console");
Script.requireExtension("JSON");
Script.requireExtension("SHA512");
Script.requireExtension("DateTime");
Script.requireExtension("Thread");

Console.writeLn("- web-dev-mini > make-web");

if(Shell.directoryExists("output/library")){
	return;
};

// Extract
Shell.mkdir("output");
Shell.chdir("output");
Shell.mkdir("library");
Shell.chdir("library");
//
Shell.mkdir("electron");
Shell.chdir("electron");
Shell.system("7z x -aoa ../../../vendor/electron-v16.0.2-win32-x64.zip");
Shell.chdir("..");
//
Shell.system("7zr x ../../vendor/electron-v16.0.2-modules.7z");
Shell.rename("electron-v16.0.2-modules","electron-modules");
//
Shell.mkdir("../../temp");
Shell.chdir("../../temp");
Shell.system("7zr x ../vendor/httpd-2.4.51-win64-msvc-2019.7z");
Shell.system("7z x -aoa ../vendor/httpd-2.4.51-win64-VS16.zip");
Shell.rename("Apache24","../output/library/apache-http-server");
Shell.copy("httpd-2.4.51-win64-msvc-2019/bin/rotatelogsw.exe","../output/library/apache-http-server/bin/rotatelogsw.exe");
Shell.chdir("../output/library");
Shell.chdir("apache-http-server");
Shell.removeDirRecursively("include");
Shell.removeDirRecursively("lib");
Shell.chdir("..");
//
//
Shell.mkdir("php");
Shell.chdir("php");
Shell.system("7z x -aoa ../../../vendor/php-8.0.13-Win32-vs16-x64.zip");
Shell.copy("../../../vendor/composer.phar","composer.phar");
Shell.chdir("..");
Shell.mkdir("../../temp");
Shell.chdir("../../temp");
Shell.system("7z x -aoa ../vendor/php_mailparse-3.1.2-8.0-ts-vs16-x64.zip");
Shell.copy("php_mailparse.dll","../output/library/php/ext/php_mailparse.dll");
Shell.chdir("../output/library");
//
Shell.copy("../../vendor/vc-2019-redist.x64.exe","vc-2019-redist.x64.exe");
Shell.copy("../../vendor/vc-2022-redist.x64.exe","vc-2022-redist.x64.exe");
//
Shell.copy("../../vendor/cacert.pem","cacert.pem");
Shell.chdir("..");
Shell.chdir("..");
Shell.copyDirRecursively("LICENSES","output/LICENSES");
Shell.copyDirRecursively("source/web-dev-mini.app","output/library/web-dev-mini");
Shell.copyDirRecursively("source/application","output/application");
Shell.copyDirRecursively("source/config","output/config");

//
Console.writeLn("Done");

