#
# (C) WebRAY Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2019:1264. The text 
# itself is copyright (C) Red Hat, Inc.
#

include("compat.inc");

if (description)
{
  script_id(125381);
  script_version("1.1");
  script_cvs_date("Date: 2019/05/24 11:07:35");

  script_cve_id("CVE-2019-10132");
  script_xref(name:"RHSA", value:"2019:1264");

  script_name(english:"RHEL 7 : libvirt (RHSA-2019:1264)");
  script_summary(english:"Checks the rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Red Hat host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"An update for libvirt is now available for Red Hat Enterprise Linux 7.

Red Hat Product Security has rated this update as having a security
impact of Important. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

The libvirt library contains a C API for managing and interacting with
the virtualization capabilities of Linux and other operating systems.
In addition, libvirt provides tools for remote management of
virtualized systems.

Security Fix(es) :

* libvirt: wrong permissions in systemd admin-sock due to missing
SocketMode parameter (CVE-2019-10132)

For more details about the security issue(s), including the impact, a
CVSS score, acknowledgments, and other related information, refer to
the CVE page(s) listed in the References section.

Bug Fix(es) :

* libvirt terminates and core-dumps with SIGABRT as a result of a
invalid pointer error trying to free memory in
virNWFilterBindingDefFree() (BZ# 1702173)"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/errata/RHSA-2019:1264"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2019-10132"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:S/C:P/I:P/A:P");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-admin");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-bash-completion");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-daemon");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-daemon-config-network");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-daemon-config-nwfilter");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-daemon-driver-interface");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-daemon-driver-lxc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-daemon-driver-network");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-daemon-driver-nodedev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-daemon-driver-nwfilter");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-daemon-driver-qemu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-daemon-driver-secret");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-daemon-driver-storage");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-daemon-driver-storage-core");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-daemon-driver-storage-disk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-daemon-driver-storage-gluster");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-daemon-driver-storage-iscsi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-daemon-driver-storage-logical");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-daemon-driver-storage-mpath");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-daemon-driver-storage-rbd");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-daemon-driver-storage-scsi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-daemon-kvm");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-daemon-lxc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-docs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-lock-sanlock");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-login-shell");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libvirt-nss");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:7");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:7.6");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/05/22");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/05/23");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/05/24");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019 and is owned by WebRAY, Inc. or an Affiliate thereof.");
  script_family(english:"Red Hat Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/RedHat/release", "Host/RedHat/rpm-list", "Host/cpu");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("misc_func.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/RedHat/release");
if (isnull(release) || "Red Hat" >!< release) audit(AUDIT_OS_NOT, "Red Hat");
os_ver = eregmatch(pattern: "Red Hat Enterprise Linux.*release ([0-9]+(\.[0-9]+)?)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "Red Hat");
os_ver = os_ver[1];
if (! ereg(pattern:"^7([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Red Hat 7.x", "Red Hat " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "s390" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Red Hat", cpu);

yum_updateinfo = get_kb_item("Host/RedHat/yum-updateinfo");
if (!empty_or_null(yum_updateinfo)) 
{
  rhsa = "RHSA-2019:1264";
  yum_report = redhat_generate_yum_updateinfo_report(rhsa:rhsa);
  if (!empty_or_null(yum_report))
  {
    security_report_v4(
      port       : 0,
      severity   : SECURITY_WARNING,
      extra      : yum_report 
    );
    exit(0);
  }
  else
  {
    audit_message = "affected by Red Hat security advisory " + rhsa;
    audit(AUDIT_OS_NOT, audit_message);
  }
}
else
{
  flag = 0;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-admin-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-admin-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-bash-completion-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-bash-completion-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", reference:"libvirt-client-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-daemon-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-daemon-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-daemon-config-network-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-daemon-config-network-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-daemon-config-nwfilter-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-daemon-config-nwfilter-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-daemon-driver-interface-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-daemon-driver-interface-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-daemon-driver-lxc-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-daemon-driver-lxc-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-daemon-driver-network-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-daemon-driver-network-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-daemon-driver-nodedev-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-daemon-driver-nodedev-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-daemon-driver-nwfilter-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-daemon-driver-nwfilter-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-daemon-driver-qemu-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-daemon-driver-qemu-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-daemon-driver-secret-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-daemon-driver-secret-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-daemon-driver-storage-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-daemon-driver-storage-core-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-core-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-daemon-driver-storage-disk-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-disk-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-gluster-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-daemon-driver-storage-iscsi-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-iscsi-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-daemon-driver-storage-logical-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-logical-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-daemon-driver-storage-mpath-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-mpath-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-rbd-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-daemon-driver-storage-scsi-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-scsi-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-daemon-kvm-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-daemon-kvm-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-daemon-lxc-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-daemon-lxc-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", reference:"libvirt-debuginfo-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", reference:"libvirt-devel-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-docs-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-docs-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", reference:"libvirt-libs-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-lock-sanlock-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-lock-sanlock-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"libvirt-login-shell-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libvirt-login-shell-4.5.0-10.el7_6.10")) flag++;

  if (rpm_check(release:"RHEL7", reference:"libvirt-nss-4.5.0-10.el7_6.10")) flag++;


  if (flag)
  {
    security_report_v4(
      port       : 0,
      severity   : SECURITY_WARNING,
      extra      : rpm_report_get() + redhat_report_package_caveat()
    );
    exit(0);
  }
  else
  {
    tested = pkg_tests_get();
    if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
    else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libvirt / libvirt-admin / libvirt-bash-completion / libvirt-client / etc");
  }
}
