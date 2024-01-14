 T=$(gettop)
if [ "$T" ]; then
    conflict_dirs=(
    hardware/lineage/interfaces/trust
    hardware/xiaomi/hidl/powershare
    hardware/xiaomi/hidl/touch
    )

    echo "Removing conflicting files"
    for dir in ${conflict_dirs[@]}; do
        rm -rf $T/$dir
        echo "rm -rf $T/$dir"
    done
else
    echo "Couldn't locate the top of the tree. Try run \". ./build/envsetup.sh && . .repo/local_manifests/remove.sh\""
fi
