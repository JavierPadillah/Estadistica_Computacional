library(raster) # package for raster manipulation
library(rgdal) # package for geospatial analysis
library(ggplot2)
library(ncdf4)

nc_data <- nc_open('chirps-v2.0.2020.days_p05_CORDEX_CAM.nc')
# Save the print(nc) dump to a text file
{
  sink('2020_metadata.txt')
  print(nc_data)
  sink()
}

lon <- ncvar_get(nc_data, "longitude")
lat <- ncvar_get(nc_data, "latitude", verbose = F)
t <- ncvar_get(nc_data, "time")
prec <- ncvar_get(nc_data, "precip")

