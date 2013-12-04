# CentOS Template for Packer

## Spec

  * Minimal CentOS box. Only a few indispensable packages are installed.
  * Puppet 3.3.2 is pre-installed from Puppet Labs' repository, but the repository is removed from the system because it's no use for us after bootstrapping.

## Usage

Just execute `packer` command as below:

```
$ packer build -only=virtualbox packer/CentOS-6.5-x86_64-minimal.json
```

Then you'll get your box in `build/vagrant-boxes/` directory.

## References

This template is created referring to and borrowing from the resources below:

  * [PackerでVagrant用のBoxを作成したときのメモ](http://qiita.com/ryurock/items/28690f2b1553601d684d)
  * [hnakamur/my-packer-template-files](https://github.com/hnakamur/my-packer-template-files)

## Thanks To:

  * [@lamanotrama](http://github.com/lamanotrama)
  * [@tnmt](http://github.com/tnmt)
