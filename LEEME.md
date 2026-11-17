# Portafolio web · David Londoño R.

## Qué hay en cada carpeta

| Carpeta | Para qué sirve |
|---|---|
| `sitio/` | **El sitio que se publica.** Solo esta carpeta se sube a internet. |
| `herramientas/` | `generar-casos.pl`: el contenido de las 9 páginas de caso. |
| `direcciones/` | Las tres direcciones visuales que exploramos (no se publican). |
| `originales/` | La foto original, sin recortar. |
| `contenido-portafolio.md` | Títulos y descripciones de las 101 piezas. |

## Publicar en Netlify (gratis)

1. Entra a **app.netlify.com/drop** y crea tu cuenta (con tu correo de Gmail o con GitHub).
2. Arrastra la carpeta **`sitio`** al recuadro de la página.
3. En un minuto Netlify te da una dirección como `nombre-al-azar.netlify.app`.
4. En **Site configuration → Change site name** cámbiala, por ejemplo a `davidlondono` → `davidlondono.netlify.app`.

**Para actualizar el sitio:** entra al sitio en Netlify, abre **Deploys** y arrastra otra vez la carpeta `sitio`.

## Editar los casos

El texto de los casos está en `herramientas/generar-casos.pl`. Después de editarlo, desde esta carpeta ejecuta:

```bash
perl herramientas/generar-casos.pl
```

## Pendiente después de publicar

- Cambiar las imágenes para compartir (`og:image`) a la dirección completa del sitio, para que LinkedIn muestre la vista previa.
- Corregir el correo en la hoja de vida PDF (dice `@email.com`, el correcto es `@gmail.com`).
