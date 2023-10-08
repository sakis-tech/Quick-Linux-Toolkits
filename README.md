<!-- Improved compatibility of Zurück zum Anfang link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/sakis-tech/Quick-Linux-Toolkits">
    <img src="images/logo.png" alt="Logo" width="504" height="167">
  </a>

<h3 align="center">Quick-Linux-Toolkits</h3>
  <p align="center">
    <a href="https://github.com/sakis-tech/Quick-Linux-Toolkits/issues">Fehler melden</a>
    ·
    <a href="https://github.com/sakis-tech/Quick-Linux-Toolkits/issues">Vorschlag für eine Funktion</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Inhaltsverzeichnis</summary>
  <ol>
    <li><a href="#über-das-projekt">Über das Projekt</a></li>
    <li><a href="#installation">Installation</a></li>
    <li><a href="#verwendung">Verwendung</a></li>
    <li><a href="#mitwirken">Mitwirken</a></li>
    <li><a href="#lizenz">Lizenz</a></li>
    <li><a href="#kontakt">Kontakt</a></li>
    <li><a href="#unterstütz-dieses-projekt">Unterstütz dieses Projekt</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## Über das Projekt

QLT ist ein Projekt, das spezielle Bash-Skripte für die Verwaltung auf Linux-Systemen bereitstellt. 
Jedes Skript ist aufgabenspezifisch, so dass auch unerfahrene Benutzer schnell und einfach nutzen können. 
Erfahrene Benutzer hingegen haben die Möglichkeit, die Skripte an ihre individuellen Bedürfnisse anzupassen oder zu erweitern.

<p align="right">(<a href="#readme-top">Zurück zum Anfang</a>)</p>

<!-- GETTING STARTED -->
## Installation

1. Das Repository klonen.
   ```sh
   git clone https://github.com/sakis-tech/Quick-Linux-Toolkits.git
   ```
2. in den Ordner wechseln.
   ```sh
   cd Quick-Linux-Toolkits
   ```
3. alle scripte ausführbar machen.
   ```js
   chmod +x *.sh
   ```
4. das gewünschte Script ausführen. Hier als beispiel das `update.sh`
   ```js
   ./update.sh
   ```

<p align="right">(<a href="#readme-top">Zurück zum Anfang</a>)</p>



<!-- USAGE EXAMPLES -->
## Verwendung

<div align="center">
  <a href="https://github.com/sakis-tech/Quick-Linux-Toolkits">
    <img src="images/QLT.png" alt="Logo" width="734" height="536">
  </a>
</div>

Die folgende Tabelle gibt einen Überblick über die Skripte, die verwendeten Befehle und ihre Hauptfunktionen.
| Auswahlmöglichkeit  | Verwendete Befehle        | Funktion                                 |
|----------------------|---------------------------|------------------------------------------|
| update               | `sudo apt update`         | Neueinlesen der Paketlisten              |
| upgrade              | `sudo apt upgrade -y`     | Installierte Pakete aktualisieren        |
| install PAKET(E)     | `sudo apt install PAKET(E)` | Installation von PAKET(E)               |
| remove PAKET(E)      | `sudo apt remove PAKET(E)`  | Deinstallation von PAKET(E)            |
| autoremove [PAKET(E)]| `sudo apt autoremove`      | Deinstallation ungenutzter Abhängigkeiten [inkl PAKET(E)] |
| purge PAKET(E)       | `sudo apt purge PAKET(E)`   | Wie `remove`, zusätzlich werden alle globalen Konfigurationen von PAKET(E) entfernt |
| dist-upgrade         | `sudo apt dist-upgrade -y` | Wie `upgrade`, können dabei auch Pakete installiert bzw. entfernt werden |
| clean                | `sudo apt clean`           | Leeren des Paketcaches (Entfernen von zur Installation heruntergeladenen Paketen) |
| autoclean            | `sudo apt autoclean`       | Wie `clean`, nur werden ausschließlich Pakete, die nicht mehr in den Quellen verfügbar sind, gelöscht |
| check                | `sudo apt check`           | Überprüfung auf Abhängigkeitsfehler     |
| markauto PAKET(E)    | `sudo apt-mark auto PAKET(E)` | PAKET(E) als "automatisch installiert" markieren |
| unmarkauto PAKET(E)  | `sudo apt-mark manual PAKET(E)` | PAKET(E) als "manuell installiert" markieren |
| changelog PAKET(E)   | `apt changelog PAKET(E)`   | Herunterladen und Anzeige des Changelogs von PAKET(E) |
| download PAKET(E)    | `apt download PAKET(E)`    | PAKET(E) herunterladen                    |
| Quit                     |                              | Das Skript beenden                             |



<p align="right">(<a href="#readme-top">Zurück zum Anfang</a>)</p>


<!-- CONTRIBUTING -->
## Mitwirken

Wenn du einen Vorschlag hast, der dieses Projekt verbessern könnte, forke bitte das Repo und erstelle eine Pull-Anfrage.
Vergiss nicht, dem Projekt einen Stern zu geben! Danke nochmals!

<p align="right">(<a href="#readme-top">Zurück zum Anfang</a>)</p>

<!-- LICENSE -->
## Lizenz

Vertrieben unter der MIT-Lizenz. Weitere Informationen findest du in der Datei `LICENSE`

<p align="right">(<a href="#readme-top">Zurück zum Anfang</a>)</p>

<!-- CONTACT -->
## Kontakt

Sakis-Tech - [@mein_homelab](https://twitter.com/mein_homelab) - info@sakis.tech

Projekt-Link: [https://github.com/sakis-tech/Quick-Linux-Toolkits](https://github.com/sakis-tech/Quick-Linux-Toolkits)

<p align="right">(<a href="#readme-top">Zurück zum Anfang</a>)</p>


<!-- Support -->
## Unterstütz dieses Projekt

Wenn Dir dieses Projekt gefällt und Du gerne dazu beitragen möchtest, Meine Arbeit zu unterstützen, kannst Du mir gerne einen `virtuellen Kaffee` ausgeben. Deine Spende hilft mir, die Entwicklung, Wartung und Verbesserung dieses Projekts fortzusetzen.
<br />
<br />

<p><a href="https://ko-fi.com/sakistech"> <img align="center" src="https://cdn.ko-fi.com/cdn/kofi3.png?v=3" height="50" width="210" alt="sakistech" /></a></p>
<br />

Vielen Dank für Deine Unterstützung!


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/sakis-tech/Quick-Linux-Toolkits.svg?style=for-the-badge
[contributors-url]: https://github.com/sakis-tech/Quick-Linux-Toolkits/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/sakis-tech/Quick-Linux-Toolkits.svg?style=for-the-badge
[forks-url]: https://github.com/sakis-tech/Quick-Linux-Toolkits/network/members
[stars-shield]: https://img.shields.io/github/stars/sakis-tech/Quick-Linux-Toolkits.svg?style=for-the-badge
[stars-url]: https://github.com/sakis-tech/Quick-Linux-Toolkits/stargazers
[issues-shield]: https://img.shields.io/github/issues/sakis-tech/Quick-Linux-Toolkits.svg?style=for-the-badge
[issues-url]: https://github.com/sakis-tech/Quick-Linux-Toolkits/issues
[license-shield]: https://img.shields.io/github/license/sakis-tech/Quick-Linux-Toolkits.svg?style=for-the-badge
[license-url]: https://github.com/sakis-tech/Quick-Linux-Toolkits/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com 





