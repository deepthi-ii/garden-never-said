-- Run this in Supabase Dashboard > SQL Editor.
create table if not exists public.flowers (
  id bigint generated always as identity primary key,
  feeling text not null check (feeling in ('Hope','Heartbreak','Longing','Gratitude','Healing','Uncertainty')),
  thought text not null check (char_length(trim(thought)) between 3 and 280),
  created_at timestamptz not null default now()
);

alter table public.flowers enable row level security;

-- Public visitors may read anonymous thoughts and submit new ones.
grant select, insert on public.flowers to anon;
grant usage, select on sequence public.flowers_id_seq to anon;

drop policy if exists "Anyone can read garden flowers" on public.flowers;
create policy "Anyone can read garden flowers"
on public.flowers for select to anon using (true);

drop policy if exists "Anyone can plant a flower" on public.flowers;
create policy "Anyone can plant a flower"
on public.flowers for insert to anon
with check (
  feeling in ('Hope','Heartbreak','Longing','Gratitude','Healing','Uncertainty')
  and char_length(trim(thought)) between 3 and 280
);

-- Enable database events for live updates.
alter publication supabase_realtime add table public.flowers;
