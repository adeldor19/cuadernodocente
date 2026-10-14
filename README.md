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
- Inicio de sesión y sincronización con Supabase (una vez creada la tabla con el SQL incluido).

## Publicación en GitHub Pages
1. En el repositorio, abre **Settings → Pages**.
2. En **Build and deployment**, selecciona **Deploy from a branch**.
3. Elige la rama **main** y la carpeta **/(root)** y guarda.
4. Cuando termine el despliegue, GitHub mostrará la URL de la aplicación en esa misma página.

## Activar sincronización multi-dispositivo
La aplicación está configurada para utilizar el proyecto Supabase de este cuaderno. Para activar el guardado en la nube:

1. Entra en el proyecto Supabase y abre **SQL Editor**.
2. Abre el archivo [supabase/schema.sql](supabase/schema.sql) de este repositorio, copia todo su contenido y ejecútalo en el SQL Editor.
3. En Supabase, revisa **Authentication → Providers → Email** y activa el proveedor de correo.
4. Si está activada la confirmación de correo, confirma el correo al crear la cuenta antes de iniciar sesión.
5. Abre la web publicada, pulsa **Conectar** y crea una cuenta con tu correo y una contraseña.
6. Abre la misma web en otro dispositivo e inicia sesión con esa cuenta. Las modificaciones se sincronizarán automáticamente.

La primera vez que se inicia sesión, si la cuenta todavía no tiene una copia en la nube, la aplicación sube los datos locales de ese navegador. Si ya existe una copia en la nube, esa copia se carga en el navegador. Antes de conectar por primera vez, exporta una copia JSON desde **Archivo docente**, por precaución.

La URL y la clave pública/publishable de Supabase se usan desde el navegador. Las claves públicas no son contraseñas: la protección depende de la autenticación y de las políticas **Row Level Security (RLS)** creadas por el SQL. Nunca añadas una clave secreta `service_role` a la web ni al repositorio.

## Persistencia y privacidad
- Sin iniciar sesión, los datos se guardan en el navegador actual.
- Con sesión iniciada y SQL instalado, se guarda una copia en la nube vinculada al usuario autenticado.
- Exporta periódicamente una copia JSON de respaldo.
- No almacenes datos identificativos o sensibles del alumnado en esta versión.

## Cursos futuros
El curso activo se puede cambiar en Configuración. Antes de iniciar un curso nuevo, exporta una copia de seguridad. La duplicación selectiva de plantillas y el histórico estructurado de varios cursos serán una siguiente mejora.
