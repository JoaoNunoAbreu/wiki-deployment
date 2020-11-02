# Wiki Deployment
Wiki.js Deployment

## Basic Installation
<details>
  <summary>Docker</summary>
  
  ## Heading
  1. A numbered
  2. list
     * With some
     * Sub bullets
</details>

<details>
  <summary>Linux</summary>
  
  ### Install PostgreSQL 12
  - Update and install PostgreSQL: `sudo apt update && sudo apt install -y postgresql postgresql-contrib`
  - Create PostgreSQL user: `sudo -u postgres createuser wikijs`
  - Create DB: `sudo -u postgres createdb wiki`
  - Update PostgreSQL user with password: `sudo -u postgres psql -c "ALTER USER wikijs WITH ENCRYPTED PASSWORD 'wikijsrocks'"`
  - Add user access to DB: `sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE wiki to wikijs"`
  
  ### Run Wiki.js Server
  Run: `node server`
  
  ### [Optional] Run Wiki.js Server as Service
  - Update user config: `vim wiki.service`
  - Create Service specification: `sudo bash -c 'cat wiki.service > /etc/systemd/system/wiki.service'`
  - Reload systemd: `sudo systemctl reload-daemon`
  - Run the service: `sudo systemctl start wiki`
  - Check Wiki.js service status: `sudo systemtctl status wiki` or see logs with `journalctl -u wiki`
  
  ### Open Wiki.js
  Browse to `http://YOUR-SERVER-IP:3000` to complete setup.
</details>

<details>
  <summary>Heroku</summary>

  ### Initial Setup
  - After creating an account on Heroku, click [here](https://heroku.com/deploy?template=https://github.com/requarks/wiki-heroku/tree/2.x).
  - Wait for heroku to deploy.
  - After a succesfull deploy, select manage app. The deploy will be automatically done in a free tier with PostgreSQL. 
  
 
</details>

## Authors
* **Diogo Ribeiro:** [ribeiropdiogo](https://github.com/ribeiropdiogo)
* **João Nuno Abreu:** [JoaoNunoAbreu](https://github.com/JoaoNunoAbreu)
* **Vasco Ramos:** [vascoalramos](https://vascoalramos.me)

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
