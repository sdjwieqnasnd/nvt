###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for kexec-tools CESA-2015:0986 centos7
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
  script_oid("1.3.6.1.4.1.25623.1.0.882186");
  script_version("$Revision: 14058 $");
  script_cve_id("CVE-2015-0267");
  script_tag(name:"cvss_base", value:"3.6");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:N/C:N/I:P/A:P");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 14:25:52 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2015-06-09 11:03:38 +0200 (Tue, 09 Jun 2015)");
  script_tag(name:"qod_type", value:"package");
  script_name("CentOS Update for kexec-tools CESA-2015:0986 centos7");
  script_tag(name:"summary", value:"Check the version of kexec-tools");
  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");
  script_tag(name:"insight", value:"The kexec-tools packages contain the
  /sbin/kexec binary and utilities that together form the user-space component
  of the kernel's kexec feature.
The /sbin/kexec binary facilitates a new kernel to boot using the kernel's
kexec feature either on a normal or a panic reboot. The kexec fastboot
mechanism allows booting a Linux kernel from the context of an already
running kernel.

It was found that the module-setup.sh script provided by kexec-tools
created temporary files in an insecure way. A malicious, local user could
use this flaw to conduct a symbolic link attack, allowing them to overwrite
the contents of arbitrary files. (CVE-2015-0267)

This issue was discovered by Harald Hoyer of Red Hat.

This update also fixes the following bug:

  * On Red Hat Enterprise Linux Atomic Host systems, the kdump tool
previously saved kernel crash dumps in the /sysroot/crash file instead of
the /var/crash file. The parsing error that caused this problem has been
fixed, and the kernel crash dumps are now correctly saved in /var/crash.
(BZ#1206464)

In addition, this update adds the following enhancement:

  * The makedumpfile command now supports the new sadump format that can
represent more than 16 TB of physical memory space. This allows users of
makedumpfile to read dump files over 16 TB, generated by sadump on certain
upcoming server models. (BZ#1208753)

All kexec-tools users are advised to upgrade to these updated packages,
which contain backported patches to correct these issues and add this
enhancement.");
  script_tag(name:"affected", value:"kexec-tools on CentOS 7");
  script_tag(name:"solution", value:"Please install the updated packages.");
  script_xref(name:"CESA", value:"2015:0986");
  script_xref(name:"URL", value:"http://lists.centos.org/pipermail/centos-announce/2015-May/021131.html");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2015 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS7");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release)
  exit(0);

res = "";

if(release == "CentOS7")
{

  if ((res = isrpmvuln(pkg:"kexec-tools", rpm:"kexec-tools~2.0.7~19.el7_1.2", rls:"CentOS7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"kexec-tools-anaconda-addon", rpm:"kexec-tools-anaconda-addon~2.0.7~19.el7_1.2", rls:"CentOS7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"kexec-tools-eppic", rpm:"kexec-tools-eppic~2.0.7~19.el7_1.2", rls:"CentOS7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
