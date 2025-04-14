const app = Vue.createApp({
    data() {
        return {
            movies: [],
            loadingMovies: true
        }
    },
    // created() {
    //     fetch('http://localhost/github/AniNation/aniNation-backend/public/movies')
    //         .then(response => response.json())
    //         .then(data => {
    //             this.movies = data
    //             this.loadingMovies = false;
    //         })
    //         .catch(error => console.error(error));
    // },
    created() {
        fetch('http://localhost:8888/AniNation/aniNation-backend/public/index.php/movies')
            .then(response => response.json())
            .then(data => {
                this.movies = data
                this.loadingMovies = false;
            })
            .catch(error => console.error(error));
    },
    methods: {
        formatTitle(title) {
            return title
                .split('-').join(' ');
        }
    }
});

app.mount('#trendingAPP');
