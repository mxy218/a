.class public final Lcom/alibaba/fastjson/parser/JSONReaderScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "JSONReaderScanner.java"


# static fields
.field private static final BUF_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field


# instance fields
.field private buf:[C

.field private bufLength:I

.field private reader:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_LOCAL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    .line 53
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 4

    .line 57
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>(I)V

    .line 58
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    .line 60
    sget-object p2, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [C

    iput-object p2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    .line 61
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    if-eqz p2, :cond_19

    .line 62
    sget-object p2, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_LOCAL:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 65
    :cond_19
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    if-nez p2, :cond_23

    const/16 p2, 0x2000

    new-array p2, p2, [C

    .line 66
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    .line 70
    :cond_23
    :try_start_23
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-virtual {p1, p2}, Ljava/io/Reader;->read([C)I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2b} :catch_3c

    const/4 p1, -0x1

    .line 75
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->next()C

    .line 78
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const p2, 0xfeff

    if-ne p1, p2, :cond_3b

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->next()C

    :cond_3b
    return-void

    :catch_3c
    move-exception p0

    .line 72
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 41
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 45
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>([CI)V
    .registers 4

    .line 49
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .registers 6

    .line 84
    new-instance v0, Ljava/io/CharArrayReader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/io/CharArrayReader;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/io/Reader;I)V

    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .registers 5

    .line 153
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected final arrayCopy(I[CII)V
    .registers 5

    .line 223
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public bytesValue()[B
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x1

    iget p0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-static {v0, v1, p0}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64([CII)[B

    move-result-object p0

    return-object p0
.end method

.method public final charArrayCompare([C)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 209
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_14

    .line 210
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->charAt(I)C

    move-result v2

    aget-char v3, p1, v1

    if-eq v2, v3, :cond_11

    return v0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method public final charAt(I)C
    .registers 9

    .line 88
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-lt p1, v0, :cond_7f

    const/16 v1, 0x1a

    const/4 v2, -0x1

    if-ne v0, v2, :cond_13

    .line 90
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    if-ge p1, v0, :cond_12

    .line 91
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    aget-char p0, p0, p1

    return p0

    :cond_12
    return v1

    .line 96
    :cond_13
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v4, 0x0

    if-nez v3, :cond_41

    .line 97
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    .line 98
    invoke-static {v1, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    array-length v0, v2

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    sub-int/2addr v0, v1

    .line 102
    :try_start_28
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    invoke-virtual {v3, v2, v1, v0}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 103
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    .line 104
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_35} :catch_36

    goto :goto_7f

    :catch_36
    move-exception p0

    .line 106
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_41
    sub-int/2addr v0, v3

    if-lez v0, :cond_49

    .line 111
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-static {v5, v3, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    :cond_49
    :try_start_49
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v6, v6

    sub-int/2addr v6, v0

    invoke-virtual {v3, v5, v0, v6}, Ljava/io/Reader;->read([CII)I

    move-result v3

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_57} :catch_74

    .line 120
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-eqz v3, :cond_6c

    if-ne v3, v2, :cond_5e

    return v1

    :cond_5e
    add-int/2addr v3, v0

    .line 128
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    .line 129
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr p1, v0

    .line 130
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 131
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    goto :goto_7f

    .line 121
    :cond_6c
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string p1, "illegal state, textLength is zero"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_74
    move-exception p0

    .line 117
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 135
    :cond_7f
    :goto_7f
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    aget-char p0, p0, p1

    return p0
.end method

.method public close()V
    .registers 4

    .line 283
    invoke-super {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 285
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v1, v0

    const v2, 0x8000

    if-gt v1, v2, :cond_10

    .line 286
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_10
    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    .line 290
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method protected final copyTo(II[C)V
    .registers 5

    .line 205
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    const/4 v0, 0x0

    invoke-static {p0, p1, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final indexOf(CI)I
    .registers 5

    .line 139
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr p2, v0

    .line 141
    :goto_3
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, p2

    .line 142
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->charAt(I)C

    move-result v0

    if-ne p1, v0, :cond_10

    .line 144
    iget p0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p2, p0

    return p2

    :cond_10
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_16

    const/4 p0, -0x1

    return p0

    :cond_16
    add-int/lit8 p2, p2, 0x1

    goto :goto_3
.end method

.method public isEOF()Z
    .registers 5

    .line 295
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_19

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v3, v2

    if-eq v0, v3, :cond_19

    iget-char p0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x1a

    if-ne p0, v3, :cond_18

    add-int/2addr v0, v1

    array-length p0, v2

    if-ne v0, p0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :cond_19
    :goto_19
    return v1
.end method

.method public final next()C
    .registers 9

    .line 157
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 159
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-lt v0, v1, :cond_78

    const/16 v0, 0x1a

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    return v0

    .line 164
    :cond_10
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v4, 0x0

    if-lez v3, :cond_25

    sub-int/2addr v1, v3

    .line 167
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v5, 0x22

    if-ne v3, v5, :cond_1e

    add-int/lit8 v1, v1, -0x1

    .line 170
    :cond_1e
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-static {v3, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    :cond_25
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 174
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 177
    :try_start_2b
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 178
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v5, v5

    sub-int/2addr v5, v3

    if-nez v5, :cond_49

    .line 180
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [C

    .line 181
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v7, v7

    invoke-static {v6, v4, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iput-object v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    .line 183
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v4, v4

    sub-int v5, v4, v3

    .line 185
    :cond_49
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/Reader;->read([CII)I

    move-result v3

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_55} :catch_6d

    .line 190
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-eqz v3, :cond_65

    if-ne v3, v2, :cond_5e

    .line 195
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return v0

    .line 198
    :cond_5e
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    move v0, v1

    goto :goto_78

    .line 191
    :cond_65
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "illegal stat, textLength is zero"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_6d
    move-exception p0

    .line 187
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 201
    :cond_78
    :goto_78
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    aget-char v0, v1, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return v0
.end method

.method public final numberString()Ljava/lang/String;
    .registers 5

    .line 267
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    .line 271
    :cond_6
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->charAt(I)C

    move-result v1

    .line 273
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/16 v3, 0x4c

    if-eq v1, v3, :cond_25

    const/16 v3, 0x53

    if-eq v1, v3, :cond_25

    const/16 v3, 0x42

    if-eq v1, v3, :cond_25

    const/16 v3, 0x46

    if-eq v1, v3, :cond_25

    const/16 v3, 0x44

    if-ne v1, v3, :cond_27

    :cond_25
    add-int/lit8 v2, v2, -0x1

    .line 278
    :cond_27
    new-instance v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-direct {v1, p0, v0, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public final stringVal()Ljava/lang/String;
    .registers 4

    .line 230
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v0, :cond_24

    .line 231
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_1e

    .line 235
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v2, v1

    iget p0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    sub-int/2addr v2, p0

    if-gt v0, v2, :cond_18

    .line 238
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v0, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 236
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 233
    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 241
    :cond_24
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    const/4 v2, 0x0

    iget p0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final subString(II)Ljava/lang/String;
    .registers 4

    if-ltz p2, :cond_a

    .line 249
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 247
    :cond_a
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public final sub_chars(II)[C
    .registers 5

    if-ltz p2, :cond_10

    if-nez p1, :cond_7

    .line 259
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    return-object p0

    .line 261
    :cond_7
    new-array v0, p2, [C

    .line 262
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 255
    :cond_10
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method
