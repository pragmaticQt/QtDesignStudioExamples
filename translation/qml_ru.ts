<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE TS>
<TS version="2.1" language="ru_RU">
<context>
    <name>Screen01.ui</name>
    <message>
        <location filename="Screen01.ui.qml" line="46"/>
        <source>This is an example of a translatable UI.

Qt supports most languages in use today, in particular:

All East Asian languages (Chinese, Japanese and Korean)
All Western languages (using Latin script)
Arabic
Cyrillic languages (Russian, Ukrainian, etc.)
Greek
Hebrew
Thai and Lao
All scripts in Unicode 6.2 that do not require special processing
Bengali
Burmese (Myanmar)
Devanagari
Gujarati
Gurmukhi
Kannada
Khmer
Malayalam
Tamil
Telugu
Tibetan

The list above is supported and will work on all platforms as long as the system has fonts to render these writing systems installed.
Most of the text that must be translated in an application consists of either single words or short phrases.

The phrases are entered into the source code by the developer in their native language using a simple but special syntax to identify that the phrases require translation. The Qt tools provide context information for each of the phrases to help the translator, and the developer is able to add additional context information to phrases when necessary.

Strings in QML can be marked for translation using the qsTr(), qsTranslate(), qsTrId(), QT_TR_NOOP(), QT_TRANSLATE_NOOP(), and QT_TRID_NOOP() functions.

The release manager generates a set of translation files that are produced from the source files and passes these to the translator. The translator opens the translation files using Qt Linguist, enters their translations and saves the results back into the translation files, which they pass back to the release manager. The release manager then generates fast compact versions of these translation files ready for use by the application.

The tools are designed to be used in repeated cycles as applications change and evolve, preserving existing translations and making it easy to identify which new translations are required. Qt Linguist also provides a phrase book facility to help ensure consistent translations across multiple applications and projects.

Translators and developers must address a number of issues because of the subtleties and complexities of human language:

A single phrase may need to be translated into several different forms depending on context. For example, open in English might become öffnen, &apos;open file&apos;, or aufbauen, &apos;open internet connection&apos;, in German.
Keyboard accelerators may need to be changed but without introducing conflicts. For example, &apos;Quit&apos; in English becomes &apos;Avslutt&apos; in Norwegian which does not contain a &apos;Q&apos;. We cannot use a letter that is already in use - unless we change several accelerators.
Phrases that contain variables, for example, &apos;The 25 files selected will take 63 seconds to process&apos;, where the two numbers are inserted programmatically at run-time may need to be reworded because in a different language the word order and therefore the placement of the variables may have to change.
The Qt translation tools provide clear and simple solutions to these issues.

Qt Linguist and lupdate are able to import and export XML Localization Interchange File Format (XLIFF) files, making it possible to take advantage of tools and translation services that work with this format. For more information on working with these files, see Translators.</source>
        <translation type="unfinished">Qt поддерживает большинство языков, используемых сегодня, в частности:


Все восточноазиатские языки (китайский, японский и корейский)

Все западные языки (использующие латиницы)

Арабский

Кириллические языки (русский, украинский и др.)

Греческий

Иврит

Тайский и Лаосский

Все символы Unicode 6.2, не требующие специальной обработки.

Бенгальский

Бирманский (Мьянманский)

Деванагари

Гуджарати

Гурмухи

Каннада

Кхмерский

Малайалам

Тамильский

Телугу

Тибетский


Вышеприведенный список поддерживается и будет работать на всех платформах, пока в системе есть шрифты для отображения этих систем записи.

Большая часть текста, который должен быть переведен в приложении, состоит либо из отдельных слов, либо из коротких фраз.


Фразы вводятся в исходный код разработчиком на его родном языке с помощью простого, но специального синтаксиса для идентификации того, что фразы требуют перевода. Инструменты Qt предоставляют контекстную информацию для каждой фразы, чтобы помочь переводчику, и разработчик может при необходимости добавить дополнительную контекстную информацию к фразам.

Строки в QML могут быть помечены для перевода с помощью функций qsTr(), qsTranslate(), qsTrId(), QT_TR_NOOP(), QT_TRANSLATE_NOOP() и QT_TRID_NOOP().

Менеджер релизов генерирует набор файлов перевода, которые создаются из исходных файлов и передает их переводчику. Переводчик открывает файлы перевода с помощью Qt Linguist, вводит их переводы и сохраняет результаты обратно в файлы перевода, которые они передают обратно менеджеру релизов. Затем менеджер релизов генерирует быстрые компактные версии этих файлов перевода, готовые для использования приложением.

Эти инструменты предназначены для использования в повторяющихся циклах по мере изменения и развития приложений, сохраняя при этом существующие переводы и облегчая определение того, какие новые переводы необходимы. Qt Linguist также предоставляет возможность фразового справочника, чтобы помочь обеспечить последовательный перевод во многих приложениях и проектах.


Переводчикам и разработчикам приходится решать целый ряд вопросов из-за тонкостей и сложностей человеческого языка:


В зависимости от контекста может потребоваться перевод одной фразы в несколько разных форм. Например, &quot;Открыть&quot; на русском языке может стать &quot;Öffnen&quot; (&quot;Открыть файл&quot;) или &quot;Aufbauen&quot; (&quot;Открыть интернет-соединение&quot;) на немецком языке.

Возможно, потребуется замена горячих клавиш, но без конфликтов. Например, слово &quot;Quit&quot; на английском языке становится словом &quot;Avslutt&quot; на норвежском языке, которое не содержит буквы &quot;Q&quot;. Мы не сможем использовать уже используемый символ, если не поменяем несколько горячих клавиш.

Фразы, которые содержат переменные, например, &quot;25 выбранных файлов займут 63 секунды для обработки&quot;, где эти два числа вставляются программно во время выполнения, возможно, потребуется переформулировать, поскольку на другом языке придётся изменить порядок слов и расположение переменных.

Инструменты перевода Qt предоставляют ясные и простые решения этих проблем.


Qt Linguist и lupdate могут импортировать и экспортировать файлы XML Localization Interchange File Format (XLIFF), делая возможным использование инструментов и служб перевода, которые работают с этим форматом. Дополнительные сведения о работе с этими файлами см. в разделе Переводчики.</translation>
    </message>
    <message>
        <location filename="Screen01.ui.qml" line="109"/>
        <source>Save on Quit</source>
        <translation type="unfinished">Сохранить и выйти</translation>
    </message>
    <message>
        <location filename="Screen01.ui.qml" line="124"/>
        <source>Open Internet Connection</source>
        <translation type="unfinished">Открыть интернет-соединение</translation>
    </message>
    <message>
        <location filename="Screen01.ui.qml" line="130"/>
        <source>Open File</source>
        <translation type="unfinished">Открыть файл</translation>
    </message>
    <message>
        <location filename="Screen01.ui.qml" line="136"/>
        <source>Quit</source>
        <translation type="unfinished">Выйти</translation>
    </message>
</context>
</TS>
