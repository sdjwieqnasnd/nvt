###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for gnome-vfs2 CESA-2009:0005 centos3 i386
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
  script_xref(name:"URL", value:"http://lists.centos.org/pipermail/centos-announce/2009-January/015518.html");
  script_oid("1.3.6.1.4.1.25623.1.0.880735");
  script_version("$Revision: 14056 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 14:00:00 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2011-08-09 08:20:34 +0200 (Tue, 09 Aug 2011)");
  script_tag(name:"cvss_base", value:"7.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_xref(name:"CESA", value:"2009:0005");
  script_cve_id("CVE-2005-0706");
  script_name("CentOS Update for gnome-vfs2 CESA-2009:0005 centos3 i386");

  script_tag(name:"summary", value:"The remote host is missing an update as announced in the referenced advisory for gnome-vfs2");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2011 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS3");
  script_tag(name:"affected", value:"gnome-vfs2 on CentOS 3");
  script_tag(name:"insight", value:"GNOME VFS is the GNOME virtual file system. It provides a modular
  architecture and ships with several modules that implement support for
  various local and remote file systems as well as numerous protocols,
  including HTTP, FTP, and others.

  A buffer overflow flaw was discovered in the GNOME virtual file system when
  handling data returned by CDDB servers. If a user connected to a malicious
  CDDB server, an attacker could use this flaw to execute arbitrary code on
  the victim's machine. (CVE-2005-0706)

  Users of gnome-vfs and gnome-vfs2 are advised to upgrade to these updated
  packages, which contain a backported patch to correct this issue. All
  running GNOME sessions must be restarted for the update to take effect.");
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

  if ((res = isrpmvuln(pkg:"gnome-vfs2", rpm:"gnome-vfs2~2.2.5~2E.3.3", rls:"CentOS3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"gnome-vfs2-devel", rpm:"gnome-vfs2-devel~2.2.5~2E.3.3", rls:"CentOS3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
