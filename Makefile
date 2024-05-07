CC = gcc

main.out: main
	./main|tee main.out

main: main.o get_student_id.o
	$(CC) main.o get_student_id.o -o $@

main.o: main.c
	$(CC) -c -g main.c -o $@

get_student_id.o: get_student_id.c
	$(CC) -c -g get_student_id.c -o $@

