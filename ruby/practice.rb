+test_list = [1,2,3,4,5,6,7,8,9,10]
 +
 +def numbers_condition(test_list)
 +	test_list.drop_while {|list| list <= 1}
 +end
 +p numbers_condition(test_list)
