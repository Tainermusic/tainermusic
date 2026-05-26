# Frontend

## Reglas

- No hacer insert directo a `reservas` desde la web pública.
- Usar `crear_reserva_publica()` para crear reservas.
- Usar `get_busy_slots()` para bloquear horarios.
- No mostrar errores técnicos al cliente.
- No exponer claves privadas.
- Mantener fotos reales y estética Tainer Music.

## Pendientes importantes

- Confirmar WhatsApp real de Tainer Music.
- Confirmar Instagram oficial.
- Reemplazar placeholders como `56900000000` cuando el dato real esté definido.
- Cargar servicios desde Supabase en vez de depender solo de arrays locales.
- Cargar recursos activos desde `resources`.
- Cargar workers aprobados desde `workers` solo donde corresponda.
