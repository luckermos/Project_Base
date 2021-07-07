# DEFINIR FUNCOES AQUI

select_musics_by_singer <- function(banco, singer){
  singer <- stringr::str_to_lower(singer)
  singer <- stringr::str_trim(singer)
  
  banco <- banco %>% 
    dplyr::mutate(
      `Artist Name`=stringr::str_to_lower(`Artist Name`),
      `Artist Name`=stringr::str_trim(`Artist Name`)
      ) %>% 
    dplyr::filter(stringr::str_detect(`Artist Name`, singer))
  
  return(banco)
}
