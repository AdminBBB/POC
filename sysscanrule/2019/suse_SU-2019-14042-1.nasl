#
# (C) WebRAY Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2019:14042-1.
# The text itself is copyright (C) SUSE.
#

include("compat.inc");

if (description)
{
  script_id(124858);
  script_version("1.1");
  script_cvs_date("Date: 2019/05/13 11:02:54");

  script_cve_id("CVE-2019-3880");

  script_name(english:"SUSE SLES11 Security Update : samba (SUSE-SU-2019:14042-1)");
  script_summary(english:"Checks rpm output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote SUSE host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for samba fixes the following issues :

Security issue fixed :

CVE-2019-3880: Fixed a path/symlink traversal vulnerability, which
allowed an unprivileged user to save registry files outside a share
(bsc#1131060).

Non-security issue fixed: Make init scripts create log directories
before running daemons (bsc#1101499)

Note that WebRAY Network Security has extracted the preceding
description block directly from the SUSE security advisory. WebRAY
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1101499"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1131060"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2019-3880/"
  );
  # https://www.suse.com/support/update/announcement/2019/suse-su-201914042-1.html
  script_set_attribute(
    attribute:"see_also",
    value:""
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"To install this SUSE Security Update use the SUSE recommended
installation methods like YaST online_update or 'zypper patch'.

Alternatively you can run the command listed for your product :

SUSE Linux Enterprise Server 11-SP4-LTSS:zypper in -t patch
slessp4-samba-14042=1

SUSE Linux Enterprise Point of Sale 11-SP3:zypper in -t patch
sleposp3-samba-14042=1

SUSE Linux Enterprise Debuginfo 11-SP4:zypper in -t patch
dbgsp4-samba-14042=1

SUSE Linux Enterprise Debuginfo 11-SP3:zypper in -t patch
dbgsp3-samba-14042=1"
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:S/C:N/I:P/A:P");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:L/A:L");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:ldapsmb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libldb1");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsmbclient0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libtalloc2");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libtdb1");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libtevent0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libwbclient0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:samba");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:samba-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:samba-krb-printing");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:samba-winbind");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:11");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/04/09");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/05/10");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/05/13");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019 and is owned by WebRAY, Inc. or an Affiliate thereof.");
  script_family(english:"SuSE Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/cpu", "Host/SuSE/release", "Host/SuSE/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");


if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/SuSE/release");
if (isnull(release) || release !~ "^(SLED|SLES)") audit(AUDIT_OS_NOT, "SUSE");
os_ver = eregmatch(pattern: "^(SLE(S|D)\d+)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "SUSE");
os_ver = os_ver[1];
if (! ereg(pattern:"^(SLES11)$", string:os_ver)) audit(AUDIT_OS_NOT, "SUSE SLES11", "SUSE " + os_ver);

if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if (cpu !~ "^i[3-6]86$" && "x86_64" >!< cpu && "s390x" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "SUSE " + os_ver, cpu);

sp = get_kb_item("Host/SuSE/patchlevel");
if (isnull(sp)) sp = "0";
if (os_ver == "SLES11" && (! ereg(pattern:"^(4)$", string:sp))) audit(AUDIT_OS_NOT, "SLES11 SP4", os_ver + " SP" + sp);


flag = 0;
if (rpm_check(release:"SLES11", sp:"4", cpu:"x86_64", reference:"libsmbclient0-32bit-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"x86_64", reference:"libtalloc2-32bit-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"x86_64", reference:"libtdb1-32bit-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"x86_64", reference:"libtevent0-32bit-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"x86_64", reference:"libwbclient0-32bit-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"x86_64", reference:"samba-32bit-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"x86_64", reference:"samba-client-32bit-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"x86_64", reference:"samba-winbind-32bit-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"s390x", reference:"libsmbclient0-32bit-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"s390x", reference:"libtalloc2-32bit-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"s390x", reference:"libtdb1-32bit-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"s390x", reference:"libtevent0-32bit-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"s390x", reference:"libwbclient0-32bit-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"s390x", reference:"samba-32bit-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"s390x", reference:"samba-client-32bit-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"s390x", reference:"samba-winbind-32bit-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"ldapsmb-1.34b-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"libldb1-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"libsmbclient0-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"libtalloc2-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"libtdb1-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"libtevent0-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"libwbclient0-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"samba-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"samba-client-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"samba-krb-printing-3.6.3-94.19.2")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"samba-winbind-3.6.3-94.19.2")) flag++;


if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:rpm_report_get());
  else security_warning(0);
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "samba");
}
