#install procedures for relevant R packages---------------------------------------------------------------------
#author: Nikita Voevedin
#notes: this script is revisited for updates every month, note that you may have to install a package seperately 
#COPY THIS SCRIPT AND RUN IN RSTUDIO 

#######################script that automatically installs all libraries in a vector##############################

installer <- function(x){
  for( i in x ){
    
    if( !require( i , character.only = TRUE ) ){
      #  If not loading - install
      install.packages( i , dependencies = TRUE )
      #  Load 
      require(i, character.only = TRUE )
    }
  }
}

#########################################################################################################################
installer( c("ggplot2" , "reshape2" , "data.table", 'shiny', 'shinydashboard', 'fasttime', 'lubridate',
             'dplyr', 'httr', 'jsonlite', 'RCurl', 'pbapply', 'tidyverse', 'openxlsx', 'readxl',
             'reshape', 'tidyr', 'plyr', 'ggmap', 'leaflet', 'raster', 'sf', 'rgdal', 'leaflet.extras',
             'remotes', 'stringi', 'shiny', 'rgeos', 'rmapshaper', 'sp', 'echarts4r', 'shinydashboardPlus',
             'shinycssloaders', 'DT', 'mapview','parallel') )

###########################################################################################################################
