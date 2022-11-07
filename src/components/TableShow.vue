<template>
  <div>
    <table v-if="isShow">
      <tr>
        <th v-for="(item, index) in dataList[0]" :key="index">{{ item }}</th>
      </tr>
      <tr v-for="index in trCount" :key="index">
        <td v-for="(item, i) in dataList[index]" :key="i">{{ item }}</td>
      </tr>
    </table>
  </div>
</template>

<script>
export default {
  name: 'TableShow',
  props: ['count'],
  data () {
  },
  watch: {
    count: {
      handler (n) {
        if (n > 0 && n <= 10) {
          this.changeColor('')
        }
        else {
          this.changeColor('red')
        }
      },
      immediate: true
    }
  },
  computed: {
    trCount () {
      return this.count - 1
    },
    isShow () {
      let n = this.count
      if (n > 0 && n <= 10)
        return true
    },
    dataList () {
      let res = []
      let newArr = []
      let len = this.count
      if (len > 10 || len < 1) return []
      for (let i = 0; i < len; i++) {
        newArr = []
        for (let j = 0; j < len; j++) {
          // 基础
          // newArr.push(i + 1)
          // 进阶
          if (i % 2 === 0) {
            newArr.push(len * i + j + 1)
          }
          else {
            newArr.unshift(len * i + j + 1)
          }
        }
        res.push(newArr)
      }
      return res
    }
  },
  methods: {
    changeColor (color) {
      this.$emit('changeColor', color)
    }
  }
}
</script>

<style scoped>
table {
  margin-top: 10px;
  border-top: 1px solid #000000;
  border-left: 1px solid #000000;
  border-collapse: collapse;
  /*设置单元格的边框合并为1*/
}

th,
td {
  border-bottom: 1px solid #000000;
  border-right: 1px solid #000000;
}

th,
td {
  width: 100px;
  height: 40px;
}
</style>