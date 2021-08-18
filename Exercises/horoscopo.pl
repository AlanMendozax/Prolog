horoscopo(acuario,21,1,21,2).
horoscopo(aries,21,3,21,4).
horoscopo(cancer,21,6,21,7).
horoscopo(capricornio,21,12,21,1).
horoscopo(escorpio,21,10,21,11).
horoscopo(geminis,21,5,21,6).
horoscopo(leo,21,7,21,8).
horoscopo(libra,21,9,21,10).
horoscopo(piscis,21,2,21,3).
horoscopo(sagitario,21,11,21,12).
horoscopo(tauro,21,4,21,5).
horoscopo(virgo,21,8,21,9).

mes(1,31,enero).
mes(2,28,febrero).
mes(3,31,marzo).
mes(4,30,abril).
mes(5,31,mayo).
mes(6,30,junio).
mes(7,31,julio).
mes(8,31,agosto).
mes(9,30,septiembre).
mes(10,31,octubre).
mes(11,30,noviembre).
mes(12,31,diciembre).

signo(Dia,Mes,Signo) :- horoscopo(Signo,D1,M1,D2,M2), ( (Mes=M1,Dia>=D1,mes(M1,D,_),Dia=<D); (Mes=M2, Dia=<D2, Dia>0) ).

