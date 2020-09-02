run :
	python3 server.py --name --boom

dev : 
	nohup python3 server.py --name --boom &
ps: 
	ps aux | grep python
kill:
	kill -9 7840