# ------------------------------------------------------------------------------
# Copyright 2014 Schuberg Philis, Created by Glenn ten Cate
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include("compat.inc");
include("global_settings.inc");

if(description)
{
 script_id(51799004);
 script_version ("$Revision: 0.1 $");
 script_cvs_date("$Date: 2014/01/29 13:37:00 $");

 script_name(english: "HTTP X-XSS-Protection: Response Header Usage");

 script_set_attribute(attribute:"synopsis", value:
"The remote web-application takes no steps to mitigate a class of web
application vulnerabilities." );
 script_set_attribute(attribute:"description", value:
"The remote web-application sets no X-XSS-Protection response header.

This header enables the Cross-site scripting (XSS) filter built into most recent web browsers.
It's usually enabled by default anyway, so the role of this header is to re-enable the
filter for this particular website if it was disabled by the user. This header is supported
in IE 8+, and in Chrome (not sure which versions). The anti-XSS filter was added in Chrome 4.
Its unknown if that version honored this header." );

  script_set_attribute(attribute:"solution", value:
"The following header needs to be set on all the pages of the web-application:

X-XSS-Protection: 1; mode=block");
 script_set_attribute(attribute:"risk_factor", value: "Low" );

 script_set_attribute(attribute:"see_also", value:"http://msdn.microsoft.com/en-us/library/dd565647%28v=vs.85%29.aspx");
 script_set_attribute(attribute:"plugin_publication_date", value:"2014/01/29");
 script_set_attribute(attribute:"plugin_type", value:"remote");
 script_end_attributes();
 script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:N/A:N");
 script_set_cvss_temporal_vector("CVSS2#E:U/RL:U/RC:ND");
 script_summary(english: "Reports web-application that don't use X-XSS-Protection: header");
 script_category(ACT_ATTACK);
 script_copyright(english:"This script is Copyright (C) SBP");
 script_family(english: "CGI abuses");
 script_dependencie("webmirror.nasl");
 script_require_ports("Services/www");
 exit(0);
}

include("http_func.inc");

port = get_http_port(default:80);
host = get_host_name();

soc = http_open_socket(port);
if (! soc) exit(0);

req = string("HEAD / HTTP/1.0\r\n\r\n");
send(socket:soc, data: req);
r = http_recv(socket: soc);
http_close_socket(soc);

if(eregmatch(pattern:'X-XSS-Protection:', string:r))
 exit(0,"Correct X-XSS-Protection found!\n\n");
 else
 resNessus = "X-XSS-Protection: NOT found

"+r;

 security_report_v4(port:port, severity:SECURITY_NOTE, extra:resNessus);
 exit(0,"Incorrect X-XSS-Protection: NOT found\r\n");
