<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE TS>
<TS version="2.1" language="de_DE">
<context>
    <name>Screen01.ui</name>
    <message>
        <source>Hello translation</source>
        <translation type="vanished">Hallo Übersetzung</translation>
    </message>
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
        <translation type="unfinished">Dies ist ein Beispiel für eine übersetzbare Benutzeroberfläche.

Qt unterstützt insbesondere die meisten heute verwendeten Sprachen:

Alle ostasiatischen Sprachen (Chinesisch, Japanisch und Koreanisch)
Alle westlichen Sprachen (mit lateinischer Schrift)
Arabisch
Kyrillische Sprachen (Russisch, Ukrainisch, etc.)
Griechisch
Hebräisch
Thai und Laos
Alle Skripte in Unicode 6.2, die keine spezielle Verarbeitung erfordern.
Bengali
Birmanisch (Myanmar)
Devanagari
Gujarati
Gurmukhi
Kannada
Khmer
Malayalam
Tamilisch
Telugu
Tibetisch

Die obige Liste wird unterstützt und funktioniert auf allen Plattformen, solange das System über Schriften verfügt, um diese Schriftsysteme installiert zu machen.
Der größte Teil des Textes, der in einer Anwendung übersetzt werden muss, besteht entweder aus einzelnen Wörtern oder aus kurzen Sätzen.

Die Phrasen werden vom Entwickler in seiner Muttersprache mit einer einfachen, aber speziellen Syntax in den Quellcode eingegeben, um festzustellen, dass die Phrasen übersetzt werden müssen. Die Qt-Werkzeuge stellen Kontextinformationen für jede der Phrasen zur Verfügung, um den Übersetzer zu unterstützen, und der Entwickler kann bei Bedarf zusätzliche Kontextinformationen zu den Phrasen hinzufügen.

Zeichenketten in QML können mit den Funktionen qsTr(), qsTranslate(), qsTrId(), QT_TR_NOOP(), QT_TRANSLATE_NOOP() und QT_TRID_NOOP() zur Übersetzung markiert werden.

Der Release-Manager erzeugt einen Satz von Übersetzungsdateien, die aus den Quelldateien erzeugt werden, und gibt diese an den Übersetzer weiter. Der Übersetzer öffnet die Übersetzungsdateien mit Qt Linguist, trägt ihre Übersetzungen ein und speichert die Ergebnisse wieder in den Übersetzungsdateien, die er an den Release-Manager zurückgibt. Der Release-Manager erstellt dann schnell kompakte Versionen dieser Übersetzungsdateien, die von der Anwendung verwendet werden können.

Die Tools sind so konzipiert, dass sie in wiederholten Zyklen verwendet werden können, wenn sich Anwendungen ändern und weiterentwickeln, bestehende Übersetzungen beibehalten und es leicht gemacht wird, zu erkennen, welche neuen Übersetzungen benötigt werden. Qt Linguist bietet auch ein Phrasenbuch, um konsistente Übersetzungen über mehrere Anwendungen und Projekte hinweg sicherzustellen.

Übersetzer und Entwickler müssen sich aufgrund der Feinheiten und Komplexität der menschlichen Sprache mit einer Reihe von Problemen befassen:

Eine einzelne Phrase kann je nach Kontext in mehrere verschiedene Formen übersetzt werden müssen. So kann beispielsweise Open in Englisch zu öffnen, &apos;open file&apos; oder aufbauen, &apos;open internet connection&apos;, in Deutsch werden.
Tastenkombinationen müssen möglicherweise geändert werden, jedoch ohne Konflikte zu verursachen. Zum Beispiel wird aus &apos;Quit&apos; auf Englisch &apos;Avslutt&apos; auf Norwegisch, das kein &apos;Q&apos; enthält. Wir können keinen Buchstaben verwenden, der bereits in Gebrauch ist - es sei denn, wir ändern mehrere Tastenkombinationen.
Phrasen, die Variablen enthalten, z.B. &quot;Die Verarbeitung der 25 ausgewählten Dateien dauert 63 Sekunden&quot;, bei denen die beiden Zahlen zur Laufzeit programmatisch eingefügt werden, müssen möglicherweise neu formuliert werden, da sich in einer anderen Sprache die Wortfolge und damit die Platzierung der Variablen ändern muss.
Die Qt-Übersetzungstools bieten klare und einfache Lösungen für diese Probleme.

Qt Linguist und lupdate sind in der Lage, XLIFF-Dateien (XML Localization Interchange File Format) zu importieren und zu exportieren, was es ermöglicht, Werkzeuge und Übersetzungsdienste zu nutzen, die mit diesem Format arbeiten. Weitere Informationen zur Arbeit mit diesen Dateien finden Sie unter Translators.</translation>
    </message>
    <message>
        <location filename="Screen01.ui.qml" line="109"/>
        <source>Save on Quit</source>
        <translation type="unfinished">Speichern beim Beenden</translation>
    </message>
    <message>
        <location filename="Screen01.ui.qml" line="124"/>
        <source>Open Internet Connection</source>
        <translation type="unfinished">Internet Verbindung herstellen</translation>
    </message>
    <message>
        <location filename="Screen01.ui.qml" line="130"/>
        <source>Open File</source>
        <translation type="unfinished">Datei öffnen</translation>
    </message>
    <message>
        <location filename="Screen01.ui.qml" line="136"/>
        <source>Quit</source>
        <translation type="unfinished">Beenden</translation>
    </message>
</context>
</TS>
