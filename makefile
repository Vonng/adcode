setup:
	bin/adcode setup
	bin/fences setup
createdb:
	psql postgres -c 'CREATE DATABASE adcode;'
create:
	bin/adcode create
	bin/fences create
index:
	bin/adcode index
	bin/fences index
order:
	bin/adcode order
	bin/fences order
drop:
	bin/adcode drop
	bin/fences drop
trunc:
	bin/adcode trunc
	bin/fences trunc
clean:
	bin/adcode clean
	bin/fences clean
dump:
	bin/adcode dump
	bin/fences dump
load:
	bin/adcode load
	bin/fences load
backup:
	bin/adcode backup
	bin/fences backup
restore:
	bin/adcode restore
	bin/fences restore
check:
	bin/adcode check
	bin/fences check
reload:
	bin/adcode reload
	bin/fences reload
reset:
	bin/adcode reset
	bin/fences reset

.PHONY: setup,createdb,create,index,order,trunc,clean,dump,load,backup,restore,check,reload,reset
