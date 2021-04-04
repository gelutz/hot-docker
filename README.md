# Typescript + docker with hot-reload

### Comandos:

> Esse script levanta um container que instala todos os pacotes de
> server/ e client/

```bash
git clone https://github.com/gelutz/hot-ts hot-ts
cd hot-ts
make up
```

### Dependências:

- Docker

### Comentários do autor:

<h3>
Estou usando `npm` por que ele possui a flag --only, por exemplo:
<p>./Dockerfile:</p>
<p>`RUN npm install ... --only=production`</p>
</h3>
Dessa forma, consigo dividir o Dockerfile em mais etapas.
A etapa desejada é especificada na flag _target: development_, no docker-compose.yml

---

Author: [gelutz](https://github.com/gelutz)
