# Calculating Earnings

## Question

Hi,

Suppose an individual is taxed 30% if earnings for a given week are >= $2,000. If earnings land < $2,000 for the week, the individual is taxed at a lower rate of 15%.

Write a function using Python to calculate both the pre-tax and post-tax earnings for a given individual, with the ability to feed in the hourly wage and the weekly hours as inputs.

For example, if an individual earns $55/hour and works for 40 hours, the function should return: 

- Pre-tax earnings were 55*40 = $2,200 for the week.

- Post-tax earnings were $2,200*.7 (since we fall in higher tax bracket here) = $1,540 for the week.

*Source:* [interviewqs](interviewqs.com)


## Solution

This solution using Python 3. To use the solution run these command in terminal from this directory.

```
$ python solution.py -h
```
```
usage: solution.py [-h] earning work_hour

positional arguments:
  earning     Earning per hour in USD
  work_hour   Hours of work in a week

optional arguments:
  -h, --help  show this help message and exit
```

For example, earning per hour is $55 and hours of work in a week is 40 hours:

```
$ python solution.py 55 40
```
```
Pre-tax earnings for the week  : $2,200.00
Post-tax earnings for the week : $1,540.00
```

### Explanation

There are two inputs, earning per hour and hours of work in a week.

```
earning_per_hour = 55      # earnings is $55 per hour
work_hour_per_week = 40    # hours of work in a week is 40 hours per week
```

Calculate the pre-tax earning for the week by multiplying earning per hour and hours of work in a week.

```
pre_tax_earning = earning_per_hour * work_hour_per_week
```

Use conditional `if` to define the tax rate. If pre-tax earning is greater than or equal to $2000 then tax rate is 30%. If pre-tax earning is less than $2000 then tax rate is 15%.

```
if pre_tax_earning >= 2000:
    tax_rate = 0.3
else:
    tax_rate = 0.15
```

Calculate post-tax earning by substracting pre-tax earning by tax that is pre-tax earning multiplied by tax rate.

```
post_tax_earning = pre_tax_earning * (1 - tax_rate)
```

Print pre-tax and post-tax earnings as the output. Let's use *f-string* to help us format the earnings using `,.2f`. This format will split thousands by comma and decimal by point with 2 digits after decimal.

```
print(f'Pre-tax earnings for the week  : ${pre_tax_earning:,.2f}')
print(f'Post-tax earnings for the week : ${post_tax_earning:,.2f}')
```

You could also put them in a function called `calculate_earnings` with `earning_per_hour` and `work_hour_per_week` as inputs then `pre_tax_earning` and `post_tax_earning` as outputs. Then put `print` function to show the outputs. See example in `solution.py`.

In `solution.py`, we also use [argparse](https://docs.python.org/3/library/argparse.html) to get the inputs from terminal command.
