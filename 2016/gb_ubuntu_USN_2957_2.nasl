###############################################################################
# OpenVAS Vulnerability Test
#
# Ubuntu Update for libtasn1-6 USN-2957-2
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2016 Greenbone Networks GmbH, http://www.greenbone.net
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

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.842760");
  script_version("$Revision: 12381 $");
  script_tag(name:"last_modification", value:"$Date: 2018-11-16 12:16:30 +0100 (Fri, 16 Nov 2018) $");
  script_tag(name:"creation_date", value:"2016-05-17 16:25:18 +0200 (Tue, 17 May 2016)");
  script_cve_id("CVE-2016-4008");
  script_tag(name:"cvss_base", value:"4.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:N/I:N/A:P");
  script_tag(name:"qod_type", value:"package");
  script_name("Ubuntu Update for libtasn1-6 USN-2957-2");
  script_tag(name:"summary", value:"The remote host is missing an update for the 'libtasn1-6'
  package(s) announced via the referenced advisory.");
  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");
  script_tag(name:"insight", value:"USN-2957-1 fixed a vulnerability in Libtasn1.
  This update provides the corresponding update for Ubuntu 16.04 LTS.

  Original advisory details:

  Pascal Cuoq and Miod Vallat discovered that Libtasn1 incorrectly handled
  certain malformed DER certificates. A remote attacker could possibly use
  this issue to cause applications using Libtasn1 to hang, resulting in a
  denial of service.");
  script_tag(name:"affected", value:"libtasn1-6 on Ubuntu 16.04 LTS");
  script_tag(name:"solution", value:"Please Install the Updated Packages.");

  script_xref(name:"USN", value:"2957-2");
  script_xref(name:"URL", value:"http://www.ubuntu.com/usn/usn-2957-2/");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2016 Greenbone Networks GmbH");
  script_family("Ubuntu Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/ubuntu_linux", "ssh/login/packages", re:"ssh/login/release=UBUNTU16\.04 LTS");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

release = dpkg_get_ssh_release();

res = "";
if(release == NULL){
  exit(0);
}

if(release == "UBUNTU16.04 LTS")
{

  if ((res = isdpkgvuln(pkg:"libtasn1-6:i386", ver:"4.7-3ubuntu0.16.04.1", rls:"UBUNTU16.04 LTS")) != NULL)
  {
     security_message(data:res);
     exit(0);
  }

  if ((res = isdpkgvuln(pkg:"libtasn1-6:amd64", ver:"4.7-3ubuntu0.16.04.1", rls:"UBUNTU16.04 LTS")) != NULL)
  {
     security_message(data:res);
     exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}