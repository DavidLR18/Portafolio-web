# Portafolio v2 · propuesta

Una segunda versión del portafolio, hecha como proyecto aparte. Usa el manual de marca (`../marca/manual-de-marca.html`) y toma la composición de dos referentes: la barra oscura flotante, el retrato sobre un disco que el panel oscuro tapa por debajo, los proyectos en filas en lugar de tarjetas, el proceso paso a paso y una cinta inclinada de marca.

No se publica: GitHub Pages solo publica `../sitio/`. Los enlaces a los casos y a la hoja de vida apuntan a `../sitio/`, así que se ven bien abriendo la página desde este repositorio.

## Estructura

| Archivo | Contenido |
|---|---|
| `index.html` | La página completa: nueve secciones, de la portada al contacto. |
| `assets/css/estilos.css` | Tokens del manual (color, tipo, espacio, faceta) y componentes. |
| `assets/js/main.js` | Menú móvil, sección activa en la barra y la entrada de los bloques. |
| `assets/img/` | Retratos a color y piezas de los casos, reducidas a 1200 px. |
| `assets/logo/` | Logos del manual y `logo-negativo.svg` para fondos Noche. |

## Verla en local

Desde la carpeta del repositorio:

```bash
python3 -m http.server 8767
```

Y abre `http://localhost:8767/portafolio-v2/`.

## Qué viene de cada referente

- **Referente 1 (naranja):** barra oscura en píldora, saludo en etiqueta, retrato sobre disco con los botones encima, panel oscuro de servicios con flecha circular, trayectoria con línea punteada y cinta inclinada.
- **Referente 2 (editorial):** proyectos como lista con categoría, año y botón «Ver», tres imágenes verticales de «detrás de cada pieza», proceso paso a paso y perfil con foto grande al lado.
- **Lo que no se tomó:** testimonios, precios y blog. No hay datos reales para llenarlos y el manual prohíbe inventarlos.
