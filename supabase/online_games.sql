-- Papiergolf: tabel voor online (op-afstand) spellen.
-- Eenmalig draaien in de Supabase SQL Editor.

create table if not exists golf_games (
  code text primary key,
  state jsonb not null,
  updated_at timestamptz not null default now(),
  created_at timestamptz not null default now()
);

alter table golf_games enable row level security;

-- Geen login nodig om samen te spelen: iedereen met de spelcode mag lezen/schrijven.
-- Geen gevoelige data in deze tabel (alleen namen, spelstand, dobbelsteenresultaten).
create policy "anyone can read golf games" on golf_games
  for select using (true);

create policy "anyone can create golf games" on golf_games
  for insert with check (true);

create policy "anyone can update golf games" on golf_games
  for update using (true) with check (true);

-- Realtime aanzetten voor deze tabel, zodat andere spelers een zet direct zien.
alter publication supabase_realtime add table golf_games;
