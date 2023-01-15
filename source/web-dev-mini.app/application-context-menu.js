// Web Dev Mini
// Copyright (c) 2020-2023 Grigore Stefan <g_stefan@yahoo.com>
// MIT License (MIT) <http://opensource.org/licenses/MIT>
// SPDX-FileCopyrightText: 2020-2023 Grigore Stefan <g_stefan@yahoo.com>
// SPDX-License-Identifier: MIT


var this_=module.exports;

var path=require("path");
var cmdFind=require("./application-find.js");
var config=require("./application-config.js").config;
var spawn=require("child_process").spawn;
var cwd=process.cwd();
var BrowserWindow=require("electron").BrowserWindow;

var menu=[];

menu.push({
	label: "Print...",
	click(item, win) {
		win.webContents.print();
	}
});

menu.push({
	label: "Find...",
	click(item, win) {
		cmdFind(win);
	}
});

menu.push({
	type: "separator"
});

menu.push({
	label: "Reload",
	click(item, win) {
		win.webContents.reload();
	}
});

if(config["developer"]) {

	//	

};

require("electron-context-menu")({
	append: params => menu
});

