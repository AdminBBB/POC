#
# (C) WebRAY Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Debian Security Advisory DSA-4505. The text 
# itself is copyright (C) Software in the Public Interest, Inc.
#

include("compat.inc");

if (description)
{
  script_id(128083);
  script_version("1.1");
  script_cvs_date("Date: 2019/08/23 10:01:44");

  script_cve_id("CVE-2019-9511", "CVE-2019-9513", "CVE-2019-9516");
  script_xref(name:"DSA", value:"4505");

  script_name(english:"Debian DSA-4505-1 : nginx - security update (0-Length Headers Leak) (Data Dribble) (Resource Loop)");
  script_summary(english:"Checks dpkg output for the updated package");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Debian host is missing a security-related update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Three vulnerabilities were discovered in the HTTP/2 code of Nginx, a
high-performance web and reverse proxy server, which could result in
denial of service."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://security-tracker.debian.org/tracker/source-package/nginx"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/stretch/nginx"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/buster/nginx"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.debian.org/security/2019/dsa-4505"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"Upgrade the nginx packages.

For the oldstable distribution (stretch), these problems have been
fixed in version 1.10.3-1+deb9u3.

For the stable distribution (buster), these problems have been fixed
in version 1.14.2-2+deb10u1."
  );
  script_set_attribute(attribute:"risk_factor", value:"High");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nginx");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:10.0");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:9.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/08/13");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/08/22");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/08/23");
  script_set_attribute(attribute:"in_the_news", value:"true");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019 and is owned by WebRAY, Inc. or an Affiliate thereof.");
  script_family(english:"Debian Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/Debian/release", "Host/Debian/dpkg-l");

  exit(0);
}


include("audit.inc");
include("debian_package.inc");


if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
if (!get_kb_item("Host/Debian/release")) audit(AUDIT_OS_NOT, "Debian");
if (!get_kb_item("Host/Debian/dpkg-l")) audit(AUDIT_PACKAGE_LIST_MISSING);


flag = 0;
if (deb_check(release:"10.0", prefix:"libnginx-mod-http-auth-pam", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"libnginx-mod-http-cache-purge", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"libnginx-mod-http-dav-ext", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"libnginx-mod-http-echo", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"libnginx-mod-http-fancyindex", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"libnginx-mod-http-geoip", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"libnginx-mod-http-headers-more-filter", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"libnginx-mod-http-image-filter", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"libnginx-mod-http-lua", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"libnginx-mod-http-ndk", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"libnginx-mod-http-perl", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"libnginx-mod-http-subs-filter", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"libnginx-mod-http-uploadprogress", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"libnginx-mod-http-upstream-fair", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"libnginx-mod-http-xslt-filter", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"libnginx-mod-mail", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"libnginx-mod-nchan", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"libnginx-mod-rtmp", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"libnginx-mod-stream", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"nginx", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"nginx-common", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"nginx-doc", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"nginx-extras", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"nginx-full", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"nginx-light", reference:"1.14.2-2+deb10u1")) flag++;
if (deb_check(release:"9.0", prefix:"libnginx-mod-http-auth-pam", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libnginx-mod-http-cache-purge", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libnginx-mod-http-dav-ext", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libnginx-mod-http-echo", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libnginx-mod-http-fancyindex", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libnginx-mod-http-geoip", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libnginx-mod-http-headers-more-filter", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libnginx-mod-http-image-filter", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libnginx-mod-http-lua", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libnginx-mod-http-ndk", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libnginx-mod-http-perl", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libnginx-mod-http-subs-filter", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libnginx-mod-http-uploadprogress", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libnginx-mod-http-upstream-fair", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libnginx-mod-http-xslt-filter", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libnginx-mod-mail", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libnginx-mod-nchan", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libnginx-mod-stream", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"nginx", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"nginx-common", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"nginx-doc", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"nginx-extras", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"nginx-full", reference:"1.10.3-1+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"nginx-light", reference:"1.10.3-1+deb9u3")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:deb_report_get());
  else security_hole(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
