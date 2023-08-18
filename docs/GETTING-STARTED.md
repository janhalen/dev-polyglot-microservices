# How to get started with developing on the project in a GitHub codespace 🚀

## How to create a branch and spin that branch up in a codespace 🌿

- On GitHub.com, navigate to the main page of the repository.
- Select the branch dropdown menu, in the file tree view or at the top of the integrated file editor.
- Type the name of the new branch.
- Click Create branch.
- Click Open in codespace.

For more details, see [Creating and deleting branches within your repository](https://docs.github.com/articles/creating-and-deleting-branches-within-your-repository) and [Quickstart for GitHub Codespaces](https://docs.github.com/en/codespaces/getting-started/quickstart).

## How to use the included docker-compose to spin up the complete environment and web-IDE 🐳

- In your codespace, open a terminal window.
- Navigate to the directory where the docker-compose.yml file is located.
- Run `docker-compose up` to start the containers.
- Open a browser and go to `http://localhost:1880` to access the web-IDE (Node-RED).

For more details, see [Codespaces with databases](https://medium.com/spawn-db/codespaces-with-databases-50fdf3b73d25) and [Forwarding ports in your codespace](https://docs.github.com/en/codespaces/developing-in-codespaces/forwarding-ports-in-your-codespace).
