student(1001, name([allteron, alice]), grades([20,75,100,85])).
student(1002, name([boberson, bob]), grades([50,64,73,66])).
student(1003, name([charlston, charlie]), grades([65,75,85,100])).
student(1004, name([advedson, dave]), grades([10,92,34,87])).
student(1005, name([ellenovitch, ellen]), grades([72,87,82,70])).

student(1001, name(X),_).
student(1001, name(Last, First), _).
student(1001,_,Grades).
student(1001,_,grades(X)).



%how did alice do in assigment1
student(_,name([_,alice]),grades([A1|_])).

%how did alice do in assignment2
student(_,name([_,alice]),grades([_,A2|_])).

%how did student 1002 do on the test?
student(1002,_,grades([_,_,_,Test])).
student(1002,_,grades(L)), last(L,Test).

%who got 100 on the test
student(_,name(Name), grades(L)), last(L,Test), Test==100.

%Did anyone get 100 on anything
student(_,name(Name),grades(L)), member(100,L).

%what is each students average grade
student(_,name(Name),grades([A1,A2,A3,Test])), Average is (A1 + A2 +A3+ Test)/4.