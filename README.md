vytvoření turistické mapy pro garmin

vycházi z projektu OSM-Garmin-Maps-by-VasaM (https://www.garmin.vasam.cz)
upravený styl a mkgmap config

mapy tvoří mkgmap a splitter (https://www.mkgmap.org.uk/) by Steve Ratcliffe

vrstevnice generuje phyghtmap (http://katze.tfiu.de/projects/phyghtmap) by Panarchos

# to do
- přes mosty se vykresluje dálnice
- přidat cyklostezku + cyklopruh do bloku 23
- zobrazuje se červena trasa tam kde nemá být tj. rozcesti pod lysým vrchem (albrechtak) je mocra via czechia a me to tap přidá jeste červenou ktera tam není
    možna upravit soubor relation:
      VIACZECHIA - route - hiking -> red -> OK
    místo:
        type=route & (route=hiking | route=foot) & osmc:symbol ~ 'red.*' {apply {set mkgmap:red=yes; add name='${name}';}}
    dát?:
        type=route & (route=foot | route=hiking) & operator=cz:KČT & osmc:symbol ~ 'red.*' {apply {set mkgmap:red=yes; add name='${name}';}}
