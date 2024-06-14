# This dataset contains data about the effect of Vitamin C of the growth of teeth in guinea pigs

data("ToothGrowth")
View(ToothGrowth)

# use filter function from package dplyr
filtered_tg <- filter(ToothGrowth, dose==1)

# we want to sort data using arrange function
arrange(filter(ToothGrowth, dose==0.5), len)


# Will used pipe operator %>% keyboard shortcut ctrl+shift+m
# we wanna know how many avg of Orange Juice and Vitamin C by len
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  group_by(supp) %>% 
    summarize(mean_len = mean(len, na.rm = T, .group="drop"))


## To Summarize
# When using pipes 
# Add the pipe operator at the end of each line of the piped operation except the last one
# Then Check the code after you've programmed your pipe
