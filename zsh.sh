#!/bin/bash

# Funktion zur Installation von Zsh und Festlegung als Standard-Shell
install_zsh() {
    echo "Installiere Zsh..."
    if [[ "$OSTYPE" == "linux-gnu" ]]; then
        sudo apt-get update
        sudo apt-get install zsh
        chsh -s $(which zsh)
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        brew install zsh
        sudo dscl . -create /Users/$USER UserShell $(which zsh)
    else
        echo "Dieses Betriebssystem wird nicht unterstützt."
        exit 1
    fi
}

# Funktion zur Installation von Oh-My-Zsh
install_oh_my_zsh() {
    echo "Installiere Oh-My-Zsh..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

# Funktion zur Installation eines Zsh-Themes
install_theme() {
    local theme_name="$1"
    echo "Installiere das Theme $theme_name..."
    sed -i -e "s/ZSH_THEME=\".*\"/ZSH_THEME=\"$theme_name\"/" ~/.zshrc
}

# Funktion zur Installation eines Zsh-Plugins
install_plugin() {
    local plugin_name="$1"
    local zsh_plugin_path="$ZSH_CUSTOM/plugins/$plugin_name"
    
    if [ -d "$zsh_plugin_path" ]; then
        echo "Das Plugin $plugin_name ist bereits installiert."
    else
        echo "Installiere das Plugin $plugin_name..."
        git clone "https://github.com/b4b4r07/zsh-navigation-tools" "$zsh_plugin_path"
        echo "plugins+=($plugin_name)" >> ~/.zshrc
        echo "Das Plugin $plugin_name wurde zur .zshrc-Datei hinzugefügt."
    fi
}

# Funktion zum Entfernen eines Zsh-Themes
remove_theme() {
    local themes=($(list_installed_themes))
    
    if [ "${#themes[@]}" -eq 0 ]; then
        echo "Es sind keine Themes installiert."
        return
    fi
    
    echo "Installierte Zsh-Themes:"
    for i in "${!themes[@]}"; do
        echo "$i. ${themes[$i]}"
    done

    read -p "Wählen Sie die Nummern der Themes, die Sie entfernen möchten (z.B. 0 1 2): " choices
    for choice in $choices; do
        local theme="${themes[$choice]}"
        remove_theme "$theme"
    done
}

# Funktion zum Entfernen eines Zsh-Plugins
remove_plugin() {
    local plugins=($(list_installed_plugins))
    
    if [ "${#plugins[@]}" -eq 0 ]; then
        echo "Es sind keine Plugins installiert."
        return
    fi
    
    echo "Installierte Zsh-Plugins:"
    for i in "${!plugins[@]}"; do
        echo "$i. ${plugins[$i]}"
    done

    read -p "Wählen Sie die Nummern der Plugins, die Sie entfernen möchten (z.B. 0 1 2): " choices
    for choice in $choices; do
        local plugin="${plugins[$choice]}"
        remove_plugin "$plugin"
    done
}

# Funktion zum Anzeigen der installierten Zsh-Themes
list_installed_themes() {
    grep -o 'ZSH_THEME="[a-zA-Z0-9_-]*"' ~/.zshrc | cut -d'"' -f2
}

# Funktion zum Anzeigen der installierten Zsh-Plugins
list_installed_plugins() {
    grep -o 'plugins+=(.*[a-zA-Z0-9_-].*)' ~/.zshrc | sed 's/plugins=//;s/[\(\\)]//g' | tr -d '"'
}

# Funktion zum Entfernen von Zsh und Oh-My-Zsh
remove_zsh_oh_my_zsh() {
    echo "Entferne Zsh und Oh-My-Zsh..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/uninstall.sh)"
    sudo rm -rf ~/.oh-my-zsh
    sudo rm -f ~/.zshrc
    echo "Zsh und Oh-My-Zsh wurden entfernt."
}

# Hauptmenü
while true; do
    clear
    echo "Zsh-Installationsprogramm"
    echo "1. Zsh installieren und als Standard festlegen"
    echo "2. Oh-My-Zsh installieren"
    echo "3. Zsh-Theme auswählen und installieren"
    echo "4. Zsh-Plugin auswählen und installieren"
    echo "5. Zsh-Theme entfernen"
    echo "6. Zsh-Plugin entfernen"
    echo "7. Zsh und Oh-My-Zsh entfernen"
    echo "8. Anzeigen der installierten Zsh-Themes"
    echo "9. Anzeigen der installierten Zsh-Plugins"
    echo "10. Beenden"

    read -p "Wählen Sie eine Option: " choice

    case $choice in
        1)
            install_zsh
            ;;
        2)
            install_oh_my_zsh
            ;;
        3)
            clear
            echo "Verfügbare Zsh-Themes:"
            echo "1. agnoster"
            echo "2. robbyrussell"
            echo "3. powerlevel10k"
            echo "4. spaceship"
            echo "5. bira"
            read -p "Wählen Sie ein Theme (1-5): " theme_choice
            case $theme_choice in
                1) install_theme "agnoster" ;;
                2) install_theme "robbyrussell" ;;
                3) install_theme "powerlevel10k" ;;
                4) install_theme "spaceship" ;;
                5) install_theme "bira" ;;
                *)
                    echo "Ungültige Auswahl. Bitte erneut versuchen."
                    ;;
            esac
            ;;
        4)
            clear
            echo "Verfügbare Zsh-Plugins:"
            echo "1. zsh-autosuggestions"
            echo "2. zsh-syntax-highlighting"
            echo "3. zsh-completions"
            echo "4. zsh-history-substring-search"
            echo "5. zsh-navigation-tools"
            read -p "Wählen Sie ein Plugin (1-5): " plugin_choice
            case $plugin_choice in
                1) install_plugin "zsh-autosuggestions" ;;
                2) install_plugin "zsh-syntax-highlighting" ;;
                3) install_plugin "zsh-completions" ;;
                4) install_plugin "zsh-history-substring-search" ;;
                5) install_plugin "zsh-navigation-tools" ;;
                *)
                    echo "Ungültige Auswahl. Bitte erneut versuchen."
                    ;;
            esac
            ;;
        5)
            remove_theme
            ;;
        6)
            remove_plugin
            ;;
        7)
            remove_zsh_oh_my_zsh
            ;;
        8)
            clear
            echo "Installierte Zsh-Themes:"
            list_installed_themes
            ;;
        9)
            clear
            echo "Installierte Zsh-Plugins:"
            list_installed_plugins
            ;;
        10)
            echo "Das Skript wird beendet."
            exit 0
            ;;
        *)
            echo "Ungültige Option. Bitte erneut versuchen."
            ;;
    esac

    read -p "Drücken Sie Enter, um fortzufahren..."
done
