# 🌷 The Garden of Things Never Said

### A digital garden where unspoken thoughts bloom into flowers.

**The Garden of Things Never Said** is a single-page, responsive web application where people can anonymously express their thoughts and emotions. Each thought becomes part of a virtual garden, creating a space for emotional expression and connection.

🌐 **Live Website:** https://garden-never-said.vercel.app/

💻 **GitHub Repository:** https://github.com/deepthi-ii/garden-never-said

## ✨ Features

- 🌸 **Anonymous Thought Sharing** — Share thoughts without displaying your identity.
- 🌷 **Emotion-Based Flowers** — Associate thoughts with different feelings.
- 🌿 **Interactive Digital Garden** — Explore thoughts represented as flowers.
- ☁️ **Persistent Storage** — Uses Supabase Postgres to store and retrieve thoughts.
- 🔄 **Live Updates** — Uses Supabase Realtime to update the garden when new flowers are added.
- 📱 **Responsive Design** — Designed to work across different screen sizes.

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| HTML5 | Structures the web page |
| CSS3 | Styling, layout, and responsive design |
| JavaScript | Interactive functionality and application logic |
| Supabase | Database, backend services, and realtime updates |
| PostgreSQL | Persistent data storage |
| GitHub | Source code management |
| Vercel | Website hosting and deployment |

## 🎯 Project Objective

The objective is to create a digital space where people can express unspoken feelings anonymously, share their thoughts, and explore a community garden of emotions.

## 🚀 How to Run Locally

1. Clone the repository:

   ```bash
   git clone https://github.com/deepthi-ii/garden-never-said.git
   ```

2. Open the downloaded project folder.
3. Open `index.html` in a browser.
4. Ensure the Supabase project, database table, and access policies are configured correctly for database features to work.

**Note:** The website's database features require a valid Supabase configuration and an internet connection. If the database is unavailable, preview behavior may differ depending on the application's current code.

## 🗄️ Supabase Setup

If you are setting up your own instance:

1. Create a project at [Supabase](https://supabase.com/).
2. Open the SQL Editor.
3. If the repository contains `supabase/setup.sql`, run its SQL instructions.
4. Configure the project URL and publishable key in `index.html`.
5. Enable the `flowers` table for Supabase Realtime if live updates are required.
6. Verify the database access policies before accepting public submissions.

Never expose a Supabase `service_role` key or secret key in browser-side code.

## 🌐 Deployment

This project is hosted on Vercel.

1. Import the GitHub repository into [Vercel](https://vercel.com/).
2. Configure the project as a static HTML website.
3. Deploy the project.
4. Commit future code changes to GitHub to trigger redeployment.

## 🔐 Security and Limitations

- Anonymous submissions may be visible to anyone who can access the public garden.
- Public submission forms can be vulnerable to spam and inappropriate content.
- A public launch should include moderation, reporting, rate limiting, and a content-removal process.
- Database permissions should restrict users to the operations the application requires.
- The current application may display a limited number of flowers; pagination can be added as the community grows.

## 📚 Skills Practiced

- Frontend web development
- HTML, CSS, and JavaScript
- Supabase database integration
- Realtime application functionality
- GitHub source code management
- Vercel deployment
- Debugging and troubleshooting
- AI-assisted development

## 👩‍💻 About the Project

This project explores how technology can provide a creative space for emotional expression while combining frontend development, cloud database services, and website deployment.

---

*Every unspoken thought deserves a place to bloom. 🌷*
