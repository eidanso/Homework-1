# Homework-1
Financial Computation & Simulation 
Spring 2022
HW # 1: Introduction to R

1. Using the above equation, write a script in R to find the value of a one year European call and put option on a stock currently trading for $50 with a strike price of $50.  Assume the risk free rate is 5% and the underlying stock has a volatility of 40%.
2. Write a function that outputs c and p given inputs S0, K, r, sigma, and T (you may want to output c and p as elements of a vector).  Call the function and print the results in the console in a “readable” manner.  For example, your output in the command window should look something like:
The price of the call option is $5.25.
The price of the put option is $3.22.

3. Using your above function, compute the value of the options for various strike prices from K = 40 to K = 60 in $0.10 increments.  Save your results in a data.frame.

4. Rather than calling your function as you did above, call the function recursively in a loop.  Make sure to save the results of each iteration and use a loop (either a while or a for loop).  Save the results in a data frame similar to what you did above.

5. Repeat question three using the apply() function in R.

6. Using your results from the previous steps, check to ensure the following relation between the put and call options holds:
	c + Ke-rT = p + S0 
This is known as the put-call parity.  
