for device in $(cat vendor/ownrom/ownrom-build-targets)
do
    add_lunch_combo ownrom_$device-eng
    add_lunch_combo ownrom_$device-user
    add_lunch_combo ownrom_$device-userdebug
done
