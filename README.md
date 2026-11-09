# ⛳ Papiergolf

Een digitale, offline speelbare **pass-and-play** versie van het rol-en-schrijf golfspel,
geïnspireerd op [Paper Apps™ GOLF](https://gladdendesign.com/products/paper-apps-golf) van
Gladden Design. Geen officiële app — eigen uitwerking van de spelregels, gebouwd om met
meerdere mensen op één telefoon of tablet te spelen.

## Spelen

Open de app (zie "Installeren" hieronder), vul spelersnamen in, kies 9 of 18 holes en druk
op start. Daarna om de beurt, in twee losse worpen:

1. **Gooi voor lengte** (rechtdoor). Lig je op de **fairway/tee**? Dan gooi je er twee en
   telt de hoogste (bonus). Lig je in het **zand**? Dan gooi je er twee en telt de laagste
   (strafworp). Overal elders gewoon één dobbelsteen.
2. **Gooi voor breedte** — de uitkomst (1-3 vakjes) kies jij zelf links of rechts, met een
   stippellijn op het bord die beide mogelijke landingsplekken laat zien voordat je kiest.

Een hole is **par × 6 vakjes** lang. Terrein geeft strafslagen, maar blokkeert je pad niet
meer:

- **Zand**: strafworp op de volgende lengte + **1 strafslag** als je erin landt.
- **Water**: overvliegen mag, landen niet — bal springt terug naar droog, **2 strafslagen**.
- **Bomen**: je mag erin landen (blokkeert niet) — kost **4 strafslagen**, daarna gewoon
  verder.

Zodra je bal de laatste rij bereikt of passeert, is de hole uit — geen aparte putt nodig. De
dobbelsteen-knoppen blijven altijd onderin beeld, ook als je omhoog scrolt op een lange baan.

Minste totaal aantal slagen na alle holes wint. Elke ronde krijgt een **baancode** (bijv.
`A7K2QX`) — vul dezelfde code bij een nieuw spel in om exact dezelfde baan nog eens te
spelen, handig om scores eerlijk te vergelijken.

## Samen spelen op afstand (online)

Naast pass-and-play op één toestel kan iedereen ook vanaf zijn eigen telefoon/tablet meespelen,
ook vanaf een andere locatie. Op het startscherm kies je de tab **"Online, op afstand"**:

1. Eén speler (de host) kiest **"Nieuw spel starten"**, vult zijn naam in en kiest 9 of 18
   holes. Dat levert een korte **spelcode** op (bijv. `A7K2QX`).
2. De anderen kiezen **"Meedoen met code"**, vullen die code + hun eigen naam in.
3. In de wachtkamer zie je live wie er al meedoet. Zodra iedereen erbij is, drukt de host op
   **"Start spel"**.
4. Elke zet wordt direct gedeeld: wie niet aan de beurt is ziet "Wacht op ..." in plaats van
   de dobbelsteen-knoppen, en zodra de ander gooit zie je dat meteen op je eigen scherm
   verschijnen.

Een online spel werkt alleen met internetverbinding (geen offline-modus zoals bij lokaal
pass-and-play). Ververs je de pagina tijdens een online spel, dan pakt de app je lopende
sessie automatisch weer op.

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
en `sw.js` voor de PWA-installatie/offline-cache. Voortgang van een lokaal spel wordt in de
browser opgeslagen (`localStorage`), dus een ververste pagina hervat het spel.

Online spelen op afstand gebruikt een eigen, apart Supabase-project (los van andere
projecten): één tabel `golf_games` (spelcode → spelstand als JSON), zonder login — iedereen
met de spelcode mag lezen/schrijven, want er staat geen gevoelige data in (alleen namen en
dobbelsteenresultaten). Zetten worden live gesynchroniseerd via Supabase Realtime. Zie
`supabase/online_games.sql` voor het eenmalige setup-script.

Mogelijke vervolgstappen: een "dezelfde baan"-daily-challenge modus, meer terreinvarianten.
