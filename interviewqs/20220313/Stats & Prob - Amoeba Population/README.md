# Best Selling Products

## Question

Hi,

A population of amoebas starts with 1. After a single period, assume the amoeba can divide into 1, 2, 3, or 0 (it can die) with equal probability. What is the probability that the entire population dies out eventually?


## Solution

![Probability Tree](./prob_tree.jpeg)

### Explanation

We want to get the probability that the entire population of amoeba dies out eventually. Look at the probability tree above. There are four chances that an amoeba will divide after a single period.

Let's called ![](https://latex.codecogs.com/svg.latex?X) as event that the entire population of amoeba dies and ![](https://latex.codecogs.com/svg.latex?P(X)=p,where&space;0\leq&space;p\leq&space;1) is the probability of it. If all of these events are independent then any generation have the same chance to divide as the first.

We have 25% chance of amoeba dies after a single period. This added ![](https://latex.codecogs.com/svg.latex?0.25) on ![](https://latex.codecogs.com/svg.latex?p).

Another 25% chance of amoeba is not divided (still single). The probability of the entire next generation dies is ![](https://latex.codecogs.com/svg.latex?0.25p).

Another 25% chance of amoeba divided into two. Because now we have two amoebas, the entire next generation dies if both amoebas dies. The probability of the entire next generation dies is ![](https://latex.codecogs.com/svg.latex?0.25p^2). Using the same logic, if amoeba divided into three have the probability of the entire next generation dies ![](https://latex.codecogs.com/svg.latex?0.25p^3).

Let's sum all chances to get ![](https://latex.codecogs.com/svg.latex?p).

![](https://latex.codecogs.com/svg.latex?p=0.25+0.25p+0.25p^2+0.25p^3)

Normalize above equation, we get

![](https://latex.codecogs.com/svg.latex?p^3+p^2-3p+1=0)

Solving above equation, we get

![](https://latex.codecogs.com/svg.latex?p=1,p=-2.414,or&space;p=0.414)

Because of ![](https://latex.codecogs.com/svg.latex?0\leq&space;p\leq&space;1) and we know that there is a probability that amoebas don't die, then ![](https://latex.codecogs.com/svg.latex?p<0). Thus we get ![](https://latex.codecogs.com/svg.latex?p=0.414).

So the probability of entire population of amoeba dies out eventually is ![](https://latex.codecogs.com/svg.latex?0.414).
