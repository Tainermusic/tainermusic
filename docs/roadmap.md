# Roadmap industrial

## Fase 1 — Database estable

- Crear `resources`.
- Agregar `worker_id`, `resource_id`, `business_type`, `source`, `timezone` a `reservas`.
- Crear/ajustar `get_busy_slots()`.
- Crear/ajustar `crear_reserva_publica()`.
- Mejorar `prevent_double_booking()`.
- Cerrar RLS de `reservas`.

## Fase 2 — Página conectada

- Usar RPC seguras.
- Bloquear horarios por scope.
- Normalizar teléfono.
- Mostrar resumen de reserva.
- Abrir WhatsApp después de guardar.

## Fase 3 — Working real

- Supabase Auth.
- `workers.approved = true`.
- Gestión de reservas.
- Crear sesiones desde reservas completadas.
- Estadísticas y CSV.

## Fase 4 — Diseño top industria

- Mejorar hero con fotos reales.
- Agenda premium.
- Portafolio/trabajos.
- Testimonios.
- Proceso de producción.
- Optimización mobile/performance.
