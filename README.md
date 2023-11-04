# Para subir o projeto local:
### Construir a Imagem Docker

```docker build -t avaliacao2 .```

# Executar o contêiner a partir da imagem criada
```docker run -d -p 8080:8080 avaliacao2```

- Acessar a url após subir o container: http://localhost:8080/demo/index.html

# Explicações:
- **docker build**: Este é o comando do Docker utilizado para construir uma imagem a partir de um Dockerfile.
- **-t avaliacao2**: A opção -t é usada para especificar um nome e uma tag para a imagem que está sendo criada. Neste caso, o nome da imagem é avaliacao2.
- **.(ponto final)**: O docker vai procurar o arquivo dockerFile no diretório atual. 
- **docker run**: este é o comando principal do Docker usado para criar e iniciar contêineres a partir de imagens.
- **-d**: Ela faz com que o contêiner seja executado em segundo plano, sem bloquear o terminal atual. Isso é útil para que você possa continuar usando o terminal enquanto o contêiner está em execução.
- **-p 8080:8080**: Esta opção mapeia a porta 8080 do host para a porta 8080 do contêiner. No contexto de um servidor Tomcat, isso significa que o Tomcat dentro do contêiner estará ouvindo na porta 8080, e você poderá acessá-lo no seu host local através da mesma porta.

# DockerFile
- O **Dockerfile** é um arquivo de configuração usado no Docker para criar imagens de contêiner. Ele contém uma série de instruções que o Docker usa para construir automaticamente uma imagem Docker.
 Aqui estão algumas das instruções comuns encontradas em um Dockerfile:

1. FROM: Especifica a imagem base que você está usando para a sua imagem.
2. COPY: é usada para copiar arquivos e diretórios do sistema de arquivos do host para a imagem Docker que está sendo construída. ```COPY <origem> <destino>```
3. CMD: é usada para fornecer comandos ou argumentos padrão para um contêiner. Ela especifica qual comando deve ser executado quando o contêiner é iniciado.
4. EXPOSE: Informa ao Docker que o contêiner escuta na porta especificada durante o tempo de execução.

# Para atualizar o projeto dentro do container:
- ```docker cp [diretorio do novo arquivo/pasta adicionado no projeto] 7cd4a8f27a44:/usr/local/tomcat/webapps/demo/```
- restart no docker(utilizando a interface) ou ```docker restart <nome_ou_ID_do_contêiner>```, para pegar o id do container ```docker ps```

Erros que aconteceram ao subir o container e acessar http://localhost:8080/demo/index.html
o projeto não estava dentro do webapps:
- ```docker ps``` - mostrar as informações do container, como por exemplo, o id.
- ```docker exec -it [id container] /bin/bash``` - Quando você executa esse comando, você entra no ambiente do contêiner, onde você pode interagir com os arquivos e executar comandos dentro do contêiner.
- ```cp -R * ../webapps``` - copia todos os arquivos para o diretório informado, nesse caso o webapps.





