#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QFontDatabase>

void loadFonts(){
    QFontDatabase::addApplicationFont(QStringLiteral(":/assets/fonts/Roboto-Regular.ttf"));
    QFontDatabase::addApplicationFont(QStringLiteral(":/assets/fonts/Roboto-Medium.ttf"));
    QFontDatabase::addApplicationFont(QStringLiteral(":/assets/fonts/Roboto-Bold.ttf"));
}

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    loadFonts();

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    engine.load(url);

    return app.exec();
}
