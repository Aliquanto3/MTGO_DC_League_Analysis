# Parameters
TournamentResultFile = 
  "MTGOArchetypeParser_2023-12-27/ResultData/Duel-Commander_data.json"
beginning = "2024-07-24"
end = "2024-08-15"

# Library import
library("jsonlite")
library("dplyr")
library("ggplot2")

# Import DC League data
rawData = jsonlite::fromJSON(TournamentResultFile)[[1]]
rawData$Date = as.Date(rawData$Date)

#Select data for a specific period
periodData = subset(rawData, Date >= as.Date(beginning) &
                      Date < as.Date(end))

# Get the list of CZ (combining with Partners/Companions)
commanderList = periodData$Sideboard
combined_CZ_names = 
  sapply(commanderList, function(x) paste(x$CardName, collapse = " + "))

# Create the metagame dataframe
league_metagame <- data.frame(CZ = unlist(combined_CZ_names))

# Fill the metagame dataframe with CZ count and share
league_metagame <- league_metagame %>%
  count(CZ) %>%
  mutate(Share = round(n / nrow(league_metagame) * 100, 2)) %>%
  rename(Count = n) %>%
  arrange(desc(Share))

print(league_metagame)

# Keep only the CZ with a presence above 1% to display in the graph
league_metagame_filtered <- league_metagame %>% filter(Share > 1)

# Generate a title for the graph
bar_chart_title = paste0("Share of the CZ among the 5-0 decks in MTGO Leagues", 
                         "\nbetween ", beginning, " and ", end)

# Reorder CZ by ascending presence
league_metagame_filtered$CZ = reorder(league_metagame_filtered$CZ, 
                                as.numeric(league_metagame_filtered$Share))

# Create the bar graph
ggplot(league_metagame_filtered, aes(x = CZ, y = as.numeric(Share), fill = CZ)) + 
  
  geom_bar(stat="identity") + theme_minimal() + guides( fill = FALSE) +
  
  geom_text(aes(label = paste0(Share, "%")), hjust = 1.1, size = 4) +
  
  labs(x = NULL, y = NULL, fill = NULL, 
       title = bar_chart_title, subtitle = "by Anaël Yahi") + 
  
  coord_flip() +
  
  scale_y_continuous(limits = c(0,max(league_metagame_filtered$Share)*1.1), expand = c(0.01, 0)) +
  
  theme(plot.title = element_text(hjust = 0.5, color = "#111111",size = 18),
        plot.subtitle = element_text(hjust = 0.5,size = 16),
        axis.line.x=element_line(color = "black"),
        axis.line.y=element_line(color = "black"),
        panel.background = element_blank(),
        text = element_text(size = 16),
        plot.title.position = "plot") 

