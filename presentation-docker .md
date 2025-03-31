# Introdução ao Docker, Computação em Nuvem e Contêineres

---

## Slide 1: Título
- **Introdução ao Docker, Computação em Nuvem e Contêineres**
- Caio Lucena
- 31 de March de 2025

---

## Slide 2: Introdução
- Alguém já ouviu falar de Docker? O que acham que ele faz?
- Problema comum: "Na minha máquina funciona, mas no servidor não."
- O que vamos aprender hoje:
  - O que é Docker?
  - O que é Computação em Nuvem?
  - O que são Contêineres?
  - Como usar Docker na prática.

---

## Slide 3: O que é Docker?
- Docker é uma plataforma para desenvolver, enviar e rodar aplicações em contêineres.
- **Benefícios:**
  - Facilita a implantação
  - Padroniza ambientes
  - Reduz conflitos entre dependências
- **Componentes principais:**
  - Imagem (modelo do contêiner)
  - Contêiner (instância em execução)
  - Docker Hub (repositório de imagens)

---
## Slide 4: O que é Computação em Nuvem?
- Uso de servidores remotos para armazenar, gerenciar e processar dados.
- **Provedores populares:**
  - AWS, Azure, Google Cloud
- **Benefícios:**
  - Escalabilidade, custo reduzido, acessibilidade global.

---

## Slide 5: O que são Contêineres?
- Contêineres são ambientes isolados que contêm tudo o que uma aplicação precisa para rodar.
- **Comparando:**
  - Contêiner vs. Máquina Virtual
  - Contêineres são mais leves, rápidos e portáteis.
- Docker usa contêineres para empacotar aplicações.

---

## Slide 6: Instalando o Docker
- **Baixando e instalando:**
  - Windows: Docker Desktop
  - Linux: `sudo apt install docker.io`
  - Mac: Docker Desktop
- **Testando a instalação:**

```bash
    docker --version && docker run hello-world
```

---

## Slide 7: Criando um Contêiner
- Rodando um contêiner com Nginx:

```bash
    docker run -d -p 80:80 nginx
```
- **O que significa?**
- `-d`: modo daemon (em segundo plano)
- `-p 80:80`: mapeia a porta do contêiner para a máquina

---

## Slide 8: Criando um Dockerfile
- Exemplo de `Dockerfile` para uma aplicação Python:

``` dockerfile 
    FROM python:3.9 
    WORKDIR /code 
    COPY . . 
    RUN pip install fastapi[standard]

    CMD ["fastapi", "run", "app/main.py", "--port", "8000"]
```

- **Construindo a imagem:**

```bash
    docker build -t minha_app .
```

- **Rodando o contêiner:**

```bash
    docker run -p 5000:5000 minha_app
```


---

## Slide 9: Docker Compose
- Docker Compose permite rodar múltiplos contêineres juntos.
- Exemplo `docker-compose.yml`:

``` yaml
    version: '3' services: web: image: nginx ports: - "80:80"
```

- **Subindo os serviços:**

```bash
    docker-compose up -d
```

---

## Slide 10: Conclusão
- Docker simplifica o desenvolvimento e a implantação de aplicações.
- Computação em nuvem + Docker é uma combinação poderosa.
- Perguntas?

---
## Slide 11: Agradecimentos
- **Agradeço a todos pela atenção!**

---