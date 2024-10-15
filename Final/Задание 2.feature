﻿#language: ru

@tree
@Отчеты
Функционал: проверка формирования отчета "Остатки"

Как Тестировщик я хочу
проверить проверка формирования отчета "Остатки"
чтобы подсчеты и сыерки по творам осуществялись корректно  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка формирования отчета "Остатки"

	И В командном интерфейсе я выбираю 'Продажи' 'Остатки товаров'
	И я нажимаю на кнопку с именем 'ФормаЗагрузитьВариант'
	Тогда открылось окно 'Выбор варианта отчета'
	И в таблице "СписокНастроек" я перехожу к строке:
		| 'Представление' |
		| 'Основной'      |
	И я нажимаю на кнопку с именем 'Загрузить'
	Тогда открылось окно 'Остатки товаров'
	И я устанавливаю флаг с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Использование'
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И я жду, что табличный документ "Результат" заполнится данными в течение 10 секунд
	Дано табличный документ "Результат" равен макету "Остатки товаров" по шаблону
	И я закрываю все окна клиентского приложения