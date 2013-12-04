sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

yum -y install wget

# ブートストラップのためにPuppetを入れるけど、あとで自前でいれなおす。
# リポジトリが残ってるとうざいのでは消しちゃう
rpm -ivh http://yum.puppetlabs.com/el/6/products/x86_64/puppetlabs-release-6-7.noarch.rpm
yum -y install puppet gcc kernel-devel perl
rm -f /etc/yum.repos.d/puppetlabs.repo
rpm -e puppetlabs-release
