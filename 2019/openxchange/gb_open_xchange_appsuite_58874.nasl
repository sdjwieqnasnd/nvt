###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_open_xchange_appsuite_58874.nasl 13455 2019-02-05 07:38:02Z mmartin $
#
# Open-Xchange (OX) AppSuite SSRF Vulnerability (58874)
#
# Authors:
# Christian Kuersteiner <christian.kuersteiner@greenbone.net>
#
# Copyright:
# Copyright (c) 2019 Greenbone Networks GmbH
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

CPE = "cpe:/a:open-xchange:open-xchange_appsuite";

if (description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.141832");
  script_version("$Revision: 13455 $");
  script_tag(name:"last_modification", value:"$Date: 2019-02-05 08:38:02 +0100 (Tue, 05 Feb 2019) $");
  script_tag(name:"creation_date", value:"2019-01-07 15:50:53 +0700 (Mon, 07 Jan 2019)");
  script_tag(name:"cvss_base", value:"4.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:S/C:P/I:N/A:N");

  script_cve_id("CVE-2018-12609");

  script_tag(name:"qod_type", value:"remote_banner");

  script_tag(name:"solution_type", value:"VendorFix");

  script_name("Open-Xchange (OX) AppSuite SSRF Vulnerability (58874)");

  script_category(ACT_GATHER_INFO);

  script_copyright("This script is Copyright (C) 2019 Greenbone Networks GmbH");
  script_family("Web application abuses");
  script_dependencies("gb_ox_app_suite_detect.nasl");
  script_mandatory_keys("open_xchange_appsuite/installed");

  script_tag(name:"summary", value:"OX AppSuite is prone to a Server-Side Request Forgery vulnerability.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"Using specific XML tags within Powerpoint presentations can be used to trigger
network requests on the server side while converting the document.");

  script_tag(name:"affected", value:"OX AppSuite version 7.8.4 and prior.");

  script_tag(name:"solution", value:"Update to version 7.8.4-rev5, 7.8.3-rev7, 7.6.3-rev4 or later.");

  script_xref(name:"URL", value:"https://seclists.org/fulldisclosure/2019/Jan/10");

  exit(0);
}

include("host_details.inc");
include("version_func.inc");

if (!port = get_app_port(cpe: CPE))
  exit(0);

if (!version = get_app_version(cpe: CPE, port: port))
  exit(0);

if (!revision = get_kb_item("open_xchange_appsuite/" + port + "/revision"))
  exit(0);

version += '.' + revision;

if (version_is_less(version: version, test_version: "7.6.3.4")) {
  report = report_fixed_ver(installed_version: version, fixed_version: "7.6.3.4");
  security_message(port: port, data: report);
  exit(0);
}

if (version_in_range(version: version, test_version: "7.6.4", test_version2: "7.8.3.6")) {
  report = report_fixed_ver(installed_version: version, fixed_version: "7.8.3.7");
  security_message(port: port, data: report);
  exit(0);
}

if (version_in_range(version: version, test_version: "7.8.4", test_version2: "7.8.4.4")) {
  report = report_fixed_ver(installed_version: version, fixed_version: "7.8.4.5");
  security_message(port: port, data: report);
  exit(0);
}

exit(99);
