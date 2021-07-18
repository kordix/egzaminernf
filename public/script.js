window.events = new Vue();
//
window.next = function () {
    window.events.$emit('next');
};


let app = new Vue({
    data: {
        wylogujshow: false,
        errors: [],
        wordsall: [],
        words: [{ "id": 355, "question": "w końcu", "answer": "schließlich", "language": "DE", "partofspeech": "nieprzypisane", "tags": "nieprzypisane", "rodzajnik": "", "fav": "", "level": "", "created_at": "2021-06-13 11:54:33", "updated_at": "2021-06-26 05:52:33", "question_id": 355, "user_id": 1, "counter": 2 }, { "id": 356, "question": "sondaże", "answer": "Umfragewerte", "language": "DE", "partofspeech": "nieprzypisane", "tags": "nieprzypisane", "rodzajnik": "", "fav": "", "level": "", "created_at": "2021-06-13 11:54:40", "updated_at": "2021-06-26 05:52:19", "question_id": 356, "user_id": 1, "counter": 1 }, { "id": 357, "question": "wyjątek", "answer": "Ausnahme", "language": "DE", "partofspeech": "nieprzypisane", "tags": "nieprzypisane", "rodzajnik": "", "fav": "", "level": "", "created_at": "2021-06-13 11:54:52", "updated_at": "2021-06-26 05:52:20", "question_id": 357, "user_id": 1, "counter": 2 }, { "id": 358, "question": "przyzwyczajony", "answer": "gewohnen", "language": "DE", "partofspeech": "nieprzypisane", "tags": "nieprzypisane", "rodzajnik": "", "fav": "", "level": "", "created_at": "2021-06-13 11:55:06", "updated_at": "2021-06-26 05:52:25", "question_id": 358, "user_id": 1, "counter": 2 }, { "id": 359, "question": "reklama", "answer": "Werbung", "language": "DE", "partofspeech": "nieprzypisane", "tags": "nieprzypisane", "rodzajnik": "", "fav": "", "level": "", "created_at": "2021-06-13 11:55:38", "updated_at": "2021-06-26 05:52:27", "question_id": 359, "user_id": 1, "counter": 2 }, { "id": 360, "question": "przeżywać", "answer": "erleben", "language": "DE", "partofspeech": "nieprzypisane", "tags": "nieprzypisane", "rodzajnik": "", "fav": "", "level": "", "created_at": "2021-06-13 12:00:17", "updated_at": "2021-06-26 05:52:28", "question_id": 360, "user_id": 1, "counter": 1 }, { "id": 361, "question": "wymknąć się spod kontroli", "answer": "aus den Fugen geraten", "language": "DE", "partofspeech": "nieprzypisane", "tags": "nieprzypisane", "rodzajnik": "", "fav": "", "level": "", "created_at": "2021-06-13 12:02:41", "updated_at": "2021-06-26 05:52:30", "question_id": 361, "user_id": 1, "counter": 2 }, { "id": 362, "question": "za wszelką cenę", "answer": "um jeden Preis", "language": "DE", "partofspeech": "nieprzypisane", "tags": "nieprzypisane", "rodzajnik": "", "fav": "", "level": "", "created_at": "2021-06-13 12:03:49", "updated_at": "2021-06-26 05:52:32", "question_id": 362, "user_id": 1, "counter": 2 }],
        tags: [],
        chosentag: {},
        activeobszar: 'egzaminer',
        activeobszar2: 'egzaminer',

        settings: {
            counterset:5,
            activelanguage: 'DE',
            currentcategory: 'nieprzypisane',
            currenttag: ''
        },
        randomset: 'false',
        randomset2: false,
        currentQuestion: { "id": 356, "question": "sondaże", "answer": "Umfragewerte", "language": "DE", "partofspeech": "nieprzypisane", "tags": "nieprzypisane", "rodzajnik": "", "fav": "", "level": "", "created_at": "2021-06-13 11:54:40", "updated_at": "2021-06-26 05:52:19", "question_id": 356, "user_id": 1, "counter": 1 }
    },
    el: '#app',
    created() {
        let self = this;
        this.loadData();
    },
    methods: {
        setLanguage(lang) {
            this.activelanguage = lang;
            let self = this;
            axios.patch('/updatesetting', { activelanguage: self.activelanguage }).then((res) => location.reload());
        },
        async loadData() {
            let self = this;
            await axios.post("api/read.php", { tabela: 'tags' }).then((res) => (self.tags = res.data));

            
            await axios.post("api/read.php", { tabela: 'settings', id:1 }).then((res) =>{self.settings = res.data[0];console.log(1) });


            await axios.post('/api/all.php', { tabela: 'questions' }).then((res) => {self.wordsall = res.data;console.log(2)  }).then((res) => self.getWords()).then((res) => self.getWord());

        },
        getWords(state, data) {
            let self = this;
            this.wordsall = this.wordsall.filter((el) => el.language == self.settings.activelanguage);
            console.log(self.settings.activelanguage);
            console.log(this.wordsall);
            this.words = this.wordsall.filter((el) => el.counter < self.settings.counterset);
            if (this.words.length < 1) { console.log('skończyły się słówka'); self.errors.push('Skończyły się słówka - zmień counter, kategorię albo dodaj nowe'); return };

            if (this.settings.currentcategory) {
                if(this.settings.currentcategory != 'wszystkie'){
                    this.words = this.words.filter((el) => el.partofspeech == self.settings.currentcategory)
                }
            }

            if (this.settings.currenttag) {
                this.words = this.words.filter((el) => el.tags == self.settings.currenttag)
            }

        },
        getWord() {
            if (this.randomset === 'true') {
                let count = this.words.length
                let num = Math.floor(Math.random() * count);
                console.log(num);

                this.currentQuestion = this.words[num];
            } else {
                this.currentQuestion = this.words[0];
            }
        },


    }
})