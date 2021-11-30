yearlyIceMeans <- master %>% 
  select(-reordered) %>% 
  drop_na() %>% 
  group_by(year, hemisphere) %>% 
  summarise(meanEx = mean(extent)) %>% 
  left_join(tempAnomaliesGlobal, by = c("year", "hemisphere")) %>% 
  filter(hemisphere == "N") #Only choosing the Artic 

p1 <- yearlyIceMeans %>% 
  ggplot(aes(x = year, y=meanEx)) +
  geom_line(aes(y = meanEx, color = hemisphere)) +
  geom_smooth(method = lm, color="#404040",alpha=0.2,se=FALSE)+
  scale_color_manual(values = c("#2246c7", "#1ba2ea")) +
  theme_classic() +
  theme(panel.grid.major.y = element_line(colour = "grey80"), legend.position = "none")+
  
  labs(title ="Average Artic Sea Ice Extent", y = "Extent\n(Millions of square kilometers)", x = "Year")

p1
