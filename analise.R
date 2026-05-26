## ============================================================
## Exercício - Meu primeiro repo no GitHub (RStudio)
## Análise do dataset Gapminder
## ============================================================
##
## Como funciona:
##   - Cada bloco abaixo (Análise 1, 2, 3) vira UM commit separado.
##   - Quando terminar uma análise:
##       1. Salve o arquivo (Cmd+S / Ctrl+S)
##       2. Vá no painel "Git" (canto superior direito do RStudio)
##       3. Marque o checkbox ao lado dos arquivos modificados
##       4. Clique em "Commit"
##       5. Escreva a mensagem
##       6. Clique em "Commit" dentro da janela
##       7. Clique em "Push" (seta verde para cima)
##   - Não pule a ordem dos commits.
##   - Tudo via cliques. Sem terminal.
## ============================================================


# ----- COMMIT 1: estrutura inicial -----
# Bibliotecas (já no primeiro commit, junto com este arquivo
# e o .gitignore)

library(tidyverse)
library(gapminder)


# ============================================================
# ANTES DO COMMIT 2 — Conectar com o GitHub
# ============================================================
#
# Você já fez o primeiro commit (estrutura inicial), mas o
# projeto ainda não está no GitHub. Para criar o repo na nuvem
# e conectar, rode UMA VEZ no console R:
#
#     usethis::use_github()
#
# O usethis vai:
#   - Criar o repositório na sua conta do GitHub
#   - Conectar o projeto local com o remoto
#   - Fazer o push do que já existe
#
# Depois disso, o botão "Push" do painel Git fica disponível.


# ============================================================
# COMMIT 2 — Análise 1: Brasil ao longo do tempo
# ============================================================
#
# Objetivo: gráfico de linha mostrando a evolução da
# expectativa de vida no Brasil de 1952 a 2007.
#
# Passos sugeridos:
#   (a) Filtre gapminder para country == "Brazil"
#   (b) Use ggplot + geom_line() + geom_point()
#   (c) Coloque título, subtítulo e nomes nos eixos com labs()
#   (d) Use theme_minimal()
#   (e) Salve como "grafico-1-brasil.png" usando ggsave()
#
# DEPOIS DE TERMINAR ESTA ANÁLISE:
#   Painel Git → marca checkbox em analise.R e grafico-1-brasil.png
#   → Commit → mensagem: "Adiciona análise da expectativa de vida no Brasil"
#   → Commit → Push



# ============================================================
# COMMIT 3 — Análise 2: Top 10 países por PIB per capita em 2007
# ============================================================
#
# Objetivo: gráfico de barras horizontais com os 10 países de
# maior PIB per capita em 2007.
#
# Passos sugeridos:
#   (a) Filtre year == 2007
#   (b) Ordene por gdpPercap em ordem decrescente (arrange(desc(...)))
#   (c) Pegue os 10 primeiros com slice_head(n = 10)
#   (d) Use ggplot + geom_col() com aes(x = reorder(country, gdpPercap), y = gdpPercap)
#   (e) Inverta os eixos com coord_flip()
#   (f) Customize com labs() e theme_minimal()
#   (g) Salve como "grafico-2-top10-pib.png"
#
# DEPOIS DE TERMINAR:
#   Painel Git → marca checkbox dos arquivos modificados/novos
#   → Commit → mensagem: "Adiciona top 10 países por PIB per capita em 2007"
#   → Commit → Push



# ============================================================
# COMMIT 4 — Análise 3: Continentes ao longo do tempo
# ============================================================
#
# Objetivo: gráfico de linha mostrando a evolução da
# expectativa de vida MÉDIA por continente, de 1952 a 2007.
#
# Passos sugeridos:
#   (a) Agrupe gapminder por continent E year (group_by(continent, year))
#   (b) Calcule a média de lifeExp com summarize()
#   (c) Use ggplot com aes(x = year, y = vida_media, color = continent)
#   (d) geom_line() + geom_point()
#   (e) labs(), theme_minimal()
#   (f) Salve como "grafico-3-continentes.png"
#
# DEPOIS DE TERMINAR:
#   Painel Git → marca checkbox dos arquivos modificados/novos
#   → Commit → mensagem: "Adiciona comparativo da evolução por continente"
#   → Commit → Push



# ============================================================
# COMMIT 5 — README
# ============================================================
#
# Crie um arquivo README.md no RStudio:
#   File → New File → Markdown File
#   Salve como "README.md" na raiz do projeto
#
# Conteúdo:
# ---
#
# # Análise Gapminder
#
# Análise exploratória do dataset Gapminder em R.
#
# Autor: Seu Nome
#
# ## Análises feitas
#
# 1. Evolução da expectativa de vida no Brasil (1952–2007)
# 2. Top 10 países por PIB per capita em 2007
# 3. Comparativo da expectativa de vida por continente ao longo do tempo
#
# ## Gráficos
#
# ![Brasil](grafico-1-brasil.png)
# ![Top 10 PIB](grafico-2-top10-pib.png)
# ![Continentes](grafico-3-continentes.png)
#
# ---
#
# DEPOIS DE TERMINAR:
#   Painel Git → marca checkbox em README.md
#   → Commit → mensagem: "Adiciona README com descrição das análises"
#   → Commit → Push
#
# Depois disso, abra seu repo no GitHub e confira que tudo
# está aparecendo bonito — incluindo o README renderizado
# com as 3 imagens.