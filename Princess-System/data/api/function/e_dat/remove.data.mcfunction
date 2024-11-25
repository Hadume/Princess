#> api:e_dat/remove.data
# 要らないデータを消す
# @within function
#   api:e_dat/release
#   api:e_dat/id/gc_loop

##
	$data remove storage dat:$(ID) Data
