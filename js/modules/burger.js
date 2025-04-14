document.addEventListener('DOMContentLoaded', function () {
    const burger = document.querySelector('#burger img');
    const menu = document.querySelector('#menu');
    const body = document.body;
  
    if (burger && menu) {
      const toggleMenu = () => {
        const isOpen = menu.classList.toggle('open');
        burger.classList.toggle('rotate', isOpen);
        body.classList.toggle('no-scroll', isOpen);
      };
  
      const removeMenu = () => {
        menu.classList.remove('open');
        burger.classList.remove('rotate');
        body.classList.remove('no-scroll');
      };
  
      const handleResize = () => {
        if (window.innerWidth >= 1200 && menu.classList.contains('open')) {
          removeMenu();
        }
      };
  
      burger.addEventListener('click', toggleMenu);
      window.addEventListener('resize', handleResize);
    } else {
      console.warn('Burger or menu not found');
    }
  });
  