# Arch Basic Install Commands-Script

Script to install the basic packages for arch linux to get it running on a system and a desktop environment of your choice.

Pre-Script Steps:

1. If needed, load your keymap.
2. Refresh the servers with `pacman -Syy`
3. Partition the disk.
4. Format the partitions.
5. Mount the partitions.
6. Install the base packages into `/mnt`

```typescript
pacstrap /mnt base linux linux-firmware git vim intel-ucode (or amd-ucode)
```

7. Generate the `fstab` file.

```bash
genfstab -U /mnt >> /mnt/etc/fstab
```

8. Change root to `/mnt`

```typescript
arch-chroot /mnt
```

9. Download the git recpository with

```bash
git clone https://github.com/divyanshu1610/arch-basic-install.git
```

---
<br>

## Base System Install

1. Navigate to folder `arch-basic-install`

```bash
cd arch-basic-install
```

2. Make `base.sh` as executable.

```bash
chmod +x base.sh
```

3. Execute `base.sh`

```bash
./bash.sh
```

---
<br>






### Reference
- https://gitlab.com/eflinux/arch-basic