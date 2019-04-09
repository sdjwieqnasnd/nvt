###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_nmap6_whois.nasl 12127 2018-10-26 13:14:31Z cfischer $
#
# Autogenerated NSE wrapper
#
# Authors:
# NSE-Script: jah
# NASL-Wrapper: autogenerated
#
# Copyright:
# NSE-Script: The Nmap Security Scanner (http://nmap.org)
# Copyright (C) 2013 Greenbone Networks GmbH, http://www.greenbone.net
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2
# (or any later version), as published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.803521");
  script_version("2019-04-08T06:04:46+0000");
  script_tag(name:"cvss_base", value:"0.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:N");
  script_tag(name:"last_modification", value:"2019-04-08 06:04:46 +0000 (Mon, 08 Apr 2019)");
  script_tag(name:"creation_date", value:"2013-02-28 19:00:10 +0530 (Thu, 28 Feb 2013)");
  script_name("Nmap NSE 6.01: whois");
  script_category(ACT_ATTACK);
  script_tag(name:"qod_type", value:"remote_analysis");
  script_copyright("NSE-Script: The Nmap Security Scanner; NASL-Wrapper: Greenbone Networks GmbH");
  script_family("Nmap NSE");
  script_dependencies("nmap_nse.nasl");
  script_mandatory_keys("Tools/Present/nmap6.01", "Tools/Launch/nmap_nse");

  script_add_preference(name:"http.pipeline", value:"", type:"entry");
  script_add_preference(name:"whodb", value:"", type:"entry");
  script_add_preference(name:"http-max-cache-size", value:"", type:"entry");

  script_tag(name:"summary", value:"Queries the WHOIS services of Regional Internet Registries (RIR)and attempts to retrieve
information about the IP Address Assignment which contains the Target IP Address.

The fields displayed contain information about the assignment and the organisation responsible for
managing the address space. When output verbosity is requested on the Nmap command line
('-v') extra information about the assignment will be displayed.

To determine which of the RIRs to query for a given Target IP Address this script utilises
Assignments Data hosted by IANA. The data is cached locally and then parsed for use as a lookup
table.  The locally cached files are refreshed periodically to help ensure the data is current.  If,
for any reason, these files are not available to the script then a default sequence of Whois
services are queried in turn until: the desired record is found or a referral to another (defined)
Whois service is found or until the sequence is exhausted without finding either a referral or the
desired record.

The script will recognize a referral to another Whois service if that service is defined in the
script and will continue by sending a query to the referred service.  A record is assumed to be the
desired one if it does not contain a referral.

To reduce the number unnecessary queries sent to Whois services a record cache is employed and the
entries in the cache can be applied to any targets within the range of addresses represented in the
record.

In certain circumstances, the ability to cache responses prevents the discovery of other, smaller IP
address assignments applicable to the target because a cached response is accepted in preference to
sending a Whois query.  When it is important to ensure that the most accurate information about the
may use a cached record to a size that helps ensure that smaller assignments will be discovered.

SYNTAX:

http.pipeline:  If set, it represents the number of HTTP requests that'll be
pipelined (ie, sent in a single request). This can be set low to make
debugging easier, or it can be set high to test how a server reacts (its
chosen max is ignored).

whodb:  Takes any of the following values, which may be combined:

  - 'whodb=nofile' Prevent the use of IANA assignments data and instead query the default services.

  - 'whodb=nofollow' Ignore referrals and instead display the first record obtained.

  - 'whodb=nocache' Prevent the acceptance of records in the cache when they apply to large ranges of addresses.

  - 'whodb=[service-ids]' Redefine the default services to query.  Implies 'nofile'.

http-max-cache-size:  The maximum memory size (in bytes) of the cache.");

  exit(0);
}

include("http_func.inc");

i = 0;

pref = script_get_preference("http.pipeline");
if (!isnull(pref) && pref != "") {
  args[i++] = string('"', 'http.pipeline', '=', pref, '"');
}
pref = script_get_preference("whodb");
if (!isnull(pref) && pref != "") {
  args[i++] = string('"', 'whodb', '=', pref, '"');
}
pref = http_get_user_agent();
if (!isnull(pref) && pref != "") {
  args[i++] = string('"', 'http.useragent', '=', pref, '"');
}
pref = script_get_preference("http-max-cache-size");
if (!isnull(pref) && pref != "") {
  args[i++] = string('"', 'http-max-cache-size', '=', pref, '"');
}

argv = make_list("nmap", "--script=whois", "-sn", "-Pn", get_host_ip());

if(i > 0) {
  scriptArgs = "--script-args=";
  foreach arg(args) {
    scriptArgs += arg + ",";
  }
  argv = make_list(argv, scriptArgs);
}

if(TARGET_IS_IPV6())
  argv = make_list(argv, "-6");

timing_policy = get_kb_item("Tools/nmap/timing_policy");
if(timing_policy =~ '^-T[0-5]$')
  argv = make_list(argv, timing_policy);

source_iface = get_preference("source_iface");
if(source_iface =~ '^[0-9a-zA-Z:_]+$') {
  argv = make_list(argv, "-e");
  argv = make_list(argv, source_iface);
}

res = pread(cmd:"nmap", argv:argv);

if(res)
{
  foreach line (split(res))
  {
    if(ereg(pattern:"^\|",string:line)) {
      result +=  substr(chomp(line),2) + '\n';
    }

    error = eregmatch(string:line, pattern:"^nmap: (.*)$");
    if (error) {
      msg = string('Nmap command failed with following error message:\n', line);
      log_message(data : msg);
    }
  }

  if("whois" >< result) {
    msg = string('Result found by Nmap Security Scanner (whois.nse) ',
                'http://nmap.org:\n\n', result);
    log_message(data : msg);
  }
}
else
{
  msg = string('Nmap command failed entirely:\n', 'nmap ', argv);
  log_message(data: msg);
}
