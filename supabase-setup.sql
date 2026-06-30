create table if not exists rsvp (
  id uuid primary key default gen_random_uuid(),
  side text not null check (side in ('신랑측', '신부측')),
  name text not null,
  phone text,
  attendance text not null check (attendance in ('참석', '불참', '미정')),
  companions int not null default 0,
  meal_count int not null default 0,
  memo text,
  created_at timestamptz default now()
);
