.class public Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.source "SqlDateDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

.field public static final instance_timestamp:Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;


# instance fields
.field private timestamp:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

    .line 16
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;-><init>(Z)V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->instance_timestamp:Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->timestamp:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;-><init>()V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->timestamp:Z

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->timestamp:Z

    return-void
.end method


# virtual methods
.method protected cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 30
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->timestamp:Z

    if-eqz v0, :cond_9

    .line 31
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->castTimestamp(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    if-nez p4, :cond_d

    return-object p0

    .line 38
    :cond_d
    instance-of p2, p4, Ljava/util/Date;

    if-eqz p2, :cond_1d

    .line 39
    new-instance p0, Ljava/sql/Date;

    check-cast p4, Ljava/util/Date;

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Ljava/sql/Date;-><init>(J)V

    goto :goto_2c

    .line 40
    :cond_1d
    instance-of p2, p4, Ljava/lang/Number;

    if-eqz p2, :cond_2d

    .line 41
    new-instance p0, Ljava/sql/Date;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Ljava/sql/Date;-><init>(J)V

    :goto_2c
    return-object p0

    .line 42
    :cond_2d
    instance-of p2, p4, Ljava/lang/String;

    if-eqz p2, :cond_75

    .line 43
    check-cast p4, Ljava/lang/String;

    .line 44
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_3a

    return-object p0

    .line 50
    :cond_3a
    new-instance p0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {p0, p4}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 52
    :try_start_3f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCalendar()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    goto :goto_67

    .line 56
    :cond_4e
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFormat()Ljava/text/DateFormat;

    move-result-object p1
    :try_end_52
    .catchall {:try_start_3f .. :try_end_52} :catchall_70

    .line 58
    :try_start_52
    invoke-virtual {p1, p4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 59
    new-instance p2, Ljava/sql/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/sql/Date;-><init>(J)V
    :try_end_5f
    .catch Ljava/text/ParseException; {:try_start_52 .. :try_end_5f} :catch_63
    .catchall {:try_start_52 .. :try_end_5f} :catchall_70

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    return-object p2

    .line 65
    :catch_63
    :try_start_63
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_70

    .line 68
    :goto_67
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 70
    new-instance p0, Ljava/sql/Date;

    invoke-direct {p0, p1, p2}, Ljava/sql/Date;-><init>(J)V

    return-object p0

    :catchall_70
    move-exception p1

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    throw p1

    .line 72
    :cond_75
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parse error : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected castTimestamp(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p4, :cond_4

    return-object p0

    .line 85
    :cond_4
    instance-of p2, p4, Ljava/util/Date;

    if-eqz p2, :cond_14

    .line 86
    new-instance p0, Ljava/sql/Timestamp;

    check-cast p4, Ljava/util/Date;

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object p0

    .line 89
    :cond_14
    instance-of p2, p4, Ljava/lang/Number;

    if-eqz p2, :cond_24

    .line 90
    new-instance p0, Ljava/sql/Timestamp;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object p0

    .line 93
    :cond_24
    instance-of p2, p4, Ljava/lang/String;

    if-eqz p2, :cond_6c

    .line 94
    check-cast p4, Ljava/lang/String;

    .line 95
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_31

    return-object p0

    .line 100
    :cond_31
    new-instance p0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {p0, p4}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 102
    :try_start_36
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result p2

    if-eqz p2, :cond_45

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCalendar()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    goto :goto_5e

    .line 106
    :cond_45
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFormat()Ljava/text/DateFormat;

    move-result-object p1
    :try_end_49
    .catchall {:try_start_36 .. :try_end_49} :catchall_67

    .line 108
    :try_start_49
    invoke-virtual {p1, p4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 109
    new-instance p2, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V
    :try_end_56
    .catch Ljava/text/ParseException; {:try_start_49 .. :try_end_56} :catch_5a
    .catchall {:try_start_49 .. :try_end_56} :catchall_67

    .line 118
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    return-object p2

    .line 115
    :catch_5a
    :try_start_5a
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_67

    .line 118
    :goto_5e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 121
    new-instance p0, Ljava/sql/Timestamp;

    invoke-direct {p0, p1, p2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object p0

    :catchall_67
    move-exception p1

    .line 118
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    throw p1

    .line 124
    :cond_6c
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string p1, "parse error"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFastMatchToken()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method
