<template>
  <div>
    <input type="text" v-model="count" :style=bacColor><label>test7</label>
    <TableShow :count="count" @changeColor="changeColor" />
    <br>
    <hr>
    <fatherTestVue />
    <sonTestVue />
  </div>
</template>

<script>
import TableShow from './components/TableShow.vue'
import fatherTestVue from './components/fatherTest.vue'
import sonTestVue from './components/sonTest.vue'
export default {
  components: { TableShow, fatherTestVue, sonTestVue },
  data () {
    return {
      count: 3,
      redColor: ''
    }
  },
  computed: {
    bacColor () {
      return {
        backgroundColor: this.redColor
      }
    }
  },
  methods: {
    changeColor (color) {
      this.redColor = color
    }
  }
}
</script>

<style>

</style>