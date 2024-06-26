﻿//начало текста модуля

///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
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
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПерехожуКЗакладкеРаботаСUI()","ЯПерехожуКЗакладкеРаботаСUI","И я перехожу к закладке Работа с UI");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯНачинаюЗаписьПоведения()","ЯНачинаюЗаписьПоведения","И я Начинаю запись поведения");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСоздаюНовыйДокументПриходаНаСклад()","ЯСоздаюНовыйДокументПриходаНаСклад","И я Создаю новый документ прихода на склад");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыбираюСклад(Парам01)","ЯВыбираюСклад","И я выбираю склад ""Основной""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯДобавляюТовар(Парам01)","ЯДобавляюТовар","И я добавляю товар ""Вентилятор Binatone""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВвожуКоличество(Парам01)","ЯВвожуКоличество","И я ввожу количество 10");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯНажимаюНаКнопкуПровестиИЗакрыть()","ЯНажимаюНаКнопкуПровестиИЗакрыть","И я нажимаю на кнопку Провести и закрыть");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЗаканчиваюЗаписьПоведения()","ЗаканчиваюЗаписьПоведения","И заканчиваю запись поведения");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯОткрываюВТекстовомРедактореФайл(Парам01)","ЯОткрываюВТекстовомРедактореФайл","И я открываю в текстовом редакторе файл ""Support\Instructions\Temp\ФичаПримерТэгTree.feature""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыделяюСтрокиНачинаяСИВставляюИхВТекстФичиПосле(Парам01,Парам02,Парам03)","ЯВыделяюСтрокиНачинаяСИВставляюИхВТекстФичиПосле","И я выделяю 3 строки начиная с ""В панели разделов"" и вставляю их в текст фичи после ""Когда я открываю журнал""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюСценарииИОжидаюИхОкончанияВСеансеСлужебнойБазы()","ЯВыполняюСценарииИОжидаюИхОкончанияВСеансеСлужебнойБазы","И я выполняю сценарии и ожидаю их окончания в сеансе служебной базы");

	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//И я перехожу к закладке Работа с UI
//@ЯПерехожуКЗакладкеРаботаСUI()
Процедура ЯПерехожуКЗакладкеРаботаСUI() Экспорт
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\ClickUITab.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <ClickUITab>");
КонецПроцедуры

&НаКлиенте
//И я Начинаю запись поведения
//@ЯНачинаюЗаписьПоведения()
Процедура ЯНачинаюЗаписьПоведения() Экспорт
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\StartRecBehavior.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <StartRecBehavior>");
КонецПроцедуры

&НаКлиенте
//И я Создаю новый документ прихода на склад
//@ЯСоздаюНовыйДокументПриходаНаСклад()
Процедура ЯСоздаюНовыйДокументПриходаНаСклад() Экспорт
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\ClickRazdelOsnovnaya.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <ClickRazdelOsnovnaya>");
	
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\ClickMenuPrihNakl.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <ClickMenuPrihNakl>");
	
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\ClickButtonSozdat.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <ClickButtonSozdat>");
	
КонецПроцедуры

&НаКлиенте
//И я выбираю склад "Основной"
//@ЯВыбираюСклад(Парам01)
Процедура ЯВыбираюСклад(Стр) Экспорт
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\ClickFieldSkladPrihNakl.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <ClickFieldSkladPrihNakl>");
	
	Ванесса.Шаг("И я добавляю строку текста '" + Стр + "'");
КонецПроцедуры

&НаКлиенте
//И я добавляю товар "Вентиляторы Бинатон"
//@ЯДобавляюТовар(Парам01)
Процедура ЯДобавляюТовар(Стр) Экспорт
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\ClickButtonDobavit.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <ClickButtonDobavit>");
	
	Ванесса.Шаг("И я добавляю строку текста '" + Стр + "'");
КонецПроцедуры

&НаКлиенте
//И я ввожу количество 10
//@ЯВвожуКоличество(Парам01)
Процедура ЯВвожуКоличество(Количество) Экспорт
	ИмяФайла = ПолучитьИмяВременногоФайла("txt");
	ЗТ = Новый ЗаписьТекста(ИмяФайла,"windows-1251",,Ложь); 
	ЗТ.ЗаписатьСтроку(XMLСтрока(Количество)); 
	ЗТ.Закрыть();
	
	Ванесса.Шаг("И я эмулирую набор текста из файла """ + ИмяФайла + """");
	//Ванесса.Шаг("И я добавляю строку текста '" + XMLСтрока(Количество) + "'");
КонецПроцедуры

&НаКлиенте
//И я нажимаю на кнопку Провести и закрыть
//@ЯНажимаюНаКнопкуПровестиИЗакрыть()
Процедура ЯНажимаюНаКнопкуПровестиИЗакрыть() Экспорт
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\ClickButtonProvestiIZakrit.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <ClickButtonProvestiIZakrit>");
КонецПроцедуры

&НаКлиенте
//И заканчиваю запись поведения
//@ЗаканчиваюЗаписьПоведения()
Процедура ЗаканчиваюЗаписьПоведения() Экспорт
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\StopRecBehavior.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <StopRecBehavior>");
КонецПроцедуры

&НаКлиенте
//И я выделяю 4 строки начиная с "В панели разделов" и вставляю их в текст фичи после "Когда я открываю журнал"
//@ЯВыделяюСтрокиНачинаяСИВставляюИхВТекстФичиПосле(Парам01,Парам02,Парам03)
Процедура ЯВыделяюСтрокиНачинаяСИВставляюИхВТекстФичиПосле(КолСтрок,Стр1,Стр2) Экспорт
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\ClickTabScenariyPovedeniya.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <ClickTabScenariyPovedeniya>");
	
	//поиск первой строки
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\CtrlF.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <CtrlF>");
	Ванесса.Шаг("И я набираю текст '" + Стр1 + "'");
	Ванесса.Шаг("И я набираю текст ""#enter""");
	
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\TypeHome.sikuli " + КолСтрок);
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <TypeHome>");

	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\SelectStringsInText.sikuli " + КолСтрок);
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <SelectStringsInText>");

	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\CtrlC.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <CtrlC>");
	
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\ClickWordScenario.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <ClickWordScenario>");
	
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\CtrlF.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <CtrlF>");
	
	
	Ванесса.Шаг("И я набираю текст '" + Стр2 + "'");
	
	
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\TypeESC_END_ENTER_HOME.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <TypeESC_END_ENTER_HOME>");

	//Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\TypeESC.sikuli");
	//Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <TypeESC>");
	//
	//Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\TypeEND.sikuli");
	//Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <TypeEND>");
	//
	//Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\TypeENTER.sikuli");
	//Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <TypeENTER>");
	//
	//Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\TypeHome.sikuli " + КолСтрок);
	//Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <TypeHome>");
	
	
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\CtrlV.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <CtrlV>");
	
	
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\SelectStringsInText.sikuli " + КолСтрок + " up");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <SelectStringsInText>");
	
	
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\TypeTABTAB.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <TypeTABTAB>");
	
КонецПроцедуры

&НаКлиенте
//И я открываю в текстовом редакторе файл "Support\Instructions\Temp\ФичаПримерТегTree.feature"
//@ЯОткрываюВТекстовомРедактореФайл(Парам01)
Процедура ЯОткрываюВТекстовомРедактореФайл(ЧастьПути) Экспорт
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\CtrlO.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <CtrlO>");
	
	Путь = Ванесса.Объект.КаталогИнструментов + "\features\" + ЧастьПути;
	Ванесса.Шаг("И я добавляю строку текста """ + Путь + """");
КонецПроцедуры

&НаКлиенте
//И я выполняю сценарии и ожидаю их окончания в сеансе служебной базы
//@ЯВыполняюСценарииИОжидаюИхОкончанияВСеансеСлужебнойБазы()
Процедура ЯВыполняюСценарииИОжидаюИхОкончанияВСеансеСлужебнойБазы() Экспорт
	Ванесса.ЭтотШагНеНадоМасштабироватьВВидео();
	
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\RunScenarios.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <RunScenarios>");
	
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\WaitForStringAllScenariosOK.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <WaitForStringAllScenariosOK>");
КонецПроцедуры
