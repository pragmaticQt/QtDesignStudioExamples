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

Item {
    id: minimenu
    width: 264
    height: 247
    property alias miniButton3Checked: miniButton3.checked
    property alias miniButton2Checked: miniButton2.checked
    property alias miniButton1Checked: miniButton1.checked
    property alias miniButtonChecked: miniButton.checked

    Item {
        id: minimenu_196_668
        x: 0
        y: 0
        MiniButton {
            id: miniButton
            x: 26
            y: 24
            width: 97
            height: 97
            checked: false
            hoverEnabled: false
        }

        MiniButton {
            id: miniButton1
            x: 143
            y: 24
            width: 97
            height: 97
            hoverEnabled: false
            iconONWidth: 51
            iconONHeight: 51.9
            iconONSource: "assets/smalllogo2_on_196_214.png"
            iconOFFHeight: 51.9
            iconOFFSource: "assets/smalllogo2_off_196_658.png"
        }

        MiniButton {
            id: miniButton2
            x: 26
            y: 138
            width: 97
            height: 97
            hoverEnabled: false
            iconONWidth: 51
            iconONSource: "assets/smalllogo3_on_196_218.png"
            iconOFFSource: "assets/smalllogo3_off_196_216.png"
        }

        MiniButton {
            id: miniButton3
            x: 143
            y: 138
            width: 97
            height: 97
            hoverEnabled: false
            iconONWidth: 51
            iconONSource: "assets/smalllogo4_on_196_222.png"
            iconOFFSource: "assets/smalllogo4_off_196_220.png"
        }

        Image {
            id: minimenuframe_196_667
            x: 0
            y: 0
            source: "assets/minimenuframe_196_667.png"
        }
    }
}
