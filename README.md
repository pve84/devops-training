# DevOps Training

## Opdrachten

### 1. Clone het project en maak je eigen branch

- Clone het project uit de github repository <https://github.com/pve84/devops-training>
- Maak een branch die van de master afkomt met je eigen voornaam.
- Switch naar je nieuwe branch
- Push de nieuwe branch naar de repository

```bash
git help
git clone
git branch
git checkout
git push
```

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

### 3. Maak een image. Start een container met je zelf gebouwde image

- Build een image dmv de Dockerfile
  - Zorg dat je image de juiste tag krijgt (verie nummer uit je pom)
- Start een nieuwe container met je image
- Verifieer de werking van je image

```bash
docker build
docker run
```

### 4. Update de spring-boot applicatie zodat het float endpoint beschikbaar wordt en hoog de versie van de applicatie op en voer opracht 2,3 opnieuw uit

- Maak het float endpoint beschikbaar
- Update de versie van de applicatie in de pom.xml
- Opdracht 2
- Opdracht 3

### 5. Zet de Github workflow aan en kijk hoe je build verloopt

- Hernoem .github/workflow/build.yml_disabled naar build.yml
- Commit en push
- Kijk in github naar de buid en deploy en controleer of het goed verloopt
- Controleer of je applicatie beschibaar is op het Internet

### 6. Voeg een stap aan de build step toe zodat Maven ook de testen draait

- Neem de stap Build with maven als voorbeeld

### 7. Voeg de deploy job toe

- Kopieer de inhoud van  deploy.addon en voeg dit toe aan de build.yml
- Controleer of de nieuwe job goed wordt uitgevoerd
- Controleer of je applicatie vanaf het internet bereikbaar is
