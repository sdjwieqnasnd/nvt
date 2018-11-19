###############################################################################
# OpenVAS Vulnerability Test
#
# Ubuntu Update for thunderbird USN-2673-1
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2015 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.842375");
  script_version("$Revision: 12381 $");
  script_tag(name:"last_modification", value:"$Date: 2018-11-16 12:16:30 +0100 (Fri, 16 Nov 2018) $");
  script_tag(name:"creation_date", value:"2015-07-21 06:36:55 +0200 (Tue, 21 Jul 2015)");
  script_cve_id("CVE-2015-2721", "CVE-2015-2724", "CVE-2015-2734", "CVE-2015-2735",
                "CVE-2015-2736", "CVE-2015-2737", "CVE-2015-2738", "CVE-2015-2739",
                "CVE-2015-2740", "CVE-2015-4000");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_tag(name:"qod_type", value:"package");
  script_name("Ubuntu Update for thunderbird USN-2673-1");
  script_tag(name:"summary", value:"The remote host is missing an update for the 'thunderbird'
  package(s) announced via the referenced advisory.");
  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");
  script_tag(name:"insight", value:"Karthikeyan Bhargavan discovered that
NSS incorrectly handled state transitions for the TLS state machine. If a
remote attacker were able to perform a man-in-the-middle attack, this flaw
could be exploited to skip the ServerKeyExchange message and remove the
forward-secrecy property. (CVE-2015-2721)

Bob Clary, Christian Holler, Bobby Holley, and Andrew McCreight discovered
multiple memory safety issues in Thunderbird. If a user were tricked in to
opening a specially crafted website in a browsing context, an attacker
could potentially exploit these to cause a denial of service via
application crash, or execute arbitrary code with the privileges of the
user invoking Thunderbird. (CVE-2015-2724)

Ronald Crane discovered multiple security vulnerabilities. If a user were
tricked in to opening a specially crafted website in a browsing context,
an attacker could potentially exploit these to cause a denial of service
via application crash, or execute arbitrary code with the privileges of
the user invoking Thunderbird. (CVE-2015-2734, CVE-2015-2735,
CVE-2015-2736, CVE-2015-2737, CVE-2015-2738, CVE-2015-2739, CVE-2015-2740)

Matthew Green discovered a DHE key processing issue in NSS where a MITM
could force a server to downgrade TLS connections to 512-bit export-grade
cryptography. An attacker could potentially exploit this to impersonate
the server. (CVE-2015-4000)");
  script_tag(name:"affected", value:"thunderbird on Ubuntu 14.10,
  Ubuntu 14.04 LTS,
  Ubuntu 12.04 LTS");
  script_tag(name:"solution", value:"Please Install the Updated Packages.");
  script_xref(name:"USN", value:"2673-1");
  script_xref(name:"URL", value:"http://www.ubuntu.com/usn/usn-2673-1/");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2015 Greenbone Networks GmbH");
  script_family("Ubuntu Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/ubuntu_linux", "ssh/login/packages", re:"ssh/login/release=UBUNTU(14\.10|14\.04 LTS|12\.04 LTS)");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

release = dpkg_get_ssh_release();

res = "";
if(release == NULL){
  exit(0);
}

if(release == "UBUNTU14.10")
{

  if ((res = isdpkgvuln(pkg:"thunderbird", ver:"1:31.8.0+build1-0ubuntu0.14.10.1", rls:"UBUNTU14.10")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}


if(release == "UBUNTU14.04 LTS")
{

  if ((res = isdpkgvuln(pkg:"thunderbird", ver:"1:31.8.0+build1-0ubuntu0.14.04.1", rls:"UBUNTU14.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}


if(release == "UBUNTU12.04 LTS")
{

  if ((res = isdpkgvuln(pkg:"thunderbird", ver:"1:31.8.0+build1-0ubuntu0.12.04.1", rls:"UBUNTU12.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
