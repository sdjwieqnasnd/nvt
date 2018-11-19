###############################################################################
# OpenVAS Vulnerability Test
#
# RedHat Update for python RHSA-2012:0744-01
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (c) 2012 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_xref(name:"URL" , value:"https://www.redhat.com/archives/rhsa-announce/2012-June/msg00014.html");
  script_oid("1.3.6.1.4.1.25623.1.0.870756");
  script_version("$Revision: 12382 $");
  script_tag(name:"last_modification", value:"$Date: 2018-11-16 12:51:56 +0100 (Fri, 16 Nov 2018) $");
  script_tag(name:"creation_date", value:"2012-06-19 09:40:50 +0530 (Tue, 19 Jun 2012)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_cve_id("CVE-2011-4940", "CVE-2011-4944", "CVE-2012-0845", "CVE-2012-1150");
  script_xref(name:"RHSA", value:"2012:0744-01");
  script_name("RedHat Update for python RHSA-2012:0744-01");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'python'
  package(s) announced via the referenced advisory.");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2012 Greenbone Networks GmbH");
  script_family("Red Hat Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/rhel", "ssh/login/rpms", re:"ssh/login/release=RHENT_6");
  script_tag(name:"affected", value:"python on Red Hat Enterprise Linux Desktop (v. 6),
  Red Hat Enterprise Linux Server (v. 6),
  Red Hat Enterprise Linux Workstation (v. 6)");
  script_tag(name:"solution", value:"Please Install the Updated Packages.");
  script_tag(name:"insight", value:"Python is an interpreted, interactive, object-oriented programming
  language.

  A denial of service flaw was found in the implementation of associative
  arrays (dictionaries) in Python. An attacker able to supply a large number
  of inputs to a Python application (such as HTTP POST request parameters
  sent to a web application) that are used as keys when inserting data into
  an array could trigger multiple hash function collisions, making array
  operations take an excessive amount of CPU time. To mitigate this issue,
  randomization has been added to the hash function to reduce the chance of
  an attacker successfully causing intentional collisions. (CVE-2012-1150)

  Note: The hash randomization is not enabled by default as it may break
  applications that incorrectly depend on dictionary ordering. To enable the
  protection, the new &quot;PYTHONHASHSEED&quot; environment variable or the Python
  interpreter's &quot;-R&quot; command line option can be used. Refer to the python(1)
  manual page for details.

  The RHSA-2012:0731 expat erratum must be installed with this update, which
  adds hash randomization to the Expat library used by the Python pyexpat
  module.

  A flaw was found in the way the Python SimpleXMLRPCServer module handled
  clients disconnecting prematurely. A remote attacker could use this flaw to
  cause excessive CPU consumption on a server using SimpleXMLRPCServer.
  (CVE-2012-0845)

  A flaw was found in the way the Python SimpleHTTPServer module generated
  directory listings. An attacker able to upload a file with a
  specially-crafted name to a server could possibly perform a cross-site
  scripting (XSS) attack against victims visiting a listing page generated by
  SimpleHTTPServer, for a directory containing the crafted file (if the
  victims were using certain web browsers). (CVE-2011-4940)

  A race condition was found in the way the Python distutils module set file
  permissions during the creation of the .pypirc file. If a local user had
  access to the home directory of another user who is running distutils, they
  could use this flaw to gain access to that user's .pypirc file, which can
  contain usernames and passwords for code repositories. (CVE-2011-4944)

  Red Hat would like to thank oCERT for reporting CVE-2012-1150. oCERT
  acknowledges Julian Waelde and Alexander Klink as the original reporters of
  CVE-2012-1150.

  All Python users should upgrade to these updated packages, which contain
  backported patches to correct these issues.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release) exit(0);

res = "";

if(release == "RHENT_6")
{

  if ((res = isrpmvuln(pkg:"python", rpm:"python~2.6.6~29.el6_2.2", rls:"RHENT_6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"python-debuginfo", rpm:"python-debuginfo~2.6.6~29.el6_2.2", rls:"RHENT_6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"python-devel", rpm:"python-devel~2.6.6~29.el6_2.2", rls:"RHENT_6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"python-libs", rpm:"python-libs~2.6.6~29.el6_2.2", rls:"RHENT_6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"tkinter", rpm:"tkinter~2.6.6~29.el6_2.2", rls:"RHENT_6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
