# Imagem oficial da Evolution API
FROM evoapicloud/evolution-api:latest

# Variáveis de ambiente necessárias
# DATABASE_CONNECTION_URI deve ser adicionada no dashboard do Render!
ENV DATABASE_ENABLED=true
ENV DATABASE_PROVIDER=postgresql
ENV CACHE_REDIS_ENABLED=false
ENV WEBHOOK_GLOBAL_ENABLED=false
ENV LOG_LEVEL=error

# A porta padrão da Evolution é 8080
EXPOSE 8080

# Comando já vem na imagem oficial, apenas explicitamos
CMD ["node", "dist/main.js"]
