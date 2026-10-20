-- Voer dit uit in de SQL Editor van je eigen Supabase-project.
-- Zet daarnaast Authentication > Providers > Anonymous sign-ins aan.
create table if not exists public.training_attendance (
  group_id text not null,
  training_date date not null,
  user_id uuid not null references auth.users(id) on delete cascade,
  display_name text not null check (char_length(trim(display_name)) between 2 and 60),
  created_at timestamptz not null default now(),
  primary key (group_id,training_date,user_id)
);
alter table public.training_attendance enable row level security;
revoke all on public.training_attendance from anon;
grant select,insert,delete on public.training_attendance to authenticated;
drop policy if exists attendance_read on public.training_attendance;
create policy attendance_read on public.training_attendance for select to authenticated using (group_id='loopgroep-1');
drop policy if exists attendance_insert on public.training_attendance;
create policy attendance_insert on public.training_attendance for insert to authenticated with check (auth.uid()=user_id and group_id='loopgroep-1');
drop policy if exists attendance_delete on public.training_attendance;
create policy attendance_delete on public.training_attendance for delete to authenticated using (auth.uid()=user_id and group_id='loopgroep-1');
-- Voor automatische vernieuwing van de deelnemerslijst:
-- voeg public.training_attendance toe aan de supabase_realtime publication.

-- v0.9: sta gebruikers toe hun eigen zichtbare naam te wijzigen
grant update (display_name) on public.training_attendance to authenticated;
drop policy if exists attendance_update_name on public.training_attendance;
create policy attendance_update_name on public.training_attendance for update to authenticated
using (auth.uid()=user_id and group_id='loopgroep-1')
with check (auth.uid()=user_id and group_id='loopgroep-1');
