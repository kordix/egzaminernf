<script type="text/x-template" id="tester">

  <div id="egzaminer">
    <p style="color:red" v-if="!ready">
      <b>Skończyły się słówka - zmień counter, kategorię albo dodaj nowe</b>
    </p>
    <div id="error" v-for="error in errors" :key="error" v-html="error"></div>
    <div id="tester" v-if="ready">
      <p>
        <b>Przetłumacz:</b>
        {{currentQuestion.question}}
      </p>
      <p>
        Counter: {{currentQuestion.counter}}
        <span style="font-size:8px">id: {{currentQuestion.id}}</span>
      </p>
      <label for="answer">Odpowiedź:</label>
      <form action @submit="answerm">
        <div class="form-group">
          <input
            style="width:250px"
            class="form-control"
            id="answerinput"
            type="text"
            v-model="answer"
            placeholder="odpowiedź"
            :disabled="disabledInput"
            autocomplete="off"
          />
        </div>
        <div class="form-group">
          <button class="btn btn-primary" @click="answerm" id="answerbutton">answer</button>
        </div>

        <div class="form-group">
          <button
            type="button"
            class="btn btn-success"
            name="button"
            @click="plusCounter(1)"
          >Counter +1</button>
          <button
            type="button"
            class="btn btn-success"
            name="button"
            @click="plusCounter(5)"
          >Counter +5</button>
          <button type="button" class="btn btn-success" name="button" @click="plusCounter0">Zresetuj</button>
        </div>

        <div class="form-group">
          <button id="nextbutton" type="button" class="btn btn-success" @click="next">Dalej</button>
          <button id="prevbutton" type="button" class="btn btn-secondary" @click="prev">Prev</button>
          <button
            id="editbutton"
            type="button"
            class="btn btn-secondary"
            style="margin-left:20px"
            @click="editbool=!editbool"
          >Edytuj</button>
          <button
            id="deletebutton"
            type="button"
            class="btn btn-danger"
            style="margin-left:20px"
            @click="deleteQuestion"
          >Usuń</button>
        </div>
      </form>
    </div>
    <div class v-if="editbool">
      <div class="form-group">
        <label for="category">Część mowy:</label>
        <select v-model="editpartofspeech">
          <option :value="elem" v-for="elem in categories">{{elem}}</option>
        </select>
      </div>
      <div class="form-group">
        <label for>Pytanie po polsku</label>
        <input type="text" id="editQquestion" name="question" :value="currentQuestion.question" />
      </div>
      <div class="form-group" v-if="currentQuestion.partofspeech=='rzeczownik'">
        <label for>Rodzajnik</label>
        <input type="text" name="rodzajnik" id="editQrodzajnik" :value="currentQuestion.rodzajnik" />
      </div>
      <div class="form-group">
        <label for>
          Odpowiedź
          <span v-if="activelanguage=='DE'">po niemiecku</span>
          <span v-else>po hiszpańsku</span>
        </label>
        <input type="text" name="answer" id="editQanswer" :value="currentQuestion.answer" />
      </div>
      <div class="form-group">
        <button @click="update" type="button" class="btn btn-primary" name="button">Zatwierdź</button>
        <button @click="reverse" type="button" name="button" class="btn btn-warning">Reverse</button>
      </div>
    </div>
    <div class id="tagstoquestion" style="margin-bottom:5px;display:flex" v-if="ready">
      <div class style="position:relative;margin-right:4px;" v-if="currentQuestion.tags != ''">
        <button class="btn-sm btn-primary tag">{{currentQuestion.tags}}</button>
        <div
          @click="deletetag()"
          class="closer"
          style="position:absolute;width:10px;height:10px;background:red;top:-2px;right:0px;border-radius:2em;"
        >
          <span></span>
        </div>
      </div>
    </div>

    <div class style="display:flex" id="dodajtag" v-if="ready">
      <p @click="addTagToQuestion" style="margin-right:10px">Dodaj tag:</p>
      <select class name v-model="$root.chosentag" style="margin-right:10px">
        <option :value="tag.name" v-for="tag in $root.tags" :key="tag.id">{{tag.name}}</option>
      </select>
      <button @click="addTagToQuestion" type="button" class="btn-sm btn-default" name="button">Dodaj</button>
    </div>
    <div style="display:flex;align-items:center" id="collinsy" v-if="ready">
      <a
        :href="'https://www.collinsdictionary.com/dictionary/german-english/'+currentQuestion.answer"
        target="_blank"
      >
        <div
          style="background-color:#333;width:100px;height:40px;margin:.3em;padding:5px"
          class="icon"
        >
          <img
            src="https://www.collinsdictionary.com/external/images/logo.png?version=4.0.35"
            class="img-fluid"
            alt
          />
        </div>
      </a>

      <a :href="'https://pl.wiktionary.org/wiki/'+currentQuestion.answer" target="_blank">
        <div style="height:60px;width:60px;margin:.3em" class="icon">
          <img
            src="https://pl.wiktionary.org/static/images/project-logos/plwiktionary.png"
            class="img-fluid"
          />
        </div>
      </a>

      <a :href="'https://pl.wiktionary.org/wiki/'+currentQuestion.answer" target="_blank">
        <div style="background:#333399;width:100px;height:40px;padding:5px" class="icon">
          <img src="https://static.bab.la/img/babla-logo-white.svg" class="img-fluid" alt />
        </div>
      </a>
    </div>

    <div>

     
    </div>
    <p>To do:</p>
    <ul>
    <!-- <li>ustawienia</li> -->
      <li>zdania</li>
      <li>wygodne dodawanie tagów</li>
      <li>duplikaty</li>
      <li>synonimy beunruhigen änstigen</li>
      <li>tryb auto</li>
      <li>opcjonalne rodzajniki</li>
      <li>collins babla szukanie</li>
      <li>podobne, alfabetycznie</li>
      <li>losowe</li>
      <li>statystyki</li>
      <li>SP-PL PL-SP</li>
    </ul>
  </div>
</div>
</script>
<script>

Vue.component('tester', {
    template: '#tester',
  data() {
    return {
      categories: [
        "nieprzypisane",  
        "rzeczownik",
        "czasownik",
        "przymiotnik",
        "przyimek",
        "zwroty",
      ],
      errors: [],
      answer: "",
      disabledInput: false,
      editbool: false,
      wordcategory: "",
      tags: null,
      tagstoquestion: null,
      editpartofspeech: "",
      chosentag: {},
      randomsetlocal: false,
    };
  },
  methods: {
    addTagToQuestion(elem) {
      let self = this;
      this.currentQuestion.tags = self.chosentag;
      axios.patch("/updatequestion3/" + self.currentQuestion.question_id, {
        tags: self.chosentag,
      });
    },
    deletetag(elem) {
      // let self = this;
      // axios
      //   .delete("/deletetagtoquestion/" + elem.question_id + "/" + elem.tag_id)
      //   .then(res => self.getTagsToQuestion());
    },
    getTags() {
      console.log('get tags!!');
      let self = this;
      axios.post("api/read.php",{tabela:'tags'}).then((res) => (self.tags = res.data));
    },
    answerm(e) {
      e.preventDefault();

      if (this.currentQuestion.rodzajnik && 1 < 0) {
        if (
          this.answer.escapeDiacritics().toLowerCase() ==
            this.currentQuestion.rodzajnik +
              " " +
              this.currentQuestion.answer.escapeDiacritics().toLowerCase() &&
          this.answer != ""
        ) {
          this.answerPositive();
        } else {
          this.answerNegative();
        }
      } else {
        if (
          this.answer.escapeDiacritics().toLowerCase() ==
          this.currentQuestion.answer.escapeDiacritics().toLowerCase()
        ) {
          this.answerPositive();
        } else {
          this.answerNegative();
        }
      }
    },
    answerPositive() {
   

      this.disabledInput = true;
      this.errors.push(
        `<b>Dobrze!</b> Można przejść do następnego pytania (Odpowiedź:<b>${this.currentQuestion.rodzajnik}</b> ${this.currentQuestion.answer})`
      );
      this.$root.words.find(
        (el) => el.id == this.currentQuestion.id
      ).counter++;

      axios.post(`/api/updateresult.php`, {
        counter:this.currentQuestion.counter,
        questionid:this.currentQuestion.id,
        userid:1
    

      });

      setTimeout(function () {
        document.getElementById("nextbutton").focus();
      }, 200);
    },
    answerNegative() {
      this.disabledInput = true;
      this.errors.push(
        `Nie udało się. Prawidłowa odpowiedź: <b> <span v-if="currentQuestion.category_id=='2'">${this.currentQuestion.rodzajnik}</span> ${this.currentQuestion.answer} </b>`
      );
      setTimeout(function () {
        document.getElementById("nextbutton").focus();
      }, 200);
    },
    plusCounter(howmany) {
      this.$root.words.find(
        (el) => el.id == this.currentQuestion.id
      ).counter += howmany;

      axios.patch(`/api/update.php/`, {
        tabela:'questions',
        dane:{counter:this.currentQuestion.counter},
        id:this.currentQuestion.id
      });
      this.next();
    },
    plusCounter0() {
      this.$store.state.find(
        (el) => el.id == this.currentQuestion.id
      ).counter = 0;
      axios.patch(`/counterquestion0/${this.currentQuestion.question_id}`);
      this.next();
    },
    next: function () {
      this.errors = [];
      let self = this;
      this.disabledInput = false;
      this.answer = "";

      let elem = this.$root.words.find(
        (el) => el.id > this.currentQuestion.id
      );

      if (typeof elem == "undefined") {
          this.$root.getWord();
       // this.$root.loadData();
        return;
      }

      this.$root.currentQuestion = elem;

      setTimeout(function () {
        self.focusanswer();
      }, 200);
    },
    prev() {
      let elem = this.$root.words
        .filter((el) => el.counter <= this.$root.settings.counterset)
        .filter((el) => el.id < this.$root.currentQuestion.id)
        .slice(-1)[0];


        console.log(elem);


      this.errors = [];
      let self = this;
      this.disabledInput = false;
      this.answer = "";

      if (elem) {
        this.$root.currentQuestion = elem;
      } else {
        console.log("brak prev");
      }
    },
    deleteQuestion() {
      //self.currentQuestion.question_id
      let self = this;
      axios.post('/api/delete.php',{id:self.$root.currentQuestion.id,tabela:'questions' }  );
      console.log('delete');
      this.next();
    },
    focusanswer() {
      try {
        document.getElementById("answerinput").focus();
      } catch (e) {}
    },
    async update() {
      this.errors = [];
      this.errors.push("zedytowano");

      let self = this;
      let editQanswer = document.getElementById("editQanswer").value;
      let editQquestion = document.getElementById("editQquestion").value;
      let editrodzajnik = "";
      if (document.getElementById("editQrodzajnik")) {
        editrodzajnik = document.getElementById("editQrodzajnik").value;
      }

      await axios.patch(
        `updatequestion3/${this.$store.state.currentQuestion.question_id}`,
        {
          question: editQquestion,
          answer: editQanswer,
          rodzajnik: editrodzajnik,
          partofspeech: self.editpartofspeech,
        }
      );

      this.$store.state.currentQuestion.answer = editQanswer;
      this.$store.state.currentQuestion.question = editQquestion;

      if (document.getElementById("editQrodzajnik")) {
        this.$store.state.currentQuestion.rodzajnik = editrodzajnik;
      }
    },
    formprevent(e) {
      e.preventdefault();
    },
    reverse() {
      let answer = this.currentQuestion.answer;
      let question = this.currentQuestion.question;

      this.$store.state.currentQuestion.answer = question;
      this.$store.state.currentQuestion.question = answer;
    },
  },
  created() {
    let self = this;
    self.getTags();
    window.events.$on("next", function () {
      self.next();
    });
  },
  mounted() {
    let self = this;
    setTimeout(() => {
      console.log(this.$root.currentQuestion);
      self.editpartofspeech = self.currentQuestion.partofspeech;
    }, 5000);
  },
  computed: {
    // ...mapState(["words"]),
    currentQuestion() {
      return this.$root.currentQuestion
        ? this.$root.currentQuestion
        : {};
    },
    activelanguage() {
      return this.$store.state.activelanguage
        ? this.$store.state.activelanguage
        : "";
    },
    ready() {
      return this.$root.words.length > 0 ? true : false;
    },
    // categories() {
    //   return this.$store.state.categories ? this.$store.state.categories : [];
    // }
  },
});
</script>

<style scoped>
.closer:hover {
  background: #994444 !important;
}

.bold {
  font-weight: bold;
}

.red {
  color: red;
  /* background:red; */
  /* background-color:red; */
}

.unfocus:focus {
  outline: none;
}

.divbackground {
  background-size: contain;
  background-repeat: no-repeat;
}

.icon:hover {
  filter: drop-shadow(red 2px 2px 2px);
}
</style>

</script>


