// Visor: any <img data-zoom data-title data-desc> opens large with its text.
// Images inside the same [data-gallery] can be browsed with the arrows.
(() => {
  const imgs = [...document.querySelectorAll('img[data-zoom]')];
  if (!imgs.length) return;

  const dlg = document.createElement('dialog');
  dlg.className = 'visor';
  dlg.setAttribute('aria-label', 'Pieza ampliada');
  dlg.innerHTML = `
    <div class="stage"><img alt=""></div>
    <aside class="panel">
      <span class="count"></span>
      <h2></h2>
      <p></p>
      <div class="nav"><button type="button" data-step="-1">← Anterior</button><button type="button" data-step="1">Siguiente →</button></div>
    </aside>
    <button type="button" class="close" aria-label="Cerrar">×</button>`;
  document.body.appendChild(dlg);

  const big = dlg.querySelector('.stage img'), count = dlg.querySelector('.count'),
        title = dlg.querySelector('h2'), desc = dlg.querySelector('p'), nav = dlg.querySelector('.nav');
  let group = [], index = 0, opener = null;

  const groupOf = img => {
    const g = img.closest('[data-gallery]');
    return g ? [...g.querySelectorAll('img[data-zoom]')] : [img];
  };
  const show = i => {
    index = (i + group.length) % group.length;
    const img = group[index];
    big.src = img.dataset.full || img.currentSrc || img.src;
    big.alt = img.alt;
    title.textContent = img.dataset.title || img.alt;
    desc.textContent = img.dataset.desc || '';
    desc.hidden = !img.dataset.desc;
    count.textContent = group.length > 1 ? `${index + 1} de ${group.length}` : '';
    nav.hidden = group.length < 2;
  };
  const open = img => {
    opener = img; group = groupOf(img);
    show(group.indexOf(img));
    dlg.showModal();
    document.documentElement.style.overflow = 'hidden';
  };

  imgs.forEach(img => {
    img.tabIndex = 0;
    img.setAttribute('role', 'button');
    img.setAttribute('aria-label', `Ampliar: ${img.dataset.title || img.alt}`);
    img.addEventListener('click', e => {
      // a drag on a carousel is not a click
      if (img.closest('.strip')?.dataset.dragged === '1') return;
      e.preventDefault(); open(img);
    });
    img.addEventListener('keydown', e => { if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); open(img); } });
  });

  nav.addEventListener('click', e => { const s = e.target.closest('[data-step]'); if (s) show(index + Number(s.dataset.step)); });
  dlg.querySelector('.close').addEventListener('click', () => dlg.close());
  dlg.querySelector('.stage').addEventListener('click', e => { if (e.target !== big) dlg.close(); });
  dlg.addEventListener('keydown', e => {
    if (group.length < 2) return;
    if (e.key === 'ArrowRight') show(index + 1);
    if (e.key === 'ArrowLeft') show(index - 1);
  });
  dlg.addEventListener('close', () => { document.documentElement.style.overflow = ''; opener?.focus(); });

  // mark carousels while dragging so the drag does not open the visor
  document.querySelectorAll('.strip').forEach(s => {
    let x0 = 0;
    s.addEventListener('pointerdown', e => { x0 = e.clientX; s.dataset.dragged = '0'; });
    s.addEventListener('pointermove', e => { if (Math.abs(e.clientX - x0) > 6 && e.buttons) s.dataset.dragged = '1'; });
  });
})();
