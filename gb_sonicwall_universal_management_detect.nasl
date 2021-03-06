###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_sonicwall_universal_management_detect.nasl 11885 2018-10-12 13:47:20Z cfischer $
#
# Sonicwall GMS Detection
#
# Authors:
# Michael Meyer <michael.meyer@greenbone.net>
#
# Copyright:
# Copyright (c) 2016 Greenbone Networks GmbH
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version
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

if (description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.105871");
  script_tag(name:"cvss_base", value:"0.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:N");
  script_version("$Revision: 11885 $");
  script_tag(name:"last_modification", value:"$Date: 2018-10-12 15:47:20 +0200 (Fri, 12 Oct 2018) $");
  script_tag(name:"creation_date", value:"2016-08-16 11:54:25 +0200 (Tue, 16 Aug 2016)");
  script_name("Sonicwall GMS Detection");

  script_tag(name:"summary", value:"The script sends a connection request to the server and attempts to extract the version number from the reply.");

  script_tag(name:"qod_type", value:"remote_banner");

  script_category(ACT_GATHER_INFO);
  script_family("Product detection");
  script_copyright("This script is Copyright (C) 2016 Greenbone Networks GmbH");
  script_dependencies("find_service.nasl", "http_version.nasl");
  script_require_ports("Services/www", 80);
  script_exclude_keys("Settings/disable_cgi_scanning");
  exit(0);
}


include("http_func.inc");
include("http_keepalive.inc");
include("host_details.inc");

port = get_http_port( default:80 );

url = "/appliance/login";
req = http_get( item:url, port:port );
buf = http_keepalive_send_recv( port:port, data:req, bodyonly:FALSE );

if( buf !~ "<title>Dell SonicWALL Universal Management (Appliance|Host) Login</title>" ||
    "sonicwall.png" >!< buf ||
    "applianceUser" >!< buf ||
    "appliancePassword" >!< buf ) exit( 0 );

cpe = 'cpe:/a:dell:sonicwall_global_management_system';
vers = 'unknown';

set_kb_item( name:"sonicwall/global_management_system/installed", value:TRUE );

# only major version, no minor, no build. not usable for version based nvts
version = eregmatch( pattern:'>Version&nbsp;([0-9.]+[^<]+)<', string:buf );

if( ! isnull( version[1] ) )
{
  vers = version[1];
  cpe += ':' + vers;
  set_kb_item( name:"sonicwall/global_management_system/version", value:vers );
}

if( "<title>Dell SonicWALL Universal Management Appliance" >< buf ) set_kb_item( name:"sonicwall/global_management_system/is_appliance", value:TRUE );

register_product( cpe:cpe, location:"/", port:port, service:'www' );
report = build_detection_report( app:"Sonicwall GMS", version:vers, install:"/", cpe:cpe, concluded:version[0] );

log_message( port:port, data:report );
exit( 0 );

