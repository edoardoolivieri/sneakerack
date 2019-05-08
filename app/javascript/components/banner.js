import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["01 | DIXIT APPEAR project"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
