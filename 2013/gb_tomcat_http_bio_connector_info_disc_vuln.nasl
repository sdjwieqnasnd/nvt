###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_tomcat_http_bio_connector_info_disc_vuln.nasl 11865 2018-10-12 10:03:43Z cfischer $
#
# Apache Tomcat HTTP BIO Connector Information Disclosure Vulnerability
#
# Authors:
# Antu Sanadi <santu@secpod.com>
#
# Copyright:
# Copyright (C) 2013 Greenbone Networks GmbH, http://www.greenbone.net
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2
# (or any later version), as published by the Free Software Foundation.
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

CPE = "cpe:/a:apache:tomcat";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.803780");
  script_version("$Revision: 11865 $");
  script_cve_id("CVE-2011-1475");
  script_bugtraq_id(47199);
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_tag(name:"last_modification", value:"$Date: 2018-10-12 12:03:43 +0200 (Fri, 12 Oct 2018) $");
  script_tag(name:"creation_date", value:"2013-11-27 13:41:31 +0530 (Wed, 27 Nov 2013)");
  script_name("Apache Tomcat HTTP BIO Connector Information Disclosure Vulnerability");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2013 Greenbone Networks GmbH");
  script_family("Web application abuses");
  script_dependencies("gb_apache_tomcat_detect.nasl");
  script_require_ports("Services/www", 8080);
  script_mandatory_keys("ApacheTomcat/installed");

  script_xref(name:"URL", value:"http://xforce.iss.net/xforce/xfdb/66676");
  script_xref(name:"URL", value:"http://www.securitytracker.com/id?1025303");
  script_xref(name:"URL", value:"http://cxsecurity.com/issue/WLB-2011040175");

  script_tag(name:"summary", value:"This host is running Apache Tomcat and is prone to information disclosure
  vulnerability.");
  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");
  script_tag(name:"solution", value:"Upgrade Apache Tomcat version to 7.0.12 or later.");
  script_tag(name:"insight", value:"The flaw is due to an improper handling of HTTP pipelining. A remote attacker
  could exploit this vulnerability to read responses intended for another user
  and obtain sensitive information.");
  script_tag(name:"affected", value:"Apache Tomcat version 7.0.x before 7.0.12");
  script_tag(name:"impact", value:"Successful exploitation will allow remote attackers to obtain sensitive
  information that may aid in further attacks.");

  script_tag(name:"qod_type", value:"remote_banner_unreliable");
  script_tag(name:"solution_type", value:"VendorFix");

  script_xref(name:"URL", value:"http://tomcat.apache.org");
  exit(0);
}

include("host_details.inc");
include("version_func.inc");

if( ! port = get_app_port( cpe:CPE ) ) exit( 0 );
if( ! vers = get_app_version( cpe:CPE, port:port ) ) exit( 0 );

if( version_in_range( version:vers, test_version:"7.0.0", test_version2:"7.0.11" ) ) {
  report = report_fixed_ver( installed_version:vers, fixed_version:"7.0.12" );
  security_message( port:port, data:report );
  exit( 0 );
}

exit( 99 );