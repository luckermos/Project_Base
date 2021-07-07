# AQUI SERAO CHAMADAS TODAS AS FUNCOES PARA EXECUTAR AS TAREFAS DE INTERESSE

# PACOTES NECESSARIOS
library(dplyr)
library(readr)
library(stringr)

# LER FUNCOES SALVAS EM 'functions'
source("load_functions.r")
load_functions()

# LER DADOS
# https://www.kaggle.com/siropo/spotify-multigenre-playlists-data?select=pop_music_data.csv
pop_data <- readr::read_csv("data/pop_music_data.csv")

# SELECIONAR MUSICAS DA KATY PERRY
pop_data %>% 
  select_musics_by_singer("katy perry") %>% 
  dplyr::select(`Artist Name`, `Track Name`, Popularity, Genres)
