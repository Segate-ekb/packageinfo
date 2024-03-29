#Использовать asserts
#Использовать ".."

Процедура ПередЗапускомТеста() Экспорт

КонецПроцедуры

 
Процедура ПослеЗапускаТеста() Экспорт

КонецПроцедуры

&Тест
Процедура ТестДолжен_ПроверитьРаботуПолученияКлассов() Экспорт

    ОписаниеПакета = ПолучитьОписаниеПакета();
    
    Классы = ОписаниеПакета.Классы();
    Ожидаем.Что(
		Классы,
        "Ожидаем, Классы пакета заполнены"
    ).Заполнено();

    Ожидаем.Что(
		Классы.Количество(),
        "Ожидаем, что количество классов 1"
    ).Равно(1);

    ТестовыйКласс = Классы.Найти("ТестовыйКласс");
    Ожидаем.Что(
		ТестовыйКласс.Идентификатор,
        "Ожидаем, что Идентификатор равен ""ТестовыйКласс"""
    ).Равно("ТестовыйКласс");

    Ожидаем.Что(
		ТестовыйКласс.Файл,
        "Ожидаем, что Путь равен ""./src/ТестовыйКласс.os"""
    ).Равно("./src/ТестовыйКласс.os");

    Ожидаем.Что(
		ТестовыйКласс.Тип,
        "Ожидаем, что тип объекта - Класс"
    ).Равно("Класс");

КонецПроцедуры

&Тест
Процедура ТестДолжен_ПроверитьРаботуПолученияМодулей() Экспорт

    ОписаниеПакета = ПолучитьОписаниеПакета();
    
    Модули = ОписаниеПакета.Модули();
    Ожидаем.Что(
		Модули,
        "Ожидаем, Модули пакета заполнены"
    ).Заполнено();

    Ожидаем.Что(
		Модули.Количество(),
        "Ожидаем, что количество Модулей 1"
    ).Равно(1);

    ТестовыйМодуль = Модули.Найти("ТестовыйМодуль");
    Ожидаем.Что(
		ТестовыйМодуль.Идентификатор,
        "Ожидаем, что Идентификатор равен ""ТестовыйМодуль"""
    ).Равно("ТестовыйМодуль");

    Ожидаем.Что(
		ТестовыйМодуль.Файл,
        "Ожидаем, что Путь равен ""./src/ТестовыйМодуль.os"""
    ).Равно("./src/ТестовыйМодуль.os");

    Ожидаем.Что(
		ТестовыйМодуль.Тип,
        "Ожидаем, что тип объекта - Модуль"
    ).Равно("Модуль");

КонецПроцедуры

&Тест
Процедура ТестДолжен_ПроверитьРаботуПолученияВсеМодулиПакета() Экспорт
    
    ОписаниеПакета = ПолучитьОписаниеПакета();

    ВсеМодулиПакета = ОписаниеПакета.ВсеМодулиПакета();
    Ожидаем.Что(
		ВсеМодулиПакета.Количество(),
        "Ожидаем, Количество полученных строк равно 2"
    ).Равно(2);

    Ожидаем.Что(
		ВсеМодулиПакета.Найти("ТестовыйКласс").Идентификатор,
        "Ожидаем, что есть класс с именем ""ТестовыйКласс"""
    ).Равно("ТестовыйКласс");

    Ожидаем.Что(
		ВсеМодулиПакета.Найти("ТестовыйМодуль").Идентификатор,
        "Ожидаем, что есть модуль с именем ""ТестовыйМодуль"""
    ).Равно("ТестовыйМодуль");

КонецПроцедуры

Функция ПолучитьОписаниеПакета(ПутьКМанифесту = "")
    Если Не ЗначениеЗаполнено(ПутьКМанифесту) Тогда
        ПутьКМанифесту = ОбъединитьПути(ТекущийСценарий().Каталог, "testdata", "testpackage"); 
    КонецЕсли;
    
	Возврат Новый ИнформацияОПакете(ПутьКМанифесту);
КонецФункции