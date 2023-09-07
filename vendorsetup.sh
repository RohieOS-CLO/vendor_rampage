lunch_others_targets=()
for device in $(python vendor/rampage/tools/get_official_devices.py)
do
    for var in eng user userdebug; do
        lunch_others_targets+=("rampage_$device-$var")
    done
done

# Override host metadata to make builds more reproducible and avoid leaking info
export BUILD_HOSTNAME=aospextended-build
export BUILD_USERNAME=android-build
