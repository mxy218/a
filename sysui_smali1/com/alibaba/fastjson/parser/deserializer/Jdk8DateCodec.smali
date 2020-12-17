.class public Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;
.super Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;
.source "Jdk8DateCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field private static final defaultFormatter:Ljava/time/format/DateTimeFormatter;

.field private static final defaultPatttern:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_de:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_in:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_us:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d8:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    .line 34
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy/MM/dd HH:mm:ss"

    .line 35
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy年M月d日 HH:mm:ss"

    .line 36
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy年M月d日 H时m分s秒"

    .line 37
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy년M월d일 HH:mm:ss"

    .line 38
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    const-string v0, "MM/dd/yyyy HH:mm:ss"

    .line 39
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    const-string v0, "dd/MM/yyyy HH:mm:ss"

    .line 40
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    const-string v0, "dd.MM.yyyy HH:mm:ss"

    .line 41
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    const-string v0, "dd-MM-yyyy HH:mm:ss"

    .line 42
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyyMMdd"

    .line 44
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d8:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy/MM/dd"

    .line 45
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy年M月d日"

    .line 46
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy년M월d일"

    .line 47
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

    const-string v0, "MM/dd/yyyy"

    .line 48
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    const-string v0, "dd/MM/yyyy"

    .line 49
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    const-string v0, "dd.MM.yyyy"

    .line 50
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_de:Ljava/time/format/DateTimeFormatter;

    const-string v0, "dd-MM-yyyy"

    .line 51
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_in:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;-><init>()V

    return-void
.end method

.method private write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V
    .registers 4

    .line 292
    invoke-static {p3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    .line 293
    invoke-virtual {p0, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    .line 294
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .line 55
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 56
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p3

    const/4 p5, 0x4

    if-ne p3, p5, :cond_cc

    .line 57
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object p3

    .line 58
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 p1, 0x0

    if-eqz p4, :cond_18

    .line 62
    invoke-static {p4}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p5

    goto :goto_19

    :cond_18
    move-object p5, p1

    .line 65
    :goto_19
    const-class v0, Ljava/time/LocalDateTime;

    if-ne p2, v0, :cond_3e

    .line 67
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_33

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_2e

    goto :goto_33

    .line 71
    :cond_2e
    invoke-virtual {p0, p3, p5}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p0

    goto :goto_3d

    .line 68
    :cond_33
    :goto_33
    invoke-virtual {p0, p3, p4, p5}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p0

    .line 69
    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    :goto_3d
    return-object p0

    .line 74
    :cond_3e
    const-class v0, Ljava/time/LocalDate;

    const/16 v1, 0x17

    if-ne p2, v0, :cond_64

    .line 76
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v1, :cond_5f

    .line 77
    invoke-static {p3}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result p1

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result p2

    .line 79
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result p0

    .line 78
    invoke-static {p1, p2, p0}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    goto :goto_63

    .line 81
    :cond_5f
    invoke-virtual {p0, p3, p4, p5}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p0

    :goto_63
    return-object p0

    .line 85
    :cond_64
    const-class p0, Ljava/time/LocalTime;

    if-ne p2, p0, :cond_8c

    .line 87
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p0, v1, :cond_87

    .line 88
    invoke-static {p3}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getHour()I

    move-result p1

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result p2

    .line 90
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result p3

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getNano()I

    move-result p0

    .line 89
    invoke-static {p1, p2, p3, p0}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p0

    goto :goto_8b

    .line 92
    :cond_87
    invoke-static {p3}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object p0

    :goto_8b
    return-object p0

    .line 95
    :cond_8c
    const-class p0, Ljava/time/ZonedDateTime;

    if-ne p2, p0, :cond_95

    .line 96
    invoke-static {p3}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0

    .line 99
    :cond_95
    const-class p0, Ljava/time/OffsetDateTime;

    if-ne p2, p0, :cond_9e

    .line 100
    invoke-static {p3}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object p0

    return-object p0

    .line 103
    :cond_9e
    const-class p0, Ljava/time/OffsetTime;

    if-ne p2, p0, :cond_a7

    .line 104
    invoke-static {p3}, Ljava/time/OffsetTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;

    move-result-object p0

    return-object p0

    .line 107
    :cond_a7
    const-class p0, Ljava/time/ZoneId;

    if-ne p2, p0, :cond_b0

    .line 108
    invoke-static {p3}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p0

    return-object p0

    .line 111
    :cond_b0
    const-class p0, Ljava/time/Period;

    if-ne p2, p0, :cond_b9

    .line 112
    invoke-static {p3}, Ljava/time/Period;->parse(Ljava/lang/CharSequence;)Ljava/time/Period;

    move-result-object p0

    return-object p0

    .line 115
    :cond_b9
    const-class p0, Ljava/time/Duration;

    if-ne p2, p0, :cond_c2

    .line 116
    invoke-static {p3}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object p0

    return-object p0

    .line 119
    :cond_c2
    const-class p0, Ljava/time/Instant;

    if-ne p2, p0, :cond_cb

    .line 120
    invoke-static {p3}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object p0

    return-object p0

    :cond_cb
    return-object p1

    .line 125
    :cond_cc
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getFastMatchToken()I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method protected parseDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;
    .registers 13

    if-nez p2, :cond_e7

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x13

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p0, v0, :cond_bd

    .line 133
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/4 v0, 0x7

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0xa

    .line 135
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    .line 136
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    .line 137
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-ne v5, v7, :cond_bd

    if-ne v6, v7, :cond_bd

    const/16 v5, 0x2d

    if-ne p0, v5, :cond_41

    if-ne v0, v5, :cond_41

    const/16 p0, 0x54

    if-ne v4, p0, :cond_3a

    .line 141
    sget-object p0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    goto :goto_47

    :cond_3a
    const/16 p0, 0x20

    if-ne v4, p0, :cond_bd

    .line 143
    sget-object p0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    goto :goto_47

    :cond_41
    if-ne p0, v5, :cond_4a

    if-ne v0, v5, :cond_4a

    .line 146
    sget-object p0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    :goto_47
    move-object p2, p0

    goto/16 :goto_bd

    :cond_4a
    const/16 v4, 0x2f

    if-ne p0, v4, :cond_53

    if-ne v0, v4, :cond_53

    .line 148
    sget-object p0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    goto :goto_47

    :cond_53
    const/4 v0, 0x0

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 151
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x2

    .line 152
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x3

    .line 153
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x5

    .line 154
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v7, v4, :cond_ad

    if-ne v9, v4, :cond_ad

    add-int/lit8 v0, v0, -0x30

    mul-int/2addr v0, v3

    add-int/lit8 v6, v6, -0x30

    add-int/2addr v0, v6

    add-int/lit8 v8, v8, -0x30

    mul-int/2addr v8, v3

    add-int/lit8 p0, p0, -0x30

    add-int/2addr v8, p0

    const/16 p0, 0xc

    if-le v0, p0, :cond_82

    .line 159
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    goto :goto_bd

    :cond_82
    if-le v8, p0, :cond_87

    .line 161
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto :goto_bd

    .line 163
    :cond_87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const-string v0, "US"

    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 166
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto :goto_bd

    :cond_9a
    const-string v0, "BR"

    .line 167
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    const-string v0, "AU"

    .line 168
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bd

    .line 169
    :cond_aa
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    goto :goto_bd

    :cond_ad
    const/16 p0, 0x2e

    if-ne v7, p0, :cond_b6

    if-ne v9, p0, :cond_b6

    .line 173
    sget-object p0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    goto :goto_47

    :cond_b6
    if-ne v7, v5, :cond_bd

    if-ne v9, v5, :cond_bd

    .line 175
    sget-object p0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    goto :goto_47

    .line 181
    :cond_bd
    :goto_bd
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x11

    if-lt p0, v0, :cond_e7

    .line 182
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x5e74

    if-ne p0, v0, :cond_e0

    .line 184
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p2, 0x79d2

    if-ne p0, p2, :cond_dd

    .line 185
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    goto :goto_e7

    .line 187
    :cond_dd
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    goto :goto_e7

    :cond_e0
    const v0, 0xb144

    if-ne p0, v0, :cond_e7

    .line 190
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    :cond_e7
    :goto_e7
    if-nez p2, :cond_ee

    .line 196
    invoke-static {p1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object p0

    goto :goto_f2

    .line 197
    :cond_ee
    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p0

    :goto_f2
    return-object p0
.end method

.method protected parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;
    .registers 11

    if-nez p3, :cond_ae

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p2, 0x8

    if-ne p0, p2, :cond_c

    .line 203
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d8:Ljava/time/format/DateTimeFormatter;

    .line 206
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p2, 0x4

    const/16 v0, 0xa

    if-ne p0, v0, :cond_94

    .line 207
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/4 v1, 0x7

    .line 208
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne p0, v2, :cond_26

    if-ne v1, v2, :cond_26

    .line 210
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

    :cond_26
    const/4 v1, 0x0

    .line 213
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v3, 0x1

    .line 214
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x2

    .line 215
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x3

    .line 216
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x5

    .line 217
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v4, v2, :cond_81

    if-ne v6, v2, :cond_81

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v0

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v1, v3

    add-int/lit8 v5, v5, -0x30

    mul-int/2addr v5, v0

    add-int/lit8 p0, p0, -0x30

    add-int/2addr v5, p0

    const/16 p0, 0xc

    if-le v1, p0, :cond_56

    .line 222
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    goto :goto_94

    :cond_56
    if-le v5, p0, :cond_5b

    .line 224
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    goto :goto_94

    .line 226
    :cond_5b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const-string v0, "US"

    .line 228
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 229
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    goto :goto_94

    :cond_6e
    const-string v0, "BR"

    .line 230
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    const-string v0, "AU"

    .line 231
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_94

    .line 232
    :cond_7e
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    goto :goto_94

    :cond_81
    const/16 p0, 0x2e

    if-ne v4, p0, :cond_8b

    if-ne v6, p0, :cond_8b

    .line 236
    sget-object p0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_de:Ljava/time/format/DateTimeFormatter;

    :goto_89
    move-object p3, p0

    goto :goto_94

    :cond_8b
    const/16 p0, 0x2d

    if-ne v4, p0, :cond_94

    if-ne v6, p0, :cond_94

    .line 238
    sget-object p0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_in:Ljava/time/format/DateTimeFormatter;

    goto :goto_89

    .line 242
    :cond_94
    :goto_94
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x9

    if-lt p0, v0, :cond_ae

    .line 243
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p2, 0x5e74

    if-ne p0, p2, :cond_a7

    .line 245
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

    goto :goto_ae

    :cond_a7
    const p2, 0xb144

    if-ne p0, p2, :cond_ae

    .line 247
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

    :cond_ae
    :goto_ae
    if-nez p3, :cond_b5

    .line 253
    invoke-static {p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object p0

    goto :goto_b9

    .line 254
    :cond_b5
    invoke-static {p1, p3}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p0

    :goto_b9
    return-object p0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/BeanContext;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 287
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/BeanContext;->getFormat()Ljava/lang/String;

    move-result-object p3

    .line 288
    check-cast p2, Ljava/time/temporal/TemporalAccessor;

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget-object p3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez p2, :cond_8

    .line 265
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_30

    .line 267
    :cond_8
    const-class p5, Ljava/time/LocalDateTime;

    if-ne p4, p5, :cond_29

    .line 268
    move-object p4, p2

    check-cast p4, Ljava/time/LocalDateTime;

    .line 269
    invoke-virtual {p4}, Ljava/time/LocalDateTime;->getNano()I

    move-result p5

    if-nez p5, :cond_21

    .line 270
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormatPattern()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1d

    .line 272
    sget-object p1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 274
    :cond_1d
    invoke-direct {p0, p3, p4, p1}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    goto :goto_30

    .line 276
    :cond_21
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_30

    .line 279
    :cond_29
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    :goto_30
    return-void
.end method
