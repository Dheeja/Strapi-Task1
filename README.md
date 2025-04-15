🚀 Strapi Setup - Task 1 | PearlThoughts Internship
📌 Project Overview
This project is a basic setup of Strapi (a headless CMS) created as part of the PearlThoughts Internship Task 1. It includes:
- Cloning the official Strapi repo
- Running the admin panel
- Creating a content type (`Marvel`)
- Ignoring unnecessary files
- Pushing the setup to GitHub
⚙️ Setup Instructions
1. Clone the Official Strapi Repo (Optional for Exploration)

git clone https://github.com/strapi/strapi.git
cd strapi
yarn install
yarn build

2. Create a New Strapi App

npx create-strapi-app my-test-app --quickstart
cd my-test-app

Install dependencies

Yarn install

Yarn build

Yarn develop

🧪 Running the Project

npm run develop
Admin panel runs at: http://localhost:1337/admin

🏗️ Content Type - Marvel
Fields added:
- title (Text)
- description (Rich Text)
- image (Media)
Created via admin panel's "Content-Type Builder"
One entry added to the Marvel collection
📁 Project Structure

my-test-app/
├── api/
├── components/
├── config/
├── public/
├── .gitignore
├── package.json
├── .env
├── README.md

🚫 .gitignore Setup

node_modules/
.build/
.cache/
.env
.env.*
*.log
*.sqlite
.vscode/
.idea/

✅ Status

| Task                        | Done |
|-----------------------------|------|
| Project created with Strapi | ✅   |
| Marvel content type added   | ✅   |
| GitHub repo initialized     | ✅   |
| .gitignore file configured  | ✅   |
| Pull Request raised         | ✅   |

🔗 Pull Request
👉 https://github.com/PearlThoughts-DevOps-Internship/strapi--Monitor-hub/compare/Jaga-Horcrux?expand=1

🎥 Loom Demo
https://www.loom.com/share/3b011a7617704b3d91dd23803fc460c2?sid=5cc80bc1-a5ca-4ff6-88a8-f96a422f6b34
🎬 
