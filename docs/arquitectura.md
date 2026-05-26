# Arquitectura Tainer Music

## Objetivo

Construir una plataforma profesional para agenda, reservas, sesiones, recursos, trabajadores, pagos futuros y panel interno Working.

## Componentes

### Frontend

- `index.html` en GitHub Pages.
- Estética oscura premium basada en fotos reales del estudio.
- Agenda conectada a Supabase mediante RPC seguras.

### Backend / Database

Supabase con tablas principales:

- `profiles`
- `reservas`
- `sesiones`
- `servicios`
- `workers`
- `resources`
- `pagos`
- `rate_limits`
- `audit_log`

### Seguridad

- RLS activo.
- `anon` no debe leer `reservas` directamente.
- Reservas públicas mediante `crear_reserva_publica()`.
- Horarios ocupados mediante `get_busy_slots()` sin datos privados.
- Working solo para usuarios autenticados y aprobados en `workers`.

## Scopes de agenda

- `global`: bloquea todo.
- `resource`: bloquea sala/recurso.
- `worker`: bloquea trabajador/productor.
- `resource_worker`: bloquea combinación trabajador + recurso.
