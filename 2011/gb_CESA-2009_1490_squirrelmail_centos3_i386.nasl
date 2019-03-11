###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for squirrelmail CESA-2009:1490 centos3 i386
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (c) 2011 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_xref(name:"URL", value:"http://lists.centos.org/pipermail/centos-announce/2009-October/016181.html");
  script_oid("1.3.6.1.4.1.25623.1.0.880729");
  script_version("$Revision: 14056 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 14:00:00 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2011-08-09 08:20:34 +0200 (Tue, 09 Aug 2011)");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_xref(name:"CESA", value:"2009:1490");
  script_cve_id("CVE-2009-2964");
  script_name("CentOS Update for squirrelmail CESA-2009:1490 centos3 i386");

  script_tag(name:"summary", value:"The remote host is missing an update as announced in the referenced advisory for squirrelmail");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2011 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS3");
  script_tag(name:"affected", value:"squirrelmail on CentOS 3");
  script_tag(name:"insight", value:"SquirrelMail is a standards-based webmail package written in PHP.

  Form submissions in SquirrelMail did not implement protection against
  Cross-Site Request Forgery (CSRF) attacks. If a remote attacker tricked a
  user into visiting a malicious web page, the attacker could hijack that
  user's authentication, inject malicious content into that user's
  preferences, or possibly send mail without that user's permission.
  (CVE-2009-2964)

  Users of SquirrelMail should upgrade to this updated package, which
  contains a backported patch to correct these issues.");
  script_tag(name:"solution", value:"Please install the updated packages.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release)
  exit(0);

res = "";

if(release == "CentOS3")
{

  if ((res = isrpmvuln(pkg:"squirrelmail", rpm:"squirrelmail~1.4.8~16.el3.centos.1", rls:"CentOS3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
