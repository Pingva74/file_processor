#!/bin/bash
cd /you/folder # заменить на вашу папку
# Скрипт для массового рекурсивного переименования
# файлов в текущем каталоге и его подкаталогах

shopt -s nullglob
for NAME in *
do
        TRS=`echo $NAME |tr : _`
        TRS=${TRS//А/A};
        TRS=${TRS//а/a};
        TRS=${TRS//Б/B};
        TRS=${TRS//б/b};
        TRS=${TRS//в/v};
        TRS=${TRS//В/V};
        TRS=${TRS//г/g};
        TRS=${TRS//Г/G};
        TRS=${TRS//д/d};
        TRS=${TRS//Д/D};
        TRS=${TRS//е/e};
        TRS=${TRS//ё/yo};
        TRS=${TRS//Ё/Yo};
        TRS=${TRS//ж/zh};
        TRS=${TRS//Ж/Zh};
        TRS=${TRS//з/z};
        TRS=${TRS//З/Z};
        TRS=${TRS//и/i};
        TRS=${TRS//И/I};
        TRS=${TRS//й/j};
        TRS=${TRS//Й/J};
        TRS=${TRS//к/k};
        TRS=${TRS//К/K};
        TRS=${TRS//л/l};
        TRS=${TRS//Л/L};
        TRS=${TRS//м/m};
        TRS=${TRS//М/M};
        TRS=${TRS//н/n};
        TRS=${TRS//Н/N};
        TRS=${TRS//о/o};
        TRS=${TRS//О/O};
        TRS=${TRS//п/p};
        TRS=${TRS//П/P};
        TRS=${TRS//р/r};
        TRS=${TRS//Р/R};
        TRS=${TRS//с/s};
        TRS=${TRS//С/S};
        TRS=${TRS//т/t};
        TRS=${TRS//Т/T};
        TRS=${TRS//у/u};
        TRS=${TRS//У/U};
        TRS=${TRS//ф/f};
        TRS=${TRS//Ф/F};
        TRS=${TRS//х/h};
        TRS=${TRS//Х/H};
        TRS=${TRS//ц/c};
        TRS=${TRS//Ц/C};
        TRS=${TRS//ч/ch};
        TRS=${TRS//Ч/Ch};
        TRS=${TRS//ш/sh};
        TRS=${TRS//Ш/Sh};
        TRS=${TRS//щ/sch};
        TRS=${TRS//Щ/Sch};
        TRS=${TRS//э/e};
        TRS=${TRS//Э/E};
        TRS=${TRS//ю/ju};
        TRS=${TRS//Ю/Ju};
        TRS=${TRS//я/ya};
        TRS=${TRS//Я/Ya};
        TRS=${TRS//ъ/\`};
        TRS=${TRS//Ъ/\`};
        TRS=${TRS//ь/\'};
        TRS=${TRS//Ь/\'};
        TRS=${TRS//ы/y};
        TRS=${TRS//Ы/Y};
        TRS=${TRS// / };
        TRS=${TRS//_-_/-};
                if [[ `file -b "$NAME"` == directory ]]; then
                        mv -v "$NAME" "$TRS"
                        cd "$TRS"
                        "$0"
                        cd ..
                else
                        mv -v "$NAME" "$TRS"
                fi
done
