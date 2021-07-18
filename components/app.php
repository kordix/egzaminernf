<script type="text/x-template" id="apptemplate">
    <input type="text" v-model="$root.obiekt.dane.imie">
</script>


<script>
    Vue.component('app', {
        template: '#apptemplate',
        data() {
            return {
                test: 'siemano'
            }
        }
    })
</script>