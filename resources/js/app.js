

require('./bootstrap');
window.Vue = require('vue');


Vue.component('nav-bar', require('./components/Navbar.vue').default);
Vue.component('example-component', require('./components/ExampleComponent.vue').default);

const app = new Vue({
    el: '#app'
});


