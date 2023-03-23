//
// Created by diwa on 2023/3/21.
//

#pragma once

#include <QObject>
#include <QSharedPointer>

class TalkData : public QObject
{
    Q_OBJECT
public:
    using QObject::QObject;
    enum DataType
    {
        Text
    };
    Q_ENUM(DataType)

    enum DataStatus
    {
        DataError,
        DataReady,
        ParseOn,
        ParseSuccess,
        ParseError
    };
    Q_ENUM(DataStatus)
};

struct TalkDataBasic
{
    qint64 id;
    QString user;
    QString sender;
    qint64 datetime;
    TalkData::DataType type = TalkData::Text;
    TalkData::DataStatus status = TalkData::DataError;
    virtual ~TalkDataBasic(){}
};

struct TalkDataText : public TalkDataBasic
{
    QString text;
};


