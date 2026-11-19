#!/usr/bin/perl
# Genera las páginas de caso en portafolio/casos/ a partir del contenido de abajo.
# Uso:  perl herramientas/generar-casos.pl      (desde la carpeta del proyecto)
# Para cambiar un texto, edítalo aquí y vuelve a ejecutar el script.
use strict; use warnings; use utf8;
use File::Basename qw(dirname); use File::Spec;
binmode STDOUT, ':utf8';

my $root = File::Spec->rel2abs(dirname(__FILE__) . '/../sitio');
my $A = '../assets/casos';
my $SITE = 'https://davidlr18.github.io/Portafolio-web/';  # published address, for link previews
our %DESC; require File::Spec->catfile(dirname(File::Spec->rel2abs(__FILE__)), 'descripciones.pl');

my @cases = (
{
  slug => 'sitio-magneto', title => 'Un sitio para <em>quince</em> soluciones',
  label => 'Sitio corporativo Magneto 365', client => 'Magneto 365', year => '2025 – 2026',
  role => 'Maquetación en Webflow', scope => 'Web · Webflow · Móvil',
  summary => 'El nuevo sitio corporativo de Magneto 365 AI, una plataforma de talento con IA con más de quince soluciones y versiones para cuatro países. Mi parte fue llevar los diseños a Webflow, página por página, cuidando que se vieran igual de bien en escritorio y en el celular.',
  cover => ["$A/sitio-magneto/01-inicio.jpg", 'Página de inicio del sitio de Magneto 365 en escritorio'],
  blocks => [
    ['text', 'El <em>reto</em>', '<p>Magneto evolucionó a <b>Magneto 365 AI</b> y su oferta creció: ATS, agentes de selección con IA, marca empleadora, movilidad interna, pruebas psicométricas, alianzas con LinkedIn y Meta. Cada solución necesitaba su propia página, y todas tenían que verse y comportarse como parte del mismo sitio.</p>'],
    ['text', 'Mi <em>parte</em>', '<p>Maqueté en Webflow las páginas del sitio a partir de los diseños del equipo. Eso significa <b>armar cada sección, respetar la misma estructura en todas las páginas de solución y ajustar cómo se reacomoda cada bloque en tableta y celular</b>.</p><p>Como diseñador, maquetar me permite cuidar lo que suele perderse entre el archivo de diseño y la web publicada: espacios, jerarquía tipográfica y el orden en que se lee cada bloque en una pantalla pequeña.</p>'],
    ['grid', 2, [
      ["$A/sitio-magneto/03-agentes-seleccion-ia.jpg", 'Página de agentes de selección con IA', '<b>Agentes de selección con IA.</b> La plantilla aplicada a un producto nuevo.'],
      ["$A/sitio-magneto/06-reclutamiento-redes-sociales.jpg", 'Página de reclutamiento en redes sociales', '<b>Reclutamiento en redes sociales.</b> Misma estructura, otro mensaje.'],
      ["$A/sitio-magneto/07-movilidad-interna.jpg", 'Página de movilidad interna', '<b>Movilidad interna.</b> Conoce, conecta, moviliza.'],
      ["$A/sitio-magneto/05-marca-empleadora.jpg", 'Página de marca empleadora', '<b>Marca empleadora.</b> Servicio de agencia dentro del mismo sistema.'],
    ], '/ Páginas de solución'],
    ['scrolls', [
      ["$A/sitio-magneto/01-inicio-completa.jpg", 'Página de inicio completa de Magneto 365'],
      ["$A/sitio-magneto/03-agentes-completa.jpg", 'Página completa de agentes de selección con IA'],
    ], '/ Recorre las páginas completas'],
    ['phones', [
      ["$A/sitio-magneto/01-inicio-movil.jpg", 'Inicio en móvil'],
      ["$A/sitio-magneto/03-agentes-seleccion-ia-movil.jpg", 'Agentes de selección en móvil'],
      ["$A/sitio-magneto/04-coffee-break-movil.jpg", 'Coffee Break en móvil'],
      ["$A/sitio-magneto/07-movilidad-interna-movil.jpg", 'Movilidad interna en móvil'],
    ], '/ Versión móvil'],
    ['grid', 2, [
      ["$A/sitio-magneto/04-coffee-break.jpg", 'Hub del videopodcast Coffee Break', '<b>Coffee Break.</b> Hub de casos de éxito en video.'],
      ["$A/sitio-magneto/08-ebooks-guias.jpg", 'Biblioteca de e-books', '<b>Biblioteca de e-books.</b> Las portadas editoriales como catálogo.'],
    ], '/ Contenido'],
    ['points', 'Lo que cuidé en <em>cada página</em>', [
      ['Fiel al diseño', 'Espacios, tamaños y jerarquía tipográfica iguales al diseño aprobado, no aproximados.'],
      ['Una estructura que se repite', 'Las páginas de solución comparten la misma estructura, así cada página nueva sale más rápido y el sitio se mantiene coherente.'],
      ['Pensado para el celular', 'Cada bloque se reordena en una sola columna en el celular sin perder el encabezado ni el orden de lectura.'],
    ]],
  ],
},
{
  slug => 'manual-marca', title => 'Manual de marca <em>Magneto 365 AI</em>',
  label => 'Manual de marca Magneto 365 AI', client => 'Magneto 365', year => '2025',
  role => 'Lineamientos, redacción y diseño del manual', scope => 'Identidad · Sistema de marca · B2B',
  summary => 'El manual que escribí y diseñé para la evolución de Magneto a Magneto 365 AI: quiénes somos, a quién le hablamos y cómo se ve la marca en cada pieza B2B. Veintidós páginas para que cualquier persona del equipo pueda diseñar sin romper la marca.',
  cover => ["$A/manual-marca/pag-01.jpg", 'Portada del manual de marca y marketing B2B de Magneto 365 AI'],
  blocks => [
    ['text', 'Más que un <em>logo</em>', '<p>El manual empieza por la estrategia antes que por la forma: <b>misión, visión, customer journey e intención comunicativa</b>. Solo después llegan el logo, el color y la tipografía. Así cada decisión visual tiene una razón que el equipo comercial puede explicar.</p>'],
    ['grid', 3, [
      ["$A/manual-marca/pag-02.jpg", 'Quiénes somos', '<b>Quiénes somos.</b> Misión, visión y propósito.'],
      ["$A/manual-marca/pag-03.jpg", 'Customer journey', '<b>Customer journey.</b> Qué hacen, piensan y buscan los clientes.'],
      ["$A/manual-marca/pag-06.jpg", 'Presentación del logotipo', '<b>El logotipo.</b> Significado de la m, el 365 y el AI.'],
    ], '/ Estrategia'],
    ['grid', 2, [
      ["$A/manual-marca/pag-07.jpg", 'Estructura y área de protección del logo', '<b>Estructura y área de protección.</b>'],
      ["$A/manual-marca/pag-08.jpg", 'Logo en positivo y negativo', '<b>Positivo y negativo.</b>'],
      ["$A/manual-marca/pag-09.jpg", 'Escala de grises y alto contraste', '<b>Escala de grises y alto contraste.</b>'],
      ["$A/manual-marca/pag-12.jpg", 'Tipografías principales', '<b>Tipografía principal.</b>'],
    ], '/ Lineamientos visuales'],
    ['grid', 2, [
      ["$A/manual-marca/pag-14.jpg", 'Colores principales', '<b>Colores principales.</b> Azules de confianza y tecnología.'],
      ["$A/manual-marca/pag-15.jpg", 'Colores complementarios', '<b>Colores complementarios.</b> Naranja, lima, cian y púrpura para la energía de campaña.'],
      ["$A/manual-marca/pag-16.jpg", 'Degradados', '<b>Degradados.</b>'],
      ["$A/manual-marca/pag-17.jpg", 'Fotografía', '<b>Fotografía.</b> Personas reales y la interfaz del producto.'],
    ], '/ Color e imagen'],
    ['grid', 3, [
      ["$A/manual-marca/pag-19.jpg", 'Aplicaciones del logotipo en submarcas', '<b>Submarcas.</b> Alianzas, productos y comunicación.'],
      ["$A/manual-marca/pag-20.jpg", 'Aplicaciones de la identidad gráfica', '<b>Aplicaciones.</b> Redes, merch y presentaciones.'],
      ["$A/manual-marca/pag-21.jpg", 'Aplicaciones en documentos y firmas', '<b>Documentos y firmas.</b>'],
    ], '/ Aplicaciones'],
    ['points', 'Decisiones de <em>diseño</em>', [
      ['Estrategia primero', 'Las primeras páginas responden a quién le hablamos y para qué, antes de mostrar un solo color.'],
      ['Una familia de submarcas', 'Academy, Coffee Break, newsletter y alianzas comparten la misma raíz y se distinguen por su descriptor.'],
      ['Escrito para quien no es diseñador', 'Cada lineamiento explica el porqué, para que ventas y marketing lo apliquen sin pedir permiso.'],
    ]],
  ],
},
{
  slug => 'coffee-break', title => 'Coffee Break: casos que se <em>leen</em> como historias',
  label => 'Coffee Break', client => 'Magneto 365 · Banco Agrario · Magnex', year => '2026',
  role => 'Concepto visual y diseño de las piezas', scope => 'Campaña · Redes sociales · Contenido B2B',
  summary => 'Carruseles para el videopodcast Coffee Break, donde líderes de talento humano cuentan cómo transformaron sus procesos. El reto: convertir un caso de éxito B2B en algo que la gente quiera deslizar hasta el final.',
  cover => ["$A/coffee-break/banco-estatica.jpg", 'De 25 pasos a 3: pieza del caso Banco Agrario'],
  blocks => [
    ['text', 'El <em>sistema</em> de la serie', '<p>Cada episodio se convierte en un carrusel con la misma estructura: <b>gancho, contexto, testimonio, cifra y llamado al episodio</b>. La identidad de la serie se apoya en tres recursos: fotografía del territorio del cliente, una caligrafía en verde lima para la palabra clave y cifras de gran formato.</p>'],
    ['strip', [
      ["$A/coffee-break/banco-1.jpg", 'El secreto del sector financiero para frenar la rotación', '1 · Gancho'],
      ["$A/coffee-break/banco-2.jpg", 'Cómo fidelizar talento en 760 municipios', '2 · Contexto'],
      ["$A/coffee-break/banco-3.jpg", 'Testimonio de un agricultor', '3 · Testimonio'],
      ["$A/coffee-break/banco-4.jpg", 'Orgullo al 98 por ciento', '4 · Cifra'],
      ["$A/coffee-break/banco-5.jpg", 'Mira el capítulo completo con el vicepresidente de Gestión Humana', '5 · Llamado'],
    ], '/ Episodio Banco Agrario de Colombia · desliza'],
    ['strip', [
      ["$A/coffee-break/magnex-1.jpg", 'Tu competencia ya contrata con IA 24/7', '1 · Gancho'],
      ["$A/coffee-break/magnex-2.jpg", 'Contratar reactivo, el error más caro', '2 · Problema'],
      ["$A/coffee-break/magnex-3.jpg", 'Testimonio de la gerente de talento de Magnex', '3 · Testimonio'],
      ["$A/coffee-break/magnex-4.jpg", 'Lo que cambia cuando automatizas la selección', '4 · Beneficios'],
      ["$A/coffee-break/magnex-5.jpg", 'El mayor obstáculo de la transformación digital', '5 · Insight'],
      ["$A/coffee-break/magnex-6.jpg", 'Cuando tienes datos, dejas de adivinar', '6 · Datos'],
      ["$A/coffee-break/magnex-7.jpg", 'Operación en territorios remotos de Colombia y Perú', '7 · Contexto'],
      ["$A/coffee-break/magnex-8.jpg", 'Aprende de los que ya lo hicieron', '8 · Llamado'],
    ], '/ Episodio Magnex · desliza'],
    ['points', 'Decisiones de <em>diseño</em>', [
      ['El cliente en su territorio', 'Cultivos, plantas industriales y montañas en lugar de oficinas genéricas: la foto cuenta dónde ocurre el cambio.'],
      ['Una palabra caligráfica', 'La caligrafía lima marca la idea clave de cada lámina y se vuelve la firma visual de la serie.'],
      ['La cifra como titular', '25 → 3 y 98 % ocupan la lámina entera: el dato es el argumento.'],
    ]],
  ],
},
{
  slug => 'ai-academy', title => 'Lanzar una academia en <em>tres tiempos</em>',
  label => 'Magneto 365 AI Academy', client => 'Magneto 365', year => '2026',
  role => 'Concepto visual y diseño de la campaña', scope => 'Lanzamiento · Redes · Sistema de campaña',
  summary => 'Campaña de lanzamiento de Magneto 365 AI Academy, el programa para que los equipos de recursos humanos dominen la IA en reclutamiento. Tres fases (expectativa, lanzamiento y contenido educativo) con un tono premium dirigido a líderes de talento.',
  cover => ["$A/ai-academy/lanzamiento-1.jpg", 'Llegó IA en Reclutamiento, pieza principal del lanzamiento'],
  blocks => [
    ['text', 'Un tono <em>distinto</em>', '<p>La academia necesitaba diferenciarse del resto de la comunicación de Magneto: <b>fotografía editorial en clave baja, serif itálica y acentos en cian</b>. El resultado se siente más cercano a una escuela de negocios que a una herramienta de software.</p>'],
    ['grid', 3, [
      ["$A/ai-academy/expectativa-1.jpg", 'Aprende al ritmo de la inteligencia artificial', '<b>Expectativa 1.</b> La necesidad, sin revelar el producto.'],
      ["$A/ai-academy/expectativa-2.jpg", 'La IA no te hace más inteligente', '<b>Expectativa 2.</b> La plataforma insinuada.'],
      ["$A/ai-academy/expectativa-3.jpg", 'Quién liderará la gestión humana del futuro', '<b>Expectativa 3.</b> La pregunta que abre el lanzamiento.'],
    ], '/ Fase 1 · Expectativa'],
    ['grid', 3, [
      ["$A/ai-academy/lanzamiento-1.jpg", 'Llegó IA en Reclutamiento', '<b>Lanzamiento.</b> Las cuatro capacidades del programa.'],
      ["$A/ai-academy/lanzamiento-2.jpg", 'Duplica la velocidad de tu equipo', '<b>Inscripción.</b> Cupos limitados.'],
      ["$A/ai-academy/lanzamiento-3.jpg", 'Bienvenido a Magneto 365 Academy', '<b>El portal.</b> La ruta de aprendizaje.'],
    ], '/ Fase 2 · Lanzamiento'],
    ['strip', [
      ["$A/ai-academy/carrusel-1.jpg", 'Las 4 capacidades de IA que todo Talent Leader debe dominar', '1 · Portada'],
      ["$A/ai-academy/carrusel-2.jpg", 'Estrategia y Atracción', '2 · Capacidades 1 y 2'],
      ["$A/ai-academy/carrusel-3.jpg", 'Selección y Decisiones', '3 · Capacidades 3 y 4'],
      ["$A/ai-academy/carrusel-4.jpg", 'La IA no reemplaza al reclutador', '4 · Giro'],
      ["$A/ai-academy/carrusel-5.jpg", 'Domina las 4 capacidades, regístrate', '5 · Registro'],
    ], '/ Fase 3 · Carrusel educativo · desliza'],
    ['points', 'Decisiones de <em>diseño</em>', [
      ['Revelar de a poco', 'La expectativa plantea preguntas; el lanzamiento las responde. Cada fase tiene un trabajo distinto.'],
      ['Personas, no robots', 'La campaña habla de IA con fotografía de personas: el protagonista es el profesional que aprende.'],
      ['Tarjetas numeradas', 'Las cuatro capacidades se repiten en todas las piezas para que el programa se recuerde.'],
    ]],
  ],
},
{
  slug => 'agentes-virtuales', title => 'Ecosistema de <em>agentes virtuales</em>',
  label => 'Ecosistema de agentes virtuales', client => 'Magneto 365', year => '2025',
  role => 'Diseño de las láminas y del robot 3D', scope => 'Producto · Presentación comercial · Personaje 3D',
  summary => 'Una presentación de 21 láminas para explicar once agentes de IA, desde el que atiende candidatos por WhatsApp hasta el que administra todo el ecosistema. El reto era hacer comprensible un producto técnico y en plena evolución.',
  cover => ["$A/agentes-virtuales/slide-01.jpg", 'Portada: Ecosistema de Agentes Virtuales Magneto 365'],
  blocks => [
    ['text', 'Un personaje y una <em>plantilla</em>', '<p>Cada agente tiene su lámina con la misma estructura: <b>nombre, a quién sirve, el agente en acción sobre un dispositivo real y un sello de estado</b> ("Ya disponible", "Próximamente"). El robot 3D, que también diseñé, acompaña todas las láminas y le da continuidad a un tema abstracto.</p>'],
    ['grid', 4, [
      ["$A/agentes-virtuales/slide-02.jpg", 'Agentes de marca empleadora', '<b>Índice por familia.</b>'],
      ["$A/agentes-virtuales/slide-03.jpg", 'Agente de candidatos', '<b>Agente de candidatos.</b>'],
      ["$A/agentes-virtuales/slide-05.jpg", 'Agente de referidos', '<b>Agente de referidos.</b>'],
      ["$A/agentes-virtuales/slide-07.jpg", 'Agente buscador de vacantes', '<b>Buscador de vacantes.</b>'],
      ["$A/agentes-virtuales/slide-09.jpg", 'Agentes para equipos de selección', '<b>Equipos de selección.</b>'],
      ["$A/agentes-virtuales/slide-11.jpg", 'Agente de llamadas', '<b>Agente de llamadas.</b>'],
      ["$A/agentes-virtuales/slide-12.jpg", 'Agente de analistas', '<b>Agente de analistas.</b>'],
      ["$A/agentes-virtuales/slide-18.jpg", 'Agent Manager', '<b>Agent Manager.</b>'],
    ], '/ Las láminas'],
    ['grid', 2, [
      ["$A/agentes-virtuales/slide-04.jpg", 'Detalle del agente de candidatos', '<b>Lámina de detalle.</b> Beneficios y funciones con jerarquía de color.'],
      ["$A/agentes-virtuales/slide-20.jpg", 'Agentes en desarrollo', '<b>Hoja de ruta.</b> Lo que viene, en la misma voz visual.'],
    ], '/ Detalle'],
    ['points', 'Decisiones de <em>diseño</em>', [
      ['Un sello de estado', 'Disponible o próximamente: el comprador sabe al instante qué puede usar hoy.'],
      ['El agente en su canal', 'Cada agente aparece en WhatsApp, en una llamada o en el panel, donde realmente trabaja.'],
      ['Un personaje constante', 'El robot une once productos distintos en una sola familia.'],
    ]],
  ],
},
{
  slug => 'ebook-mundial', title => 'Colombia vuelve al <em>Mundial</em>',
  label => 'E-book «Colombia vuelve al Mundial»', client => 'Magneto 365', year => '2026',
  role => 'Concepto visual y diseño editorial', scope => 'Marketing de contenidos · Editorial',
  summary => 'Un e-book que usa el regreso de la Selección Colombia al Mundial para hablar de productividad, ausentismo y retención. Diez páginas con datos, calendario y un plan de acción para líderes de recursos humanos.',
  cover => ["$A/ebook-mundial/pag-01.jpg", 'Portada del e-book Colombia vuelve al Mundial'],
  blocks => [
    ['text', 'Tema de conversación, <em>tema de negocio</em>', '<p>El Mundial es la conversación de todo el país; el e-book la convierte en una pregunta de recursos humanos: <b>¿qué pasa con la productividad cuando juega Colombia?</b> La ilustración del jugador y los colores patrios hacen que el contenido B2B se sienta oportuno y cercano.</p>'],
    ['grid', 3, [
      ["$A/ebook-mundial/pag-02.jpg", 'Índice del e-book', '<b>Índice.</b>'],
      ["$A/ebook-mundial/pag-03.jpg", 'Contexto y calendario', '<b>Contexto y calendario.</b> Los tres partidos clave.'],
      ["$A/ebook-mundial/pag-04.jpg", 'El factor horario', '<b>El factor horario.</b>'],
      ["$A/ebook-mundial/pag-05.jpg", 'Datos reales de mundiales anteriores', '<b>Datos reales.</b> Cifras en tarjetas de alto contraste.'],
      ["$A/ebook-mundial/pag-06.jpg", 'Benchmark colombiano', '<b>Benchmark.</b>'],
      ["$A/ebook-mundial/pag-09.jpg", 'Cómo te ayuda Magneto 365', '<b>Cómo te ayuda Magneto.</b>'],
    ], '/ Páginas interiores'],
    ['points', 'Decisiones de <em>diseño</em>', [
      ['Un personaje en movimiento', 'El jugador ilustrado cambia de pose en cada capítulo y guía la lectura.'],
      ['Números grandes', 'Cada capítulo tiene un dato protagonista en tarjetas azules.'],
      ['Notas estratégicas', 'Una franja lima cierra cada sección con la recomendación accionable.'],
    ]],
  ],
},
{
  slug => 'material-comercial', title => 'Material <em>comercial</em> en dos minutos',
  label => 'One-pagers y TalentMap', client => 'Magneto 365', year => '2025 – 2026',
  role => 'Diseño, diagramación y diagramas', scope => 'Ventas · Diseño de información',
  summary => 'Documentos para el equipo comercial: one-pagers por solución y alianza, y el brochure de TalentMap 5D. Todos con la misma retícula y una jerarquía pensada para que un gerente entienda la propuesta en dos minutos.',
  cover => ["$A/material-comercial/onepager-agentes.jpg", 'One-pager del ecosistema de agentes de IA'],
  blocks => [
    ['text', 'Una <em>familia</em> de documentos', '<p>Diseñé y diagramé cada documento para que respondiera las mismas tres preguntas: <b>qué problema resuelve, cómo funciona y qué impacto tiene</b>. Comparten retícula, pie de marca y bloques de color, así el equipo comercial puede armar un paquete coherente con cualquier combinación de documentos.</p>'],
    ['grid', 4, [
      ["$A/material-comercial/onepager-agentes.jpg", 'One-pager ecosistema de agentes', '<b>Ecosistema de agentes.</b>'],
      ["$A/material-comercial/onepager-smr.jpg", 'One-pager Social Media Recruiting', '<b>Social Media Recruiting.</b>'],
      ["$A/material-comercial/onepager-linkedin.jpg", 'One-pager alianza con LinkedIn', '<b>Alianza con LinkedIn.</b>'],
      ["$A/material-comercial/onepager-meta.jpg", 'One-pager alianza con Meta', '<b>Alianza con Meta.</b>'],
      ["$A/material-comercial/onepager-movilidad.jpg", 'One-pager movilidad interna', '<b>Movilidad interna.</b>'],
      ["$A/material-comercial/onepager-estructura.jpg", 'One-pager estructura organizacional', '<b>Estructura organizacional.</b>'],
      ["$A/material-comercial/onepager-caso-ia.jpg", 'Caso de estudio IA en selección', '<b>Caso de estudio.</b>'],
      ["$A/material-comercial/onepager-tendencias.jpg", '10 tendencias de talento humano 2026', '<b>Tendencias 2026.</b>'],
    ], '/ One-pagers'],
    ['grid', 4, [
      ["$A/material-comercial/talentmap-01.jpg", 'Portada TalentMap 5D', '<b>Portada.</b>'],
      ["$A/material-comercial/talentmap-04.jpg", 'Las cinco dimensiones', '<b>Dimensiones.</b>'],
      ["$A/material-comercial/talentmap-05.jpg", 'Desempeño cognitivo', '<b>Diagramas por dimensión.</b>'],
      ["$A/material-comercial/talentmap-10.jpg", 'Tipos de reporte', '<b>Reportes.</b>'],
    ], '/ Brochure TalentMap 5D · AI Driven'],
    ['points', 'Decisiones de <em>diseño</em>', [
      ['Leer en dos minutos', 'Titular, tres bloques y una tabla: lo esencial cabe en una pantalla.'],
      ['Diagramas propios', 'Diseñé los diagramas circulares de TalentMap: cada dimensión se explica con la misma figura, no con párrafos.'],
      ['Tablas para comparar', 'Beneficio contra impacto, antes contra después: las comparaciones van en tabla para leerlas de un vistazo.'],
    ]],
  ],
},
{
  slug => 'worldskills-sena', title => 'Editorial y eventos para el <em>SENA</em>',
  label => 'SENA Regional Antioquia', client => 'SENA Regional Antioquia', year => '2013 – 2016',
  role => 'Diseñador gráfico', scope => 'Editorial · Eventos · Infografía · Campañas',
  summary => 'Cuatro años diseñando la comunicación interna y externa de la regional más grande del SENA: periódicos y boletines, infografías, campañas de empleo y el material de WorldSkills Colombia.',
  cover => ["$A/worldskills-sena/ws-interior.jpg", 'Tarjeta Héroe para los competidores de WorldSkills'],
  blocks => [
    ['text', '<em>WorldSkills</em> Colombia', '<p>Para las eliminatorias nacionales diseñé una tarjeta de bienvenida personalizada para cada competidor, con un lenguaje de cómic: <b>el competidor como héroe</b>. Después, la postal que celebró a los aprendices antioqueños en WorldSkills São Paulo 2015.</p>'],
    ['grid', 3, [
      ["$A/worldskills-sena/ws-exterior.jpg", 'Portada de la tarjeta de bienvenida', '<b>Portada personalizada.</b>'],
      ["$A/worldskills-sena/ws-interior.jpg", 'Interior de la tarjeta, Héroe', '<b>Interior.</b>'],
      ["$A/worldskills-sena/ws-postal.jpg", 'Postal Selección Colombia en São Paulo 2015', '<b>Postal de felicitación.</b>'],
    ]],
    ['text', 'Diseño <em>editorial</em>', '<p>El periódico regional y los boletines quincenales con retículas de varias columnas, secciones fijas y jerarquía de noticias. Un oficio que hoy aplico a los one-pagers y e-books.</p>'],
    ['grid', 2, [
      ["$A/worldskills-sena/periodico-1.jpg", 'Periódico SENA, atención en la frontera', '<b>Periódico regional.</b> Atención en la frontera.'],
      ["$A/worldskills-sena/periodico-2.jpg", 'Periódico SENA, segunda página', '<b>Continuación.</b>'],
    ]],
    ['grid', 3, [
      ["$A/worldskills-sena/boletin-68.jpg", 'Boletín Así va el SENA en Antioquia', '<b>Boletín 68.</b>'],
      ["$A/worldskills-sena/quinsena-211.jpg", 'Boletín QuinSENA 211', '<b>QuinSENA #211.</b>'],
      ["$A/worldskills-sena/quinsena-212.jpg", 'Boletín QuinSENA 212', '<b>QuinSENA #212.</b>'],
    ]],
    ['wide', "$A/worldskills-sena/infografia-medellin.jpg", 'Infografía Educación para transformar a Medellín', '<b>Infografía.</b> Educación para transformar a Medellín.', '/ Infografía'],
    ['grid', 4, [
      ["$A/worldskills-sena/microrrueda-soacha.jpg", 'Microrrueda de empleo en Soacha', '<b>Microrrueda Soacha.</b>'],
      ["$A/worldskills-sena/microrrueda-girardot.jpg", 'Microrrueda de empleo en Girardot', '<b>Microrrueda Girardot.</b>'],
      ["$A/worldskills-sena/oradores.jpg", 'Concurso de oradores y escritores', '<b>Concurso de oradores.</b>'],
      ["$A/worldskills-sena/tecnoparque.jpg", 'Convocatoria Tecnoparque 2015', '<b>Tecnoparque.</b>'],
    ], '/ Campañas y eventos'],
  ],
},
{
  slug => 'archivo', title => 'Archivo: cada afiche, <em>una idea</em>',
  label => 'Afiches culturales y académicos', client => 'Universidad de Antioquia · Centro Colombo Americano', year => '2009 – 2013',
  role => 'Diseñador de planta en ambas instituciones', scope => 'Afiche · Editorial',
  summary => 'Como diseñador de planta de la Facultad de Medicina de la Universidad de Antioquia y del Centro Colombo Americano: cine, teatro, música, arte y congresos médicos. Ahí aprendí que un afiche funciona cuando tiene una sola idea visual: una radiografía, un farol, un collage de estrellas de Hollywood.',
  cover => ["$A/archivo/udea-salon-artistas.jpg", 'Afiche del 25 Salón de Artistas'],
  blocks => [
    ['grid', 4, [
      ["$A/archivo/udea-salon-artistas.jpg", '25 Salón de Artistas', '<b>25 Salón de Artistas.</b>'],
      ["$A/archivo/udea-jornadas-investigacion.jpg", 'Jornadas de Investigación del Área de la Salud', '<b>Jornadas de Investigación.</b>'],
      ["$A/archivo/udea-radiologia.jpg", 'Curso de Radiología', '<b>Curso de Radiología.</b>'],
      ["$A/archivo/udea-papiloma.jpg", 'Curso sobre Virus del Papiloma Humano', '<b>Virus del Papiloma.</b>'],
      ["$A/archivo/udea-jornadas-universitarias.jpg", 'Jornadas Universitarias', '<b>Jornadas Universitarias.</b>'],
      ["$A/archivo/udea-dac-asma.jpg", 'Congreso DAC asma y alergias', '<b>DAC 2012.</b>'],
      ["$A/archivo/udea-telemedicina.jpg", 'Simposio de Telemedicina', '<b>Telemedicina.</b>'],
      ["$A/archivo/udea-escuela-medicina.jpg", 'Libro Escuela de Medicina', '<b>Libro.</b>'],
    ], '/ Universidad de Antioquia · Facultad de Medicina'],
    ['grid', 2, [
      ["$A/archivo/udea-implantes-arte.jpg", 'Catálogo Los implantes como arte', '<b>Los implantes como arte.</b> Catálogo de exposición.'],
      ["$A/archivo/udea-en-obra.jpg", 'Plegable En Obra', '<b>En Obra.</b> Plegable informativo.'],
    ]],
    ['grid', 3, [
      ["$A/archivo/colombo-hollywood.jpg", 'Ciclo Estrellas doradas de Hollywood', '<b>Ciclo de cine.</b>'],
      ["$A/archivo/colombo-lelo.jpg", 'LELO en concierto', '<b>Concierto.</b>'],
      ["$A/archivo/colombo-jesucristo.jpg", 'Jesucristo Supersona, la comedia', '<b>Teatro.</b>'],
      ["$A/archivo/colombo-kinetoscopio.jpg", 'Revista Kinetoscopio 87', '<b>Kinetoscopio.</b>'],
      ["$A/archivo/colombo-bugs-books.jpg", 'Bugs and Books, pabellón multilingüe', '<b>Bugs &amp; Books.</b>'],
      ["$A/archivo/colombo-heartists.jpg", 'Heartists in the Market Place', '<b>Heartists.</b>'],
    ], '/ Centro Colombo Americano de Medellín'],
  ],
},
);

my $arrow = '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.75" stroke-linejoin="miter" aria-hidden="true"><path d="M4 12h15M13 6l6 6-6 6"/></svg>';
my $open  = '<span class="c"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.75" stroke-linejoin="miter" aria-hidden="true"><path d="M7 17L17 7M9 7h8v8"/></svg></span>';

# data-zoom attributes for the visor: title from the caption's bold text (or the alt), description from %DESC
sub esc { my $s = shift // ''; $s =~ s/<[^>]+>//g; $s =~ s/&(?!amp;)/&amp;/g; $s =~ s/"/&quot;/g; return $s; }
sub zoom {
  my ($src, $alt, $cap) = @_;
  my $title = $alt;
  if ($cap && $cap =~ m{<b>(.*?)</b>}) { ($title = $1) =~ s/\.\s*$//; }
  (my $key = $src) =~ s{^\Q$A\E/}{}; $key =~ s/\.jpg$//;
  my $desc = $DESC{$key} // '';
  warn "sin descripción: $key\n" unless $desc;
  return sprintf ' data-zoom data-title="%s" data-desc="%s"', esc($title), esc($desc);
}
sub fig { my ($src,$alt,$cap) = @_; my $c = $cap ? "<figcaption>$cap</figcaption>" : ''; my $z = zoom($src,$alt,$cap);
  return qq{<figure class="rise"><div class="frame"><img src="$src" alt="$alt" loading="lazy"$z></div>$c</figure>}; }
sub label { my $l = shift; return $l ? qq{<span class="eyebrow label">$l</span>} : ''; }

sub block {
  my $b = shift; my $t = $b->[0];
  if ($t eq 'text') { return qq{<section class="container text"><h2 class="rise">$b->[1]</h2><div class="body">$b->[2]</div></section>}; }
  if ($t eq 'grid') { my $items = join '', map { fig(@$_) } @{$b->[2]};
    return qq{<section class="container block" data-gallery>} . label($b->[3]) . qq{<div class="grid g$b->[1]">$items</div></section>}; }
  if ($t eq 'wide') { return qq{<section class="container block" data-gallery>} . label($b->[4]) . fig($b->[1],$b->[2],$b->[3]) . qq{</section>}; }
  if ($t eq 'phones') { my $n = @{$b->[1]}; my $items = join '', map { my $z = zoom($_->[0],$_->[1]); qq{<div class="frame rise"><img src="$_->[0]" alt="$_->[1]" loading="lazy"$z></div>} } @{$b->[1]};
    return qq{<section class="container block" data-gallery>} . label($b->[2]) . qq{<div class="phones" style="--n:$n">$items</div></section>}; }
  if ($t eq 'scrolls') { my $items = join '', map { qq{<div class="frame rise"><div class="scroller" tabindex="0" aria-label="$_->[1], desplázate para verla completa"><img src="$_->[0]" alt="$_->[1]" loading="lazy"></div></div>} } @{$b->[1]};
    return qq{<section class="container block">} . label($b->[2]) . qq{<div class="grid g2">$items</div><p class="hint">desplázate dentro de cada página ↓</p></section>}; }
  if ($t eq 'strip') { my $items = join '', map { my $z = zoom($_->[0],$_->[1]); qq{<li><img src="$_->[0]" alt="$_->[1]" loading="lazy" draggable="false"$z><span>$_->[2]</span></li>} } @{$b->[1]};
    return qq{<section class="block" data-gallery><div class="container">} . label($b->[2]) . qq{</div><div class="strip" tabindex="0" aria-label="Carrusel, desplázate horizontalmente"><ol>$items</ol></div></section>}; }
  if ($t eq 'points') { my $i = 0; my $items = join '', map { $i++; sprintf(qq{<article class="rise"><span class="n">%02d</span><h3>%s</h3><p>%s</p></article>}, $i, $_->[0], $_->[1]) } @{$b->[2]};
    return qq{<div class="container points-head"><span class="eyebrow">/ Por qué funciona</span><h2>$b->[1]</h2></div><section class="container points">$items</section>}; }
  die "bloque desconocido $t";
}

for my $i (0..$#cases) {
  my $c = $cases[$i]; my $n = $cases[($i + 1) % @cases];
  my $num = sprintf '%02d', $i + 1;
  (my $plain = $c->{title}) =~ s/<[^>]+>//g;
  (my $ogimg = $c->{cover}[0]) =~ s{^\.\./}{$SITE};
  my $ogurl = "${SITE}casos/$c->{slug}.html";
  my $blocks = join "\n", map { block($_) } @{$c->{blocks}};
  my $html = <<"HTML";
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>$plain — David Londoño R.</title>
<meta name="description" content="$c->{summary}">
<meta property="og:type" content="article">
<meta property="og:title" content="$plain — David Londoño R.">
<meta property="og:description" content="$c->{summary}">
<link rel="canonical" href="$ogurl">
<meta property="og:url" content="$ogurl">
<meta property="og:image" content="$ogimg">
<meta property="og:locale" content="es_CO">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:image" content="$ogimg">
<link rel="icon" href="../assets/logo/icono-disco.svg">
<meta name="theme-color" content="#F4F2F3">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Fragment+Mono&family=Raleway:wght\@400..700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../assets/css/caso.css">
<link rel="stylesheet" href="../assets/css/visor.css">
</head>
<body>
<header class="top">
  <div class="container">
    <a class="logo" href="../index.html" aria-label="David Londoño R., inicio"><img src="../assets/logo/logo.svg" alt="David Londoño R." width="139" height="34"></a>
    <nav aria-label="Principal"><a href="../index.html#servicios">Servicios</a><a href="../index.html#proyectos" aria-current="true">Proyectos</a><a href="../index.html#trayectoria">Trayectoria</a><a href="../index.html#proceso">Proceso</a><a href="../index.html#perfil">Perfil</a><a href="../index.html#contacto">Contacto</a></nav>
    <a class="back" href="../index.html#proyectos">← Todos los proyectos</a>
  </div>
</header>
<main>
  <section class="case-hero">
    <div class="container">
      <span class="eyebrow">/ Caso $num · $c->{client}</span>
      <h1>$c->{title}</h1>
      <p class="summary">$c->{summary}</p>
      <dl class="meta">
        <div><dt>Cliente</dt><dd>$c->{client}</dd></div>
        <div><dt>Año</dt><dd>$c->{year}</dd></div>
        <div><dt>Mi rol</dt><dd>$c->{role}</dd></div>
        <div><dt>Alcance</dt><dd>$c->{scope}</dd></div>
      </dl>
      <figure class="cover"><div class="frame"><img src="$c->{cover}[0]" alt="$c->{cover}[1]"@{[ zoom($c->{cover}[0], $c->{cover}[1]) ]}></div></figure>
    </div>
  </section>
$blocks
  <section class="container next">
    <a href="$n->{slug}.html">
      <div><span class="eyebrow">/ Siguiente caso</span><h2>$n->{title}</h2><span class="go">Ver caso $arrow</span></div>
      <img src="$n->{cover}[0]" alt="" loading="lazy">
    </a>
  </section>
</main>
<footer class="foot" id="contacto">
  <div class="container center">
    <span class="eyebrow">/ Contacto</span>
    <h2>¿Diseñamos <em>lo que sigue?</em></h2>
    <a class="btn" href="mailto:davidlond08\@gmail.com">davidlond08\@gmail.com$open</a>
    <div class="row">
      <img src="../assets/logo/logo.svg" alt="David Londoño R." width="123" height="30">
      <nav aria-label="Redes"><a href="https://www.behance.net/davidlr18">Behance</a><a href="https://www.linkedin.com/in/david-londoño-r">LinkedIn</a><a href="tel:+573193610678">+57 319 361 0678</a></nav>
      <span>© 2026 · Medellín, Colombia</span>
    </div>
  </div>
</footer>
<script>
document.querySelectorAll('.strip').forEach(s=>{let d=false,x=0,l=0;
  s.addEventListener('pointerdown',e=>{if(e.pointerType!=='mouse')return;d=true;x=e.clientX;l=s.scrollLeft;s.style.cursor='grabbing'});
  addEventListener('pointerup',()=>{d=false;s.style.cursor=''});
  addEventListener('pointermove',e=>{if(d)s.scrollLeft=l-(e.clientX-x)});});
const io=new IntersectionObserver(es=>es.forEach((e,i)=>{if(e.isIntersecting){setTimeout(()=>e.target.classList.add('in'),i*90);io.unobserve(e.target)}}),{rootMargin:'0px 0px -6% 0px'});
document.querySelectorAll('.rise').forEach(el=>io.observe(el));
</script>
<script src="../assets/js/visor.js" defer></script>
</body>
</html>
HTML
  my $out = "$root/casos/$c->{slug}.html";
  mkdir "$root/casos" unless -d "$root/casos";
  open my $fh, '>:utf8', $out or die "$out: $!"; print $fh $html; close $fh;
  print "casos/$c->{slug}.html\n";
}
