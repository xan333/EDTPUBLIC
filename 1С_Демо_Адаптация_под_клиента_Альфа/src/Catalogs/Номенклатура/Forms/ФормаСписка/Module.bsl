
&НаКлиенте
Процедура СписокПриАктивизацииСтроки(Элемент)
	Номенклатура=Элемент.ТекущаяСтрока;
	
	Если ЗначениеЗаполнено(Номенклатура) И Не Элемент.ТекущиеДанные.ЭтоГруппа Тогда
		Данные=ПодробнаяИнформация(Номенклатура,"Представление,ЭтоТовар");	
		Если Данные.ЭтоТовар Тогда
		   Элементы.Информация.Заголовок="Товар";
		Иначе
		    Элементы.Информация.Заголовок="Услуга";
		КонецЕсли; 
	    Элементы.Информация.ПоложениеЗаголовка=ПоложениеЗаголовкаЭлементаФормы.Авто;
		Информация=Данные.Представление;
	Иначе
	   Элементы.Информация.ПоложениеЗаголовка=ПоложениеЗаголовкаЭлементаФормы.Нет;
	   Информация="";
	КонецЕсли;
КонецПроцедуры

// <Описание функции>
//
// Параметры:
//  <Параметр1>  - <Тип.Вид> - <описание параметра>
//                 <продолжение описания параметра>
//  <Параметр2>  - <Тип.Вид> - <описание параметра>
//                 <продолжение описания параметра>
//
// Возвращаемое значение:
//   <Тип.Вид>   - <описание возвращаемого значения>
//
&НаСервереБезКонтекста
Функция ПодробнаяИнформация(ЗНАЧ Ссылка,ЗНАЧ ИменаПолей)
	Возврат Справочники.Номенклатура.Данные(Ссылка,ИменаПолей);
КонецФункции // ПодробнаяИнформация()
 
