// Web Dev Mini
// Copyright (c) 2020-2024 Grigore Stefan <g_stefan@yahoo.com>
// MIT License (MIT) <http://opensource.org/licenses/MIT>
// SPDX-FileCopyrightText: 2020-2024 Grigore Stefan <g_stefan@yahoo.com>
// SPDX-License-Identifier: MIT


var this_=module.exports;
var Dialog=require("electron").dialog;
var appLog=require("./application-log.js").log;

function alert(msg){
	Dialog.showMessageBox({
		type: "info",
		title: "alert",
		message: msg
	});
};

this_.cmdExit=null;
this_.cmdShow=null;
this_.cmdOpenBrowser=null;

this_.loadMenu=function(menu){
	menu.addItem("Open Web Dev Mini",this_.cmdShow);
	menu.addItem("Open Browser",this_.cmdOpenBrowser);
	menu.addSeparator();
	menu.addItem("Quit Web Dev Mini",this_.cmdExit);
};
