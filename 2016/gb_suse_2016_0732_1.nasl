###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_suse_2016_0732_1.nasl 12381 2018-11-16 11:16:30Z cfischer $
#
# SuSE Update for libotr,libotr2 openSUSE-SU-2016:0732-1 (libotr,libotr2)
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
  script_oid("1.3.6.1.4.1.25623.1.0.851235");
  script_version("$Revision: 12381 $");
  script_tag(name:"last_modification", value:"$Date: 2018-11-16 12:16:30 +0100 (Fri, 16 Nov 2018) $");
  script_tag(name:"creation_date", value:"2016-03-13 06:17:05 +0100 (Sun, 13 Mar 2016)");
  script_cve_id("CVE-2016-2851");
  script_tag(name:"cvss_base", value:"7.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_tag(name:"qod_type", value:"package");
  script_name("SuSE Update for libotr, libotr2 openSUSE-SU-2016:0732-1 (libotr, libotr2)");
  script_tag(name:"summary", value:"The remote host is missing an update for the 'libotr, libotr2'
  package(s) announced via the referenced advisory.");
  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");
  script_tag(name:"insight", value:"libotr and libotr2 were updated to fix one security issue:

  - CVE-2016-2851: Integer overflow vulnerability allowed remote attackers
  to execute arbitrary code on 64 bit platforms (boo#969785)");
  script_tag(name:"affected", value:"libotr, libotr2 on openSUSE 13.1");
  script_tag(name:"solution", value:"Please install the updated packages.");

  script_xref(name:"openSUSE-SU", value:"2016:0732_1");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2016 Greenbone Networks GmbH");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse", "ssh/login/rpms", re:"ssh/login/release=openSUSE13\.1");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release) exit(0);
res = "";

if(release == "openSUSE13.1")
{

  if ((res = isrpmvuln(pkg:"libotr-debugsource", rpm:"libotr-debugsource~4.0.0~5.7.1", rls:"openSUSE13.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libotr-devel", rpm:"libotr-devel~4.0.0~5.7.1", rls:"openSUSE13.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libotr-tools", rpm:"libotr-tools~4.0.0~5.7.1", rls:"openSUSE13.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libotr-tools-debuginfo", rpm:"libotr-tools-debuginfo~4.0.0~5.7.1", rls:"openSUSE13.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libotr2", rpm:"libotr2~3.2.1~5.3.1", rls:"openSUSE13.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libotr2-debuginfo", rpm:"libotr2-debuginfo~3.2.1~5.3.1", rls:"openSUSE13.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libotr2-debugsource", rpm:"libotr2-debugsource~3.2.1~5.3.1", rls:"openSUSE13.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libotr2-devel", rpm:"libotr2-devel~3.2.1~5.3.1", rls:"openSUSE13.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libotr2-tools", rpm:"libotr2-tools~3.2.1~5.3.1", rls:"openSUSE13.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libotr2-tools-debuginfo", rpm:"libotr2-tools-debuginfo~3.2.1~5.3.1", rls:"openSUSE13.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libotr5", rpm:"libotr5~4.0.0~5.7.1", rls:"openSUSE13.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libotr5-debuginfo", rpm:"libotr5-debuginfo~4.0.0~5.7.1", rls:"openSUSE13.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
