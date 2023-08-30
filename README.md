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
```

Oznaczenia w plikach:
- [TODO] - zmiany potrzebne na już
- [BALANS] - zmiany dotyczące balansu gry

Plik GOTHIC.dat zawiera skompilowane skrypty gotowe do spakowania jako plik .MOD i uruchomienia w grze.

Pliki Gothic.src i ou.bin to pliki zawierające przede wszystkim spolszczone dialogi, które w oryginalnej wersji modyfikacji były po niemiecku, i należy je zawrzeć w spakowanej modyfikacji.  
Plik Gothic.src powinien znajdować się w `/_work/Data/Scripts/Content/` a plik ou.bin - w `/_work/Data/Scripts/Content/Cutscene/`.

Przydatne zasoby:
- Składnia Daedalus (to nie to samo co DLang): https://www.worldofgothic.de/modifikation/index.php?go=daedalus
- Gothic API (to OpenGothic, ale oryginał jest podobny): https://github.com/Try/OpenGothic/wiki/Daedalus-scripts

## Changelog balansu
- [soon]