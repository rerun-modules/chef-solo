Summary: Chef Solo
Name: chef-solo
Version: %{chef_version}
Release: %{release}%{?dist}
Source0: chef-solo.tar.gz

License: APL v2.0
Group: Applications/System

# Disables automatic dependencies in order to allow for using an alternate RPM database:
AutoReqProv: no

# Makes the package relocatable:
Prefix: /usr

BuildArch: noarch
 
# Disables debug packages and stripping of binaries:
%global _enable_debug_package 0
%global debug_package %{nil}
%global __os_install_post %{nil}

# Crank up the compression
%define _binary_payload w7.lzdio
 
%description
MongoDB Server
 
%prep
%setup -c

%build
 
%install
rm -rf %{buildroot}
install -d -m 755 %{buildroot}/%{_prefix}
cp -R * %{buildroot}/%{_prefix}/

%clean

%files
%defattr(-,root,root)
/usr
 
%changelog
* Wed Jan 24 2013 Lee Thompson <thompson@dtosolutions.com> 10.18.2
    - new for 10.18.2
