Summary: %{pkgname} Cookbook
Name: %{pkgname}
Version: %{cookbook_version}
Release: %{bldnum}%{?dist}
Source0: %{pkgname}.tar.gz

License: APL v2.0
Group: Applications/System

# Disables automatic dependencies in order to allow for using an alternate RPM database:
AutoReqProv: no

Prefix: /usr

BuildArch: noarch
 
# Disables debug packages and stripping of binaries:
%global _enable_debug_package 0
%global debug_package %{nil}
%global __os_install_post %{nil}

# Crank up the compression
%define _binary_payload w7.lzdio
 
%description
%{pkgname} cookbook which adds configuration logic into chef
 
%prep
%setup -c

%build
 
%install
rm -rf %{buildroot}
install -d -m 755 %{buildroot}/
cp -R * %{buildroot}/

%clean

%files
%defattr(-,root,root)
/var
 
%changelog
* Wed Jan 24 2013 Lee Thompson <thompson@dtosolutions.com> 10.18.2
    - new for 10.18.2
