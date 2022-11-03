---
## Front matter
title: "Лаборная работа №5 Создание и процесс обработки программ на языке ассемблера NASM "
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
lof: true # List of figures
lot: true # List of tables
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
lofTitle: "Список иллюстраций"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---
# Цель работы
Познакомиться с ассемблером, научиться компилировать файлы

# Задание

Сделать программу на асеемблере, а также скомпилировать её 

# Выполнение лабораторной работы

1. С помощью команды touch создадим файл hello.asm и откроем его в текстовом редакторе

![hello.asm](image/lab5.1.png){ #fig:001 width=70% }

2. Запишем в файл программу 

![hello world](image/lab5.2.png){ #fig:002 width=70% }

3. С помощью команды nasm -f elf hello.asm переделаем текст в объектный код

![hello.0](image/lab5.3.png){ #fig:003 width=70% }

4. Далее создадим файл obj.o 

![obj.o](image/lab5.4.png){ #fig:004 width=70% }

5. Передадим полученный файл компоновщику 

![объектный файл hello](image/lab5.5.png){ #fig:005 width=70% }

6. Создадим файл main из файла obj

![объектный файл main](image/lab5.6.png){ #fig:006 width=70% }

7. Запустим файл hello 

![вывод hello world](image/lab5.7.png){ #fig:007 width=70% }

# Выполнение самостоятельной работы 

1. Скопируем файл hello.asm и переименнуем с помощью команды cp

2. Создадим объектный файл 

![Объектный файл lab05](image/lab5.8.png){ #fig:008 width=70% }

3. Создадим исполняемый файл и запустим его

![Вывод файла lab05](image/lab5.9.png){ #fig:009 width=70% }

4. Отправим файлы на github

# Вывод

В этой лабораторной работе мы познакомились с созданием простейших команд на языке ассемблера NASM, а также создали объектный и исполняемый файл.

