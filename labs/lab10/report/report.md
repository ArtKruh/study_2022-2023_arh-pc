---
## Front matter
title: "Лабораторная работа №10. Понятие
подпрограммы. Отладчик GDB."
subtitle: "НММ-бд-02-22"
author: "Крухмалев Артём Владиславович"


## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: false
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Научиться работать с отладчиком.

# Задание

НС помощью отладчика исправить ошибку в коде.


# Выполнение лабораторной работы

1. С помощью терминала создадим подкаталог, создадим файл lab9-1.asm

![Новый каталог](image/lab10-1.png){ #fig:001 width=70% }

2. Изучим и запишем в него код из листинга, откомпилируем и запустим файл.

![Листинг 1](image/lab10-3.png){ #fig:002 width=70% }

3. Добавим в подпрограмму ещё одну подпрограмму

![Ввод 2-ой подпрограммы](image/lab10-4.png){ #fig:003 width=70% }

4. Создадим новый файл, запишим в него предложенный код, запустим отладчик и в нем запустим программу

![Запуск GDB](image/lab10-5.png){ #fig:004 width=70% }

![Вывод из программы в GDB](image/lab10-6.png){ #fig:005 width=70% }

5. Установим брейкпоинт.
    
![Брейкпоинт](image/lab10-7.png){ #fig:006 width=70% }

6. Рассмотрим отличия между синтаксисами. Как видно на скриншоте, ячейки памяти находятся с разных сторон от значений в них и в АТТ добавляются символы $ и %.

![Различие синтаксисов](image/lab10-8.png){ #fig:007 width=70% }

7. Выведем режимы псевдографики, по началу layout asm будет пустой.

![Псевдографика](image/lab10-9.png){ #fig:008 width=70% }

8. Добавим точки остановки

![Точки остановки](image/lab10-10.png){ #fig:009 width=70% }

9. С помощью команды i r посмотрим содержимое регистров, проделав операцию 5 раз заметим, что значения регистров не меняются

![Значение регистров](image/lab10-11.png){ #fig:010 width=70% }

10. Теперь поменяем значение в 1 регистре на другое.

![Изменение значения с помощью отладчика](image/lab10-12.png){ #fig:011 width=70% }

11. Воспользумся другой функцией (set) и поменяем значение. 

![Set](image/lab10-13.png){ #fig:012 width=70% }

12. Запустим программу из 9 лабораторной, установим брейкпоинт и изучим, что лежит в стэке. Шаг равен 4, потому что в 1 ячейке стэка 4 байта информации. 

![Стэк](image/lab10-15.png){ #fig:013 width=70% }


# Самостоятельная работа

1. Скопируем файл и изменим код

![Самостоятельная работа номер 1](image/lab10-18.png){ #fig:014 width=70% }

2. Предложенный код выводит ошибку, с помощью gdb и функций X/NFU посмотрим содержание регистра умножения, ещё надо поставить на нем брэикпоинт, заметим, что в нем изменяется eax, а суммируем мы с ebx и выводим значение в ebx, поэтому заменим в суммирование ebx на eax и получим правильный ответ 20.

![Первоначальный вывод](image/lab10-20.png){ #fig:015 width=70% }

![Просмотр регистров](image/lab10-19.png){ #fig:017 width=70% }

![Исправленный код](image/lab10-21.png){ #fig:016 width=70% }

# Выводы

В данной работе мы познакомились с отладчиком и с помощью него научились изменять программу.
