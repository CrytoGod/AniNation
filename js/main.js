// import { createApp } from 'vue';
import { HeaderComponent } from './header.js';

import { burgerMenu } from './modules/burger.js';


burgerMenu();
createApp(HeaderComponent).mount('#header');