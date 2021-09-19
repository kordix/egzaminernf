<script type="text/x-template" id="settings">
<div>
  <div class="row">
    <div style="display:flex">
    <p style="margin-bottom:0px;line-height:2rem;">Counterset:</p>

    <select name class="mr-1">
      <option value="<"><</option>
      <option value=">">></option>
    </select>
    <select class name v-model.number="$root.settings.counterset" @change="updateSettings">
      <option v-for="n in 10">{{n}}</option>
    </select>
    <button type="button" name="button" @click="reload">Ustaw</button>
    </div>

    <p style="margin-right:20px">Random:  <input type="checkbox" v-model="randomset"></p>
  <button @click="$root.getZdania">Zdania</button>

    <p></p>
    <br><br>

    <!-- <div class="col-md-4">
             <button class="ikona ikonagerman" :class="{active:activelanguage=='DE'}" @click="setLanguage('DE')"> </button>
             <button class="ikona ikonaspain" :class="{active:activelanguage=='SP'}"  @click="setLanguage('SP')"> </button>
    </div>-->
  </div>

  <div class="row">
    
  <!-- <select name="" id="" v-model="$root.settings.tryb">
      <option value="words">Słówka</option>
      <option value="sentences">Zdania</option>
    </select> -->
    

    <!-- <input type="checkbox" v-model="$root.settings.sentences"> -->

  </div>

</div>
</script>

<script>
Vue.component('settings', {
    template: '#settings',
  data() {
    return {
      activeobszar2: "egzaminer",
      countermode: "<",
      counterset: 5,
      randomset: 0,
      tryb:'words'
    };
  },
  methods: {
    setLanguage(arg) {
      this.$root.activelanguage = arg;
      localStorage.languageset = arg;
      this.$emit("reset");
    },
    async updateSettings() {
      let self = this;
      await axios.post(`/api/update.php`, {
        tabela:'settings',
        dane:{counterset:self.$root.settings.counterset,operator:self.countermode},
        id:1
      });

      location.reload();

    },
    reload() {
      location.reload();
    }
  },
  computed: {
    activelanguage() {
      return this.$root.settings.activelanguage
        ? this.$root.settings.activelanguage
        : {};
    }
  },
  mounted() {
   
  }
});
</script>


<style scoped>
.ikonaspain {
  background: url(http://egzaminer.kordi.com.pl/images/spain.png);
  background-size: 40px 30px;
  width: 40px;
  height: 30px;
  margin: 10px;
}

.ikonagerman {
  background: url(http://egzaminer.kordi.com.pl/images/germany.png);
  background-size: 40px 30px;
  width: 40px;
  height: 30px;
  margin: 10px;
}

.ikona {
  transition: 0.5s;
}

.ikona:hover {
  box-shadow: 3px 3px 2px black;
}

</style>
