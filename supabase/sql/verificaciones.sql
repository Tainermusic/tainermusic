-- Confirmar trigger anti double booking
select
  t.tgname,
  c.relname as table_name,
  pg_get_triggerdef(t.oid) as trigger_definition
from pg_trigger t
join pg_class c on c.oid = t.tgrelid
join pg_namespace n on n.oid = c.relnamespace
where n.nspname = 'public'
  and c.relname = 'reservas'
  and t.tgname = 'trg_prevent_double_booking'
  and not t.tgisinternal;

-- Ver policies de reservas
select
  schemaname,
  tablename,
  policyname,
  permissive,
  roles,
  cmd,
  qual,
  with_check
from pg_policies
where schemaname = 'public'
  and tablename = 'reservas'
order by policyname;

-- Confirmar RLS activo
select
  schemaname,
  tablename,
  rowsecurity
from pg_tables
where schemaname = 'public'
  and tablename = 'reservas';

-- Confirmar función get_busy_slots
select
  n.nspname as schema_name,
  p.proname as function_name,
  pg_get_function_arguments(p.oid) as arguments,
  pg_get_function_result(p.oid) as result_type
from pg_proc p
join pg_namespace n on n.oid = p.pronamespace
where n.nspname = 'public'
  and p.proname = 'get_busy_slots';

-- Ver grants de ejecución de get_busy_slots
select
  routine_schema,
  routine_name,
  privilege_type,
  grantee
from information_schema.routine_privileges
where routine_schema = 'public'
  and routine_name = 'get_busy_slots'
order by grantee, privilege_type;
