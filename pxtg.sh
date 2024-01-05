#!/bin/bash

echo "Pardus Xfce to Gnome Başlıyor."
echo -e  "\033[31mUYARI! Bu işlem Geri Alınamaz!\033[0m"

# Kullanıcı onayı istenilmektedir.
confirm() {
    while true; do
        read -p "Devam Etmek İstiyor musunuz? (Evet/Hayır/Çıkış) " yn
        case $yn in
            [Ee]* ) return 0;;
            [Hh]* ) return 1;;
            [Çç]* ) exit;;
            * ) echo "Sizi anlayamadım. Lütfen tekrar dener misiniz? Evet[Ee]/Hayır[Hh]/Çıkış[Çç].";;
        esac
    done
}
 
# Verilen girdiye göre işlemin devamı veya iptali
if confirm; then
    echo "İşleme devam ediliyor. Lütfen root yetkisi için şifrenizi girebilir misiniz?"
else
    echo "İşlem iptal edildi. Çıkış yapılıyor. Tekrar görüşmek üzere..."
    exit
fi

# Güncelleme, XFCE yükleme işlemi ve GNOME arayüzüne dair tüm paketlerin silinmesi
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install pardus-gnome-desktop
sudo apt-get -y install pardus-gnome-greeter
sudo apt-get -y install pardus-gnome-settings
sudo apt-get -y install pardus-gnome-shortcuts
sudo dpkg-reconfigure gdm3
sudo apt-get -y purge lightdm
sudo apt-get -y purge xfwm4
sudo apt-get -y purge xfdesktop4-data
sudo apt-get -y purge xfdesktop4
sudo apt-get -y purge xfconf
sudo apt-get -y purge xfce4-xkb-plugin
sudo apt-get -y purge xfce4-windowck-plugin
sudo apt-get -y purge xfce4-whiskermenu-plugin
sudo apt-get -y purge xfce4-weather-plugin
sudo apt-get -y purge xfce4-wavelan-plugin
sudo apt-get -y purge xfce4-verve-plugin
sudo apt-get -y purge xfce4-timer-plugin
sudo apt-get -y purge xfce4-terminal
sudo apt-get -y purge xfce4-taskmanager
sudo apt-get -y purge xfce4-systemload-plugin
sudo apt-get -y purge xfce4-sntray-plugin-common
sudo apt-get -y purge xfce4-sntray-plugin
sudo apt-get -y purge xfce4-smartbookmark-plugin
sudo apt-get -y purge xfce4-settings
sudo apt-get -y purge xfce4-session-dbgsym
sudo apt-get -y purge xfce4-session
sudo apt-get -y purge xfce4-sensors-plugin
sudo apt-get -y purge xfce4-screenshooter
sudo apt-get -y purge xfce4-pulseaudio-plugin
sudo apt-get -y purge xfce4-power-manager-plugins
sudo apt-get -y purge xfce4-power-manager-data
sudo apt-get -y purge xfce4-power-manager
sudo apt-get -y purge xfce4-places-plugin
sudo apt-get -y purge xfce4-panel-profiles
sudo apt-get -y purge xfce4-panel
sudo apt-get -y purge xfce4-notifyd
sudo apt-get -y purge xfce4-netload-plugin
sudo apt-get -y purge xfce4-multiload-ng-plugin
sudo apt-get -y purge xfce4-mpc-plugin
sudo apt-get -y purge xfce4-mount-plugin
sudo apt-get -y purge xfce4-mailwatch-plugin
sudo apt-get -y purge xfce4-indicator-plugin
sudo apt-get -y purge xfce4-helpers
sudo apt-get -y purge xfce4-goodies
sudo apt-get -y purge xfce4-genmon-plugin
sudo apt-get -y purge xfce4-fsguard-plugin
sudo apt-get -y purge xfce4-eyes-plugin
sudo apt-get -y purge xfce4-diskperf-plugin
sudo apt-get -y purge xfce4-dict
sudo apt-get -y purge xfce4-dev-tools
sudo apt-get -y purge xfce4-datetime-plugin
sudo apt-get -y purge xfce4-cpugraph-plugin
sudo apt-get -y purge xfce4-cpufreq-plugin
sudo apt-get -y purge xfce4-clipman-plugin
sudo apt-get -y purge xfce4-clipman
sudo apt-get -y purge xfce4-battery-plugin
sudo apt-get -y purge xfce4-appmenu-plugin
sudo apt-get -y purge xfce4-appfinder
sudo apt-get -y purge xfce4
sudo apt-get -y purge xfburn
sudo apt-get -y purge workrave-xfce4
sudo apt-get -y purge vala-sntray-plugin
sudo apt-get -y purge thunar
sudo apt-get -y purge task-xfce-desktop
sudo apt-get -y purge shiki-colors-xfwm-theme
sudo apt-get -y purge ristretto
sudo apt-get -y purge orage-data
sudo apt-get -y purge orage
sudo apt-get -y purge mousepad
sudo apt-get -y purge mate-sntray-plugin
sudo apt-get -y purge live-task-xfce
sudo apt-get -y purge libxfconf-0-3
sudo apt-get -y purge libxfce4util7
sudo apt-get -y purge libxfce4util-dev
sudo apt-get -y purge libxfce4util-common
sudo apt-get -y purge libxfce4util-bin
sudo apt-get -y purge libxfce4ui-utils
sudo apt-get -y purge libxfce4ui-glade
sudo apt-get -y purge libxfce4ui-common
sudo apt-get -y purge libxfce4ui-2-dev
sudo apt-get -y purge libxfce4ui-2-0
sudo apt-get -y purge libxfce4panel-2.0-dev
sudo apt-get -y purge libxfce4panel-2.0-4
sudo apt-get -y purge libgarcon-gtk3-1-0
sudo apt-get -y purge libgarcon-1-0
sudo apt-get -y purge libexo-2-0
sudo apt-get -y purge jgmenu-xfce4-panel-applet
sudo apt-get -y purge gir1.2-xfconf-0
sudo apt-get -y purge gir1.2-libxfce4util-1.0
sudo apt-get -y purge gir1.2-libxfce4ui-2.0
sudo apt-get -y purge gir1.2-libxfce4panel-2.0
sudo apt-get -y purge elementary-xfce-icon-theme
sudo apt-get -y purge education-desktop-xfce
sudo apt-get -y purge cairo-dock-xfce-integration-plug-in
sudo apt-get -y purge budgie-sntray-plugin
sudo apt-get -y purge pardus-xfce-desktop
sudo apt-get -y purge pardus-xfce-greeter
sudo apt-get -y purge pardus-xfce-gtk-theme
sudo apt-get -y purge pardus-xfce-icon-theme
sudo apt-get -y purge pardus-xfce-live-settings
sudo apt-get -y purge pardus-xfce-settings
sudo apt-get -y purge pardus-xfce-tweaks
# Gnome arayüzünün Xfce arayüzü ile ilgili paketleri kullanma ihtimali bulunduğu için tekrar kullanıldı.
sudo apt-get -y install pardus-gnome-*
sudo apt-get -y autoremove
sudo apt-get -y clean
sudo apt-get -y autoclean
# Pardus-Gnome-Greeter Pardus Karşılayıcı için autostart işlemi
cp /usr/share/applications/tr.org.pardus.pardus-gnome-greeter.desktop ~/.config/autostart/

echo "İşlem tamamlandı. Başka scriptlerde görüşmek üzere..."

echo -e  "\033[31mDeğişikliklerin uygulanabilmesi için bilgisayarınız yeniden başlatılacaktır. Bu soruya onay vermelisiniz!\033[0m"

# Kullanıcı onayı istenilmektedir.
confirm() {
    while true; do
        read -p "Bilgisayarınız yeniden başlatılacaktır? (Evet) " yn
        case $yn in
            [Ee]* ) return 0;;
            * ) echo "Sizi anlayamadım. Lütfen tekrar dener misiniz? Evet[Ee].";;
        esac
    done
}


# Verilen girdiye göre işlemin devamı
if confirm; then
    echo " Bilgisayarınız yeniden başlatılıyor."
   sudo reboot now
fi 
