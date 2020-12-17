.class public Lcom/alibaba/fastjson/serializer/AwtCodec;
.super Ljava/lang/Object;
.source "AwtCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/AwtCodec;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lcom/alibaba/fastjson/serializer/AwtCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/AwtCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static support(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 22
    const-class v0, Ljava/awt/Point;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/awt/Rectangle;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/awt/Font;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/awt/Color;

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
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

    .line 96
    iget-object p3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 98
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0x8

    if-ne v0, v2, :cond_11

    .line 99
    invoke-interface {p3, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 p0, 0x0

    return-object p0

    .line 103
    :cond_11
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_29

    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-ne v0, v1, :cond_20

    goto :goto_29

    .line 104
    :cond_20
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo p1, "syntax error"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_29
    :goto_29
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 108
    const-class p3, Ljava/awt/Point;

    if-ne p2, p3, :cond_35

    .line 109
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parsePoint(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Point;

    move-result-object p0

    return-object p0

    .line 112
    :cond_35
    const-class p3, Ljava/awt/Rectangle;

    if-ne p2, p3, :cond_3e

    .line 113
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parseRectangle(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0

    .line 116
    :cond_3e
    const-class p3, Ljava/awt/Color;

    if-ne p2, p3, :cond_47

    .line 117
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parseColor(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Color;

    move-result-object p0

    return-object p0

    .line 120
    :cond_47
    const-class p3, Ljava/awt/Font;

    if-ne p2, p3, :cond_50

    .line 121
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parseFont(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Font;

    move-result-object p0

    return-object p0

    .line 124
    :cond_50
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not support awt class : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFastMatchToken()I
    .registers 1

    const/16 p0, 0xc

    return p0
.end method

.method protected parseColor(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Color;
    .registers 10

    .line 181
    iget-object p0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    move v2, v1

    .line 185
    :cond_6
    :goto_6
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_17

    .line 186
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 223
    new-instance p0, Ljava/awt/Color;

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/awt/Color;-><init>(IIII)V

    return-object p0

    .line 191
    :cond_17
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const-string/jumbo v4, "syntax error"

    const/4 v5, 0x4

    if-ne v3, v5, :cond_87

    .line 192
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    .line 193
    invoke-interface {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 199
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v6, :cond_81

    .line 200
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v4

    .line 201
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const-string v6, "r"

    .line 206
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_40

    move p1, v4

    goto :goto_5d

    :cond_40
    const-string v6, "g"

    .line 208
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4a

    move v0, v4

    goto :goto_5d

    :cond_4a
    const-string v6, "b"

    .line 210
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_54

    move v1, v4

    goto :goto_5d

    :cond_54
    const-string v2, "alpha"

    .line 212
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    move v2, v4

    .line 218
    :goto_5d
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6

    .line 219
    invoke-interface {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_6

    .line 215
    :cond_69
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "syntax error, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 203
    :cond_81
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 195
    :cond_87
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected parseFont(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Font;
    .registers 9

    .line 128
    iget-object p0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 p1, 0x0

    const/4 v0, 0x0

    move v1, p1

    .line 133
    :cond_5
    :goto_5
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_16

    .line 134
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 177
    new-instance p0, Ljava/awt/Font;

    invoke-direct {p0, v0, p1, v1}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    return-object p0

    .line 139
    :cond_16
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/4 v3, 0x4

    const-string/jumbo v4, "syntax error"

    if-ne v2, v3, :cond_a1

    .line 140
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    .line 141
    invoke-interface {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    const-string v6, "name"

    .line 147
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 148
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-ne v0, v3, :cond_3e

    .line 149
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_77

    .line 152
    :cond_3e
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    const-string/jumbo v6, "style"

    .line 154
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 155
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p1

    if-ne p1, v5, :cond_5b

    .line 156
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result p1

    .line 157
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_77

    .line 159
    :cond_5b
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_61
    const-string/jumbo v1, "size"

    .line 161
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 162
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v5, :cond_83

    .line 163
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v1

    .line 164
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 172
    :goto_77
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v4, 0x10

    if-ne v2, v4, :cond_5

    .line 173
    invoke-interface {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_5

    .line 166
    :cond_83
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 169
    :cond_89
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "syntax error, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 143
    :cond_a1
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected parsePoint(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Point;
    .registers 8

    .line 277
    iget-object p0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v0, 0x0

    move v1, v0

    .line 281
    :cond_4
    :goto_4
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_15

    .line 282
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 325
    new-instance p0, Ljava/awt/Point;

    invoke-direct {p0, v0, v1}, Ljava/awt/Point;-><init>(II)V

    return-object p0

    .line 287
    :cond_15
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_a0

    .line 288
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    .line 290
    sget-object v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string v2, "java.awt.Point"

    .line 291
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->acceptType(Ljava/lang/String;)V

    goto :goto_4

    :cond_2e
    const/4 v4, 0x2

    .line 295
    invoke-interface {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 300
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v4, :cond_40

    .line 303
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v4

    .line 304
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_4b

    :cond_40
    const/4 v4, 0x3

    if-ne v5, v4, :cond_84

    .line 306
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->floatValue()F

    move-result v4

    float-to-int v4, v4

    .line 307
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_4b
    const-string/jumbo v5, "x"

    .line 312
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    move v0, v4

    goto :goto_60

    :cond_56
    const-string/jumbo v1, "y"

    .line 314
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    move v1, v4

    .line 320
    :goto_60
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    .line 321
    invoke-interface {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_4

    .line 317
    :cond_6c
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "syntax error, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 309
    :cond_84
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "syntax error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 297
    :cond_a0
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo p1, "syntax error"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected parseRectangle(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Rectangle;
    .registers 10

    .line 227
    iget-object p0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    move v2, v1

    .line 231
    :cond_6
    :goto_6
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_17

    .line 232
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 273
    new-instance p0, Ljava/awt/Rectangle;

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object p0

    .line 237
    :cond_17
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const-string/jumbo v4, "syntax error"

    const/4 v5, 0x4

    if-ne v3, v5, :cond_96

    .line 238
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    .line 239
    invoke-interface {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 245
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v6, :cond_37

    .line 247
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v4

    .line 248
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_42

    :cond_37
    const/4 v6, 0x3

    if-ne v7, v6, :cond_90

    .line 250
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->floatValue()F

    move-result v4

    float-to-int v4, v4

    .line 251
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_42
    const-string/jumbo v6, "x"

    .line 256
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4d

    move p1, v4

    goto :goto_6c

    :cond_4d
    const-string/jumbo v6, "y"

    .line 258
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_58

    move v0, v4

    goto :goto_6c

    :cond_58
    const-string/jumbo v6, "width"

    .line 260
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_63

    move v1, v4

    goto :goto_6c

    :cond_63
    const-string v2, "height"

    .line 262
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    move v2, v4

    .line 268
    :goto_6c
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6

    .line 269
    invoke-interface {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_6

    .line 265
    :cond_78
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "syntax error, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 253
    :cond_90
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 241
    :cond_96
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez p2, :cond_8

    .line 34
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    :cond_8
    const/16 p3, 0x7b

    .line 40
    instance-of p4, p2, Ljava/awt/Point;

    const-string/jumbo p5, "y"

    const-string/jumbo v0, "x"

    const/16 v1, 0x2c

    if-eqz p4, :cond_2a

    .line 41
    check-cast p2, Ljava/awt/Point;

    .line 43
    const-class p4, Ljava/awt/Point;

    invoke-virtual {p0, p1, p4, p3}, Lcom/alibaba/fastjson/serializer/AwtCodec;->writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C

    move-result p0

    .line 45
    iget p3, p2, Ljava/awt/Point;->x:I

    invoke-virtual {p1, p0, v0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 46
    iget p0, p2, Ljava/awt/Point;->y:I

    invoke-virtual {p1, v1, p5, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    goto/16 :goto_b0

    .line 47
    :cond_2a
    instance-of p4, p2, Ljava/awt/Font;

    if-eqz p4, :cond_54

    .line 48
    check-cast p2, Ljava/awt/Font;

    .line 50
    const-class p4, Ljava/awt/Font;

    invoke-virtual {p0, p1, p4, p3}, Lcom/alibaba/fastjson/serializer/AwtCodec;->writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C

    move-result p0

    .line 52
    invoke-virtual {p2}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "name"

    invoke-virtual {p1, p0, p4, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Ljava/awt/Font;->getStyle()I

    move-result p0

    const-string/jumbo p3, "style"

    invoke-virtual {p1, v1, p3, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 54
    invoke-virtual {p2}, Ljava/awt/Font;->getSize()I

    move-result p0

    const-string/jumbo p2, "size"

    invoke-virtual {p1, v1, p2, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    goto :goto_b0

    .line 55
    :cond_54
    instance-of p4, p2, Ljava/awt/Rectangle;

    if-eqz p4, :cond_7a

    .line 56
    check-cast p2, Ljava/awt/Rectangle;

    .line 58
    const-class p4, Ljava/awt/Rectangle;

    invoke-virtual {p0, p1, p4, p3}, Lcom/alibaba/fastjson/serializer/AwtCodec;->writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C

    move-result p0

    .line 60
    iget p3, p2, Ljava/awt/Rectangle;->x:I

    invoke-virtual {p1, p0, v0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 61
    iget p0, p2, Ljava/awt/Rectangle;->y:I

    invoke-virtual {p1, v1, p5, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 62
    iget p0, p2, Ljava/awt/Rectangle;->width:I

    const-string/jumbo p3, "width"

    invoke-virtual {p1, v1, p3, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 63
    iget p0, p2, Ljava/awt/Rectangle;->height:I

    const-string p2, "height"

    invoke-virtual {p1, v1, p2, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    goto :goto_b0

    .line 64
    :cond_7a
    instance-of p4, p2, Ljava/awt/Color;

    if-eqz p4, :cond_b6

    .line 65
    check-cast p2, Ljava/awt/Color;

    .line 67
    const-class p4, Ljava/awt/Color;

    invoke-virtual {p0, p1, p4, p3}, Lcom/alibaba/fastjson/serializer/AwtCodec;->writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C

    move-result p0

    .line 69
    invoke-virtual {p2}, Ljava/awt/Color;->getRed()I

    move-result p3

    const-string p4, "r"

    invoke-virtual {p1, p0, p4, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 70
    invoke-virtual {p2}, Ljava/awt/Color;->getGreen()I

    move-result p0

    const-string p3, "g"

    invoke-virtual {p1, v1, p3, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 71
    invoke-virtual {p2}, Ljava/awt/Color;->getBlue()I

    move-result p0

    const-string p3, "b"

    invoke-virtual {p1, v1, p3, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 72
    invoke-virtual {p2}, Ljava/awt/Color;->getAlpha()I

    move-result p0

    if-lez p0, :cond_b0

    .line 73
    invoke-virtual {p2}, Ljava/awt/Color;->getAlpha()I

    move-result p0

    const-string p2, "alpha"

    invoke-virtual {p1, v1, p2, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    :cond_b0
    :goto_b0
    const/16 p0, 0x7d

    .line 79
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 76
    :cond_b6
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not support awt class : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/serializer/SerializeWriter;",
            "Ljava/lang/Class<",
            "*>;C)C"
        }
    .end annotation

    .line 84
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/16 p0, 0x7b

    .line 85
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 86
    sget-object p0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    const/16 p3, 0x2c

    :cond_1b
    return p3
.end method
