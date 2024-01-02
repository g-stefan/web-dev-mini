// Created by Grigore Stefan <g_stefan@yahoo.com>
// Public domain (Unlicense) <http://unlicense.org>
// SPDX-FileCopyrightText: 2023-2024 Grigore Stefan <g_stefan@yahoo.com>
// SPDX-License-Identifier: Unlicense

messageAction("make.build-web");

if (Shell.directoryExists("output/library")) {
	return;
};

Fabricare.include("make.build-web.apache-httpd");
Fabricare.include("make.build-web.hypertext-preprocessor");
Fabricare.include("make.build-web.electron");

messageAction("make.build-web [config]");

Shell.copyDirRecursively("LICENSES", "output/LICENSES");
Shell.copyDirRecursively("source/web-dev-mini.app", "output/library/web-dev-mini");
Shell.copyDirRecursively("source/application", "output/application");
Shell.copyDirRecursively("source/config", "output/config");

//

Console.writeLn("Done");
