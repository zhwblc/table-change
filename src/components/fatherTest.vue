<template>
    <div>
        <h1>father</h1>
        <input type="text" v-model='sendToSonNumber'>
    </div>
</template>

<script>
export default {
    name: 'fatherTest',
    data () {
        return {
            sendToSonNumber: '3'
        }
    },
    watch: {
        sendToSonNumber (val) {
            this.$bus.emit('hello', val)
            console.log(val)
        }
    }
}
</script>

<style>

</style>