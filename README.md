# Tainer Music Platform

Sitio web y base técnica para **Tainer Music**, una plataforma profesional de producción musical con agenda online, reservas, recursos de estudio, panel interno Working y conexión futura con Supabase.

## Estado actual

- `index.html` se mantiene en la raíz para no romper GitHub Pages.
- Las imágenes reales del estudio están en `assets/images/`.
- La documentación técnica está en `docs/`.
- Los scripts SQL y migraciones de Supabase están en `supabase/`.
- El dominio personalizado se mantiene con `CNAME`.

## Estructura

```txt
.
├── index.html
├── CNAME
├── assets/
│   └── images/
├── docs/
│   ├── arquitectura.md
│   ├── database.md
│   ├── frontend.md
│   └── roadmap.md
└── supabase/
    ├── migrations/
    └── sql/
```

## Reglas de seguridad

No subir al repositorio:

- `service_role`
- contraseña de base de datos
- tokens privados
- access tokens de GitHub
- claves secretas de pasarelas de pago

La web pública solo debe usar la **publishable/anon key** de Supabase.

## Próximos pasos

1. Ejecutar/verificar migraciones Supabase.
2. Conectar `index.html` a RPC seguras.
3. Reemplazar inserts directos a `reservas` por `crear_reserva_publica()`.
4. Usar `get_busy_slots()` para bloquear horarios.
5. Convertir Working en panel real con Supabase Auth + `workers.approved`.
