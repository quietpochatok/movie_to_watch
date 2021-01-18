# Программа "Фильм для просмотра"

## Описание
При запуске программы программа предлагает выбрать источник для составления списка режиссеров.

Реализовано 2 варианта источника для списка выбора. 

Первый локальный находится в папке `/data/*.txt`

Второй - парсит список из [страницы](https://ru.wikipedia.org/wiki/250_лучших_фильмов_по_версии_IMDb) википедии.

После выбора источника показывается нумерованный список режиссеров пользователю на выбор.

Пользователю нужно выбрать режиссера из списка.

После выбранного режиссера, программа предложит фильм этого режиссера, если фильмов больше чем один, то выбирается случайный из них.

Программа разработана с помощью языка Ruby (версия 2.7.0)

Парсинг производится с помощью gem'a [Nokogiri](https://nokogiri.org)

## Настройки в программе
Локальные файлы находятся в `/data/*.txt`. 

Пример `/data/01.txt`
```
"Побег из Шоушенка"
Фрэнк Дарабонт
1994
```

Адрес сайта для парсинга задается в `parser_site.rb` в методе `parsing_from_site`. 

Нужно учесть, тот факт, что при изменении адреса сайта в методе, обязательно сменяется имена `class` и `id` тех элементов, которые вы и хотите парсить.


## Запуск программы
Необходимо скачать либо клонировать репозиторий с игрой

Перейти в терминале в папку с файлами программы.

Установить гемы
```
bundle install
```
Затем запустить в терминале с помощью интерпретатора ruby файл <em>main.rb</em>
```
bundle exec ruby main.rb
```
### Приятного просмотра!