###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for gnutls CESA-2014:0595 centos6
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2014 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.881947");
  script_version("$Revision: 14056 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 14:00:00 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2014-06-09 12:47:11 +0530 (Mon, 09 Jun 2014)");
  script_cve_id("CVE-2014-3466");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_name("CentOS Update for gnutls CESA-2014:0595 centos6");

  script_tag(name:"affected", value:"gnutls on CentOS 6");
  script_tag(name:"insight", value:"The GnuTLS library provides support for cryptographic
algorithms and for protocols such as Transport Layer Security (TLS).

A flaw was found in the way GnuTLS parsed session IDs from ServerHello
messages of the TLS/SSL handshake. A malicious server could use this flaw
to send an excessively long session ID value, which would trigger a buffer
overflow in a connecting TLS/SSL client application using GnuTLS, causing
the client application to crash or, possibly, execute arbitrary code.
(CVE-2014-3466)

Red Hat would like to thank GnuTLS upstream for reporting this issue.
Upstream acknowledges Joonas Kuorilehto of Codenomicon as the original
reporter.

Users of GnuTLS are advised to upgrade to these updated packages, which
correct this issue. For the update to take effect, all applications linked
to the GnuTLS library must be restarted.");
  script_tag(name:"solution", value:"Please install the updated packages.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");
  script_xref(name:"CESA", value:"2014:0595");
  script_xref(name:"URL", value:"http://lists.centos.org/pipermail/centos-announce/2014-June/020338.html");
  script_tag(name:"summary", value:"The remote host is missing an update as announced in the referenced advisory for gnutls");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2014 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS6");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release)
  exit(0);

res = "";

if(release == "CentOS6")
{

  if ((res = isrpmvuln(pkg:"gnutls", rpm:"gnutls~2.8.5~14.el6_5", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"gnutls-devel", rpm:"gnutls-devel~2.8.5~14.el6_5", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"gnutls-guile", rpm:"gnutls-guile~2.8.5~14.el6_5", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"gnutls-utils", rpm:"gnutls-utils~2.8.5~14.el6_5", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
