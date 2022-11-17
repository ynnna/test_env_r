library(ggplot2)

data_arrests = as.data.frame(get(data('USArrests')))
data_arrests <- cbind(location = rownames(data_arrests), data_arrests)

murder = ggplot(data_arrests, aes(
                x = Murder, 
                y= location))+
                geom_bar(stat='identity')+
                ggthemes::theme_tufte()




