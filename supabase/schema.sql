-- Cuaderno Docente: almacenamiento sincronizado por usuario.
-- Ejecuta este script en Supabase > SQL Editor > New query.
create table if not exists public.cuaderno_data (
  user_id uuid primary key references auth.users(id) on delete cascade,
  payload jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.cuaderno_data enable row level security;

drop policy if exists "Users can read their own cuaderno" on public.cuaderno_data;
create policy "Users can read their own cuaderno"
  on public.cuaderno_data for select
  to authenticated
  using (auth.uid() = user_id);

drop policy if exists "Users can create their own cuaderno" on public.cuaderno_data;
create policy "Users can create their own cuaderno"
  on public.cuaderno_data for insert
  to authenticated
  with check (auth.uid() = user_id);

drop policy if exists "Users can update their own cuaderno" on public.cuaderno_data;
create policy "Users can update their own cuaderno"
  on public.cuaderno_data for update
  to authenticated
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);

grant select, insert, update on public.cuaderno_data to authenticated;
