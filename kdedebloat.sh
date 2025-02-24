#!/bin/bash

# Aplicaciones 
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
)

# Paquetes importantes
PAQUETES_IMPORTANTES=(
    "kde-baseapps"  
    "kde-plasma-desktop"      
    "kde-standard"            
    "task-kde-desktop"         
)

# Función para marcar paquetes como instalados manualmente
marcar_como_manual() {
    for pkg in "${PAQUETES_IMPORTANTES[@]}"; do
        echo "Marcando $pkg como instalado manualmente..."
        sudo apt install -y "$pkg"
    done
}

# Función para eliminar aplicaciones
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

echo "Proceso de eliminación completado."
