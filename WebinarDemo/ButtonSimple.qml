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
import WebinarDemo 1.0
import QtQuick.Templates 2.1 as T

T.Button {
    id: control
    width: 310
    height: 43

    font: Constants.font
    implicitWidth: Math.max(
                       background ? background.implicitWidth : 0,
                       activeback.implicitWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(
                        background ? background.implicitHeight : 0,
                        activeback.implicitHeight + topPadding + bottomPadding)
    leftPadding: 4
    rightPadding: 4

    text: control.state
    property alias labelText: label.text
    autoExclusive: false
    checkable: true

    states: [
        State {
            name: "checked"
            when: control.checked

            PropertyChanges {
                target: inactiveback
                visible: false
            }

            PropertyChanges {
                target: control
                width: 310
                height: 42
            }

            PropertyChanges {
                target: label
                color: "#178afe"
            }
        },
        State {
            name: "normal"
            when: !control.pressed && !control.checked && !control.hovered

            PropertyChanges {
                target: activeback
                visible: false
            }

            PropertyChanges {
                target: lineindicator
                visible: false
            }
        }
    ]

    Image {
        id: activeback
        x: 0
        y: 0
        source: "assets/activeback_196_426.png"
    }

    Image {
        id: inactiveback
        x: 0
        y: 0
        source: "assets/inactiveback_196_427.png"
    }

    Text {
        id: label
        x: 0
        y: 4
        width: 310
        height: 34
        color: "#ffffff"
        text: "INACTIVE"
        horizontalAlignment: Text.AlignHCenter
        font.family: "IBM Plex Sans"
        font.pixelSize: 26
    }

    Image {
        id: lineindicator
        x: 0
        y: 41
        source: "assets/lineindicator_196_425.png"
    }
}
