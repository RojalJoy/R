#1.1.Create a vector named sales_data with the following sales figures (in thousands of dollars) for the last 12 months:[45, 60, 35, 75, 80, 62, 48, 53, 69, 72, 40, 55].
sales_data=c(45,60,35,75,80,62,48,53,69,72,40,55)

#2.Calculate the total annual sales by summing the elements in the sales_data vector.
total=sum(sales_data)
print(total)

#3.Compute the monthly average sales by dividing the total annual sales by 12 (the number of months).
monthly_avg=total/12
print(monthly_avg)

#4.Determine the month with the highest sales and the corresponding sales figure. Also, find the month with the lowest sales and its sales figure.
high_Sale=max(sales_data)
print(high_Sale)
match(high_Sale,sales_data)#for month

low_sale=min(sales_data)
print(low_sale)
match(low_sale,sales_data)

#5.Increase the sales figure for the third month (March) by 10%
inc=sales_data[3]+sales_data[3]*0.1
print(inc)

#6.Sort the sales_data vector in ascending order and create a new vector named sorted_sales.
sorted_sales=sort(sales_data)
print(sorted_sales)

#7.Sort the sales_data vector in descending order and create a new vector named reverse_sorted_sales.
reverse_sorted_sales=sort(sales_data,decreasing=TRUE)
print(reverse_sorted_sales)

#8.Calculate the median sales value from the sorted_sales vector.
medianValue<-median(sorted_sales)
print(medianValue)

