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
    sleep 0.2 && ${ECHO} "     ██████╗ ██╗   ██╗██╗ ██████╗██╗  ██╗    ██╗     ██╗███╗   ██╗██╗   ██╗██╗  ██╗"
    sleep 0.2 && ${ECHO} "    ██╔═══██╗██║   ██║██║██╔════╝██║ ██╔╝    ██║     ██║████╗  ██║██║   ██║╚██╗██╔╝"
    sleep 0.2 && ${ECHO} "    ██║   ██║██║   ██║██║██║     █████╔╝     ██║     ██║██╔██╗ ██║██║   ██║ ╚███╔╝ "
    sleep 0.2 && ${ECHO} "    ██║▄▄ ██║██║   ██║██║██║     ██╔═██╗     ██║     ██║██║╚██╗██║██║   ██║ ██╔██╗ "
    sleep 0.2 && ${ECHO} "    ╚██████╔╝╚██████╔╝██║╚██████╗██║  ██╗    ███████╗██║██║ ╚████║╚██████╔╝██╔╝ ██╗"
    sleep 0.2 && ${ECHO} "     ╚══▀▀═╝  ╚═════╝ ╚═╝ ╚═════╝╚═╝  ╚═╝    ╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝"

    ${ECHO} ""
    sleep 0.2 && ${ECHO} "            ████████╗ ██████╗  ██████╗ ██╗     ██╗  ██╗██╗████████╗███████╗"
    sleep 0.2 && ${ECHO} "            ╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██║ ██╔╝██║╚══██╔══╝██╔════╝"
    sleep 0.2 && ${ECHO} "               ██║   ██║   ██║██║   ██║██║     █████╔╝ ██║   ██║   ███████╗"
    sleep 0.2 && ${ECHO} "               ██║   ██║   ██║██║   ██║██║     ██╔═██╗ ██║   ██║   ╚════██║"
    sleep 0.2 && ${ECHO} "               ██║   ╚██████╔╝╚██████╔╝███████╗██║  ██╗██║   ██║   ███████║"
    sleep 0.2 && ${ECHO} "               ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝   ╚═╝   ╚══════╝"

    ${ECHO} ""
    sleep 0.1
    ${ECHO} $yellow"                   Dieses Script ("$cyan"update.sh"$yellow") Aktualisiert Linux"
    sleep 0.1
    ${ECHO} $magenta "                       Made with <3 by:"$yellow" Sakis ("$red"sakis-tech"$yellow")"
    sleep 0.1
    ${ECHO} ""

    ${ECHO} ""
    ${ECHO} "${cyan}-----------------------------------------------------${transparent}"
    ${ECHO} "${cyan}*   Bitte wählen Sie eine der unteren Optionen aus  *${transparent}"
    ${ECHO} "${cyan}-----------------------------------------------------${transparent}"
    ${ECHO} ""
}

while true; do
    display_logo_and_prompt # Logo und Aufforderung zur Auswahl anzeigen
    auswahl=("Neueinlesen der Paketlisten" "Installierte Pakete aktualisieren" "Quit") # Aufwahlmöglichkeiten
    PS3="${green}Bitte tragen Sie hier Ihre Auswahl ein: ${transparent}"  # Änderung des PS3-Promptsatzes
    select option in "${auswahl[@]}"; do
        case $option in
            "Neueinlesen der Paketlisten")
                ${ECHO} ""
                ${ECHO} "${cyan}------------------------------------------------${transparent}"
                ${ECHO} "${cyan}*   Neueinlesen der Paketlisten beginnt jetzt   *${transparent}"
                ${ECHO} "${cyan}------------------------------------------------${transparent}"
                ${ECHO} ""
                sudo apt update
                ${ECHO} ""
                ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
                ${ECHO} "${cyan}*   Aktion erfolgreich abgeschlossen. Der Bildschirm wird in 5 Sekunden geleert.   *${transparent}"
                ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
                ${ECHO} ""
                sleep 5
                clear
                break # Hier wird die innere Schleife beendet und zum Start zurückgekehrt.
                ;;
            "Installierte Pakete aktualisieren")
                ${ECHO} ""
                ${ECHO} "${cyan}-------------------------------------------------------${transparent}"
                ${ECHO} "${cyan}*   Installierte Pakete aktualisieren beginnt jetzt   *${transparent}"
                ${ECHO} "${cyan}-------------------------------------------------------${transparent}"
                ${ECHO} ""
                sudo apt upgrade -y
                ${ECHO} ""
                ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
                ${ECHO} "${cyan}*   Aktion erfolgreich abgeschlossen. Der Bildschirm wird in 5 Sekunden geleert.   *${transparent}"
                ${ECHO} "${cyan}------------------------------------------------------------------------------------${transparent}"
                ${ECHO} ""
                sleep 5
                clear
                break # Hier wird die innere Schleife beendet und zum Start zurückgekehrt.
                ;;            
            "Quit")
                ${ECHO} ""
                ${ECHO} "${green}--------------------------------${transparent}"
                ${ECHO} "${green}*   Das Skript wurde beendet.  *${transparent}"
                ${ECHO} "${green}--------------------------------${transparent}"
                ${ECHO} ""
                sleep 1
                exit # Das Skript wird vollständig beendet.
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
