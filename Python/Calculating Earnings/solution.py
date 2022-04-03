import argparse

parser = argparse.ArgumentParser()
parser.add_argument('earning', type=float, help='Earning per hour in USD')
parser.add_argument('work_hour', type=float, help='Hours of work in a week')


def calculate_earnings(earning_per_hour, work_hour_per_week):
    pre_tax_earning = earning_per_hour * work_hour_per_week

    if pre_tax_earning >= 2000:
        tax_rate = 0.3
    else:
        tax_rate = 0.15
    
    post_tax_earning = pre_tax_earning * (1 - tax_rate)

    return pre_tax_earning, post_tax_earning


if __name__ == '__main__':
    args = parser.parse_args()

    pre_tax_earning, post_tax_earning = calculate_earnings(args.earning, args.work_hour)

    print(f'Pre-tax earnings for the week  : ${pre_tax_earning:,.2f}')
    print(f'Post-tax earnings for the week : ${post_tax_earning:,.2f}')
