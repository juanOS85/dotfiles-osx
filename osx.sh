# Disable local Time Machine snapshots
sudo tmutil disablelocal

# Turn off hibernation
sudo pmset -a hibernatemode 0
# Remove the sleep image file
sudo rm /Private/var/vm/sleepimage
# Create a blank zero-byte sleep image file so OS X cannot rewrite the file
sudo touch /Private/var/vm/sleepimage
# Make sleep image file immutable
sudo chflags uchg /Private/var/vm/sleepimage

# Turn off Sudden Motion Sensor
sudo pmset -a sms 0
