# DevOps Training

## Opdrachten

### 1. Clone het project en maak je eigen branch

- Clone het project uit de github repository <https://github.com/pve84/devops-training>
- Maak een branch die van de master afkomt met je eigen voornaam.
- Switch naar je nieuwe branch
- Push de nieuwe branch naar de repository

```shell
git help
git clone
git branch
git checkout
git push
```

<details>
  <summary>spoiler</summary>

  ```shell
  git clone https://github.com/pve84/devops-training
  git branch <naam> master
  git checkout <naam>
  git push --set-upstream origin <naam>
  ```

</details>

### 2. Start de spring-boot applicatie controleer de werking. Build de app en start de war

- Start de applicatie
  - verifieer de werking dmv curl
- Build de applicatie en package als een war
- Start de package

```bash
mvn spring-boot:run
curl
mvn [clean] install
java -jar
```

<details>
  <summary>spoiler</summary>

  ```shell
  mvn spring-boot:run
  curl localhost:8080/api/v1/int
  mvn clean install
  java -jar target/api-0.0.2-SNAPSHOT.war
  ```

</details>

### 3. Maak een image. Start een container met je zelf gebouwde image

- Build een image dmv de Dockerfile
  - Gebruik je voornaam als imagenaam
  - Zorg dat je image de juiste tag krijgt (versie nummer uit je pom)
- Start een nieuwe container met je image
- Verifieer de werking van je image
- Laat de container op de achtergrond draaien
- Verwijder de container

```bash
docker build
docker run
```

<details>
  <summary>spoiler</summary>

  ```shell
  docker build --tag <naam>:0.0.2-SNAPSHOT .
  docker run <naam>:0.0.2-SNAPSHOT
  docker run -p 8080:8080 <naam>:0.0.2-SNAPSHOT
  curl localhost:8080/api/v1/int
  docker run --name api -d -p 8080:8080 <naam>:0.0.2-SNAPSHOT
  docker rm api
  ```

</details>

### 4. Update de spring-boot applicatie zodat het float endpoint beschikbaar wordt en hoog de versie van de applicatie op en voer opracht 2,3 opnieuw uit

- Maak het float endpoint beschikbaar
- Update de versie van de applicatie in de pom.xml
- Opdracht 2
- Opdracht 3
  - Wat er er fout, en hoe kun je het fixen?

### 5. Zet de Github workflow aan en kijk hoe je build verloopt

- Hernoem .github/workflows/build.yml_disabled naar build.yml
- Commit en push
- Kijk in github naar de build en deploy en controleer of het goed verloopt
- Controleer of je applicatie beschibaar is op het Internet

### 6. Voeg een stap aan de build step toe zodat Maven ook de testen draait

- Neem de stap Build with maven als voorbeeld

### 7. Voeg de deploy job toe

- Kopieer de inhoud van  deploy.addon en voeg dit toe aan de build.yml
- Controleer of de nieuwe job goed wordt uitgevoerd
- Controleer of je applicatie vanaf het internet bereikbaar is
