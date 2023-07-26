sudo qemu-system-x86_64 \
    -enable-kvm -cpu host -smp 2 -m 4096 -nographic \
    -drive id=root,media=disk,file=x86-1.img,format=raw \
    -net nic,macaddr=00:da:bc:de:00:13 -net tap,ifname=tap1,script=no \
    -kernel linux-x86/arch/x86/boot/bzImage \
    -append "root=/dev/sda1 console=ttyS0" \
    -pidfile vm1.pid 2>&1 | tee vm1.log
