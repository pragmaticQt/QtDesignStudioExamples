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
import QtQuick.Studio.Components 1.0
import QtQuick.Controls 2.3
import QtQuick.Timeline 1.0
import QtQuick.Layouts 1.3

Rectangle {
    id: tabbar
    width: 1200
    height: 50
    color: "#0d0d0d"

    property int index: 0

    RowLayout {
        y: 0
        anchors.left: parent.left
        anchors.right: parent.right

        Image {
            id: info
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            source: "images/info.png"

            MouseArea {
                id: infoClicked
                anchors.rightMargin: -64
                anchors.leftMargin: -64
                anchors.bottomMargin: -4
                anchors.topMargin: -4
                anchors.fill: parent
            }
        }

        Image {
            id: list
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            source: "images/list.png"

            MouseArea {
                id: listClicked
                anchors.topMargin: -4
                anchors.bottomMargin: -4
                anchors.rightMargin: -64
                anchors.leftMargin: -64
                anchors.fill: parent
            }
        }

        Image {
            id: settings
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            source: "images/settings.png"

            MouseArea {
                id: settingsClicked
                anchors.rightMargin: -64
                anchors.leftMargin: -64
                anchors.bottomMargin: -4
                anchors.topMargin: -4
                anchors.fill: parent
            }
        }
    }

    Rectangle {
        id: rectangle
        x: 8
        y: 38
        width: 365
        height: 4
        color: "#ffffff"
        Behavior on x {

            PropertyAnimation {
                duration: 140
            }
        }
    }

    Connections {
        target: listClicked
        onClicked: {
            tabbar.index = "1"
        }
    }

    Connections {
        target: infoClicked
        onClicked: {
            tabbar.index = "0"
        }
    }

    Connections {
        target: settingsClicked
        onClicked: {
            tabbar.index = "2"
        }
    }
    states: [
        State {
            name: "Left"
            when: tabbar.index === 0

            PropertyChanges {
                target: info
                source: "images/info_selected.png"
            }

            PropertyChanges {
                target: rectangle
                x: 8
            }
        },
        State {
            name: "Middle"
            when: tabbar.index === 1

            PropertyChanges {
                target: list
                source: "images/list_selected.png"
            }

            PropertyChanges {
                target: rectangle
                x: 418
            }
        },
        State {
            name: "Right"
            when: tabbar.index === 2

            PropertyChanges {
                target: settings
                source: "images/settings_selected.png"
            }

            PropertyChanges {
                target: rectangle
                x: 827
            }
        }
    ]
}
