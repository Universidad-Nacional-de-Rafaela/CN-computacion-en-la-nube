# Clase 1 — De "anda en mi Docker" a "anda en la nube"

Introducción a *cloud developing*, y antesala directa del curso de AWS Academy.

Partimos del proyecto Django + React + PostgreSQL en Docker que ya conocen, y lo
llevamos hasta donde empieza la nube de verdad. No es una clase de mirar: van a
trabajar ustedes, y varias veces les voy a pedir que rompan cosas a propósito.

**No hace falta cuenta de AWS ni tarjeta de crédito.** Todo corre en su máquina.

## Qué preparar EN CASA, antes de venir

Esto es lo único que les pido de antemano. Es ancho de banda, no es tarea: son unos
1,5 GB de imágenes y bajarlas todos juntos desde el campus nos come media clase.

**1. Verifiquen que Docker funciona**

```bash
docker --version
docker compose version
```

**2. Bajen las imágenes**

```bash
docker pull localstack/localstack:3
docker pull postgres:15
docker pull redis:7-alpine
docker pull nginx:1.25-alpine
docker pull python:3.11-slim
docker pull node:18-alpine
```

**3. Verifiquen que quedaron**

```bash
docker images
```

Tienen que aparecer las seis. La de `localstack` es la más grande y la más
importante: sin ella no podemos hacer casi nada de lo planeado.

## Requisitos de la máquina

- Al menos **8 GB de RAM libres** y unos **10 GB de disco** disponibles.
- Si usan **Docker Desktop** en Windows o Mac, ábranlo antes de salir de casa y
  esperen a que diga *running*: la primera vez tarda.

## El día de la clase

Les doy la clave, descomprimen `clase-1.zip` y arrancamos. La construcción del
proyecto la hacemos juntos: con las imágenes ya bajadas son unos pocos minutos.

Adentro del comprimido van a encontrar el código, el `EJERCICIOS.md` con los bloques
de trabajo, y el tutorial de Django + Docker por si quieren repasarlo.

## Si algo falla antes de la clase

Si Docker no arranca, si una descarga se corta o si tienen problemas de permisos,
escríbanme **antes** del día de la clase. Llegar al aula con la máquina sin preparar
significa perderse la primera hora.
