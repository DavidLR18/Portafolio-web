# Portafolio · David Londoño R.

Diseñador de marca y web en Medellín, Colombia. Campañas, sistemas de marca y sitios en Webflow, de 2009 a 2026.

El sitio es HTML, CSS y JavaScript sin frameworks. Cada vez que se suben cambios a la rama `main`, GitHub Pages publica la carpeta `sitio/` automáticamente.

## Estructura

| Carpeta | Contenido |
|---|---|
| `sitio/` | El sitio publicado: página principal, 9 casos e imágenes. |
| `hoja-de-vida/` | Hojas de vida en HTML (integral, diseño y docencia) y sus PDF en `pdf/`. |
| `herramientas/` | `generar-casos.pl` (textos de los casos), `descripciones.pl` (textos del visor) y `exportar-hv.sh` (PDF de las hojas de vida). |
| `docs/` | Sistema de diseño. |
| `diseno/` | Archivo de diseño `.pen`. |
| `direcciones/` | Las tres direcciones visuales exploradas al inicio. |
| `originales/` | Foto original sin recortar. |
| `contenido-portafolio.md` | Títulos y descripciones de las piezas. |

## Editar los casos

```bash
perl herramientas/generar-casos.pl
```

Vuelve a crear las 9 páginas de `sitio/casos/` a partir de los textos de `herramientas/`.

## Temas de color

El sitio abre en verde. La versión morada se ve agregando `?tema=morado` a la dirección. El tema por defecto está en `sitio/assets/js/tema.js`.

## Exportar las hojas de vida

```bash
sh herramientas/exportar-hv.sh
```

Crea los PDF de `hoja-de-vida/` con Google Chrome y copia la versión integral a `sitio/assets/David-Londono-Hoja-de-Vida.pdf`, que es la que se descarga desde el sitio.
