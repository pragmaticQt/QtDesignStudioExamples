

/****************************************************************************
**
** Copyright (C) 2019 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Design Studio.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/
import QtQuick 2.10
import translation 1.0
import QtQuick.Timeline 1.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.0

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                pingPong: true
                loops: -1
                to: 1000
                running: true
                duration: 1000
                from: 0
            }
        ]
        endFrame: 1000
        enabled: true
        startFrame: 0
    }

    Flickable {
        id: flickable
        contentHeight: largeText.height
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.rightMargin: 220
        anchors.left: parent.left
        anchors.leftMargin: 32
        anchors.top: parent.top
        anchors.topMargin: 32

        Text {
            id: largeText
            width: flickable.width
            text: qsTr("This is an example of a translatable UI.

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

A single phrase may need to be translated into several different forms depending on context. For example, open in English might become öffnen, 'open file', or aufbauen, 'open internet connection', in German.
Keyboard accelerators may need to be changed but without introducing conflicts. For example, 'Quit' in English becomes 'Avslutt' in Norwegian which does not contain a 'Q'. We cannot use a letter that is already in use - unless we change several accelerators.
Phrases that contain variables, for example, 'The 25 files selected will take 63 seconds to process', where the two numbers are inserted programmatically at run-time may need to be reworded because in a different language the word order and therefore the placement of the variables may have to change.
The Qt translation tools provide clear and simple solutions to these issues.

Qt Linguist and lupdate are able to import and export XML Localization Interchange File Format (XLIFF) files, making it possible to take advantage of tools and translation services that work with this format. For more information on working with these files, see Translators.")
            wrapMode: Text.WordWrap

            //font: Constants.font
            //font.family: Constants.font.family
            font.pixelSize: Constants.font.pixelSize
        }
    }

    Rectangle {
        id: rectangle1
        x: 834
        width: 220
        color: "#8e8c8c"
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right

        CheckBox {
            id: checkBox
            y: 720
            text: qsTr("Save on Quit")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 10
        }

        ColumnLayout {
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 10

            Button {
                id: button
                text: qsTr("Open Internet Connection")
                Layout.preferredWidth: 198
            }

            Button {
                id: button1
                text: qsTr("Open File")
                Layout.preferredWidth: 198
            }

            Button {
                id: button2
                text: qsTr("Quit")
                Layout.preferredWidth: 198
            }
        }
    }
}




/*##^## Designer {
    D{i:3;anchors_height:300;anchors_width:300}D{i:7;anchors_y:14}D{i:5;anchors_height:768;anchors_y:0}
}
 ##^##*/
