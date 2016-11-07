#include <QApplication>
#include <QQuickView>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQuickView *view = new QQuickView;
    view->setSource(QUrl::fromLocalFile("res/qml/main.qml"));
    view->setGeometry(0, 0, 640, 480);
    view->show();

    return app.exec();
}
