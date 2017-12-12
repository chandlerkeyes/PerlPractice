#PerlProject2
use strict;
use warnings;
use feature "say";

my $TAX = 0.3;
say "Enter how much you make in an hour";
my $hourly_pay = <STDIN>;

say "How many hours do you work per week?";
my $hours_per_week = <STDIN>;

#calculating weekly salary
my $biweekly_salary = $hourly_pay * $hours_per_week * 2;

#calculating yearly salary
my $yearly_salary = $hourly_pay * $hours_per_week * 4 * 12;

#taxes removed from yearly salary
my $taxes_removed = $TAX * $yearly_salary;

#taxes removed from weekly salary;
my $taxed_weekly = $TAX * $biweekly_salary;

#taxed salaries
my $new_yearly_salary = $yearly_salary - $taxes_removed;
my $new_biweekly_salary = $biweekly_salary - $taxed_weekly;

say "You make \$", $yearly_salary, " per year.";
say "\$", $taxes_removed, " will be removed from your annual salary, leaving you with \$", $new_yearly_salary, " per year.";
say "Because you make \$", $biweekly_salary, " biweekly, removing taxes will leave you with \$", $new_biweekly_salary, " per week.";




