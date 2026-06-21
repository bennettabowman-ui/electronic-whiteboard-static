create table if not exists public.layout_profiles (
  id uuid primary key default gen_random_uuid(),
  broker_id text not null,
  name text not null default 'Default',
  is_default boolean not null default true,
  layout jsonb not null,
  updated_at timestamptz not null default now(),
  unique (broker_id, name)
);

alter table public.layout_profiles enable row level security;

drop policy if exists "layout_profiles_read" on public.layout_profiles;
create policy "layout_profiles_read"
on public.layout_profiles for select
to anon
using (true);

drop policy if exists "layout_profiles_insert" on public.layout_profiles;
create policy "layout_profiles_insert"
on public.layout_profiles for insert
to anon
with check (true);

drop policy if exists "layout_profiles_update" on public.layout_profiles;
create policy "layout_profiles_update"
on public.layout_profiles for update
to anon
using (true)
with check (true);
