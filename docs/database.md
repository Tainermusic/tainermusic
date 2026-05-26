# Database Supabase

## Estándares oficiales

### Estados de reservas

```txt
pendiente
confirmada
completada
cancelada
```

`cancelada` no bloquea horario. Los demás estados sí bloquean.

### Estados de sesiones

```txt
completado
pendiente
cancelado
```

### Tiempo

Columnas oficiales:

```txt
fecha
hora_inicio
hora_fin
```

## Funciones esperadas

### get_busy_slots()

Debe devolver períodos ocupados reales, no slots artificiales.

Debe retornar solo:

```txt
fecha
hora_inicio
hora_fin
worker_id
resource_id
business_type
estado
scope
```

No debe retornar datos privados como nombre, teléfono, nota o user_id.

### crear_reserva_publica()

Debe validar, sanitizar, aplicar rate limit e insertar la reserva sin permitir insert directo público sobre `reservas`.

### prevent_double_booking()

Debe impedir solapes considerando:

- reservas globales
- reservas por resource
- reservas por worker
- reservas por worker + resource
- business_type
- estado != 'cancelada'

## Verificaciones SQL útiles

Ver triggers de reservas:

```sql
select
  t.tgname,
  c.relname as table_name,
  pg_get_triggerdef(t.oid) as trigger_definition
from pg_trigger t
join pg_class c on c.oid = t.tgrelid
join pg_namespace n on n.oid = c.relnamespace
where n.nspname = 'public'
  and c.relname = 'reservas'
  and not t.tgisinternal;
```

Ver policies de reservas:

```sql
select schemaname, tablename, policyname, permissive, roles, cmd, qual, with_check
from pg_policies
where schemaname = 'public'
  and tablename = 'reservas'
order by policyname;
```
