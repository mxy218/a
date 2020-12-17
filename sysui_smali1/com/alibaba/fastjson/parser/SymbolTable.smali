.class public Lcom/alibaba/fastjson/parser/SymbolTable;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# instance fields
.field private final indexMask:I

.field private final symbols:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p1, -0x1

    .line 29
    iput v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    .line 30
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    const-string p1, "$ref"

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    .line 33
    sget-object p1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    return-void
.end method

.method public static hash([CII)I
    .registers 6

    const/4 v0, 0x0

    move v1, p1

    move p1, v0

    :goto_3
    if-ge v0, p2, :cond_10

    mul-int/lit8 p1, p1, 0x1f

    add-int/lit8 v2, v1, 0x1

    .line 114
    aget-char v1, p0, v1

    add-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_3

    :cond_10
    return p1
.end method

.method private static subString(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5

    .line 104
    new-array v0, p2, [C

    add-int/2addr p2, p1

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 106
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;III)Ljava/lang/String;
    .registers 7

    .line 82
    iget v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    and-int/2addr v0, p4

    .line 84
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_21

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result p0

    if-ne p4, p0, :cond_1c

    .line 87
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p3, p0, :cond_1c

    .line 88
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1c

    return-object v1

    .line 92
    :cond_1c
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 95
    :cond_21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-ne p3, p4, :cond_28

    goto :goto_2c

    .line 97
    :cond_28
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 98
    :goto_2c
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 99
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    aput-object p1, p0, v0

    return-object p1
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .registers 5

    .line 38
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->hash([CII)I

    move-result v0

    .line 39
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public addSymbol([CIII)Ljava/lang/String;
    .registers 8

    .line 52
    iget v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    and-int/2addr v0, p4

    .line 54
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_32

    .line 57
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x0

    if-ne p4, p0, :cond_29

    .line 58
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p3, p0, :cond_29

    move p0, v0

    :goto_17
    if-ge p0, p3, :cond_27

    add-int p4, p2, p0

    .line 60
    aget-char p4, p1, p4

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq p4, v2, :cond_24

    goto :goto_29

    :cond_24
    add-int/lit8 p0, p0, 0x1

    goto :goto_17

    :cond_27
    const/4 p0, 0x1

    move v0, p0

    :cond_29
    :goto_29
    if-eqz v0, :cond_2c

    return-object v1

    .line 72
    :cond_2c
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 76
    :cond_32
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 77
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    aput-object p1, p0, v0

    return-object p1
.end method
