.class public Lcom/alibaba/fastjson/JSONReader;
.super Ljava/lang/Object;
.source "JSONReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private context:Lcom/alibaba/fastjson/JSONStreamContext;

.field private final parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V
    .registers 3

    .line 40
    new-instance v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONReader;-><init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/JSONReader;-><init>(Ljava/io/Reader;[Lcom/alibaba/fastjson/parser/Feature;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/io/Reader;[Lcom/alibaba/fastjson/parser/Feature;)V
    .registers 6

    .line 33
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONReader;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V

    .line 34
    array-length p1, p2

    const/4 v0, 0x0

    :goto_a
    if-ge v0, p1, :cond_15

    aget-object v1, p2, v0

    const/4 v2, 0x1

    .line 35
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson/JSONReader;->config(Lcom/alibaba/fastjson/parser/Feature;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_15
    return-void
.end method

.method private endStructure()V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iget-object v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->parent:Lcom/alibaba/fastjson/JSONStreamContext;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 120
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_b

    return-void

    .line 124
    :cond_b
    iget v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_22

    move v0, v1

    goto :goto_1b

    :pswitch_13  #0x3ec
    const/16 v0, 0x3ed

    goto :goto_1b

    :pswitch_16  #0x3ea
    const/16 v0, 0x3eb

    goto :goto_1b

    :pswitch_19  #0x3e9, 0x3eb
    const/16 v0, 0x3ea

    :goto_1b
    if-eq v0, v1, :cond_21

    .line 141
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iput v0, p0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    :cond_21
    return-void

    :pswitch_data_22
    .packed-switch 0x3e9
        :pswitch_19  #000003e9
        :pswitch_16  #000003ea
        :pswitch_19  #000003eb
        :pswitch_13  #000003ec
    .end packed-switch
.end method

.method private readAfter()V
    .registers 4

    .line 310
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iget v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    const/16 v1, 0x3ea

    const/4 v2, -0x1

    packed-switch v0, :pswitch_data_30

    .line 328
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_21  #0x3ed
    move v1, v2

    goto :goto_28

    :pswitch_23  #0x3ec
    const/16 v1, 0x3ed

    goto :goto_28

    :pswitch_26  #0x3ea
    const/16 v1, 0x3eb

    :goto_28
    :pswitch_28  #0x3e9, 0x3eb
    if-eq v1, v2, :cond_2e

    .line 331
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iput v1, p0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    :cond_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x3e9
        :pswitch_28  #000003e9
        :pswitch_26  #000003ea
        :pswitch_28  #000003eb
        :pswitch_23  #000003ec
        :pswitch_21  #000003ed
    .end packed-switch
.end method

.method private readBefore()V
    .registers 4

    .line 288
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iget v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    const/16 v1, 0x10

    packed-switch v0, :pswitch_data_36

    .line 305
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 298
    :pswitch_20  #0x3ed
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto :goto_35

    .line 295
    :pswitch_26  #0x3eb
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v0, 0x12

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(II)V

    goto :goto_35

    .line 292
    :pswitch_2e  #0x3ea
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    :goto_35
    :pswitch_35  #0x3e9, 0x3ec
    return-void

    :pswitch_data_36
    .packed-switch 0x3e9
        :pswitch_35  #000003e9
        :pswitch_2e  #000003ea
        :pswitch_26  #000003eb
        :pswitch_35  #000003ec
        :pswitch_20  #000003ed
    .end packed-switch
.end method

.method private startStructure()V
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iget v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    packed-switch v0, :pswitch_data_32

    .line 113
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iget p0, p0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :pswitch_22  #0x3eb, 0x3ed
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto :goto_31

    .line 103
    :pswitch_2a  #0x3ea
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    :goto_31
    :pswitch_31  #0x3e9, 0x3ec
    return-void

    :pswitch_data_32
    .packed-switch 0x3e9
        :pswitch_31  #000003e9
        :pswitch_2a  #000003ea
        :pswitch_22  #000003eb
        :pswitch_31  #000003ec
        :pswitch_22  #000003ed
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .registers 3

    .line 56
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config(Lcom/alibaba/fastjson/parser/Feature;Z)V

    return-void
.end method

.method public endArray()V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 96
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->endStructure()V

    return-void
.end method

.method public endObject()V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 80
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->endStructure()V

    return-void
.end method

.method public getLocal()Ljava/util/Locale;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getTimzeZone()Ljava/util/TimeZone;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public hasNext()Z
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-eqz v0, :cond_3a

    .line 150
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    .line 151
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iget p0, p0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_42

    .line 160
    :pswitch_15  #0x3ea
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2c  #0x3ec, 0x3ed
    const/16 p0, 0xf

    if-eq v0, p0, :cond_31

    goto :goto_32

    :cond_31
    move v1, v2

    :goto_32
    return v1

    :pswitch_33  #0x3e9, 0x3eb
    const/16 p0, 0xd

    if-eq v0, p0, :cond_38

    goto :goto_39

    :cond_38
    move v1, v2

    :goto_39
    return v1

    .line 147
    :cond_3a
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "context is null"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_42
    .packed-switch 0x3e9
        :pswitch_33  #000003e9
        :pswitch_15  #000003ea
        :pswitch_33  #000003eb
        :pswitch_2c  #000003ec
        :pswitch_2c  #000003ed
    .end packed-switch
.end method

.method public peek()I
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p0

    return p0
.end method

.method public readInteger()Ljava/lang/Integer;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_b

    .line 175
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p0

    goto :goto_18

    .line 177
    :cond_b
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 178
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 179
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    move-object p0, v0

    .line 182
    :goto_18
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public readLong()Ljava/lang/Long;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_b

    .line 188
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p0

    goto :goto_18

    .line 190
    :cond_b
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 191
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 192
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    move-object p0, v0

    .line 195
    :goto_18
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public readObject()Ljava/lang/Object;
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_b

    .line 256
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 259
    :cond_b
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 261
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iget v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_21

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_21

    .line 267
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    goto :goto_27

    .line 264
    :cond_21
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseKey()Ljava/lang/Object;

    move-result-object v0

    .line 271
    :goto_27
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/TypeReference<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 218
    invoke-virtual {p1}, Lcom/alibaba/fastjson/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONReader;->readObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public readObject(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_b

    .line 234
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 237
    :cond_b
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 238
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 239
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    return-object p1
.end method

.method public readObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_b

    .line 223
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 226
    :cond_b
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 227
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 228
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    return-object p1
.end method

.method public readObject(Ljava/util/Map;)Ljava/lang/Object;
    .registers 3

    .line 277
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_b

    .line 278
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 281
    :cond_b
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 282
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    .line 283
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    return-object p1
.end method

.method public readObject(Ljava/lang/Object;)V
    .registers 3

    .line 244
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_a

    .line 245
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Object;)V

    return-void

    .line 249
    :cond_a
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 250
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Object;)V

    .line 251
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    return-void
.end method

.method public readString()Ljava/lang/String;
    .registers 4

    .line 200
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_b

    .line 201
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p0

    goto :goto_35

    .line 203
    :cond_b
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 204
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 205
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iget v1, v1, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_2b

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2b

    .line 206
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object v0, v1

    goto :goto_31

    .line 209
    :cond_2b
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 211
    :goto_31
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    move-object p0, v0

    .line 214
    :goto_35
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 2

    .line 52
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setTimzeZone(Ljava/util/TimeZone;)V
    .registers 2

    .line 48
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public startArray()V
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    const/16 v1, 0x3ec

    if-nez v0, :cond_f

    .line 85
    new-instance v0, Lcom/alibaba/fastjson/JSONStreamContext;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/JSONStreamContext;-><init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    goto :goto_1b

    .line 87
    :cond_f
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->startStructure()V

    .line 89
    new-instance v0, Lcom/alibaba/fastjson/JSONStreamContext;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/JSONStreamContext;-><init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 91
    :goto_1b
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    return-void
.end method

.method public startObject()V
    .registers 4

    .line 68
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    const/16 v1, 0x3e9

    if-nez v0, :cond_f

    .line 69
    new-instance v0, Lcom/alibaba/fastjson/JSONStreamContext;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/JSONStreamContext;-><init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    goto :goto_1b

    .line 71
    :cond_f
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->startStructure()V

    .line 72
    new-instance v0, Lcom/alibaba/fastjson/JSONStreamContext;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/JSONStreamContext;-><init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 75
    :goto_1b
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v0, 0xc

    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(II)V

    return-void
.end method
