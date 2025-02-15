#
# (C) WebRAY Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2019-48.
#
# The text description of this plugin is (C) SUSE LLC.
#

include("compat.inc");

if (description)
{
  script_id(121155);
  script_version("1.2");
  script_cvs_date("Date: 2019/01/17 10:53:30");

  script_cve_id("CVE-2019-5882");

  script_name(english:"openSUSE Security Update : irssi (openSUSE-2019-48)");
  script_summary(english:"Check for the openSUSE-2019-48 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for irssi fixes the following issues :

  - CVE-2019-5882: Use after free when hidden lines were
    expired from the scroll buffer (boo#1121396)

This update to the 1.1.2 version also fixes a number of stability
issues and bugs."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1121396"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected irssi packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:irssi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:irssi-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:irssi-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:irssi-devel");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.0");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:42.3");

  script_set_attribute(attribute:"patch_publication_date", value:"2019/01/13");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/01/14");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019 and is owned by WebRAY, Inc. or an Affiliate thereof.");
  script_family(english:"SuSE Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/SuSE/release", "Host/SuSE/rpm-list", "Host/cpu");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/SuSE/release");
if (isnull(release) || release =~ "^(SLED|SLES)") audit(AUDIT_OS_NOT, "openSUSE");
if (release !~ "^(SUSE15\.0|SUSE42\.3)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "15.0 / 42.3", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

ourarch = get_kb_item("Host/cpu");
if (!ourarch) audit(AUDIT_UNKNOWN_ARCH);
if (ourarch !~ "^(i586|i686|x86_64)$") audit(AUDIT_ARCH_NOT, "i586 / i686 / x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"irssi-1.1.2-lp150.2.4.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"irssi-debuginfo-1.1.2-lp150.2.4.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"irssi-debugsource-1.1.2-lp150.2.4.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"irssi-devel-1.1.2-lp150.2.4.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"irssi-1.1.2-29.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"irssi-debuginfo-1.1.2-29.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"irssi-debugsource-1.1.2-29.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"irssi-devel-1.1.2-29.1") ) flag++;

if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:rpm_report_get());
  else security_hole(0);
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "irssi / irssi-debuginfo / irssi-debugsource / irssi-devel");
}
