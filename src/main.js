import { createApp } from 'vue'
import './style.css'
import App from './App.vue'
import bus from './utils/bus.js'

const app = createApp(App)
app.config.globalProperties.$bus = bus
app.mount('#app')
