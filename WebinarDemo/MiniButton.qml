
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
    width: 97
    height: 97

    font: Constants.font
    implicitWidth: Math.max(background ? background.implicitWidth : 0,
                            backOFF.implicitWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(
                        background ? background.implicitHeight : 0,
                        backOFF.implicitHeight + topPadding + bottomPadding)
    leftPadding: 4
    rightPadding: 4

    text: control.state
    property alias iconOFFY: iconOFF.y
    property alias iconOFFX: iconOFF.x
    property alias iconONY: iconON.y
    property alias iconONX: iconON.x
    property alias iconOFFHeight: iconOFF.height
    property alias iconOFFWidth: iconOFF.width
    property alias iconONHeight: iconON.height
    property alias iconONWidth: iconON.width
    property alias iconONSource: iconON.source
    property alias iconOFFSource: iconOFF.source
    autoExclusive: false
    checkable: true

    Image {
        id: backOFF
        x: 0
        y: 1
        source: "assets/smallbutton4.png"
    }

    Image {
        id: backON
        x: 1
        y: 1
        source: "assets/smallbutton1_on.png"
    }

    Image {
        id: iconON
        x: 24
        y: 19
        height: 58
        fillMode: Image.PreserveAspectFit
        source: "assets/smalllogo1_on_196_210.png"
    }

    Image {
        id: iconOFF
        x: 23
        y: 19
        width: 51
        height: 58
        fillMode: Image.PreserveAspectFit
        source: "assets/smalllogo1_off_196_208.png"
    }

    states: [
        State {
            name: "checked"
            when: control.checked

            PropertyChanges {
                target: backOFF
                x: 1
                y: 1
                visible: false
            }

            PropertyChanges {
                target: iconON
                visible: true
            }

            PropertyChanges {
                target: iconOFF
                visible: false
            }
        },
        State {
            name: "normal"
            when: !control.pressed && !control.checked && !control.hovered

            PropertyChanges {
                target: backON
                visible: false
            }

            PropertyChanges {
                target: iconON
                visible: false
            }
        }
    ]
}
