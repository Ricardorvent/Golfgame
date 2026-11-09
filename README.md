# ⛳ Papiergolf

Een digitale, offline speelbare **pass-and-play** versie van het rol-en-schrijf golfspel,
geïnspireerd op [Paper Apps™ GOLF](https://gladdendesign.com/products/paper-apps-golf) van
Gladden Design. Geen officiële app — eigen uitwerking van de spelregels, gebouwd om met
meerdere mensen op één telefoon of tablet te spelen.

## Spelen

Open de app (zie "Installeren" hieronder), vul spelersnamen in, kies 9 of 18 holes en druk
op start. Daarna om de beurt:

1. **Gooi** de dobbelsteen.
2. Lig je op de **fairway**? Dan gooi je twee dobbelstenen en telt de hoogste (bonus).
   Lig je in het **zand** (of kom je net uit de bomen)? Dan gooi je er twee en telt de
   laagste (strafworp). Overal elders gewoon één dobbelsteen.
3. Kies een **richting** (8 mogelijkheden) — de bal beweegt dat aantal vakjes in een rechte
   lijn. Je mag over water heen vliegen, maar niet erin landen (anders: +1 strafslag, bal
   blijft op de droge rand liggen). Bomen blokkeren je pad: de bal stopt ervoor.
4. Lig je op de **green**, dan hoef je geen richting meer te kiezen — de worp beweegt
   automatisch richting de vlag. Vlag precies geraakt = hole uit.
5. Na elke slag geeft het scherm aan wie er daarna aan de beurt is ("Geef door aan...").

Minste totaal aantal slagen na alle holes wint. Elke ronde krijgt een **baancode** (bijv.
`A7K2QX`) — vul dezelfde code bij een nieuw spel in om exact dezelfde baan nog eens te
spelen, handig om scores eerlijk te vergelijken.

## Installeren op je telefoon (werkt daarna ook zonder internet)

1. Open de link **één keer** terwijl je internet hebt (wifi of data).
2. **iPhone/iPad (Safari):** tik op het deel-icoon onderin → "Zet op beginscherm".
3. **Android (Chrome):** tik op het menu (⋮) rechtsboven → "App installeren" / "Toevoegen aan
   startscherm".
4. Open daarna het nieuwe app-icoon op je beginscherm. De app werkt vanaf dat moment ook in
   het vliegtuig of zonder bereik — alles draait lokaal op het toestel, er wordt niets naar
   een server gestuurd.

Zonder installeren werkt de link ook gewoon in de browser, maar dan alleen met internet.

## Techniek (voor later)

Eén self-contained `index.html` (geen build-stap, geen frameworks) + `manifest.webmanifest`
en `sw.js` voor de PWA-installatie/offline-cache. Voortgang van een lopend spel wordt lokaal
in de browser opgeslagen (`localStorage`), dus een ververste pagina hervat het spel.

Mogelijke vervolgstappen: live multiplayer (iedereen op eigen toestel, gedeeld scorebord via
een backend), een "dezelfde baan"-daily-challenge modus, meer terreinvarianten.
