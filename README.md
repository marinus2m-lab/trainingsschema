# AV '34 Looptraining 1.0 — Supabase

1. Controleer dat de eerdere AV34 SQL scripts zijn uitgevoerd.
2. Voer `01_importeer_trainingen.sql` uit in Supabase SQL Editor (project av34-looptraining). De trainingstijden zijn voorlopige placeholders (19:30 doordeweeks en 09:00 zondag), controleer deze met de echte planning.
3. Upload de webbestanden naar de root van de GitHub Pages repository `trainingsschema`.
4. Controleer Authentication > URL Configuration met `https://marinus2m-lab.github.io/trainingsschema/` als Site URL en redirect allowlist.
5. Test verificatiemail, profiel opslaan, aanmelden, afmelden en privacy met twee accounts.

De app gebruikt alleen een openbare publishable key. Geen service-role key. De trainingstitels blijven lokaal in de meegeleverde app; de database gebruikt dezelfde datums voor de aanmeldingen. De trainerweergave van verborgen namen wordt in een volgende trainerinterface aangesloten.

Let op: Supabase standaard SMTP kan e-mails beperken.
