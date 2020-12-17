.class public Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;
.super Ljava/lang/Object;
.source "TimeDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
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

    .line 17
    iget-object p0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 19
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p2

    const/16 p3, 0x10

    if-ne p2, p3, :cond_4b

    const/4 p1, 0x4

    .line 20
    invoke-interface {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 22
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p2

    const-string/jumbo v0, "syntax error"

    if-ne p2, p1, :cond_45

    const/4 p1, 0x2

    .line 26
    invoke-interface {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 28
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p2

    if-ne p2, p1, :cond_3f

    .line 32
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide p1

    const/16 v1, 0xd

    .line 33
    invoke-interface {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 34
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    if-ne v2, v1, :cond_39

    .line 37
    invoke-interface {p0, p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 39
    new-instance p0, Ljava/sql/Time;

    invoke-direct {p0, p1, p2}, Ljava/sql/Time;-><init>(J)V

    return-object p0

    .line 35
    :cond_39
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_3f
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_45
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_4b
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_53

    return-object p1

    .line 48
    :cond_53
    instance-of p2, p0, Ljava/sql/Time;

    if-eqz p2, :cond_58

    return-object p0

    .line 50
    :cond_58
    instance-of p2, p0, Ljava/lang/Number;

    if-eqz p2, :cond_68

    .line 51
    new-instance p1, Ljava/sql/Time;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/sql/Time;-><init>(J)V

    return-object p1

    .line 52
    :cond_68
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_b9

    .line 53
    check-cast p0, Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_75

    return-object p1

    .line 59
    :cond_75
    new-instance p1, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result p2

    if-eqz p2, :cond_89

    .line 61
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCalendar()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    goto :goto_b0

    :cond_89
    const/4 p2, 0x0

    move p3, p2

    .line 64
    :goto_8b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p3, v0, :cond_a1

    .line 65
    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_a2

    const/16 v1, 0x39

    if-le v0, v1, :cond_9e

    goto :goto_a2

    :cond_9e
    add-int/lit8 p3, p3, 0x1

    goto :goto_8b

    :cond_a1
    const/4 p2, 0x1

    :cond_a2
    :goto_a2
    if-nez p2, :cond_ac

    .line 72
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 73
    invoke-static {p0}, Ljava/sql/Time;->valueOf(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object p0

    return-object p0

    .line 76
    :cond_ac
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 78
    :goto_b0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 79
    new-instance p0, Ljava/sql/Time;

    invoke-direct {p0, p2, p3}, Ljava/sql/Time;-><init>(J)V

    return-object p0

    .line 82
    :cond_b9
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
