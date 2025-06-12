#!/bin/bash

# Aplicaciones a eliminar
APLICACIONES_INNECESARIAS=(
    "konqueror"  
    "kmail"    
    "kwrite"    
    "kmailtransport-akonadi"
    "libkf5templateparser5"    
    "libkf5contacts-data"          
    "pim-sieve-editor"           
    "libkf5ksieve-data"          
    "xterm"
    "zutty"
    "debian-reference-common"
    "kasumi"
    "anthy-common"
    "goldendict"
    "ibus-data"
    "ibus-gtk"
    "ibus-gtk3"
    "ibus-gtk4"
    "python3-ibus"
    "ibus-hangul"
    "gir1.2-ibus-1.0"
    "mozc-data"
    "mozc-server"
    "fcitx5-modules"
    "fcitx5-pinyin"
    "fcitx5-modules-chttrans"
    "libfcitx5-qt1"
    "fcitx5-module-punctuation"
    "fcitx5-data"
    "libfcitx5-qt-data"
    "fcitx5-chewing"
    "fcitx5-chinese-addons-data"
    "im-config"
    "fcitx-frontend-qt5"
    "fcitx-frontend-gtk3"
    "fctix-frontend-gtk2"
    "mlterm-common"
    "xiterm+thai"
)

# Paquetes importantes
PAQUETES_IMPORTANTES=(
    "kde-baseapps"  
    "kde-plasma-desktop"      
    "kde-standard"            
    "task-kde-desktop"         
)

# Marcar paquetes como instalados manualmente
marcar_como_manual() {
    for pkg in "${PAQUETES_IMPORTANTES[@]}"; do
        echo "Marcando $pkg como instalado manualmente..."
        sudo apt install -y "$pkg"
    done
}

# Eliminar aplicaciones
eliminar_aplicaciones() {
    for app in "${APLICACIONES_INNECESARIAS[@]}"; do
        echo "Eliminando $app..."
        sudo apt-get remove --purge -y "$app"
    done

    # Limpiar paquetes no necesarios después de la eliminación
    sudo apt-get autoremove -y
    sudo apt-get autoclean -y
}

# Marcar paquetes importantes como manuales
marcar_como_manual

# Ejecutar la función de eliminación
eliminar_aplicaciones

echo "Proceso de eliminación completado, se recomienda reiniciar el sistema."
