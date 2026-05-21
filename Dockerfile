# Imagem oficial da Evolution API
FROM evoapicloud/evolution-api:latest

# Variáveis de ambiente necessárias (fixa o erro "Database provider invalid")
ENV DATABASE_ENABLED=true
ENV DATABASE_PROVIDER=sqlite
ENV DATABASE_CONNECTION_URI="file:./evolution.db"
ENV CACHE_REDIS_ENABLED=false
ENV WEBHOOK_GLOBAL_ENABLED=false
ENV LOG_LEVEL=error

# A porta padrão da Evolution é 8080
EXPOSE 8080

# Comando já vem na imagem oficial, apenas explicitamos
CMD ["node", "dist/main.js"]
