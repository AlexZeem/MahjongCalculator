#include <memory>
#include <QAbstractListModel>

namespace tile {
namespace suit {

class SuitModel : public QAbstractListModel
{
    Q_OBJECT

public:
    explicit SuitModel(QObject *parent = nullptr);
    virtual ~SuitModel();

    virtual QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const;
    virtual int rowCount(const QModelIndex &parent = QModelIndex()) const;
    virtual QHash<int, QByteArray> roleNames() const;

signals:

private slots:

private:
    struct impl_t;
    std::unique_ptr<impl_t> impl;
};

} //namespace suit
} //namespace tile
