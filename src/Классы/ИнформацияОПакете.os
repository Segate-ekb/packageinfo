#Использовать "../internal"

Перем ОписаниеПакета; // Контейнер информации о пакете

#Область ПрограммныйИнтерфейс

// Функция - Возвращает включаемые в пакет файлы
//
// Возвращаемое значение:
//   Массив - ВключитьФайл
//
Функция ВключаемыеФайлы() Экспорт
	Возврат ОписаниеПакета.ВключаемыеФайлы();
КонецФункции

// Функция - Возвращает исполняемые файлы пакета
//
// Возвращаемое значение:
//   ТаблицаЗначений - Таблица исполняемых файлов
//		Путь 		  - Строка - Путь до файла
// 		ИмяПриложения - Строка - Имя приложения
//
Функция ИсполняемыеФайлы() Экспорт
	Возврат ОписаниеПакета.ИсполняемыеФайлы();
КонецФункции

// Функция - Возвращает модули пакета
//
// Возвращаемое значение:
//   ТаблицаЗначений - Таблица модулей пакета
//		Идентификатор - Строка 					 - Путь до файла
// 		Файл		  - Строка 					 - ПутьКфайлу
// 		Тип			  - Перечисление.ТипыМодулей - Модуль
//
Функция Модули() Экспорт
	Возврат ОписаниеПакета.Модули();
КонецФункции

// Функция - Возвращает все классы и модули пакета
//
// Возвращаемое значение:
//   ТаблицаЗначений - Таблица модулей пакета
//		Идентификатор - Строка 					 - Путь до файла
// 		Файл		  - Строка 					 - ПутьКфайлу
// 		Тип			  - Перечисление.ТипыМодулей - Модуль или класс
//
Функция ВсеМодулиПакета() Экспорт
	Возврат ОписаниеПакета.ВсеМодулиПакета();
КонецФункции

// Функция - Возвращает классы пакета
//
// Возвращаемое значение:
//   ТаблицаЗначений - Таблица классов пакета
//		Идентификатор - Строка 					 - Путь до файла
// 		Файл		  - Строка 					 - ПутьКфайлу
// 		Тип			  - Перечисление.ТипыМодулей - Класс
//
Функция Классы() Экспорт
	Возврат ОписаниеПакета.Классы();
КонецФункции


// Функция - Возвращает зависимость пакета по имени пакета
//
// Параметры:
// 	 ИмяПакета    - Строка    - имя пакета
// 
// Возвращаемое значение:
//   СтрокаТаблицыЗначений  - Строка таблицы зависимостей пакета
//		ИмяПакета 			- Строка - Имя пакета
// 		ДляРазработки		- Булево - Используется ли пакет для разработки
// 		МинимальнаяВерсия	- Строка - Минимальная версия зависимости
// 		МаксимальнаяВерсия	- Строка - Максимальная версия зависимости
//
Функция Зависимость(Знач ИмяПакета) Экспорт
	
	Возврат ОписаниеПакета.Зависимость(ИмяПакета);
	
КонецФункции

// Функция - Возвращает таблицу зависимостей пакета
//
// Возвращаемое значение:
//   ТаблицаЗначений - Таблица зависимостей пакета
//		ИмяПакета 			- Строка - Имя пакета
// 		ДляРазработки		- Булево - Используется ли пакет для разработки
// 		МинимальнаяВерсия	- Строка - Минимальная версия зависимости
// 		МаксимальнаяВерсия	- Строка - Максимальная версия зависимости
//
Функция Зависимости() Экспорт
	Возврат ОписаниеПакета.Зависимости();
КонецФункции

// Функция - Возвращает структуру свойств пакета
//
// Возвращаемое значение:
//   Структура - Свойства пакета
//
Функция Свойства() Экспорт
	Возврат ОписаниеПакета.Свойства();
КонецФункции

// Функция - Возвращает версию пакета
//
// Возвращаемое значение:
//   Строка - Версия пакета
//
Функция Версия() Экспорт
	Возврат ПолучитьСвойствоПоИмени("Версия");
КонецФункции

// Функция - Возвращает описание пакета
//
// Возвращаемое значение:
//   Строка - Описание пакета
//
Функция Описание() Экспорт
	Возврат ПолучитьСвойствоПоИмени("Описание");
КонецФункции

// Функция - Возвращает Имя пакета
//
// Возвращаемое значение:
//   Строка - Имя пакета
//
Функция Имя() Экспорт
	Возврат ПолучитьСвойствоПоИмени("Имя");
КонецФункции

// Функция - Возвращает Автора пакета
//
// Возвращаемое значение:
//   Строка - Автор пакета
//
Функция Автор() Экспорт
	Возврат ПолучитьСвойствоПоИмени("Автор");
КонецФункции

// Функция - Возвращает Адрес автора пакета
//
// Возвращаемое значение:
//   Строка - Адрес автора пакета
//
Функция АдресАвтора() Экспорт
	Возврат ПолучитьСвойствоПоИмени("АдресАвтора");
КонецФункции

// Функция - Возвращает Версию манифеста пакета
//
// Возвращаемое значение:
//   Строка - Версия манифеста пакета
//
Функция ВерсияМанифеста() Экспорт
	Возврат ПолучитьСвойствоПоИмени("ВерсияМанифеста");
КонецФункции

// Функция - Возвращает Версию среды пакета
//
// Возвращаемое значение:
//   Строка - Версия среды пакета
//
Функция ВерсияСреды() Экспорт
	Возврат ПолучитьСвойствоПоИмени("ВерсияСреды");
КонецФункции

// Функция - Возвращает Точку входа пакета
//
// Возвращаемое значение:
//   Строка - Точка входа пакета
//
Функция ТочкаВхода() Экспорт
	Возврат ПолучитьСвойствоПоИмени("ТочкаВхода");
КонецФункции

// Функция - Возвращает Задачи пакета
//
// Возвращаемое значение:
//   Строка - Задачи пакета
//
Функция Задачи() Экспорт
	Возврат ПолучитьСвойствоПоИмени("Задачи");
КонецФункции
#КонецОбласти

#Область СлужебныеПроцедурыИФункции
Функция ПолучитьСвойствоПоИмени(ИмяСвойства)
	Свойства = ОписаниеПакета.Свойства();
	Если Не Свойства.Свойство(ИмяСвойства) Тогда
		ВызватьИсключение СтрШаблон("Свойство <%1> пакета не определено!", ИмяСвойства);
	КонецЕсли;
	Возврат Свойства[ИмяСвойства];
КонецФункции
Функция НайтиPackagedef(ПутьДоМанифеста)
	ФайлМанифеста = Новый Файл(ПутьДоМанифеста);

	Если Не ФайлМанифеста.Существует() Тогда
		ВызватьИсключение СтрШаблон("Не найден packagedef по пути <%1>", ПутьДоМанифеста);
	КонецЕсли;

	Возврат ФайлМанифеста;
КонецФункции
#КонецОбласти

Процедура ПриСозданииОбъекта(ПутьДоМанифеста)

	ФайлМанифеста = НайтиPackagedef(ПутьДоМанифеста);
	ОписаниеПакета = Новый КонтейнерИнформации();
	ВнешнийКонтекст = Новый Структура("Описание", ОписаниеПакета);
	ЗагрузитьСценарий(ФайлМанифеста.ПолноеИмя, ВнешнийКонтекст);

КонецПроцедуры