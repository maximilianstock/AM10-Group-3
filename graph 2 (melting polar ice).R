years <- c("1980", "1990", "2000", "2010", "2020")

p2 <- master %>% 
  mutate(year = factor(year)) %>% 
  filter(hemisphere == "N") 

ggplot(data = p2 %>% 
         select(-reordered) %>% 
         drop_na() %>% 
         filter(year %in% years), aes(x = as.integer(month), y = extent)) +
  geom_line(aes(colour = year)) +
  scale_color_manual(values = c("#c1cef7", "#a1b0e3" ,"#607ce0", "#2246c7",  "#FF6347")) +
  theme_classic() + labs(title = "Artic Sea Ice Trend since 1979", subtitle = "Comparing the start of every decade, the area of ice has been getting smaller and smaller", y = "Extent\n(Millions of square kilometers)", x=
                           "Month") +
  scale_x_continuous(breaks = c(1,2,3,4,5,6,7,8,9,10,11,12), labels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))

