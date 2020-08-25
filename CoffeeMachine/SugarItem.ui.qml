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

import QtQuick 2.7
import QtQuick.Timeline 1.0

Item {
    width: 119
    height: 111
    rotation: -45

    property alias sugarAmount: timeline.currentFrame

    Rectangle {
        id: cube1
        x: 21
        y: 8
        width: 48
        height: 48
        color: "#ffffff"
        scale: 0.5
        opacity: 0
    }

    Rectangle {
        id: cube2
        x: 74
        y: 40
        width: 32
        height: 32
        color: "#ffffff"
        scale: 0.5
        opacity: 0
    }

    Rectangle {
        id: cube3
        x: 45
        y: 62
        width: 24
        height: 24
        color: "#ffffff"
        scale: 0.5
        opacity: 0
    }

    Timeline {
        id: timeline
        enabled: true
        endFrame: 10
        startFrame: 0

        KeyframeGroup {
            target: cube1
            property: "opacity"

            Keyframe {
                value: 1.0
                frame: 2
            }
        }

        KeyframeGroup {
            target: cube1
            property: "scale"

            Keyframe {
                value: 1
                frame: 4
            }
        }

        KeyframeGroup {
            target: cube2
            property: "opacity"

            Keyframe {
                value: 0
                frame: 2
            }
            Keyframe {
                value: 1.0
                frame: 4
            }
        }

        KeyframeGroup {
            target: cube2
            property: "scale"

            Keyframe {
                value: 0.5
                frame: 3
            }
            Keyframe {
                value: 1
                frame: 7
            }
        }

        KeyframeGroup {
            target: cube3
            property: "opacity"

            Keyframe {
                value: 0
                frame: 5
            }
            Keyframe {
                value: 1.0
                frame: 7
            }
        }

        KeyframeGroup {
            target: cube3
            property: "scale"

            Keyframe {
                value: 0.5
                frame: 6
            }
            Keyframe {
                value: 1
                frame: 10
            }
        }
    }
}

/*##^## Designer {
    D{i:0;height:111;timeline_expanded:true;width:119}
}
 ##^##*/
