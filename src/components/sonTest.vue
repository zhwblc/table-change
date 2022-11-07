<template>
    <div>
        <h1>son</h1>
        <h1>{{ EXnumber }}</h1>
        <div id="box"></div>
    </div>
</template>

<script>
export default {
    name: 'sonTest',
    data () {
        return {
            EXnumber: ''
        }
    },
    mounted () {
        this.$bus.on('hello', (data) => {
            console.log("我收到了", data)
            this.EXnumber = data
        })
    },
    watch: {
        EXnumber: {
            handler () {
                document.getElementById('box').innerHTML = ''
                var _col = this.EXnumber,
                    _row = this.EXnumber;
                var _table = document.createElement("table");
                _table.style.border = '1px solid #000000'
                _table.style.borderCollapse = 'collapse'
                for (var i = 0; i < _row; i++) {
                    var _tr = document.createElement("tr");
                    for (var j = 0; j < _col; j++) {
                        var _td = document.createElement("td");
                        _td.innerHTML = '2'
                        _td.style.border = '1px solid #000000'
                        _tr.appendChild(_td);
                    }
                    _table.appendChild(_tr);
                }
                document.getElementById('box').appendChild(_table);//添加表格
            }
        }
    }
}
</script>

<style>

</style>