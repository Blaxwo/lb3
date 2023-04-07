@echo off
chcp 65001

setlocal enableextensions enabledelayedexpansion

echo Перевірка наявності першого аргументу - каталогу для синхронізації
if "%1"=="" (
    echo Потрібно вказати каталог для синхронізації.
    pause
)
if not exist "%1" (
  echo Folder %1 not exist
  pause
)
echo Перевірка наявності другого аргументу - каталогу для синхронізації
if "%2"=="" (
    echo Потрібно вказати другий каталог для синхронізації.
    pause
)
if not exist "%2" (
  echo Folder %2 not exist
  pause
)

echo Задаємо параметри для robocopy

set source=%1
set destination=%2

set options=/e /xo /purge /copy:DAT /a /r:1 /w:1 /mt

rem Виконуємо синхронізацію
echo Синхронізація %source% з %destination% ...

robocopy %source% %destination% %options%

set source=%2
set destination=%1

set options=/e /xo /purge /copy:DAT /a /r:1 /w:1 /mt

rem Виконуємо синхронізацію
echo Синхронізація %source% з %destination% ...

robocopy %source% %destination% %options%

echo Перевірка наявності третього аргументу - каталогу для синхронізації
if "%3"=="" (
    echo Третій каталог не задано
    pause
)
if not exist "%3" (
  echo Folder %3 not exist
  pause
)
echo Задаємо параметри для Robocopy

set source=%2
set destination=%3

rem set options=/e /purge /dcopy:t /xf Thumbs.db /xf desktop.ini /r:1 /w:1
set options=/e /xo /purge /copy:DAT /a /r:1 /w:1 /mt

rem Виконуємо синхронізацію
echo Синхронізація %source% з %destination% ...

robocopy %source% %destination% %options%

set source=%3
set destination=%2

set options=/e /xo /purge /copy:DAT /a /r:1 /w:1 /mt

rem Виконуємо синхронізацію
echo Синхронізація %source% з %destination% ...

robocopy %source% %destination% %options%

echo Перевірка наявності четвертого аргументу - каталогу для синхронізації
if "%4"=="" (
    echo Четвертий каталог не задано
    pause
)
if not exist "%4" (
  echo Folder %4 not exist
  pause
)
echo Задаємо параметри для Robocopy

set source=%3
set destination=%4

rem set options=/e /purge /dcopy:t /xf Thumbs.db /xf desktop.ini /r:1 /w:1
set options=/e /xo /purge /copy:DAT /a /r:1 /w:1 /mt

rem Виконуємо синхронізацію
echo Синхронізація %source% з %destination% ...

robocopy %source% %destination% %options%

set source=%4
set destination=%3

set options=/e /xo /purge /copy:DAT /a /r:1 /w:1 /mt

REM Виконуємо синхронізацію
echo Синхронізація %source% з %destination% ...

robocopy %source% %destination% %options%

echo Формуємо код завершення
if errorlevel 16 (
    echo Помилка під час копіювання.
) else if errorlevel 8 (
    echo Деякі файли не були скопійовані.
) else if errorlevel 4 (
    echo Хочаб один файл не був скопійований.
) else if errorlevel 2 (
    echo Деякі файли не були знайдені.
) else if errorlevel 1 (
    echo Синхронізація була відмінена.
) else (
    echo Синхронізація завершена успішно.
)
endlocal
