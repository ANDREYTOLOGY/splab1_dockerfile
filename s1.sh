#!/bin/sh
echo "Скрипт установки прав доступа по образцу предыдущего файла"
echo "Данный скрипт устанавливает права доступа от 1 файла к 2 файлу"
echo "Разработчик: Чернышов Андрей Сергеевич гр.717-1"
while :; do
read -p "Запусть скрипт? (y/n)" yn
case $yn in
        [Yy]* ) while :; do
                        echo "Введите путь до первого файла:"
                        read file1
                        if [ -f $file1 ]; then
                                break
                        else
                                echo "Путь указан неверно"
                        fi
                done
                while :; do
                        echo "Введите путь до второго файла:"
                        read file2
                        if [ -f $file2 ]; then
                                break
                        else
                                echo "Путь указан неверно"
                        fi
                done
                chmod --reference=$file1 $file2
                echo "Права для второго файла были изменены";;
        [Nn]* ) exit;;
        * ) echo "Пожалуйста нажмите y(Y) или n(N)";;
esac
done

echo "Разработчик: Чернышов Андрей Сергеевич гр.717-1"
while :; do
read -p "Запусть скрипт? (y/n)" yn
case $yn in
	[Yy]* ) while :; do
			echo "Введите путь до первого файла:"
			read file1
			if [ -f $file1 ]; then	
				break
			else
				echo "Путь указан неверно"
			fi
		done
		while :; do
			echo "Введите путь до второго файла:"
			read file2
			if [ -f $file2 ]; then
				break
			else
				echo "Путь указан неверно"
			fi
		done
		chmod --reference=$file1 $file2
		echo "Права для второго файла были изменены";;
	[Nn]* ) exit;;
	* ) echo "Пожалуйста нажмите y(Y) или n(N)";;
esac
done


