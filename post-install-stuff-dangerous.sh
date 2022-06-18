#!/usr/bin/bash

# Print warning
printf "Only run this once!\nIt modifies core system files which could result in your system being damaged!\n"
read

# Must be run with sudo
echo "Defaults        insults" >> /etc/sudoers # sudo insults
echo "GRUB_DISABLE_OS_PROBER=false" >> /etc/default/grub; grub-mkconfig -o /boot/grub/grub.cfg # show other operating systems at boot
