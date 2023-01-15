// Created by Grigore Stefan <g_stefan@yahoo.com>
// Public domain (Unlicense) <http://unlicense.org>
// SPDX-FileCopyrightText: 2023 Grigore Stefan <g_stefan@yahoo.com>
// SPDX-License-Identifier: Unlicense

messageAction("install");

Shell.removeDirRecursivelyForce(pathRepository + "/opt/web-dev");
exitIf(!Shell.copyDirRecursively("output", pathRepository + "/opt/web-dev"));
