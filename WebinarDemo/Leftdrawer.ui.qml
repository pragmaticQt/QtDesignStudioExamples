
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
import QtQuick 2.8
import QtQuick.Layouts 1.0

import QtQuick 2.8
import QtQuick.Layouts 1.0

Item {
    id: leftdrawer
    width: 326
    height: 1081
    visible: true

    state: "closed"

    Item {
        id: lefttab_196_622
        x: 1
        y: 0
        Image {
            id: leftpanelbackground_196_597
            x: 0
            y: 0
            source: "assets/leftpanelbackground_196_597.png"
        }

        Item {
            id: largemenu_196_621
            x: 40
            y: 183

            ColumnLayout {
                x: 0
                y: 16
                spacing: 30

                ButtonBig {
                    id: buttonBig
                    checked: true
                    autoExclusive: true
                    Layout.preferredHeight: 239
                    Layout.preferredWidth: 240
                    onClicked: stackLayoutMain.currentIndex = 0
                }

                ButtonBig {
                    id: buttonBig1
                    iconOnSource: "assets/largelogo2_on_196_202.png"
                    iconOffSource: "assets/largelogo2_off_196_200.png"
                    autoExclusive: true
                    Layout.preferredHeight: 239
                    Layout.preferredWidth: 240
                    onClicked: stackLayoutMain.currentIndex = 1
                }

                ButtonBig {
                    id: buttonBig2
                    iconOnSource: "assets/largelogo3_on_196_206.png"
                    iconOffSource: "assets/largelogo3_off_196_204.png"
                    autoExclusive: true
                    Layout.preferredHeight: 239
                    Layout.preferredWidth: 240
                    onClicked: stackLayoutMain.currentIndex = 2
                }
            }
        }
    }
    states: [
        State {
            name: "closed"
            when: !burgermenu.checked

            PropertyChanges {
                target: leftdrawer
                visible: false
            }
        },
        State {
            name: "open"
            when: burgermenu.checked

            PropertyChanges {
                target: leftdrawer
                visible: true
            }
        }
    ]
}
