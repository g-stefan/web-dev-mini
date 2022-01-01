//
// Copyright (c) 2020-2022 Grigore Stefan <g_stefan@yahoo.com>
// Created by Grigore Stefan <g_stefan@yahoo.com>
//
// MIT License (MIT) <http://opensource.org/licenses/MIT>
//

var this_=module.exports;

var cwd=process.cwd();
var fs=require("fs");
var appLog=require("./application-log.js").log;

//
// Default config values
//

this_.config= {
	"application.name": "Web-Dev-Mini",
	"apache-http-server.http.address": "127.0.0.1",
	"apache-http-server.http.port": 80,
	"admin.email": "admin@localhost",
	"developer": false,
	"open.default": "application"
};

var configData=null;
var config= {};

try {
	configData=fs.readFileSync(cwd+"/config/config.json", {encoding:"utf-8"});
	config=JSON.parse(configData);
} catch(e) {
	appLog(e.stack,"config.exception");
	return;
};

for(var k in this_.config) {
	if(k in config) {
		this_.config[k]=config[k];
	};
};
