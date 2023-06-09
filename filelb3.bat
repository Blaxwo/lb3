@echo off
chcp 65001

title lab3

echo Частина 1. 
echo Створення структури каталогів. 

mkdir "Лабораторні\Група ПЗ-22-3\Кучугурна Олександра Юріївна\Командна стрічка\Прихована папка"
mkdir "Лабораторні\Група ПЗ-22-3\Кучугурна Олександра Юріївна\Командна стрічка\Не прихована папка"

echo Вивели каталог. 

tree /f "Лабораторні"


echo За допомогою команди ATTRIB зробила каталог «Прихована папка» прихованим.

attrib +h "Лабораторні\Група ПЗ-22-3\Кучугурна Олександра Юріївна\Командна стрічка\Прихована папка"

echo Вивід на екран допомоги з використання команди xcopy

xcopy /?

echo Спрямування виводу з консолі до файла copyhelp.txt, який знаходиться в каталозі «Не прихована папка».

xcopy /? > "Лабораторні\Група ПЗ-22-3\Кучугурна Олександра Юріївна\Командна стрічка\Не прихована папка\copyhelp.txt"

echo Копіювання файлу copyhelp.txt до каталога «Прихована папка», при цьому перейменувавши його в copied_copyhelp.txt.

echo f | xcopy "Лабораторні\Група ПЗ-22-3\Кучугурна Олександра Юріївна\Командна стрічка\Не прихована папка"\copyhelp.txt /y "Лабораторні\Група ПЗ-22-3\Кучугурна Олександра Юріївна\Командна стрічка\Прихована папка"\copied_copyhelp.txt

echo Створення batch файлу, який виконує ті ж самі операції, але в каталозі Лабораторні\Група ПЗ-22-3\Кучугурна Олександра Юріївна\batch.

mkdir "Лабораторні\Група ПЗ-22-3\Кучугурна Олександра Юріївна\batch\Прихована папка"
mkdir "Лабораторні\Група ПЗ-22-3\Кучугурна Олександра Юріївна\batch\Не прихована папка"

echo Вивели каталог. 

tree /f "Лабораторні"

echo За допомогою команди ATTRIB зробила каталог «Прихована папка» прихованим.

attrib +h "Лабораторні\Група ПЗ-22-3\Кучугурна Олександра Юріївна\batch\Прихована папка"

echo Вивід на екран допомоги з використання команди xcopy

xcopy /?

echo Спрямування виводу з консолі до файла copyhelp.txt, який знаходиться в каталозі «Не прихована папка».

xcopy /? > "Лабораторні\Група ПЗ-22-3\Кучугурна Олександра Юріївна\batch\Не прихована папка\copyhelp.txt"

echo Копіювання файлу copyhelp.txt до каталога «Прихована папка», при цьому перейменувавши його в copied_copyhelp.txt.

echo f | xcopy "Лабораторні\Група ПЗ-22-3\Кучугурна Олександра Юріївна\batch\Не прихована папка"\copyhelp.txt /y "Лабораторні\Група ПЗ-22-3\Кучугурна Олександра Юріївна\batch\Прихована папка"\copied_copyhelp.txt

tree /f "Лабораторні"

echo Відкриваємо окремий batch-файл, який відкриватиме файл зі звітом в новому вікні і очікуватиме на закриття вікна.

report_lab3.bat

echo Частина2

part2_lb3.bat E:\fortest E:\fortest2 E:\fortest3

echo Переміщення завершено успішно.

echo Показ лабораторної роботи завершено. 

pause
