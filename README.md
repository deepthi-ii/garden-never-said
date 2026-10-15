# The Garden of Things Never Said

A single-page, responsive anonymous thought garden. It uses HTML/CSS/JavaScript, Supabase Postgres for persistent storage, Supabase Realtime for live flower updates, and Vercel for hosting.

## 1. Create the Supabase database

1. Visit https://supabase.com and create a project.
2. Open **SQL Editor** in the project dashboard.
3. Open `supabase/setup.sql`, copy all its SQL, paste it into the SQL Editor, and run it.
4. If the final `alter publication` line says the table is already in the publication, that is fine. If it says permission denied, open **Database > Publications**, find `supabase_realtime`, and enable `flowers` there.
5. In **Project Settings > API** (or **Connect**, depending on dashboard layout), copy the Project URL and the publishable key (older projects may label this the anon key). Never use a `service_role` or secret key in browser code.

## 2. Connect the website to Supabase

1. Open `index.html` in a text editor.
2. Find these two lines near the bottom:
   `const SUPABASE_URL = 'YOUR_SUPABASE_URL';`
   `const SUPABASE_ANON_KEY = 'YOUR_SUPABASE_PUBLISHABLE_OR_ANON_KEY';`
3. Replace the placeholders with your real Project URL and publishable/anon key. Keep the single quotes.
4. Save the file. Before configuring it, the page runs in preview mode with sample flowers; preview submissions only exist in that browser session and are not shared.

## 3. Upload to GitHub (browser only)

1. Go to https://github.com and create a new repository, e.g. `garden-never-said`.
2. Open the repository and choose **Add file > Upload files**.
3. Extract this project ZIP on your computer first.
4. Upload `index.html`, `README.md`, and the `supabase` folder (including `setup.sql`). If GitHub's folder picker is awkward, open the extracted folder and drag the files into the GitHub upload area; create `supabase` in GitHub and upload `setup.sql` into it if needed.
5. Commit the files to the `main` branch.

## 4. Deploy on Vercel

1. Visit https://vercel.com and sign in with GitHub.
2. Choose **Add New > Project**, then import `garden-never-said`.
3. This is a plain static HTML site. No build command is required. Leave the output directory blank/default; Vercel serves `index.html` from the project root.
4. Click **Deploy**. When it finishes, open the generated `.vercel.app` URL.
5. Test the URL on two different browsers/devices. Plant a flower on one and verify it appears on the other without refreshing.
6. To update the site, edit `index.html`, commit the change to GitHub, and Vercel will redeploy automatically.

## Security and launch notes

- The browser publishable/anon key is designed to be public; RLS policies restrict this sample app to reading and inserting flowers only. Do not put a `service_role` or secret key in `index.html`.
- This starter allows anonymous public submissions, so visitors can submit inappropriate content or spam. For a public launch, add moderation/reporting, rate limiting (typically with a server-side function or CAPTCHA), and a removal workflow. Don't collect identifying details; submitted thoughts are public to anyone who can access the site.
- The sample uses a public read feed and a 100-flower display limit. For larger communities, add pagination and moderation.
- If the page loads but live updates fail, check that the `flowers` table is included in the `supabase_realtime` publication and inspect the browser console.
- This project cannot be live-connected to your Supabase project or deployed to your Vercel account until you create/connect those accounts and supply the project settings yourself.
