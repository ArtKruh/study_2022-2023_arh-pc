---
## Front matter
title: "Лабораторная работа №11. Работа с
файлами средствами Nasm."
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

Научиться работать с программами для написания файлов.

# Задание

Написать программу для изменения файла.


# Выполнение лабораторной работы

1. С помощью терминала создадим подкаталог, создадим файл lab11-1.asm, введем в него код и проверим его работу.

![Новый каталог](image/lab11-1.png){ #fig:001 width=70% }

2. С помощью команды chmod изменим права доступа к исполняемому файлу
lab11-1, запретив его выполнение. С помощью данной команды мы ограничили доступ к данному файлу, поэтому вылазит предупреждение.

![Предупреждение](image/lab11-2.png){ #fig:002 width=70% }

3. Изменим права доступа к файлу lab11-1.asm с
исходным текстом программы, добавив права на исполнение. Поскольку до этого мы запретили выполнение, но можем исполнять исходный файл. Соответственно после компиляции файл запускается.

![Изменение прав на исполнение](image/lab11-3.png){ #fig:003 width=70% }

4. У меня первый вариант. Введем все нужные ограничения. 

![Ввод ограничений](image/lab11-4.png){ #fig:004 width=70% }

# Самостоятельная работа

1. Напишем программу, проверим результат.

![Программа](image/lab11-6.png){ #fig:005 width=70% }

![Вывод](image/lab11-5.png){ #fig:006 width=70% }

# Выводы

В данной работе мы познакомились с ограничением для файлов и с программами по изменению файлов.
