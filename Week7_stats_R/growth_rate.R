#1. input variables
years = 10 #length of time
n = 100 #initial population size
rate_birth = 200 #birth rate
rate_death = 176 #death rate
K = 1000 #environmental carrying capacity

#2. calculate population size as a function of input variables
rate_growth = (rate_birth - rate_death)/100 #population growth rate of Streptococcus mutans (Beckers and Hoeven 1982)
N = numeric(years + 1) #vector of population sizes at year=n
N[1] = n #initial population set to year one
for(t in 1:years) {
  N[t+1]={N[t] + rate_growth*N[t]*(1 - N[t]/K)}}

#3. plot population size over time
plot(0:years,N,xlab="time (years)", ylab="population size (Nt)", type="l")