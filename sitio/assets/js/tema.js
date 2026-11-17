// Theme switch. Default theme lives in DEFAULT; ?tema=verde or ?tema=morado overrides it
// and is remembered while browsing, so the two versions can be compared on the live site.
(() => {
  const DEFAULT = 'verde';
  let t = DEFAULT;
  try {
    const q = new URLSearchParams(location.search).get('tema');
    if (q) sessionStorage.setItem('tema', q);
    t = q || sessionStorage.getItem('tema') || DEFAULT;
  } catch (e) {}
  if (t === 'verde') document.documentElement.dataset.tema = 'verde';
})();
