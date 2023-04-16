﻿//начало текста модуля
&НаКлиенте
Перем Ванесса;

&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

// Делает отключение модуля
&НаКлиенте
Функция ОтключениеМодуля() Экспорт

	Ванесса = Неопределено;
	Контекст = Неопределено;
	КонтекстСохраняемый = Неопределено;

КонецФункции

&НаКлиенте
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВыражениеВнутреннегоЯзыкаИстинно(Парам01)","ВыражениеВнутреннегоЯзыкаИстинно","И выражение внутреннего языка 'Выражение' Истинно","Позволяет проверить произвольное выражение встроенного языка.","Встроенный язык.Выражение истинно");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВыражениеВнутреннегоЯзыкаСталоИстинноВТечениеСекунд(Парам01,Парам02)","ВыражениеВнутреннегоЯзыкаСталоИстинноВТечениеСекунд","И выражение внутреннего языка 'Выражение' стало Истинно в течение 10 секунд","Позволяет дождаться, когда произвольное выражение встроенного языка станет истинно.","Встроенный язык.Выражение истинно");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВыражениеВнутреннегоЯзыкаИмеетЗначение(Парам01,Парам02)","ВыражениеВнутреннегоЯзыкаИмеетЗначение","И выражение внутреннего языка 'Выражение' имеет значение 'Значение'","Позволяет проверить произвольное выражение встроенного языка.","Встроенный язык.Выражение истинно");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗапоминаюЗначениеВыраженияВПеременную(Парам01,Парам02)","ЯЗапоминаюЗначениеВыраженияВПеременную","И Я запоминаю значение выражения 'ВыражениеВстроенногоЯзыка' в переменную ""ИмяПеременной""","Позволяет сохранить в переменную произвольное выражение встроенного языка. Обращение к созданной переменной в других шагах должно происходить так: $ИмяПеременной$. Если во время вычисления выражения возникнет исключение, то в переменную будет помещено само выражение. Чтобы увидеть текст исключения нужно включить вывод отладочных сообщений.","Встроенный язык.Выражение в переменную");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗапоминаюЗначениеВыраженияВПеременнуюГлобально(Парам01,Парам02)","ЯЗапоминаюЗначениеВыраженияВПеременнуюГлобально","И Я запоминаю значение выражения 'ВыражениеВстроенногоЯзыка' в переменную ""ИмяПеременной"" глобально","Позволяет сохранить в переменную КонтекстСохраняемый произвольное выражение встроенного языка. Чтобы увидеть текст исключения нужно включить вывод отладочных сообщений.","Встроенный язык.Устаревшее");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЗатемЯВыполняюКодВстроенногоЯзыка(ТабПарам)","ЗатемЯВыполняюКодВстроенногоЯзыка","И затем я выполняю код встроенного языка" + Символы.ПС + "	| 'Сообщить(""Hello world."")' |");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюКодВстроенногоЯзыка(ТабПарам)","ЯВыполняюКодВстроенногоЯзыка","И я выполняю код встроенного языка" + Символы.ПС + """""""bsl" + Символы.ПС + "	Сообщить(""Hello world."")" + Символы.ПС + """""""","Позволяет выполнить произвольный код на встроенном языке. Код передаётся через таблицу Gherkin или многострочную строку.","Встроенный язык.Выполнить код");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)","ЯВыполняюКодВстроенногоЯзыкаНаСервере","И я выполняю код встроенного языка на сервере" + Символы.ПС + """""""bsl" + Символы.ПС + "	Сообщить(""Hello world."")" + Символы.ПС + """""""","Позволяет выполнить произвольный код на встроенном языке на сервере с передачей контекста Vanessa Automation на сервер. При этом можно вызвать метод Объект(), чтобы обратиться к объекту VA. Код передаётся через таблицу Gherkin или через многострочную строку. Чтобы передать вычисленно выражение на сервер и обратно можно использовать Объект.ЗначениеНаСервере при работе на сервере и Ванесса.Объект.ЗначениеНаСервере при работе на клиенте.","Встроенный язык.Выполнить код");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюКодВстроенногоЯзыкаНаСервереБезКонтекста(ТабПарам)","ЯВыполняюКодВстроенногоЯзыкаНаСервереБезКонтекста","И я выполняю код встроенного языка на сервере без контекста" + Символы.ПС + """""""bsl" + Символы.ПС + "	Сообщить(""Hello world."")" + Символы.ПС + """""""","Позволяет выполнить произвольный код на встроенном языке на сервере без контекста Vanessa Automation. Код передаётся через таблицу Gherkin или многострочную строку.","Встроенный язык.Выполнить код");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗапоминаюСтрокуВПеременную(Парам01,Парам02)","ЯЗапоминаюСтрокуВПеременную","И я запоминаю строку ""НужнаяСтрока"" в переменную ""ИмяПеременной""","Запоминает значение строки в переменную.","Встроенный язык.Строку в переменную");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯУдаляюПеременную(Парам01)","ЯУдаляюПеременную","И я удаляю переменную 'ИмяПеременной'","Удаляет локальную и глобальную переменную с таким именем, если они будут найдены. Если такой переменной нет, то исключение вызвано не будет.","Переменные.Удаление переменных");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗапоминаюСлучайноеЧислоВПеременную(Парам01)","ЯЗапоминаюСлучайноеЧислоВПеременную", "И Я запоминаю случайное число в переменную ""ИмяПеременной""", "Позволяет сохранить в переменную случайное число.", "Встроенный язык.Случайное число в переменную");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСоздаюОбъектВстроенногоЯзыкаКак(Парам01,Парам02)","ЯСоздаюОбъектВстроенногоЯзыкаКак","И я создаю объект встроенного языка ""ИмяОбъекта"" как ""ИмяПеременной""", "Позволяет создать новый экземпляр объекта и сохранить его в переменную. Например - ""СистемнаяИнформация"".", "Встроенный язык.Создание объекта");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯУдаляюВсеПеременные()","ЯУдаляюВсеПеременные","И я удаляю все переменные","Удаляет все локальные и глобальные переменные","Переменные.Удаление переменных");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯУдаляюВсеЛокальныеПеременные()","ЯУдаляюВсеЛокальныеПеременные","И я удаляю все локальные переменные","Удаляет все локальные переменные","Переменные.Удаление переменных");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯУдаляюВсеГлобальныеПеременные()","ЯУдаляюВсеГлобальныеПеременные","И я удаляю все глобальные переменные","Удаляет все глобальные переменные","Переменные.Удаление переменных");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюКодВстроенногоЯзыкаНаСервереСПередачейПеременных(ТабПарам)","ЯВыполняюКодВстроенногоЯзыкаНаСервереСПередачейПеременных","И я выполняю код встроенного языка на сервере с передачей переменных" + Символы.ПС + """""""bsl" + Символы.ПС + "	Сообщить(""Hello world."")" + Символы.ПС + """""""","Позволяет выполнить произвольный код на встроенном языке на сервере с контекстом Vanessa Automation. Код передаётся через таблицу Gherkin или многострочную строку.","Встроенный язык.Выполнить код");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюКодВстроенногоЯзыкаНаСервереБезКонтекстаСПередачейПеременных(ТабПарам)","ЯВыполняюКодВстроенногоЯзыкаНаСервереБезКонтекстаСПередачейПеременных","И я выполняю код встроенного языка на сервере без контекста с передачей переменных" + Символы.ПС + """""""bsl" + Символы.ПС + "	Сообщить(""Hello world."")" + Символы.ПС + """""""","Позволяет выполнить произвольный код на встроенном языке на сервере без контекста Vanessa Automation. Код передаётся через таблицу Gherkin или многострочную строку.","Встроенный язык.Выполнить код");
	
	Возврат ВсеТесты;
КонецФункции

&НаКлиенте
Функция ПередНачаломСценария() Экспорт
КонецФункции

&НаКлиенте
Функция ПередОкончаниемСценария() Экспорт
КонецФункции

&НаКлиенте
Функция Контекст() Экспорт
	Возврат Ванесса;
КонецФункции	 

&НаКлиенте
Функция Context() Экспорт
	Возврат Ванесса;
КонецФункции	 

&НаКлиенте
//И выражение внутреннего языка 'Выражение' имеет значение 'Значение'
//@ВыражениеВнутреннегоЯзыкаИмеетЗначение(Парам01,Парам02)
Функция ВыражениеВнутреннегоЯзыкаИмеетЗначение(ПараметрВыражение, ПроверяемоеЗначение) Экспорт
	Выражение = Неопределено;
	ЗначениеВыражения = ВычислитьЗначениеВыражения(ПараметрВыражение, Выражение);
	
	Если ЗначениеВыражения <> ПроверяемоеЗначение Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Выражение <%1> оказалось равно <%2>, а ожидали <%3>.");
		Если Выражение = Неопределено Тогда
			Выражение = ПараметрВыражение;
		КонецЕсли;	 
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Выражение);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",ЗначениеВыражения);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%3",Строка(ПроверяемоеЗначение));
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецФункции

&НаКлиенте
Функция ВычислитьЗначениеВыражения(ПараметрВыражение, Выражение)
	ПолучилосьВычислить = Ложь;
	Попытка
		ЗначениеВыражения = Ванесса.ВычислитьВнутреннееВыражение(ПараметрВыражение);
		ПолучилосьВычислить = Истина;
	Исключение
		ЗначениеВыражения = ПараметрВыражение;
	КонецПопытки;
	
	Выражение = Неопределено;
	Если НЕ ПолучилосьВычислить Тогда
		Попытка
			ТекстИсключения = Неопределено;
			Выражение = Ванесса.ЗаменитьСлужебныеСимволыВВыраженииДляВычисления(
				Ванесса.ЗначениеПараметраТекущегоСценария(0));
			ЗначениеВыражения = Ванесса.ВычислитьВнутреннееВыражение(Выражение, ТекстИсключения);
		Исключение
			ЗначениеВыражения = ПараметрВыражение;
		КонецПопытки;
	КонецЕсли;	 
	
	Возврат ЗначениеВыражения; 
	
КонецФункции	 

&НаКлиенте
//И выражение внутреннего языка "Контекст.КоличествоНачальноеПлюсОдин - Контекст.КоличествоНачальное = 1" Истинно
//@ВыражениеВнутреннегоЯзыкаИстинно(Парам01)
Функция ВыражениеВнутреннегоЯзыкаИстинно(Знач ПараметрВыражение) Экспорт
	
	Выражение = Неопределено;
	ЗначениеВыражения = ВычислитьЗначениеВыражения(ПараметрВыражение, Выражение);
	
	Если ЗначениеВыражения <> Истина Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Выражение <%1> оказалось равно <%2>, а ожидали <%3>.");
		Если Выражение = Неопределено Тогда
			Выражение = ПараметрВыражение;
		КонецЕсли;	 
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Выражение);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",ЗначениеВыражения);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%3",Строка(Истина));
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецФункции

&НаКлиенте
//И выражение внутреннего языка "Контекст.КоличествоНачальноеПлюсОдин - Контекст.КоличествоНачальное = 1" стало Истинно в тчение 10 секунд
//@ВыражениеВнутреннегоЯзыкаСталоИстинноВТечениеСекунд(Парам01,Парам02)
Функция ВыражениеВнутреннегоЯзыкаСталоИстинноВТечениеСекунд(Знач ПараметрВыражение, КолСекунд) Экспорт
	
	Ванесса.ЗапретитьВыполнениеШагов();
	ДатаНачалаОбработкиОжидания       = ТекущаяДата();
	КоличествоСекундОбработкаОжидания = Ванесса.ЗначениеТаймаутаДляАсинхронногоШага(КолСекунд);
	ВыражениеОбработкаОжидания = ПараметрВыражение;
	ПодключитьОбработчикОжидания("ВыражениеВнутреннегоЯзыкаСталоИстинноВТечениеСекундОбработчик",1,Ложь);
	
КонецФункции

&НаКлиенте
Функция ВыражениеВнутреннегоЯзыкаСталоИстинноВТечениеСекундОбработчик()
	
	ИмяОбработчика = "ВыражениеВнутреннегоЯзыкаСталоИстинноВТечениеСекундОбработчик";
	
	Если НЕ Ванесса.ИдетВыполнениеСценариев() Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчика);
		Возврат Неопределено;
	КонецЕсли;	 
	
	Попытка
		ВыражениеВнутреннегоЯзыкаИстинно(ВыражениеОбработкаОжидания);
		ОтключитьОбработчикОжидания(ИмяОбработчика);
		Ванесса.ПродолжитьВыполнениеШагов();
		Возврат Неопределено;
	Исключение
	КонецПопытки;
	
	Если (ТекущаяДата() - ДатаНачалаОбработкиОжидания) > КоличествоСекундОбработкаОжидания Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчика);
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Ожидалось, что в течение <%1> секунд выражение <%2> станет истинно.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",КоличествоСекундОбработкаОжидания);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",ВыражениеОбработкаОжидания);
		Ванесса.ПродолжитьВыполнениеШагов(Истина,ТекстСообщения);
		Возврат Неопределено;
	КонецЕсли;	 
	
КонецФункции 

&НаКлиенте
//И Я запоминаю выражение внутреннего языка "Ванесса.ПолучитьМассивPIDОкон1С().Количество()" в переменную "КоличествоНачальноеПлюсОдинВторойРаз"
//@ЯЗапоминаюЗначениеВыраженияВПеременную(Парам01,Парам02)
Функция ЯЗапоминаюЗначениеВыраженияВПеременную(Знач ПараметрВыражение, ИмяПеременной) Экспорт
	ПолучилосьВычислить = Ложь;
	Попытка
		ТекстИсключения = Неопределено;
		Выражение = Ванесса.ЗаменитьСлужебныеСимволыВВыраженииДляВычисления(
			Ванесса.ЗначениеПараметраТекущегоСценария(0));
		ЗначениеВыражения = Ванесса.ВычислитьВнутреннееВыражение(Выражение, ТекстИсключения);
		ПолучилосьВычислить = Истина;
	Исключение
		ЗначениеВыражения = ПараметрВыражение;
	КонецПопытки;
	
	Если НЕ ПолучилосьВычислить
		ИЛИ Найти(ЗначениеВыражения,"ОбъектКонтекст.") > 0
		ИЛИ Найти(ЗначениеВыражения,"ОбъектКонтекстСохраняемый.") > 0 Тогда
		Попытка
			ЗначениеВыражения = Ванесса.ВычислитьВнутреннееВыражение(ПараметрВыражение);
		Исключение
			Ванесса.Отладка(ОписаниеОшибки());
			ЗначениеВыражения = ПараметрВыражение;
		КонецПопытки;
	КонецЕсли;	 
	
	Ванесса.СохранитьЗначениеПеременнойВКонтекст(ИмяПеременной,ЗначениеВыражения);
КонецФункции

&НаКлиенте
//И Я запоминаю выражение внутреннего языка "Ванесса.ПолучитьМассивPIDОкон1С().Количество()" в переменную "КоличествоНачальноеПлюсОдинВторойРаз" глобально
//@ЯЗапоминаюЗначениеВыраженияВПеременнуюГлобально(Парам01,Парам02)
Функция ЯЗапоминаюЗначениеВыраженияВПеременнуюГлобально(Знач ПараметрВыражение,ИмяПеременной) Экспорт
	ПолучилосьВычислить = Ложь;
	Попытка
		ЗначениеВыражения = Ванесса.ВычислитьВнутреннееВыражение(ПараметрВыражение);
		ПолучилосьВычислить = Истина;
	Исключение
		ЗначениеВыражения = ПараметрВыражение;
	КонецПопытки;
	
	Если НЕ ПолучилосьВычислить Тогда
		Попытка
			ТекстИсключения = Неопределено;
			Выражение = Ванесса.ЗаменитьСлужебныеСимволыВВыраженииДляВычисления(
				Ванесса.ЗначениеПараметраТекущегоСценария(0));
			ЗначениеВыражения = Ванесса.ВычислитьВнутреннееВыражение(Выражение, ТекстИсключения);
		Исключение
			ЗначениеВыражения = ПараметрВыражение;
		КонецПопытки;
	КонецЕсли;	 
	
	
	Попытка
		КонтекстСохраняемый.Вставить(ИмяПеременной,ЗначениеВыражения);
	Исключение
		Ванесса.СохранитьЗначениеВКонтекстСохраняемый(ИмяПеременной,ЗначениеВыражения);
	КонецПопытки;
КонецФункции

&НаКлиенте
//И я выполняю код встроенного языка
//@ЯВыполняюКодВстроенногоЯзыка(ТабПарам)
Функция ЯВыполняюКодВстроенногоЯзыка(ТабПарам) Экспорт
	ЗатемЯВыполняюКодВстроенногоЯзыка(ТабПарам);
КонецФункции

&НаКлиенте
//И затем я выполняю код встроенного языка
//@ЗатемЯВыполняюКодВстроенногоЯзыка(ТабПарам)
Функция ЗатемЯВыполняюКодВстроенногоЯзыка(ТабПарам) Экспорт
	
	Текст = Ванесса.МногострочнаяСтрокаИзПараметраШага(ТабПарам);
	
	Попытка
		Выполнить(Текст);
	Исключение
		ТекстОшибки = Ванесса._СтрШаблон(Ванесса.Локализовать("При выполнении кода возникла ошибка <%1>."), ОписаниеОшибки());
		ТекстОшибки = ТекстОшибки + Символы.ПС + Ванесса._СтрШаблон(Ванесса.Локализовать("Выполняемый код: %1."), Символы.ПС + Текст);
		ВызватьИсключение ТекстОшибки;
	КонецПопытки;
	
КонецФункции

&НаСервереБезКонтекста
Функция ЯВыполняюКодВстроенногоЯзыкаНаСервереСервер(Текст)
	Выполнить(Текст);
КонецФункции 

&НаКлиенте
//И я выполняю код встроенного языка на сервере без контекста
//@ЯВыполняюКодВстроенногоЯзыкаНаСервереБезКонтекста(ТабПарам)
Функция ЯВыполняюКодВстроенногоЯзыкаНаСервереБезКонтекста(ТабПарам) Экспорт
	
	Текст = Ванесса.МногострочнаяСтрокаИзПараметраШага(ТабПарам);
	
	Попытка
		ЯВыполняюКодВстроенногоЯзыкаНаСервереСервер(Текст);
	Исключение
		ТекстОшибки = Ванесса._СтрШаблон(Ванесса.Локализовать("При выполнении кода возникла ошибка <%1>."), ОписаниеОшибки());
		ТекстОшибки = ТекстОшибки + Символы.ПС + Ванесса._СтрШаблон(Ванесса.Локализовать("Выполняемый код: %1."), Символы.ПС + Текст);
		ВызватьИсключение ТекстОшибки;
	КонецПопытки;
	
КонецФункции

&НаКлиенте
//И я выполняю код встроенного языка на сервере
//@ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)
Функция ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам) Экспорт
	
	Текст = Ванесса.МногострочнаяСтрокаИзПараметраШага(ТабПарам);
	Попытка
		Ванесса.ЯВыполняюКодВстроенногоЯзыкаНаСервереСервер(Текст);
	Исключение
		ТекстОшибки = Ванесса._СтрШаблон(Ванесса.Локализовать("При выполнении кода возникла ошибка <%1>."), ОписаниеОшибки());
		ТекстОшибки = ТекстОшибки + Символы.ПС + Ванесса._СтрШаблон(Ванесса.Локализовать("Выполняемый код: %1."), Символы.ПС + Текст);
		ВызватьИсключение ТекстОшибки;
	КонецПопытки;
	
КонецФункции

&НаКлиенте
//И я запоминаю строку "НужнаяСтрока" в переменную "ИмяПеременной"
//@ЯЗапоминаюСтрокуВПеременную(Парам01,Парам02)
Функция ЯЗапоминаюСтрокуВПеременную(НужнаяСтрока,ИмяПеременной) Экспорт
	Попытка
		Ванесса.СохранитьЗначениеПеременнойВКонтекст(ИмяПеременной,НужнаяСтрока);
	Исключение
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось сохранить строку <%1> в переменную <%2>. Описание ошибки - <%3>");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",НужнаяСтрока);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",ИмяПеременной);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%3",ОписаниеОшибки());
		ВызватьИсключение ТекстСообщения;
	КонецПопытки;
КонецФункции

&НаКлиенте
Функция УдалитьПеременнуюИзКонтекстов(ИмяПеременной)
	Попытка
		Если Контекст.Свойство(ИмяПеременной) Тогда
			Контекст.Удалить(ИмяПеременной);
		КонецЕсли;	 
	Исключение
	КонецПопытки;
	
	Попытка
		Если КонтекстСохраняемый.Свойство(ИмяПеременной) Тогда
			КонтекстСохраняемый.Удалить(ИмяПеременной);
		КонецЕсли;	 
	Исключение
	КонецПопытки;
КонецФункции 

&НаКлиенте
//И я удаляю переменную 'ИмяПеременной'
//@ЯУдаляюПеременную(Парам01)
Функция ЯУдаляюПеременную(Знач ИмяПеременной) Экспорт
	ИмяПеременной = Ванесса.УбратьЗапрещенныеСимволыИзКлючаСтруктуры(ИмяПеременной);
	УдалитьПеременнуюИзКонтекстов(ИмяПеременной);
	
	ЗначенияПараметров = Ванесса.ЗначенияПараметровТекущегоСценария();
	ИмяПеременной = Ванесса.УбратьЗапрещенныеСимволыИзКлючаСтруктуры(ЗначенияПараметров[0]);
	УдалитьПеременнуюИзКонтекстов(ИмяПеременной);
КонецФункции

&НаКлиенте
//И я запоминаю случайное число в переменную 'ИмяПеременной'
//@ЯЗапоминаюСлучайноеЧислоВПеременную(Парам01)
Функция ЯЗапоминаюСлучайноеЧислоВПеременную(Знач ИмяПеременной) Экспорт
	
	ГСЧ = Новый ГенераторСлучайныхЧисел();
	СлучайноеЧисло = ГСЧ.СлучайноеЧисло();
	
	ЯЗапоминаюСтрокуВПеременную(СлучайноеЧисло, ИмяПеременной);
	
	Возврат Истина;	
КонецФункции	

&НаКлиенте
//И я создаю объект встроенного языка "ИмяОбъекта" как "ИмяПеременной"
//@ЯСоздаюОбъектВстроенногоЯзыкаКак(Парам01,Парам02)
Функция ЯСоздаюОбъектВстроенногоЯзыкаКак(ИмяОбъекта, ИмяПеременной) Экспорт
	ПромОбъект = Вычислить("Новый " + ИмяОбъекта);
	Ванесса.СохранитьЗначениеПеременнойВКонтекст(ИмяПеременной, ПромОбъект);
КонецФункции

&НаКлиенте
//И я удаляю все переменные
//@ЯУдаляюВсеПеременные()
Функция ЯУдаляюВсеПеременные() Экспорт
	
	ЯУдаляюВсеЛокальныеПеременные();
	ЯУдаляюВсеГлобальныеПеременные();
	
КонецФункции

&НаКлиенте
//И я удаляю все локальные переменные
//@ЯУдаляюВсеЛокальныеПеременные()
Функция ЯУдаляюВсеЛокальныеПеременные() Экспорт
	
	Массив = Новый Массив;
	Для Каждого ТекКлючЗначение Из Контекст Цикл
		Если Ванесса.ЭтоСлужебнаяПеременаяКонтекста(ТекКлючЗначение.Ключ) Тогда
			Продолжить;
		КонецЕсли;	 
		
		Массив.Добавить(ТекКлючЗначение.Ключ);
		
	КонецЦикла;	 
	
	Для Каждого Ключ Из Массив Цикл
		Контекст.Удалить(Ключ);
	КонецЦикла;	 
	
КонецФункции

&НаКлиенте
//И я удаляю все глобальные переменные
//@ЯУдаляюВсеГлобальныеПеременные()
Функция ЯУдаляюВсеГлобальныеПеременные() Экспорт
	
	Массив = Новый Массив;
	Для Каждого ТекКлючЗначение Из КонтекстСохраняемый Цикл
		Если Ванесса.ЭтоСлужебнаяПеременаяКонтекста(ТекКлючЗначение.Ключ) Тогда
			Продолжить;
		КонецЕсли;	 
		
		Массив.Добавить(ТекКлючЗначение.Ключ);
		
	КонецЦикла;	 
	
	Для Каждого Ключ Из Массив Цикл
		КонтекстСохраняемый.Удалить(Ключ);
	КонецЦикла;	 
	
КонецФункции

&НаКлиенте
//И я выполняю код встроенного языка на сервере с передачей переменных
//@ЯВыполняюКодВстроенногоЯзыкаНаСервереСПередачейПеременных()
Функция ЯВыполняюКодВстроенногоЯзыкаНаСервереСПередачейПеременных(ТабПарам) Экспорт
	
	Текст = Ванесса.МногострочнаяСтрокаИзПараметраШага(ТабПарам);
	
	Попытка
		Ванесса.ЯВыполняюКодВстроенногоЯзыкаНаСервереСПередачейПеременных(Текст);
	Исключение
		ТекстОшибки = Ванесса._СтрШаблон(Ванесса.Локализовать("При выполнении кода возникла ошибка <%1>."), ОписаниеОшибки());
		ТекстОшибки = ТекстОшибки + Символы.ПС + Ванесса._СтрШаблон(Ванесса.Локализовать("Выполняемый код: %1."), Символы.ПС + Текст);
		ВызватьИсключение ТекстОшибки;
	КонецПопытки;
	
КонецФункции

&НаКлиенте
//И я выполняю код встроенного языка на сервере без контекста с передачей переменных
//@ЯВыполняюКодВстроенногоЯзыкаНаСервереБезКонтекстаСПередачейПеременных()
Функция ЯВыполняюКодВстроенногоЯзыкаНаСервереБезКонтекстаСПередачейПеременных(ТабПарам) Экспорт
	Текст = Ванесса.МногострочнаяСтрокаИзПараметраШага(ТабПарам);
	
	Попытка
		Ванесса.ЯВыполняюКодВстроенногоЯзыкаНаСервереБезКонтекстаСПередачейПеременных(Текст);
	Исключение
		ТекстОшибки = Ванесса._СтрШаблон(Ванесса.Локализовать("При выполнении кода возникла ошибка <%1>."), ОписаниеОшибки());
		ТекстОшибки = ТекстОшибки + Символы.ПС + Ванесса._СтрШаблон(Ванесса.Локализовать("Выполняемый код: %1."), Символы.ПС + Текст);
		ВызватьИсключение ТекстОшибки;
	КонецПопытки;
КонецФункции

