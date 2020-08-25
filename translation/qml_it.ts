<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE TS>
<TS version="2.1" language="it_IT">
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
        <translation type="unfinished">Questo è un esempio di un&apos;interfaccia utente traducibile.

Qt supporta la maggior parte delle lingue in uso oggi, in particolare:

Tutte le lingue dell&apos;Asia orientale (cinese, giapponese e coreano)
Tutte le lingue occidentali (utilizzando la scrittura latina)
arabo
Lingue cirilliche (russo, ucraino, ucraino, ecc.)
greco
ebraico
Thai e Lao
Tutti gli script in Unicode 6.2 che non richiedono un&apos;elaborazione speciale
bengalese
Birmano (Myanmar)
Devanagari
Gujarati
Gurmukhi
Kannada
Khmer
Malesia
Tamil
Telugu
tibetano

L&apos;elenco di cui sopra è supportato e funzionerà su tutte le piattaforme fintanto che il sistema ha i font per rendere questi sistemi di scrittura installati.
La maggior parte del testo che deve essere tradotto in un&apos;applicazione consiste di singole parole o di brevi frasi.

Le frasi sono inserite nel codice sorgente dallo sviluppatore nella propria lingua madre, utilizzando una sintassi semplice ma speciale per identificare che le frasi devono essere tradotte. Gli strumenti Qt forniscono informazioni di contesto per ciascuna delle frasi per aiutare il traduttore, e lo sviluppatore è in grado di aggiungere informazioni di contesto aggiuntive alle frasi quando necessario.

Le stringhe in QML possono essere contrassegnate per la traduzione usando le funzioni qsTr(), qsTranslate(), qsTrId(), QT_TR_NOOP(), QT_TRANSLATE_NOOP() e QT_TRID_NOOP().

Il gestore del rilascio genera un insieme di file di traduzione che vengono prodotti dai file sorgente e li passa al traduttore. Il traduttore apre i file di traduzione usando Qt Linguist, inserisce le loro traduzioni e salva i risultati nei file di traduzione, che passano al gestore del rilascio. Il gestore di rilascio genera quindi versioni veloci e compatte di questi file di traduzione pronti per l&apos;uso da parte dell&apos;applicazione.

Gli strumenti sono progettati per essere utilizzati in cicli ripetuti quando le applicazioni cambiano ed evolvono, preservando le traduzioni esistenti e rendendo facile identificare quali nuove traduzioni sono necessarie. Qt Linguist fornisce anche una funzione di frasario per garantire traduzioni coerenti tra più applicazioni e progetti.

I traduttori e gli sviluppatori devono affrontare una serie di problemi a causa delle sottigliezze e complessità del linguaggio umano:

Una singola frase può aver bisogno di essere tradotta in diverse forme diverse a seconda del contesto. Per esempio, open in inglese potrebbe diventare öffnen, &apos;open file&apos;, o aufbauen, &apos;open internet connection&apos;, in tedesco.
Gli acceleratori di tastiera possono aver bisogno di essere cambiati, ma senza introdurre conflitti. Ad esempio, &quot;Quit&quot; in inglese diventa &quot;Avslutt&quot; in norvegese che non contiene una &quot;Q&quot;. Non possiamo usare una lettera che è già in uso - a meno che non si cambino più acceleratori.
Frasi che contengono variabili, ad esempio, &apos;I 25 file selezionati impiegheranno 63 secondi per essere elaborati&apos;, dove i due numeri sono inseriti programmaticamente a tempo di esecuzione potrebbe essere necessario riformularli perché in una lingua diversa potrebbe essere necessario modificare l&apos;ordine delle parole e quindi il posizionamento delle variabili.
Gli strumenti di traduzione di Qt forniscono soluzioni chiare e semplici a questi problemi.

Qt Linguist e lupdate sono in grado di importare ed esportare file XML Localization Interchange File Format (XLIFF), rendendo possibile usufruire degli strumenti e dei servizi di traduzione che funzionano con questo formato. Per ulteriori informazioni su come lavorare con questi file, vedere Traduttori.</translation>
    </message>
    <message>
        <location filename="Screen01.ui.qml" line="109"/>
        <source>Save on Quit</source>
        <translation type="unfinished">Risparmiare su Quit</translation>
    </message>
    <message>
        <location filename="Screen01.ui.qml" line="124"/>
        <source>Open Internet Connection</source>
        <translation type="unfinished">Connessione Internet aperta</translation>
    </message>
    <message>
        <location filename="Screen01.ui.qml" line="130"/>
        <source>Open File</source>
        <translation type="unfinished">Apri file</translation>
    </message>
    <message>
        <location filename="Screen01.ui.qml" line="136"/>
        <source>Quit</source>
        <translation type="unfinished">Smettere</translation>
    </message>
</context>
</TS>
