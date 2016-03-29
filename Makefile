SRC = okapi_bm25.c
OUT = okapi_bm25.sqlext
#INCLUDE = -I./include/twitter-app
#INCLUDE = -I./include/thor

$(OUT): $(SRC)
	gcc -Wall -Werror -fPIC -shared $(INCLUDE) -o $(OUT) $(SRC)

clean:
	rm -f $(OUT)
