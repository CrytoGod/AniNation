# **AniNation**

*A modern web application for anime enthusiasts to discover, track, and share their favorite anime series.*

![AniNation Banner](./images/naruto.png) 

---

## **About the Project**

**AniNation** is a feature-rich anime discovery platform developed by **Amari Buck** and **Emmanuel Opadele**. Built using the **Vue.js** framework with a **modular structure** and powered by **Lumen (PHP Micro-Framework)** for backend services, this app aims to create a vibrant space for anime lovers to explore, engage, and share their fandom.

---

## **Features**

- 🔍 **Extensive Anime Catalog** — Browse a wide selection of anime series with detailed information.
- 📺 **Personal Watchlists** — Keep track of what you're watching, have completed, or plan to watch.
- ⭐ **Rate & Review** — Leave ratings and reviews to help others discover great shows.
- 💬 **Social Sharing** — Share your favorite anime and recommendations with the AniNation community.
- 🎯 **Personalized Suggestions** — Get anime recommendations based on your interests.

---

## **Project Structure**

```
ani-nation/
├── api/               # Lumen backend (PHP)
├── public/            # Static files & build output
├── src/               # Vue components & views
├── scss/              # Custom styles
├── images/            # Icons, banners, assets
├── .env               # Environment configuration
├── package.json       # Frontend dependencies
└── README.md          # You're here!
```

---

## **Technologies Used**

- **Vue.js (Composition API)** — Frontend framework for a reactive UI
- **Lumen** — Lightweight backend for APIs
- **SCSS** — Modular and maintainable styles
- **MySQL** — For user data and anime info
- **Git** — Version control

---

## **Installation**

To run AniNation locally:

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/ani-nation.git
cd ani-nation
```

### 2. Frontend Setup (Vue)

```bash
npm install
npm run dev
```

### 3. Backend Setup (Lumen)

```bash
cd api
composer install
cp .env.example .env
php -S localhost:8000 -t public
```

### 4. Configure Environment

Update your `.env` file with your database credentials and API settings.

---

## **Contributors**

- 🎨 **Amari Buck** — UI/UX, Frontend Development, Motion Design  
- 🧠 **Emmanuel Opadele** — Backend Architecture, API Integration, Deployment

---

## **License**

This project is licensed under the [MIT License](LICENSE).

---

## **Contact**

Feel free to reach out for feedback or collaboration:

- 📧 [amaribuck71@gmail.com](mailto:amaribuck71@gmail.com)
- 📧 [olatopmide@gmail.com](mailto:olatopmide@gmail.com)
- 🌐 [amaribuck.com](http://amaribuck.com)
- 🌐 [emmanuelopadele.com](https://emmanuelopadele.com/)

> *Thanks for checking out AniNation!*
