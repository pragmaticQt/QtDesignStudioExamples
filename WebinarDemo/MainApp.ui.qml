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
import QtQuick.Timeline 1.0
import QtQuick.Layouts 1.5

Item {
    id: mainApp
    width: 1920
    height: 1080
    property alias burgermenuChecked: burgermenu.checked

    Image {
        id: backgroundgradient
        x: 0
        y: 0
        source: "assets/backgroundgradient_196_500.png"
    }

    Tabmenu {
        id: tabmenu
        x: 407
        y: 93
    }

    Leftdrawer {
        id: leftdrawer
        x: 0
        y: 1
    }

    Burgermenu {
        id: burgermenu
        x: 41
        y: 37
        checked: true
    }

    StackLayout {
        id: stackLayoutMain
        x: 406
        y: 52
        width: 1473
        height: 1002

        MainPanel {
            id: mainPanel
            stacklayoutframeImageSource: "mockups/mock3.jpg"
            stacklayoutframeImage2Source: "mockups/mock2.jpg"
            buttonSimpleLabelText: "STACK 1 A"
            buttonSimple2LabelText: "STACK 1 C"
            buttonSimple1LabelText: "STACK 1 B"
        }

        MainPanel {
            id: mainPanel1
            stacklayoutframeImageSource: "mockups/mock6.jpg"
            stacklayoutframeImage2Source: "mockups/mock5.jpg"
            stacklayoutframeImage1Source: "mockups/mock4.jpg"
            buttonSimple1LabelText: "STACK 2 B"
            buttonSimple2LabelText: "STACK 2 C"
            buttonSimpleLabelText: "STACK 2 A"
        }

        MainPanel {
            id: mainPanel2
            stacklayoutframeImageSource: "mockups/mock7.jpg"
            stacklayoutframeImage2Source: "mockups/mock6.jpg"
            stacklayoutframeImage1Source: "mockups/mock5.jpg"
            buttonSimple1LabelText: "STACK 3 B"
            buttonSimple2LabelText: "STACK 3 C"
            buttonSimpleLabelText: "STACK 3 A"
        }
    }

    Largepopup {
        id: largepopup
        x: 444
        y: 177
        open: minimenu.miniButtonChecked

        Drag.active: dragArea.drag.active
        Drag.hotSpot.x: 10
        Drag.hotSpot.y: 10

        MouseArea {
            id: dragArea
            anchors.fill: parent
            drag.target: parent
        }
    }

    Squarepopup {
        id: squarepopup
        x: 1387
        y: 123
        open: minimenu.miniButton1Checked

        Drag.active: dragArea1.drag.active
        Drag.hotSpot.x: 10
        Drag.hotSpot.y: 10

        MouseArea {
            id: dragArea1
            anchors.fill: parent
            drag.target: parent
        }
    }

    Smallpopup {
        id: smallpopup
        x: 1024
        y: 761
        open: minimenu.miniButton2Checked

        Drag.active: dragArea2.drag.active
        Drag.hotSpot.x: 10
        Drag.hotSpot.y: 10

        MouseArea {
            id: dragArea2
            anchors.fill: parent
            drag.target: parent
        }
    }

    Minimenu {
        id: minimenu
        x: 1577
        y: 755
    }
}
