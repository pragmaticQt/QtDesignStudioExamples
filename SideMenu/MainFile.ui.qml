
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
import QtQuick.Layouts 1.4
import QtQuick.Timeline 1.0
import QtQuick.Studio.Effects 1.0

Item {
    id: mainFile
    width: 1917
    height: 1080

    Image {
        id: mainFileAsset
        x: 0
        y: 0
        source: "assets/artboard_1_copy_3_195_219.png"
    }

    Image {
        id: background
        x: 0
        y: 0
        width: 1920
        height: 1080
        source: "assets/back_195_184.png"

        RowLayout {
            id: top_menu
            x: 502
            y: 13
            spacing: -25.5

            CustomButton {
                id: customButton0
                checked: true
                autoExclusive: true
                onClicked: stackLayout.currentIndex = 0
            }

            CustomButton {
                id: customButton1
                autoExclusive: true
                onClicked: stackLayout.currentIndex = 1
            }

            CustomButton {
                id: customButton2
                autoExclusive: true
                onClicked: stackLayout.currentIndex = 2
            }

            CustomButton {
                id: customButton3
                autoExclusive: true
                onClicked: stackLayout.currentIndex = 3
            }

            CustomButton {
                id: customButton4
                autoExclusive: true
                onClicked: stackLayout.currentIndex = 4
            }

            CustomButton {
                id: customButton5
                autoExclusive: true
                onClicked: stackLayout.currentIndex = 5
            }
        }
    }

    FrameBack {
        id: frame
        x: 382
        y: 230

        StackLayout {
            id: stackLayout
            x: 0
            y: 0
            anchors.fill: parent

            EffectStack {
                id: effectStack
            }

            EffectStack {
                id: effectStack1
                imageSource: "placeholders/shuttle2.jpg"
            }

            EffectStack {
                id: effectStack2
                imageSource: "placeholders/shuttle3.jpg"
            }

            EffectStack {
                id: effectStack3
                imageSource: "placeholders/shuttle4.jpg"
            }

            EffectStack {
                id: effectStack4
                imageSource: "placeholders/shuttle5.jpg"
            }

            EffectStack {
                id: effectStack5
                imageSource: "placeholders/shuttle6.jpg"
            }
        }
    }

    SideMenu {
        id: side_menu
        x: 0
        y: 0
    }
}
