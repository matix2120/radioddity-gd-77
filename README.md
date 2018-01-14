# Radioddity GD-77 config files
*English version below*

Repozytorium zawiera (mniej więcej) aktualne pliki konfiguracyjne i listy kontaktów dla radiotelefonu DMR Radioddity GD-77.
## Lista kontaktów
Aby wygenerować aktualną listę kontaktów wszystkich polskich stacji DMR wystarczy wpisać:
```bash
cd Contacts
./contacts.sh
```
Wygenerowany zostanie plik .csv, który może zostać bezpośrednio zaimportowany do oprogramowania GD-77.
## DMR ID
Radioddity GD-77 jest w stanie przechowywać ponad 10000 różnych DMR ID. Aktualnie skrypt z folderu DMR_ID generuje listę tylko dla Polski. Niestety rdiotelefon wyświetla tylko znak wywoławczy i pierwszą literę imienia, może zostanie to naprawione w nowych wersjach firmware.

Aby wygenerować aktualną listę DMR ID wystarczy wpisać:
```bash
cd DMR_ID
./dmr-id.sh
```
Wygenerowanie zostany plik .csv, który może zostać bezpośrednio zinmportowany do opgrogramowania GD-77 o nazwie `ActiveClient.exe`.

Można także użyć wygenerowanej już listy, która również jest zlokalizowana w folderze DMR_ID.

# English version
This a repository containing (more or less) up to date configurtion files and contacts list for Radioddity GD-77 DMR radio.
## Contacts list
To generate your own up to date contacts list containg all Polish DMR IDs just run:
```bash
cd Contacts
./contacts.sh
```
This will generate .csv file which can be directly imported to the GD-77 software.
## DMR IDs
Radioddity GD-77 is able to keep more than 10000 different DMR IDs. Right now script in DMR_ID directory generates list only for Poland. Unfortunately radio only displays callsign and first letter of name, maybe this will be fixed in new firmware versions.

To generate up to date DMR IDs list just run:
```bash
cd DMR_ID
./dmr-id.sh
```
This will generate .csv file which can be directly imported to the GD-77 software called `ActiveClient.exe`.

You can also use pregenerated list which is also located in DMR_ID directory.
