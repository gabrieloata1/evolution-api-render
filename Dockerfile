# Imagem oficial da Evolution API
FROM evoapicloud/evolution-api:latest

# A porta padrão da Evolution é 8080
EXPOSE 8080

# Comando já vem na imagem oficial, apenas explicitamos
CMD ["node", "dist/main.js"]
