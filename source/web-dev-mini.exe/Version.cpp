// Web Dev Mini
// Copyright (c) 2020-2023 Grigore Stefan <g_stefan@yahoo.com>
// MIT License (MIT) <http://opensource.org/licenses/MIT>
// SPDX-FileCopyrightText: 2020-2023 Grigore Stefan <g_stefan@yahoo.com>
// SPDX-License-Identifier: MIT

#include "Version.hpp"
#include "Version.rh"

namespace XYO::Version {

	static const char *version_ = WEBDEVMINI_VERSION_STR;
	static const char *build_ = WEBDEVMINI_VERSION_STR_BUILD;
	static const char *versionWithBuild_ = WEBDEVMINI_VERSION_STR_WITH_BUILD;
	static const char *datetime_ = WEBDEVMINI_VERSION_STR_DATETIME;

	const char *version() {
		return version_;
	};
	const char *build() {
		return build_;
	};
	const char *versionWithBuild() {
		return versionWithBuild_;
	};
	const char *datetime() {
		return datetime_;
	};

};
