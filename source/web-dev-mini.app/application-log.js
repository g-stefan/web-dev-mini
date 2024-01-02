// Web Dev Mini
// Copyright (c) 2020-2024 Grigore Stefan <g_stefan@yahoo.com>
// MIT License (MIT) <http://opensource.org/licenses/MIT>
// SPDX-FileCopyrightText: 2020-2024 Grigore Stefan <g_stefan@yahoo.com>
// SPDX-License-Identifier: MIT


var this_=module.exports;

var cwd=process.cwd();
var fs=require("fs");

this_.log=function(message,level,core) {
	var timestamp=new Date().toISOString().slice(0,19).replace("T", " ");
	var fileDate=timestamp.slice(0,10);
	if(level==null) {
		level="message";
	};
	if(core==null) {
		core="web-dev-mini";
	};
	fs.appendFileSync(cwd+"/log/"+fileDate+"."+core+".log", timestamp+" ["+level+"]: "+message+"\r\n");
};

