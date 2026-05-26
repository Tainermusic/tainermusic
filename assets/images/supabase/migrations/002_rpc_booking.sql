-- 002_rpc_booking.sql
-- RPC esperadas:
-- - get_busy_slots(fecha_input, worker_input, resource_input, business_input)
-- - crear_reserva_publica(...)

-- Reglas:
-- anon puede ejecutar RPC seguras.
-- anon NO debe leer directamente public.reservas.
-- No retornar datos privados desde get_busy_slots.
