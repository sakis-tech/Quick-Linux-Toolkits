#!/bin/bash

# Funktion zur Anzeige des Logos und der Aufforderung zur Auswahl
display_logo_and_prompt() {
    clear
    case $SHELL in
        *bash)
            ECHO='echo -e'
            ;;
        *)
            ECHO='echo'
            ;;
    esac

    red=$(tput setaf 1)
    green=$(tput setaf 2)
    yellow=$(tput setaf 3)
    blue=$(tput setaf 4)
    magenta=$(tput setaf 5)
    cyan=$(tput setaf 6)
    white=$(tput setaf 7)
    transparent=$(tput sgr0)

    clear; ${ECHO} ""
    sleep 0.01 && ${ECHO} "$green"
    sleep 0.01 && ${ECHO} "     ██████╗ ██╗   ██╗██╗ ██████╗██╗  ██╗    ██╗     ██╗███╗   ██╗██╗   ██╗██╗  ██╗"
    sleep 0.01&& ${ECHO} "    ██╔═══██╗██║   ██║██║██╔════╝██║ ██╔╝    ██║     ██║████╗  ██║██║   ██║╚██╗██╔╝"
    sleep 0.01 && ${ECHO} "    ██║   ██║██║   ██║██║██║     █████╔╝     ██║     ██║██╔██╗ ██║██║   ██║ ╚███╔╝ "
    sleep 0.01 && ${ECHO} "    ██║▄▄ ██║██║   ██║██║██║     ██╔═██╗     ██║     ██║██║╚██╗██║██║   ██║ ██╔██╗ "
    sleep 0.01 && ${ECHO} "    ╚██████╔╝╚██████╔╝██║╚██████╗██║  ██╗    ███████╗██║██║ ╚████║╚██████╔╝██╔╝ ██╗"
    sleep 0.01 && ${ECHO} "     ╚══▀▀═╝  ╚═════╝ ╚═╝ ╚═════╝╚═╝  ╚═╝    ╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝"

    ${ECHO} ""
    sleep 0.01 && ${ECHO} "            ████████╗ ██████╗  ██████╗ ██╗     ██╗  ██╗██╗████████╗███████╗"
    sleep 0.01 && ${ECHO} "            ╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██║ ██╔╝██║╚══██╔══╝██╔════╝"
    sleep 0.01 && ${ECHO} "               ██║   ██║   ██║██║   ██║██║     █████╔╝ ██║   ██║   ███████╗"
    sleep 0.01 && ${ECHO} "               ██║   ██║   ██║██║   ██║██║     ██╔═██╗ ██║   ██║   ╚════██║"
    sleep 0.01 && ${ECHO} "               ██║   ╚██████╔╝╚██████╔╝███████╗██║  ██╗██║   ██║   ███████║"
    sleep 0.01 && ${ECHO} "               ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝   ╚═╝   ╚══════╝"

    ${ECHO} ""
    sleep 0.1
    ${ECHO} $yellow"                   Dieses Script ("$cyan"update.sh"$yellow") Aktualisiert Linux"
    sleep 0.1
    ${ECHO} $magenta "                       Made with <3 by:"$yellow" Sakis ("$red"sakis-tech"$yellow")"
    sleep 0.1
    ${ECHO} ""

    ${ECHO} ""
    ${ECHO} "${cyan}-----------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Bitte wählen Sie eine der untenstehenden Optionen aus  *${transparent}"
    ${ECHO} "${cyan}-----------------------------------------------------${transparent}"
    ${ECHO} ""
}

# Funktion zur Aktualisierung der Paketlisten
update_package_lists() {
    ${ECHO} ""
    ${ECHO} "${cyan}------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Neueinlesen der Paketlisten beginnt jetzt   *${transparent}"
    ${ECHO} "${cyan}------------------------------------------------${transparent}"
    ${ECHO} ""
    sudo apt update
    ${ECHO} ""
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Aktion erfolgreich abgeschlossen. Der Bildschirm wird in 2 Sekunden geleert.   *${transparent}"
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} ""
    sleep 2
    clear
}

# Funktion zur Aktualisierung installierter Pakete
upgrade_installed_packages() {
    ${ECHO} ""
    ${ECHO} "${cyan}-------------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Installierte Pakete aktualisieren beginnt jetzt   *${transparent}"
    ${ECHO} "${cyan}-------------------------------------------------------${transparent}"
    ${ECHO} ""
    sudo apt upgrade -y
    ${ECHO} ""
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Aktion erfolgreich abgeschlossen. Der Bildschirm wird in 2 Sekunden geleert.   *${transparent}"
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} ""
    sleep 2
    clear
}

# Funktion zur Installation von Paketen
install_packages() {
    local packages="$@"
    ${ECHO} ""
    ${ECHO} "${cyan}-----------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Installation von Paket(en) beginnt jetzt   *${transparent}"
    ${ECHO} "${cyan}-----------------------------------------------------${transparent}"
    ${ECHO} ""
    sudo apt install -y $packages
    ${ECHO} ""
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Aktion erfolgreich abgeschlossen. Der Bildschirm wird in 2 Sekunden geleert.   *${transparent}"
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} ""
    sleep 2
    clear
}

# Funktion zur Deinstallation von Paketen
remove_packages() {
    local packages="$@"
    ${ECHO} ""
    ${ECHO} "${cyan}----------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Deinstallation von Paket(en) beginnt jetzt   *${transparent}"
    ${ECHO} "${cyan}----------------------------------------------------${transparent}"
    ${ECHO} ""
    sudo apt remove -y $packages
    ${ECHO} ""
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Aktion erfolgreich abgeschlossen. Der Bildschirm wird in 2 Sekunden geleert.   *${transparent}"
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} ""
    sleep 2
    clear
}

# Funktion zur Deinstallation ungenutzter Abhängigkeiten
autoremove_unused_dependencies() {
    ${ECHO} ""
    ${ECHO} "${cyan}------------------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Deinstallation ungenutzter Abhängigkeiten beginnt jetzt   *${transparent}"
    ${ECHO} "${cyan}------------------------------------------------------------${transparent}"
    ${ECHO} ""
    sudo apt autoremove -y
    ${ECHO} ""
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Aktion erfolgreich abgeschlossen. Der Bildschirm wird in 2 Sekunden geleert.   *${transparent}"
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} ""
    sleep 2
    clear
}

# Funktion zur Aktualisierung der installierten Pakete mit Auflösung von Abhängigkeiten
dist_upgrade() {
    ${ECHO} ""
    ${ECHO} "${cyan}------------------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Dist-Upgrade beginnt jetzt   *${transparent}"
    ${ECHO} "${cyan}------------------------------------------------------------${transparent}"
    ${ECHO} ""
    sudo apt dist-upgrade -y
    ${ECHO} ""
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Aktion erfolgreich abgeschlossen. Der Bildschirm wird in 2 Sekunden geleert.   *${transparent}"
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} ""
    sleep 2
    clear
}

# Funktion zum Leeren des Paketcaches
clean_package_cache() {
    ${ECHO} ""
    ${ECHO} "${cyan}--------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Leeren des Paketcaches beginnt jetzt   *${transparent}"
    ${ECHO} "${cyan}--------------------------------------------${transparent}"
    ${ECHO} ""
    sudo apt clean
    ${ECHO} ""
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Aktion erfolgreich abgeschlossen. Der Bildschirm wird in 2 Sekunden geleert.   *${transparent}"
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} ""
    sleep 2
    clear
}

# Funktion zum automatischen Entfernen von Paketen, die nicht mehr in den Quellen verfügbar sind
autoclean_package_cache() {
    ${ECHO} ""
    ${ECHO} "${cyan}----------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Automatisches Leeren des Paketcaches beginnt jetzt   *${transparent}"
    ${ECHO} "${cyan}----------------------------------------------${transparent}"
    ${ECHO} ""
    sudo apt autoclean
    ${ECHO} ""
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Aktion erfolgreich abgeschlossen. Der Bildschirm wird in 2 Sekunden geleert.   *${transparent}"
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} ""
    sleep 2
    clear
}

# Funktion zur Überprüfung auf Abhängigkeitsfehler
check_dependencies() {
    ${ECHO} ""
    ${ECHO} "${cyan}--------------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Überprüfung auf Abhängigkeitsfehler beginnt jetzt   *${transparent}"
    ${ECHO} "${cyan}--------------------------------------------------------${transparent}"
    ${ECHO} ""
    sudo apt-get check
    ${ECHO} ""
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Aktion erfolgreich abgeschlossen. Der Bildschirm wird in 2 Sekunden geleert.   *${transparent}"
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} ""
    sleep 2
    clear
}

# Funktion zum Markieren von Paketen als "automatisch installiert"
mark_auto_installed() {
    local packages="$@"
    ${ECHO} ""
    ${ECHO} "${cyan}-------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Markieren von Paket(en) als automatisch installiert   *${transparent}"
    ${ECHO} "${cyan}-------------------------------------------------${transparent}"
    ${ECHO} ""
    sudo apt-mark auto $packages
    ${ECHO} ""
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Aktion erfolgreich abgeschlossen. Der Bildschirm wird in 2 Sekunden geleert.   *${transparent}"
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} ""
    sleep 2
    clear
}

# Funktion zum Markieren von Paketen als "manuell installiert"
mark_manual_installed() {
    local packages="$@"
    ${ECHO} ""
    ${ECHO} "${cyan}---------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Markieren von Paket(en) als manuell installiert   *${transparent}"
    ${ECHO} "${cyan}---------------------------------------------------${transparent}"
    ${ECHO} ""
    sudo apt-mark manual $packages
    ${ECHO} ""
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Aktion erfolgreich abgeschlossen. Der Bildschirm wird in 2 Sekunden geleert.   *${transparent}"
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} ""
    sleep 2
    clear
}

# Funktion zum Anzeigen des Changelogs eines Pakets
show_changelog() {
    local package="$1"
    ${ECHO} ""
    ${ECHO} "${cyan}--------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Anzeigen des Changelogs für das Paket $package   *${transparent}"
    ${ECHO} "${cyan}--------------------------------------------------${transparent}"
    ${ECHO} ""
    apt changelog $package
    ${ECHO} ""
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Aktion erfolgreich abgeschlossen. Der Bildschirm wird in 2 Sekunden geleert.   *${transparent}"
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} ""
    sleep 2
    clear
}

# Funktion zum Herunterladen eines Pakets, ohne es zu installieren
download_package() {
    local package="$1"
    ${ECHO} ""
    ${ECHO} "${cyan}--------------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Herunterladen des Pakets $package beginnt jetzt   *${transparent}"
    ${ECHO} "${cyan}--------------------------------------------------------${transparent}"
    ${ECHO} ""
    apt download $package
    ${ECHO} ""
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Aktion erfolgreich abgeschlossen. Der Bildschirm wird in 2 Sekunden geleert.   *${transparent}"
    ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
    ${ECHO} ""
    sleep 2
    clear
}

# Hauptprogramm
while true; do
    display_logo_and_prompt # Logo und Aufforderung zur Auswahl anzeigen
    auswahl=("update" "upgrade" "install" "remove" "autoremove" "purge" "dist-upgrade" "clean" "autoclean" "check" "markauto" "unmarkauto" "changelog" "download" "Quit")
    PS3="${green}Bitte tragen Sie hier Ihre Auswahl ein: ${transparent}"
    select option in "${auswahl[@]}"; do
        case $option in
            "update")
                update_package_lists
                break
                ;;
            "upgrade")
                upgrade_installed_packages
                break
                ;;
            "install")
                ${ECHO} "Geben Sie den Namen des Pakets oder der Pakete ein (getrennt durch Leerzeichen):"
                read packages
                install_packages $packages
                break
                ;;
            "remove")
                ${ECHO} "Geben Sie den Namen des Pakets oder der Pakete ein (getrennt durch Leerzeichen):"
                read packages
                remove_packages $packages
                break
                ;;
            "autoremove")
                autoremove_unused_dependencies
                break
                ;;
            "purge")
                ${ECHO} "Geben Sie den Namen des Pakets oder der Pakete ein (getrennt durch Leerzeichen):"
                read packages
                sudo apt purge -y $packages
                break
                ;;
            "clean")
                clean_package_cache
                break
                ;;
            "autoclean")
                autoclean_package_cache
                break
                ;;
            "check")
                check_dependencies
                break
                ;;
            "markauto")
                ${ECHO} "Geben Sie den Namen des Pakets oder der Pakete ein (getrennt durch Leerzeichen):"
                read packages
                mark_auto_installed $packages
                break
                ;;
            "unmarkauto")
                ${ECHO} "Geben Sie den Namen des Pakets oder der Pakete ein (getrennt durch Leerzeichen):"
                read packages
                mark_manual_installed $packages
                break
                ;;
            "changelog")
                ${ECHO} "Geben Sie den Namen des Pakets ein:"
                read package
                show_changelog $package
                break
                ;;
            "download")
                ${ECHO} "Geben Sie den Namen des Pakets ein:"
                read package
                download_package $package
                break
                ;;
            "dist-upgrade")
                dist_upgrade
                break
                ;;
            "Quit")
                ${ECHO} ""
                ${ECHO} "${green}--------------------------------${transparent}"
                ${ECHO} "${green}*   Das Skript wurde beendet.  *${transparent}"
                ${ECHO} "${green}--------------------------------${transparent}"
                ${ECHO} ""
                sleep 1
                exit
                ;;
            *)
                ${ECHO} ""
                ${ECHO} "${red}-------------------------------------------------------------${transparent}"
                ${ECHO} "${red}*   Ungültige Option ausgewählt. Versuchen Sie es erneut.   *${transparent}"
                ${ECHO} "${red}-------------------------------------------------------------${transparent}"
                ${ECHO} ""
                ;;
        esac
    done
done
