.class public Lcom/alibaba/fastjson/serializer/CalendarCodec;
.super Ljava/lang/Object;
.source "CalendarCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;


# instance fields
.field private dateFactory:Ljavax/xml/datatype/DatatypeFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/CalendarCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 105
    instance-of v0, p3, Ljava/util/Calendar;

    if-eqz v0, :cond_b

    return-object p3

    .line 109
    :cond_b
    check-cast p3, Ljava/util/Date;

    if-nez p3, :cond_11

    const/4 p0, 0x0

    return-object p0

    .line 114
    :cond_11
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 115
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 116
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 118
    const-class p3, Ljavax/xml/datatype/XMLGregorianCalendar;

    if-ne p2, p3, :cond_43

    .line 119
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->dateFactory:Ljavax/xml/datatype/DatatypeFactory;

    if-nez p2, :cond_3a

    .line 121
    :try_start_2a
    invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->dateFactory:Ljavax/xml/datatype/DatatypeFactory;
    :try_end_30
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2a .. :try_end_30} :catch_31

    goto :goto_3a

    :catch_31
    move-exception p0

    .line 123
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not obtain an instance of DatatypeFactory."

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 127
    :cond_3a
    :goto_3a
    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->dateFactory:Ljavax/xml/datatype/DatatypeFactory;

    check-cast p1, Ljava/util/GregorianCalendar;

    invoke-virtual {p0, p1}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p0

    return-object p0

    :cond_43
    return-object p1
.end method

.method public getFastMatchToken()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 27
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez v1, :cond_c

    .line 30
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 35
    :cond_c
    instance-of v3, v1, Ljavax/xml/datatype/XMLGregorianCalendar;

    if-eqz v3, :cond_17

    .line 36
    check-cast v1, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v1}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v1

    goto :goto_19

    .line 38
    :cond_17
    check-cast v1, Ljava/util/Calendar;

    .line 41
    :goto_19
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 42
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 v0, 0x27

    goto :goto_2e

    :cond_2c
    const/16 v0, 0x22

    .line 45
    :goto_2e
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v3, 0x1

    .line 47
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    .line 48
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v3

    const/4 v6, 0x5

    .line 49
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xb

    .line 50
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xc

    .line 51
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v9, 0xd

    .line 52
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v11, 0xe

    .line 53
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v12, 0x10

    const/16 v13, 0x13

    const/16 v3, 0xa

    if-eqz v11, :cond_81

    const-string v16, "0000-00-00T00:00:00.000"

    .line 57
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    const/16 v15, 0x17

    .line 58
    invoke-static {v11, v15, v14}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 59
    invoke-static {v10, v13, v14}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 60
    invoke-static {v8, v12, v14}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 61
    invoke-static {v7, v9, v14}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 62
    invoke-static {v6, v3, v14}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v11, 0x7

    .line 63
    invoke-static {v5, v11, v14}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v15, 0x4

    .line 64
    invoke-static {v4, v15, v14}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_b3

    :cond_81
    const/4 v11, 0x7

    const/4 v15, 0x4

    if-nez v10, :cond_99

    if-nez v8, :cond_99

    if-nez v7, :cond_99

    const-string v7, "0000-00-00"

    .line 68
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    .line 69
    invoke-static {v6, v3, v14}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 70
    invoke-static {v5, v11, v14}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 71
    invoke-static {v4, v15, v14}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_b3

    :cond_99
    const-string v11, "0000-00-00T00:00:00"

    .line 73
    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    .line 74
    invoke-static {v10, v13, v14}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 75
    invoke-static {v8, v12, v14}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 76
    invoke-static {v7, v9, v14}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 77
    invoke-static {v6, v3, v14}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v3, 0x7

    .line 78
    invoke-static {v5, v3, v14}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v3, 0x4

    .line 79
    invoke-static {v4, v3, v14}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 83
    :goto_b3
    invoke-virtual {v2, v14}, Ljava/io/Writer;->write([C)V

    .line 85
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const v3, 0x36ee80

    div-int/2addr v1, v3

    if-nez v1, :cond_ca

    const-string v1, "Z"

    .line 87
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_107

    :cond_ca
    const-string v3, ":00"

    const/4 v4, 0x0

    const-string v5, "%02d"

    if-lez v1, :cond_ec

    const-string v6, "+"

    .line 89
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_107

    :cond_ec
    const/4 v7, 0x1

    const-string v6, "-"

    .line 91
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 94
    :goto_107
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_112

    .line 96
    :cond_10b
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    :goto_112
    return-void
.end method
