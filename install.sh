#!/bin/bash

dpkg -i deb/*.deb
apt-get -f -y install

# lnx_ctsat.xz
cp -a /opt/webadmin/packages/so /Zanthus/Zeus/lib
echo -e '/Zanthus/Zeus/lib' | tee -a /etc/ld.so.conf.d/zanthus.conf
ln -sf /usr/lib/i386-linux-gnu/libssl.so.1.0.0 /usr/lib/i386-linux-gnu/libssl.so.4
ln -sf /usr/lib/i386-linux-gnu/libcrypto.so.1.0.0 /usr/lib/i386-linux-gnu/libcrypto.so.4
ldconfig

# lnx_receb
mkdir -p /Zanthus/Zeus/{lib,lib_co5,lib_ubu}
rsync -ahv /opt/webadmin/packages/so/ /Zanthus/Zeus/lib/
rsync -ahv /opt/webadmin/packages/so_co5/ /Zanthus/Zeus/lib_co5/
rsync -ahv /opt/webadmin/packages/so_ubu/ /Zanthus/Zeus/lib_ubu/
echo -e '/Zanthus/Zeus/lib_co5' | tee -a /etc/ld.so.conf.d/zanthus.conf
echo -e '/Zanthus/Zeus/lib_ubu' | tee -a /etc/ld.so.conf.d/zanthus.conf

git clone https://github.com/elppans/pdv-v1-rc28_libs.git /tmp/libs
cp -av /tmp/libs/lib/libppxxx.so* /Zanthus/Zeus/lib
cp -av /tmp/libs/lib/libclisitef.so* /Zanthus/Zeus/lib
cp -av /tmp/libs/lib/libMop.so.3* /Zanthus/Zeus/lib
cp -av /tmp/libs/lib/libMrBalanca.so.1* /Zanthus/Zeus/lib
cp -av /tmp/libs/lib/libMrMaxyscan.so.1* /Zanthus/Zeus/lib
cp -av /tmp/libs/lib/libMrScanner.so.1* /Zanthus/Zeus/lib
cp -av /tmp/libs/lib/libPOS4000.so.1* /Zanthus/Zeus/lib
cp -av /tmp/libs/lib/libRotOpera.so.1* /Zanthus/Zeus/lib

ln -sf /lib/i386-linux-gnu/libusb-0.1.so.4.4.4 /lib/i386-linux-gnu/libusb-0.1.so.4

ldconfig

### FIM


