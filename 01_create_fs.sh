#!/bin/bash

echo -e '\nFormatando EFI, Boot, Root e SWAP - Assumindo o esquema de 4 partições - EFI, Boot, SWAP, Root\n'

echo -e '\nvol1 - EFI\nvol2 - Boot\nvol3 - SWAP\nvol4 - Root\n'

echo -e 'Formatando EFI - /dev/'$1'1 - FAT32 - /boot\n' 
mkfs.fat -F32 -n EFI /dev/vda1

echo -e 'Formatando Boot - /dev/'$1'2 - ext4 - /boot\n'
mkfs.ext4 -L Boot /dev/vda2

echo -e 'Formatando Root - /dev/'$1'4 - ext4 - /\n'
mkfs.ext4 -L Root /dev/vda4

echo -e 'Formatando SWAP - /dev/'$1'3 - linux swap\n'
mkswap /dev/vda3

echo -e 'Montando os volumes\n'

mount /dev/vda4 /mnt
mkdir /mnt/boot
mount /dev/vda2 /mnt/boot
mkdir /mnt/boot/efi
mount /dev/vda1 /mnt/boot/efi
swapon /dev/vda3

mount | grep /mnt
swapon --show

echo -e 'create_fs executado' > create_fs.log

