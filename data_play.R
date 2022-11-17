library(ggplot2)

data_arrests = as.data.frame(get(data('USArrests')))
data_arrests <- cbind(location = rownames(data_arrests), data_arrests)

selected_x = 'Assault'

sel_plot = ggplot(data_arrests, aes(
                x = data_arrests[, selected_x], 
                y= rownames(data_arrests)))+
                geom_bar(stat='identity')+
                ylab("Location")
                ggthemes::theme_tufte()


