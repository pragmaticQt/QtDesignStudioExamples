lupdate translation.pro /*Can be run on QML files directly */
lrelease translation.pro -qm i18n/qml_de.qm

qmlscene -I imports -translation i18n/qml_de.qm translation.qml