<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE TS>
<TS version="2.1" language="en_US">
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
        <translation type="unfinished">This is an example of a translatable UI.

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

Qt Linguist and lupdate are able to import and export XML Localization Interchange File Format (XLIFF) files, making it possible to take advantage of tools and translation services that work with this format. For more information on working with these files, see Translators.</translation>
    </message>
    <message>
        <location filename="Screen01.ui.qml" line="109"/>
        <source>Save on Quit</source>
        <translation type="unfinished">Save on Quit</translation>
    </message>
    <message>
        <location filename="Screen01.ui.qml" line="124"/>
        <source>Open Internet Connection</source>
        <translation type="unfinished">Open Internet Connection</translation>
    </message>
    <message>
        <location filename="Screen01.ui.qml" line="130"/>
        <source>Open File</source>
        <translation type="unfinished">Open File</translation>
    </message>
    <message>
        <location filename="Screen01.ui.qml" line="136"/>
        <source>Quit</source>
        <translation type="unfinished">Quit</translation>
    </message>
</context>
</TS>
