make
gcc -c main.c
gcc main.o obj/*.o
./a.out
rm main.o
rm a.out
