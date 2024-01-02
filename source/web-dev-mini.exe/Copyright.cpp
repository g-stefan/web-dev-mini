// Web Dev Mini
// Copyright (c) 2020-2024 Grigore Stefan <g_stefan@yahoo.com>
// MIT License (MIT) <http://opensource.org/licenses/MIT>
// SPDX-FileCopyrightText: 2020-2024 Grigore Stefan <g_stefan@yahoo.com>
// SPDX-License-Identifier: MIT

#include "Copyright.hpp"
#include "Copyright.rh"

namespace WebDevMini::Copyright {

	static const char *copyright_ = WEBDEVMINI_COPYRIGHT;
	static const char *publisher_ = WEBDEVMINI_PUBLISHER;
	static const char *company_ = WEBDEVMINI_COMPANY;
	static const char *contact_ = WEBDEVMINI_CONTACT;

	const char *copyright() {
		return copyright_;
	};

	const char *publisher() {
		return publisher_;
	};

	const char *company() {
		return company_;
	};

	const char *contact() {
		return contact_;
	};

};
