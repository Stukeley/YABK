# YABK - Yet Another Bitwa Królów
Nieoficjalna aktualizacja modyfikacji Bitwa Królów 3 do gry Gothic 2.

Więcej informacji o modyfikacji:
- [Gothic Fandom](https://gothic.fandom.com/pl/wiki/Bitwa_Królów_3)
- [TheModders](http://themodders.org/index.php?topic=24077.0)

## Discord
Modyfikacja powstaje pod patronatem serwera Discord "Stukeleyak - Speedruny i Modyfikacje". https://discord.gg/DRZxEHtaGV

## Informacje dla osób wspierających projekt
Pierwszym etapem rozwoju modyfikacji jest ogarnięcie kodu źródłowego, który jest momentami napisany dość kiepsko.

Projekt zawiera całą masę plików niezwiązanych bezpośrednio z modyfikacją Bitwa Królów 3 - czy są one potrzebne do działania modyfikacji? Wymaga to dalszych testów.

Hierarchia interesujących nas plików źródłowych:

```css
- PrjGothic
  |- Startup.d
  |- SVM.d
  |- Text.d
  |- Story
     |- B_Story
        |- (funkcje związane z działaniem niektórych elementów modyfikacji)
     |- Dialoge
        |- (dialogi z modyfikacji)
     |- NPC
        |- (NPC z modyfikacji)
     |- YABK_Scripts
        |- (skrypty z modyfikacji)
```

Oznaczenia w plikach:
- [TODO] - zmiany potrzebne na już
- [BALANS] - zmiany dotyczące balansu gry

## Instrukcja kompilacji i uruchamiania YABK
0. Potrzebny nam jest [GothicSourcer](https://worldofplayers.ru/threads/38318/) i [VDFS](https://themodders.org/index.php?topic=31909.0).
1. W GothicSourcerze File -> Open Solution -> wskazujemy plik Yet Another Bitwa Królów.gsc.
2. Rozpoczynamy kompilację: Build -> Compile.
3. Otwieramy folder "Do spakowania" i przenosimy do niego następujące pliki uzyskane po kompilacji (powinny znajdować się w "3\YABK\SolYet Another Bitwa Królów\PrjGOTHIC"):
   - Gothic.dat do "\_WORK\DATA\SCRIPTS\_COMPILED"
   - Gothic.src do "\_WORK\DATA\SCRIPTS\CONTENT"
   - ou.bin do "\_WORK\DATA\SCRIPTS\CONTENT\CUTSCENE"

Plik GOTHIC.dat zawiera skompilowane skrypty gotowe do spakowania jako plik .MOD i uruchomienia w grze.

Pliki Gothic.src i ou.bin to pliki zawierające przede wszystkim spolszczone dialogi, które w oryginalnej wersji modyfikacji były po niemiecku, i należy je zawrzeć w spakowanej modyfikacji.  
Plik Gothic.src powinien znajdować się w `/_work/Data/Scripts/Content/` a plik ou.bin - w `/_work/Data/Scripts/Content/Cutscene/`.

4. Odpalamy VDFS, w zakładce Builder wpisujemy:
    - Filename: wybieramy plik w folderze z Gothic "\Data\ModVDF", np. o nazwie YABK.mod
    - Root Path: wybieramy ścieżkę do całego folderu "Do spakowania"
    - W polu poniżej Comment wpisujemy bez cudzysłowiów: "*.*" i klikamy na +
    - Klikamy Build Volume

![SETUP VDFS](https://i.imgur.com/43BwU0x.png)

5. Wrzucamy do folderu z grą "\System" pliki: "BattleOfTheKings3_PL.ico", "BattleOfTheKings3_PL.rtf", "YetAnotherBitwaKrolow.ini".
6. Uruchamiamy moda Gothic Starterem.

Przydatne zasoby:
- Składnia Daedalus (to nie to samo co DLang): https://www.worldofgothic.de/modifikation/index.php?go=daedalus
- Gothic API (to OpenGothic, ale oryginał jest podobny): https://github.com/Try/OpenGothic/wiki/Daedalus-scripts

## TODO / przemyślenia
- zmiana wyglądu bohatera jak zmieni się pancerz szkieleta
- żeby ai ulepszało magów
- pełnie
- mag czasami się nie pojawia od razu
- teleporty
- kowal gdy produkuje zbroje gdy mamy juz 3
- różne typy AI z różnym zachowaniem
- instrukcja jak kompilować mod
- stara nieśmiertelność - potrzebny nam sposób, żeby ustawiać NPC jako nieśmiertelnych i cofać im tę nieśmiertelność po pewnym czasie

## Changelog balansu
- Usunięto perk za punkty honoru "Nieśmiertelność" i zamieniono go perkiem "Bonusowe HP" - jest to spowodowane faktem, że wcześniejsza wersja umiejętności była bardzo pobugowana i nie było możliwości sprawienia, by działała dokładnie tak, jak zamierzyli oryginalni twórcy
