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
    width: 180
    height: 70

    font: Constants.font
    implicitWidth: Math.max(background ? background.implicitWidth : 0,
                            bigButtonON.implicitWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(background ? background.implicitHeight : 0,
                             bigButtonON.implicitHeight + topPadding + bottomPadding)
    leftPadding: 4
    rightPadding: 4

    text: control.state
    property alias iconOffSource: iconOff.source
    property alias iconOnSource: iconOn.source
    autoExclusive: false
    checkable: true

    Image {
        id: bigButtonON
        x: 0
        y: 0
        source: "assets/bigbutton1_on.png"
    }

    Image {
        id: bigButtonOFF
        x: 1
        y: 1
        source: "assets/bigbutton2_off.png"
    }

    Image {
        id: iconOn
        x: 70
        y: 62
        source: "assets/largelogo1_on_196_198.png"
    }

    Image {
        id: iconOff
        x: 71
        y: 63
        source: "assets/largelogo1_off_196_196.png"
    }





    states: [
        State {
            name: "checked"
            when: control.checked

            PropertyChanges {
                target: iconOff
                visible: false
            }

            PropertyChanges {
                target: bigButtonOFF
                visible: false
            }

        },
        State {
            name: "normal"
            when: !control.pressed && !control.checked &&!control.hovered

            PropertyChanges {
                target: bigButtonON
                visible: false
            }

            PropertyChanges {
                target: iconOn
                visible: false
            }

        }
    ]
}
