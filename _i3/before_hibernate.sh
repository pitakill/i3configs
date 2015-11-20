for device in {GLAN,EHC1,EHC2,XHC}
do 
  if grep -q "$device.*enabled" /proc/acpi/wakeup
  then
    echo $device > /proc/acpi/wakeup
  fi
done
