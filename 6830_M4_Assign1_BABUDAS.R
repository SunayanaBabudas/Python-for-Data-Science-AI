df = read.csv(file = "/Users/sunayanababudas/Desktop/Data_with_column_names-1.csv", header = TRUE, sep = ",")
df

# Incrementing Floor by 1 
for (i in c(1:length(df$Floor))){
  df$Floor[i] = (df$Floor[i]+1)
  print(i)
}
df$Floor

# Changing the Area 
for (i in c(1:length(df$Area)))
{
  if(df$Area[i]>800) {
    df$Area[i]=(df$Area[i]+1)
    print(i)
  }
  else if(df$Area[i]<800) {
    df$Area[i]=(df$Area[i]-1)
    print(i)
  }
}
df$Area

df

# Writing Updated Df to csv file
write.csv(df, file = "/Users/sunayanababudas/Desktop/Data_with_column_names_updated.csv")