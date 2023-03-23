//
// Created by diwa on 2023/3/21.
//

#include "TalkListModel.h"

#include <QTimer>
#include <QDateTime>
#include <QRandomGenerator>

TalkListModel::TalkListModel(QObject *parent)
    : QAbstractListModel(parent)
{
}

int TalkListModel::rowCount(const QModelIndex &parent) const
{
    if (parent.isValid())
        return 0;

    return talkList.count();
}

QVariant TalkListModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant();

    const int row=index.row();
    auto item=talkList.at(row);
    switch(role)
    {
    default:break;
    case Qt::UserRole+0:
        return item->id;
    case Qt::UserRole+1:
        return item->user;
    case Qt::UserRole+2:
        return item->sender;
    case Qt::UserRole+3:
        return QDateTime::fromMSecsSinceEpoch(item->datetime).toString("hh:mm:ss yyyy-MM-dd");
    case Qt::UserRole+4:
        return item->type;
    case Qt::UserRole+5:
        return item->status;
    case Qt::UserRole+100:
    {
        TalkDataText *talk_data=static_cast<TalkDataText*>(item.get());
        return talk_data->text;
    }
    }

    return QVariant();
}

QHash<int, QByteArray> TalkListModel::roleNames() const
{
    return QHash<int,QByteArray>{
        { Qt::UserRole+0, "id" }
        ,{ Qt::UserRole+1, "user" }
        ,{ Qt::UserRole+2, "sender" }
        ,{ Qt::UserRole+3, "datetime" }
        ,{ Qt::UserRole+4, "type" }
        ,{ Qt::UserRole+5, "status" }
        ,{ Qt::UserRole+100, "text_text" }

    };
}

void TalkListModel::clearModel()
{
    beginResetModel();
    talkList.clear();
    endResetModel();
}

void TalkListModel::appendText(const QString &user,
                               const QString &sender,
                               const QString &text)
{
    TalkDataText *talk_data=new TalkDataText;
    talk_data->id=0;
    talk_data->user=user;
    talk_data->sender=sender;
    talk_data->datetime=QDateTime::currentDateTime().toMSecsSinceEpoch();
    talk_data->type=TalkData::Text;
    talk_data->text=text;

    beginInsertRows(QModelIndex(),talkList.count(),talkList.count());
    talkList.push_back(QSharedPointer<TalkDataBasic>(talk_data));
    endInsertRows();
}


bool TalkListModel::isVaidRow(int row) const
{
    return (row>=0&&row<talkList.count());
}
