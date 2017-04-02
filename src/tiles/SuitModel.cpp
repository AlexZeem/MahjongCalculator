#include "SuitModel.h"

namespace tile {
namespace suit {

enum { TILE_COUNT = 9 };

enum Role {
    ROLE_DATA = Qt::UserRole + 1
};

struct SuitModel::impl_t
{
    impl_t(SuitModel &obj)
        : master(obj)
    { }


    SuitModel &master;
};

SuitModel::SuitModel(QObject *parent)
    : QAbstractListModel(parent)
    , impl(new impl_t(*this))
{ }

SuitModel::~SuitModel()
{ }

QVariant SuitModel::data(const QModelIndex &index, int role) const
{
    if (role != ROLE_DATA) { return QVariant(); }

    int idx = index.row();
    if ((idx < 0) || (static_cast<size_t>(idx) >= TILE_COUNT)) { return QVariant(); }

    //TODO
    return QVariant();
}

int SuitModel::rowCount(const QModelIndex& parent) const
{
    Q_UNUSED(parent);
    return TILE_COUNT;
}

QHash<int, QByteArray> SuitModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[ROLE_DATA] = "data";
    return roles;
}

} //namespace suit
} //namespace tile
