# pdv-multilib-u2204.9-64
Instalação de pacotes para dar suporte a execução de alguns aplicativos 32 Bits, como o lnx_r\*, lnx_c\*, GS, etc...  
Se mesmo assim quiser instalar tudo na mão, ou se der erro em algum pacote, siga os passos a seguir.  
>Ps.: Não vou adicionar links de FTP de empresa aqui.
___

- **Mover/Backup do repos.d, para não usar**
```bash
chmod 766 /etc/resolv.conf
```
```bash
mkdir -p ~/src
```
```bash
mv /etc/apt/sources.list.d/* ~/src
```
```bash
apt-get update
```

- **Opcional**
```bash
sudo apt -y install apt-file plocate
```
```bash
apt-file update
```
```bash
updatedb
```

- **z_tb._z (32 Bits)**

```bash
apt-get -y install libc6:i386
```

- **Multilib e GS (32 Bits)**

```bash
apt-get -y install libc6:i386 libgcc1:i386 libstdc++6:i386
```

- **lnx_c_**

```bash
apt-get -y install libxml2:i386
```
```bash
apt-get -y install libstdc++5:i386
```
```bash
rm -rf /usr/include/curl/curlbuild.h
```
```bash
rm -rf /usr/bin/curl-config
```
```bash
apt-get -y install libcurl4-openssl-dev:i386
```
```bash
apt-get -y -f install
```
```bash
apt-get -y install libssl-dev:i386
```
```bash
mkdir -p /opt/dep
```
```bash
wget -c http://security.ubuntu.com/ubuntu/pool/main/o/openssl1.0/libssl1.0.0_1.0.2n-1ubuntu5.13_i386.deb -P /opt/dep
```
```bash
dpkg -i /opt/dep/libssl1.0.0_1.0.2n-1ubuntu5.13_i386.deb
```
```bash
apt-get -y -f install
```
```bash
cp -a /opt/webadmin/packages/so /Zanthus/Zeus/lib
```
```bash
echo -e '/Zanthus/Zeus/lib' | tee -a /etc/ld.so.conf.d/zanthus.conf
```
```bash
ln -sf /usr/lib/i386-linux-gnu/libssl.so.1.0.0 /usr/lib/i386-linux-gnu/libssl.so.4
```
```bash
ln -sf /usr/lib/i386-linux-gnu/libcrypto.so.1.0.0 /usr/lib/i386-linux-gnu/libcrypto.so.4
```
```bash
ldconfig
```

- **lnx_r_**

```bash
mkdir -p /Zanthus/Zeus/{lib,lib_co5,lib_ubu}
```
```bash
rsync -ahv /opt/webadmin/packages/so/ /Zanthus/Zeus/lib/
```
```bash
rsync -ahv /opt/webadmin/packages/so_co5/ /Zanthus/Zeus/lib_co5/
```
```bash
rsync -ahv /opt/webadmin/packages/so_ubu/ /Zanthus/Zeus/lib_ubu/
```
```bash
echo -e '/Zanthus/Zeus/lib_co5' | tee -a /etc/ld.so.conf.d/zanthus.conf
```
```bash
echo -e '/Zanthus/Zeus/lib_ubu' | tee -a /etc/ld.so.conf.d/zanthus.conf
```
```bash
git clone https://github.com/elppans/pdv-v1-rc28_libs.git /tmp/libs
```
```bash
cp -av /tmp/libs/lib/libppxxx.so* /Zanthus/Zeus/lib
```
```bash
cp -av /tmp/libs/lib/libclisitef.so* /Zanthus/Zeus/lib
```
```bash
cp -av /tmp/libs/lib/libMop.so.3* /Zanthus/Zeus/lib
```
```bash
cp -av /tmp/libs/lib/libMrBalanca.so.1* /Zanthus/Zeus/lib
```
```bash
cp -av /tmp/libs/lib/libMrMaxyscan.so.1* /Zanthus/Zeus/lib
```
```bash
cp -av /tmp/libs/lib/libMrScanner.so.1* /Zanthus/Zeus/lib
```
```bash
cp -av /tmp/libs/lib/libPOS4000.so.1* /Zanthus/Zeus/lib
```
```bash
cp -av /tmp/libs/lib/libRotOpera.so.1* /Zanthus/Zeus/lib
```
```bash
sudo apt-get -y install libusb-0.1-4:i386
```
```bash
sudo apt-get -y install libncurses5:i386
```
```bash
ln -sf /lib/i386-linux-gnu/libusb-0.1.so.4.4.4 /lib/i386-linux-gnu/libusb-0.1.so.4
```
```bash
ldconfig
```
___
### FIM

