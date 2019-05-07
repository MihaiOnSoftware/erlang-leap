-module(leap).

-export([leap_year/1, test_version/0]).


leap_year(Year) -> divisible_by_four(Year) andalso centuries_divisible_by_four_hundred(Year).

divisible_by_four(Year) -> Year rem 4 =:= 0.

centuries_divisible_by_four_hundred(Year) -> not a_century(Year) orelse divisible_by_four_hundred(Year).

a_century(Year) -> Year rem 100 =:= 0.

divisible_by_four_hundred(Year) -> Year rem 400 =:= 0.

test_version() -> 3.
