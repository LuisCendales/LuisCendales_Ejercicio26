all: euler.dat

%.dat: ejercicio.x
    ./ejercicio.x

ejercicio.x: ejercicio.cpp
    c++ ejercicio.cpp -o ejercicio.x

datos.dat: ejercicio.x
    ejercicio.x > datos.dat

graf.png: datos.dat
    python ejercicio.py
