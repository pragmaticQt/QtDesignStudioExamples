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
import ebikeDesign 1.0
import EbikeData 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Controls 2.3
import QtQuick.Timeline 1.0
import QtQuick.Layouts 1.3

Item {
    id: page02
    width: Constants.width
    height: 320

    CustomLabel {
        x: 8
        y: 8
        text: qsTr("GENERAL")
        font.pixelSize: 24
    }

    GridLayout {
        y: 60
        anchors.right: parent.right
        anchors.rightMargin: 8
        anchors.left: parent.left
        anchors.leftMargin: 8
        rowSpacing: 20
        rows: 3
        columns: 5

        CustomLabel {
            id: label
            color: "#707070"
            text: qsTr("Language")
            Layout.preferredHeight: 44
            Layout.fillWidth: true
            font.pixelSize: 18
        }

        Item {
            id: spacer
            Layout.columnSpan: 3
            Layout.preferredHeight: 14
            Layout.preferredWidth: 14
        }

        CustomLabel {
            color: "#707070"
            text: "English"
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            font.pixelSize: 18
        }

        CustomLabel {
            color: "#707070"
            text: qsTr("Brightness")
            Layout.preferredHeight: 44
            font.pixelSize: 18
        }

        CheckBox {
            id: checkBox
            text: qsTr("Auto")
            font: label.font
        }

        Slider {
            id: slider1
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            Layout.columnSpan: 3
            value: Backend.brightness
            enabled: !checkBox.checked
            from: -0.6
            to: 0.6
        }

        CustomLabel {
            color: "#707070"
            text: qsTr("Units")
            Layout.preferredHeight: 44
            font.pixelSize: 18
        }

        Item {
            id: spacer1
            Layout.columnSpan: 2
            Layout.preferredHeight: 14
            Layout.preferredWidth: 14
        }

        RowLayout {
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            Layout.columnSpan: 2

            Button {
                id: button
                text: qsTr("MPH")
                autoExclusive: true
                checked: !Backend.metricSystem
                font: label.font
            }

            Button {
                id: button1
                text: qsTr("km/h")
                autoExclusive: true
                checked: Backend.metricSystem
                checkable: true
                font: label.font
            }
        }
    }

    Connections {
        target: button
        onClicked: Backend.metricSystem = false
    }

    Connections {
        target: button1
        onClicked: Backend.metricSystem = true
    }

    Connections {
        target: slider1
        onValueChanged: Backend.brightness = slider1.value
    }

    Connections {
        target: checkBox
        onClicked: {
            if (checkBox.checked) {
                slider1.value = 0.0
            }
        }
    }
}
