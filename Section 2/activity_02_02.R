# Activity 02_02: drawing paths

library(ggplot2)

# load the dataset: the tracking of 6 zebras in northern Botswana.
# Sample of the data from "Bartlam-Brooks HLA, Beck PSA, Bohrer G, Harris S (2013) In search of greener pastures—using satellite images to predict the effects of environmental change on zebra migration. Journal of Geophysical Research: Biogeosciences v 188, p 1–11. doi:10.1002/jgrg.20096"
# Available at: https://www.datarepository.movebank.org/handle/10255/move.343
migratoryZebras <- read.csv("migratingZebras.csv")
head(migratoryZebras)

# plotting with geom_path
p <- ggplot(migratoryZebras, aes(x = latitude, y= longitude, color = zebraID)) 
p + geom_path() + ggtitle("Zebra tracks, with geom_path()")

# plotting with geom_line()
p + geom_line() + ggtitle("Zebra tracks, with geom_line()")


# for more information:
# http://docs.ggplot2.org/current/geom_path.html