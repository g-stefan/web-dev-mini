@quantum-script --execution-time --cmd "%0"
@exit %errorlevel%

Script.requireExtension("Shell");
Script.requireExtension("ShellFind");
Script.requireExtension("Console");
Script.requireExtension("JSON");
Script.requireExtension("SHA512");
Script.requireExtension("DateTime");
Script.requireExtension("Thread");

Console.writeLn("-> make-web web-dev-mini");

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
Shell.system("7z x -aoa ../../../vendor/electron-v13.1.5-win32-x64.zip");
Shell.chdir("..");
//
Shell.system("7zr x ../../vendor/electron-v13.1.5-modules.7z");
Shell.rename("electron-v13.1.5-modules","electron-modules");
//
Shell.mkdir("../../temp");
Shell.chdir("../../temp");
Shell.system("7zr x ../vendor/httpd-2.4.48-win64-msvc-2019.7z");
Shell.system("7z x -aoa ../vendor/httpd-2.4.48-win64-VS16.zip");
Shell.rename("Apache24","../output/library/apache-http-server");
Shell.copy("httpd-2.4.48-win64-msvc-2019/bin/rotatelogsw.exe","../output/library/apache-http-server/bin/rotatelogsw.exe");
Shell.chdir("../output/library");
Shell.chdir("apache-http-server");
Shell.removeDirRecursively("include");
Shell.removeDirRecursively("lib");
Shell.chdir("..");

//
Shell.mkdir("php");
Shell.chdir("php");
Shell.system("7z x -aoa ../../../vendor/php-8.0.8-Win32-vs16-x64.zip");
Shell.copy("../../../vendor/composer.phar","composer.phar");
Shell.chdir("..");
//
Shell.copy("../../vendor/vc-2019-redist.x64.exe","vc-2019-redist.x64.exe");
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
