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
    id: smart_objects
    width: 1921
    height: 1081

    Image {
        id: smart_objectsAsset
        x: 0
        y: 0
        source: "assets/smart_objects.png"
    }

    Item {
        id: offbutton_196_22
        x: 89
        y: 101
        Image {
            id: buttonoffbackground_196_11
            x: 0
            y: 0
            source: "assets/buttonoffbackground_196_11.png"
        }

        Image {
            id: buttonlinebottom_copy_196_40
            x: 14
            y: 170
            source: "assets/buttonlinebottom_copy_196_40.png"
        }

        Image {
            id: buttonlinetop_copy_196_41
            x: 14
            y: 30
            source: "assets/buttonlinetop_copy_196_41.png"
        }

        Image {
            id: toplineindicator_copy_196_42
            x: 14
            y: 29
            source: "assets/toplineindicator_copy_196_42.png"
        }
    }

    Item {
        id: onbutton_196_68
        x: 375
        y: 100
        Image {
            id: buttononbackground_196_64
            x: 0
            y: 0
            source: "assets/buttononbackground_196_64.png"
        }

        Image {
            id: buttonlinebottom_196_65
            x: 17
            y: 171
            source: "assets/buttonlinebottom_196_65.png"
        }

        Image {
            id: buttonlinetop_196_66
            x: 17
            y: 31
            source: "assets/buttonlinetop_196_66.png"
        }

        Image {
            id: toplineindicator_196_67
            x: 137
            y: 30
            source: "assets/toplineindicator_196_67.png"
        }
    }

    Item {
        id: largelogos_196_572
        x: 89
        y: 377
        Image {
            id: largelogo1_off_196_196
            x: 0
            y: 5
            source: "assets/largelogo1_off_196_196.png"
        }

        Image {
            id: largelogo1_on_196_198
            x: 162
            y: 4
            source: "assets/largelogo1_on_196_198.png"
        }

        Image {
            id: largelogo2_off_196_200
            x: 363
            y: 5
            source: "assets/largelogo2_off_196_200.png"
        }

        Image {
            id: largelogo2_on_196_202
            x: 525
            y: 0
            source: "assets/largelogo2_on_196_202.png"
        }

        Image {
            id: largelogo3_off_196_204
            x: 750
            y: 5
            source: "assets/largelogo3_off_196_204.png"
        }

        Image {
            id: largelogo3_on_196_206
            x: 912
            y: 4
            source: "assets/largelogo3_on_196_206.png"
        }
    }

    Item {
        id: smalllogos_196_576
        x: 89
        y: 536
        Image {
            id: smalllogo1_off_196_208
            x: 0
            y: 8
            source: "assets/smalllogo1_off_196_208.png"
        }

        Image {
            id: smalllogo1_on_196_210
            x: 113
            y: 8
            source: "assets/smalllogo1_on_196_210.png"
        }

        Image {
            id: smalllogo2_off_196_212
            x: 266
            y: 8
            source: "assets/smalllogo2_off_196_212.png"
        }

        Image {
            id: smalllogo2_on_196_214
            x: 380
            y: 8
            source: "assets/smalllogo2_on_196_214.png"
        }

        Image {
            id: smalllogo3_off_196_216
            x: 541
            y: 0
            source: "assets/smalllogo3_off_196_216.png"
        }

        Image {
            id: smalllogo3_on_196_218
            x: 646
            y: 0
            source: "assets/smalllogo3_on_196_218.png"
        }

        Image {
            id: smalllogo4_off_196_220
            x: 847
            y: 7
            source: "assets/smalllogo4_off_196_220.png"
        }

        Image {
            id: smalllogo4_on_196_222
            x: 968
            y: 1
            source: "assets/smalllogo4_on_196_222.png"
        }
    }

    Item {
        id: tabbutotons_196_574
        x: 94
        y: 714
        Image {
            id: tabbutton_active_196_418
            x: 0
            y: 0
            source: "assets/tabbutton_active_196_418.png"
        }

        Image {
            id: tabbutton_inactive_196_420
            x: 314
            y: 0
            source: "assets/tabbutton_inactive_196_420.png"
        }
    }
}
