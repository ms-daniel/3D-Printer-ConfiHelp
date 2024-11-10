# Usar uma imagem base oficial do Node.js
FROM node:20-alpine

# Definir o diretório de trabalho
WORKDIR /app

# Copiar o arquivo package.json e package-lock.json para a imagem
COPY package*.json ./

# Instalar as dependências do Node.js
RUN npm install

# Copiar todos os arquivos da aplicação para dentro da imagem
COPY . .

# Expor a porta em que o servidor vai rodar
EXPOSE 3000

# Comando para rodar a API
CMD ["node", "app.js"]
