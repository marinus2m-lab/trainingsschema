# AV '34 — Lopersapp v0.8

Weekoverzicht, AV '34-logo, zondagse duurlopen, en deelname met zichtbare namen.

## Centrale opslag activeren (verplicht voor deelname)
1. Maak een Supabase-project aan.
2. Activeer **Authentication → Providers → Anonymous sign-ins**.
3. Voer `supabase.sql` uit in de SQL Editor.
4. Zet Realtime aan voor de tabel `public.training_attendance` (optioneel voor automatische updates; anders verschijnt een wijziging na herladen).
5. Vul de publieke Project URL en **publishable/anon key** in `config.js` in. **Nooit de secret/service_role key gebruiken.**
6. Publiceer alle bestanden via GitHub Pages over de vorige versie heen.

Zonder deze configuratie toont de app het trainingsschema, maar is deelname uitgeschakeld. Er worden geen fictieve deelnemers getoond.

### Privacy en beperkingen
- Bij deelname is de ingevulde naam zichtbaar voor andere gebruikers. Zorg voor een passende privacyverklaring en verenigingsbeleid.
- De anonieme accountidentiteit is apparaat-/browsergebonden; na het wissen van browsergegevens kan een eerdere inschrijving niet meer vanaf dat apparaat worden ingetrokken.
- Iemand kan zelf een andere naam invullen; dit is geen identiteitscontrole.
- De opgeslagen naam is lokaal; reeds gemaakte inschrijvingen behouden de toen gebruikte naam.
- Voor een latere productieversie is beheerdersmoderatie/verwijderen van verloren inschrijvingen wenselijk.
- GitHub Pages is openbaar; trainerfuncties staan niet in deze app.

## Versie 0.9
Nieuwe rustige header met atletiekbaanlijnen, origineel AV '34-logo, profielknop rechtsboven en naam wijzigen. Voer de bijgewerkte `supabase.sql` uit voor het wijzigen van namen bij bestaande aanmeldingen. De Supabase-koppeling moet nog worden geconfigureerd.
