<script type="text/x-template" id="add">

  <div class>
    <p v-for="elem in messages" :key="elem">{{elem}}</p>

    <p>Dodaj słówko</p>
    <div v-if="partofspeech=='rzeczownik'">
    <label for v-if="chosentag=='2'">Rodzajnik</label>
    <select class name v-model="rodzajnik" >
      <option value="der">der</option>
      <option value="die">die</option>
      <option value="das">das</option>
    </select>
    </div>
    <div class="row">
        <div class="col-md-9">
        <div v-if="reversed">
            <label for>Odpowiedź (po obcemu)</label>
            <input type="text" name v-model="answer" />
            <br />
            <label for>Pytanie (po polsku)</label>
            <input type="text" name v-model="question" />
        </div>
        <div v-else>
            <label for>Pytanie (po polsku)</label>
            <input type="text" name v-model="question" />
            <br />
            <label for>Odpowiedź (po obcemu)</label>
            <input type="text" name v-model="answer" />
        </div>

        <div>
            <label for="category">Część mowy:</label>
            <select name="" id="" v-model="partofspeech">
                <option value="nieprzypisane" selected>nieprzypisane</option>
                <option :value="elem" v-for="elem in categories">{{elem}}</option>
            </select>
        </div>

        <div >
            <label for="tags">Tag:</label>
            <select name="" id="" v-model="chosentag">
                <option value="nieprzypisane">nieprzypisane</option>
                <option value="" v-for="tag in tags" :value="tag.name">{{tag.name}}</option>
            </select>
        </div>

        </div>

        <div class="col-md-3">
            <button @click="reversed=!reversed">reverse</button>
        </div>
    </div>


    

   
    <!-- <div style="display:flex;margin-bottom:5px">
      <p style="margin-right:10px">Tag:</p>
      <select class name v-model="chosentag" style="margin-right:10px">
        <option :value="tag.id" :key="tag.id" v-for="tag in tags">{{tag.name}}</option>
      </select>
    </div> -->

    <button type="button" name="button" class="btn btn-primary" @click="add">Zatwierdź</button>
  </div>
</script>

<script>
Vue.component('add', {
    template:'#add',
    data(){
        return {
            categories: ['rzeczownik', 'czasownik', 'przymiotnik', 'przyimek', 'zwroty'],
            question:'',
            answer:'',
            rodzajnik:'',
            tags:[],
            chosentag:'nieprzypisane',
            partofspeech:'nieprzypisane',
            messages:[],
            reversed:true
        }
    },
    methods:{
        add(){
            let self = this;
            axios.post('api/add.php',{tabela:'questions',dane:{'question':this.question,'answer':this.answer,'rodzajnik':this.rodzajnik, 'tags':this.chosentag,'partofspeech':this.partofspeech}}).then((res)=>console.log(res));
            this.messages.push('dodano pytanie ('+this.question+') ');
            this.question='';
            this.answer='';

        },
        getTags(){
            let self = this;
            axios.get('tags').then((res)=>self.tags=res.data)
        },
    },
    mounted(){
        this.getTags();
    },
    computed:{

    }

})
</script>

<style>
</style>
