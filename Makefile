#Location de ton systemC compiler
SYSTEMC=/home/pookie/Documents/code/SystemC/sysclib
#Type de linux
TYPE=linux64
#Nom de ton fichier
NOMFICHIER=main

LDFLAGS=-L. -L$(SYSTEMC)/lib-$(TYPE)
ENDLIBS=-lsystemc -lm -lpthread
CXXFLAGS=-Wall -g -std=c++11
INCLUDES=-I. -I$(SYSTEMC)/include

all:
	g++ $(CXXFLAGS) $(INCLUDES) $(LDFLAGS) -o sim $(NOMFICHIER).cpp $(ENDLIBS)

#tete de la commande attendu :
 # g++ -std=c++11 -I. -I/home/pookie/Documents/code/SystemC/sysclib/include -L. -L/home/pookie/Documents/code/SystemC/sysclib/lib-linux64 -o sim main.cpp -lsystemc -lm
