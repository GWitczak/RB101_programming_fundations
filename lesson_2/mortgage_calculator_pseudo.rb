# COLLECT:
# loan amount - kwota pozyczki
# APR - roczna stopa procentowa
# loan duration - czas trwania pozyczki (lata)

# CALCULATE:
# monthly interest rate? miesieczna stopa procentowa?
# loan duration motnhs? czas trwania pozyczki miesiace?

# m = p * (j / (1 - (1 + j)**(-n)))
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months

=begin 
metoda do sprawdzania czy liczba jest integer i dodatnia
metoda dodajaca '=>' na poczatku kazdego zapytania

przywitaj sie
Jaka jest kwota pozyczki?
Sprawdz czy podano dobra liczbe (dodatnia, integer)
Jesli nie wyswietl wiadomosc i zapytaj o kwote pozyczki jeszcze raz
zapisz do zmiennej 'p'

Jaka jest roczna stopa procentowa? Podaj w liczbe w %! (np 5 = 5%)
Sprawdz czy prawidlowa liczba (dodatnia, od 0-100, float), 
jesli nie wyswietl informacje o bledzie i zapytaj ponownie
Podziel ja przez 100 aby uzyskac % 
zapisz do zmiennej

Podaj czas trwania pozyczki w latach
Sprawdz czy podano dobra liczbe (musi byc dodatnia, integer)
jesli nie wyswietl informacje o bledzie, zapytaj ponownie
zapisz do zmiennej

Oblicz miesieczna stope procentowa (roczna kwota / 12)
Oblicz czas trwania pozyczki w miesiacach (czas trwania / 12)

podstaw dane do wzoru
Zwroc dane dla uzytkownika: Kwote pozyczki
                            Roczna i miesieczna stope procentową
                            czas trwania pozyczki w latach i miesiacach
                            wysokosc mmiesiecznej raty
                            calkowita sume do splacenia

Zapytaj czy uzytkownik chce ponownie obliczyc
jesli tak zapetl do poczatku jak nie wystwietl wiadomosc "do widzenia" i zakoncz program.





