# Cuaderno Docente

Aplicación web personal para organizar la actividad docente durante el curso 2026/2027, con estructura preparada para reutilizarse en cursos posteriores.

## Módulos incluidos
- Inicio con resumen, tareas pendientes, notas recientes e ideas/proyectos.
- Agenda y tareas con fechas, prioridad, filtros y estado de finalización.
- Fichas de asignaturas y grupos.
- Horario semanal editable.
- Registro de reuniones y acuerdos.
- Apuntes y notas con búsqueda.
- Banco de ideas.
- Seguimiento de proyectos.
- Configuración del curso activo.
- Exportación e importación de copias JSON.

## Publicación en GitHub Pages
1. En el repositorio, abre **Settings → Pages**.
2. En **Build and deployment**, selecciona **Deploy from a branch**.
3. Elige la rama **main** y la carpeta **/(root)** y guarda.
4. Cuando termine el despliegue, GitHub mostrará la URL de la aplicación en esa misma página.

## Persistencia actual y sincronización
Esta primera versión guarda los datos en `localStorage` del navegador. Los datos no se sincronizan automáticamente entre dispositivos. Utiliza **Archivo docente → Exportar todos los datos** para realizar copias de seguridad y trasladar los datos manualmente.

La sincronización multi-dispositivo está prevista mediante Supabase. Para activarla de forma segura habrá que configurar un proyecto, autenticación de usuarios y políticas Row Level Security (RLS) que limiten las filas al usuario autenticado. No se deben guardar claves privadas en el repositorio. Hasta completar esa configuración, la web indica claramente que el almacenamiento es local.

## Privacidad
No almacenes datos identificativos o sensibles del alumnado en esta versión. La aplicación no incluye autenticación ni sincronización en la nube todavía.

## Cursos futuros
El curso activo se puede cambiar en Configuración. Antes de iniciar un curso nuevo, exporta una copia de seguridad. La duplicación selectiva de plantillas y el histórico estructurado de varios cursos serán una siguiente mejora.
