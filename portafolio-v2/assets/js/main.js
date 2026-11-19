// Mobile menu, current section in the nav and one staggered entrance.
const nav = document.getElementById('nav');
const btn = nav.querySelector('.menu-btn');
const links = [...nav.querySelectorAll('ul a[href^="#"]:not(.btn)')];

const setMenu = open => {
  nav.classList.toggle('open', open);
  btn.setAttribute('aria-expanded', open);
  btn.setAttribute('aria-label', open ? 'Cerrar menú' : 'Abrir menú');
};
btn.addEventListener('click', () => setMenu(!nav.classList.contains('open')));
nav.querySelector('ul').addEventListener('click', e => { if (e.target.closest('a')) setMenu(false); });
addEventListener('keydown', e => { if (e.key === 'Escape' && nav.classList.contains('open')) { setMenu(false); btn.focus(); } });
addEventListener('click', e => { if (nav.classList.contains('open') && !nav.contains(e.target)) setMenu(false); });

const sections = links.map(a => document.querySelector(a.hash));
const mark = () => {
  const line = innerHeight * .35; let current = null;
  sections.forEach((s, i) => { const r = s.getBoundingClientRect(); if (r.top <= line && r.bottom > line) current = links[i]; });
  links.forEach(a => a === current ? a.setAttribute('aria-current', 'true') : a.removeAttribute('aria-current'));
};
addEventListener('scroll', mark, { passive: true }); mark();

const io = new IntersectionObserver(es => es.forEach((e, i) => {
  if (e.isIntersecting) { setTimeout(() => e.target.classList.add('in'), i * 100); io.unobserve(e.target); }
}), { rootMargin: '0px 0px -8% 0px' });
document.querySelectorAll('.rise').forEach(el => io.observe(el));
