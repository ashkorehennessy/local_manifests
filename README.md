# local manifests for dipper

clone this repo into your local manifests directory, and then run repo sync

```
cd .repo
git clone https://github.com/ashkorehennessy/local_manifests
cd ..
repo sync
```

then run the remove.sh script to remove the files with conflicts to build

```
. ./build/envsetup.sh
. .repo/local_manifests/remove.sh
```
