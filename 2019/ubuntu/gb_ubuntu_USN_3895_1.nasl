# Copyright (C) 2019 Greenbone Networks GmbH
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (C) the respective author(s)
#
# SPDX-License-Identifier: GPL-2.0-or-later
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.843918");
  script_version("$Revision: 14086 $");
  script_cve_id("CVE-2019-3824");
  script_tag(name:"cvss_base", value:"4.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:S/C:N/I:N/A:P");
  script_tag(name:"last_modification", value:"$Date: 2019-03-11 10:05:57 +0100 (Mon, 11 Mar 2019) $");
  script_tag(name:"creation_date", value:"2019-02-27 04:15:12 +0100 (Wed, 27 Feb 2019)");
  script_name("Ubuntu Update for ldb USN-3895-1");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2019 Greenbone Networks GmbH");
  script_family("Ubuntu Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/ubuntu_linux", "ssh/login/packages", re:"ssh/login/release=UBUNTU(14\.04 LTS|18\.04 LTS|18\.10|16\.04 LTS)");

  script_xref(name:"USN", value:"3895-1");
  script_xref(name:"URL", value:"https://lists.ubuntu.com/archives/ubuntu-security-announce/2019-February/004781.html");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'ldb'
  package(s) announced via the USN-3895-1 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"It was discovered that LDB incorrectly handled certain search expressions.
A remote attacker could possibly use this issue to cause the Samba LDAP
process to crash, resulting in a denial of service.");

  script_tag(name:"affected", value:"ldb on Ubuntu 18.10,
  Ubuntu 18.04 LTS,
  Ubuntu 16.04 LTS,
  Ubuntu 14.04 LTS.");

  script_tag(name:"solution", value:"Please install the updated package(s).");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

release = dpkg_get_ssh_release();
if(!release) exit(0);

res = "";

if(release == "UBUNTU14.04 LTS")
{

  if ((res = isdpkgvuln(pkg:"libldb1", ver:"1:1.1.24-0ubuntu0.14.04.2", rls:"UBUNTU14.04 LTS", remove_arch:TRUE )) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}


if(release == "UBUNTU18.04 LTS")
{

  if ((res = isdpkgvuln(pkg:"libldb1", ver:"2:1.2.3-1ubuntu0.1", rls:"UBUNTU18.04 LTS", remove_arch:TRUE )) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}


if(release == "UBUNTU18.10")
{

  if ((res = isdpkgvuln(pkg:"libldb1", ver:"2:1.4.0+really1.3.5-2ubuntu0.1", rls:"UBUNTU18.10", remove_arch:TRUE )) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}


if(release == "UBUNTU16.04 LTS")
{

  if ((res = isdpkgvuln(pkg:"libldb1", ver:"2:1.1.24-1ubuntu3.1", rls:"UBUNTU16.04 LTS", remove_arch:TRUE )) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
