# AM10-Group-3 

TITLE: Determinants of global sea level rise and implications on the planet. 

WHAT IS OUR PROJECT ABOUT?
1. We would like to assess and visualise the two common root causes for global sea rise (surface temperature increase and loss in ice/glacier) 

2. We would like to look at the implications of rise in sea levels on loss in land/population/gdp 

WHAT IS THE SOURCE OF OUR DATA?
1. NOAA Physical Sciences Laboratory: https://psl.noaa.gov/data/gridded/data.noaaglobaltemp.html 
2. Annual sea surface temperature anomaly: https://ourworldindata.org/grapher/annual-sea-surface-temp-anomaly?time=1850..2021&country=OWID_WRL~Northern+Hemisphere~Southern+Hemisphere~Tropics
3. Historical Seal Level Rise: https://ourworldindata.org/grapher/sea-level-rise?tab=table&country=~OWID_WRL
4. Worldbank World Sea-Level Rise Dataset https://datacatalog.worldbank.org/search/dataset/0041449

ADDITIONAL REFERENCES
1. Chen et al., 2013. Contribution of ice sheet and mountain glacier melt to recent sea level rise. Nature Geoscience.
2. Martin, C., 2013. Melting Polar Ice Will Spike Sea Levels at the Equator. Smithsonion Magazine.

WHAT STATISTICAL TECHNIQUES HAVE WE BEEN USING?
- We calculate the importance of the two drivers (Polar ice melting and Sea Surface Temperature Rise) for determining seal level rise. This is done through linear regression.
- We aim to forecast the change in sea level for the upcoming years. For this we rely on time series analysis, namely HoltWinters modelling.

WHAT HAVE WE FOUND OUT?
- Arctic Ice Extent has decreased by ~ 30% since 1980. This trend has been consistent throughout seasons.
- HoltWinters: Sea level will increase by 1 m by 2120 in 95% confidence interval upper level
- Most drastically impacted countries (percentages):
  - Population: Vietnam - 10.8% of population impacted at 1 m rise
  - Land: Bahamas - 11.6% of land impacted at 1 m rise
  - GDP: Vietnam - 10.2% of GDP impacted at 1 m rise
  





