const app = Vue.createApp({
    data() {
      return {
        anime: null,
        loading: true,
        error: null,
      };
    },
    created() {
      const urlParams = new URLSearchParams(window.location.search);
      const movieId = urlParams.get('id');
  
      if (movieId) {
        this.fetchLocalMovie(movieId);
      } else {
        this.error = "No movie ID found in URL.";
        this.loading = false;
      }
    },
    methods: {
      fetchLocalMovie(id) {
        fetch(`http://localhost:8888/AniNation/aniNation-backend/public/index.php/movies`)
          .then((res) => res.json())
          .then((movies) => {
            const movie = movies.find((m) => m.mov_id === id || m.mov_id == id);
            if (movie) {
              this.fetchAnimeDetails(movie.mov_name);
            } else {
              this.error = "Movie not found.";
              this.loading = false;
            }
          })
          .catch((err) => {
            console.error(err);
            this.error = "Failed to fetch movie data.";
            this.loading = false;
          });
      },
      fetchAnimeDetails(title) {
        const query = encodeURIComponent(title);
        fetch(`https://api.jikan.moe/v4/anime?q=${query}&limit=1`)
          .then((res) => res.json())
          .then((data) => {
            if (data && data.data && data.data.length > 0) {
              this.anime = data.data[0];
            } else {
              this.error = "Anime not found on Jikan.";
            }
            this.loading = false;
          })
          .catch((err) => {
            console.error(err);
            this.error = "Failed to fetch anime details.";
            this.loading = false;
          });
      },
    },
  });
  
  app.mount('#detailsApp');
  