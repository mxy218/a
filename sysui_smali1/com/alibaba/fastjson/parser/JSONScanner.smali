.class public final Lcom/alibaba/fastjson/parser/JSONScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "JSONScanner.java"


# static fields
.field public static final ISO8601_LEN_0:I = 0xa

.field public static final ISO8601_LEN_1:I = 0x13

.field public static final ISO8601_LEN_2:I = 0x17


# instance fields
.field private final len:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 40
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 44
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>(I)V

    .line 46
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 47
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 51
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const p2, 0xfeff

    if-ne p1, p2, :cond_1d

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    :cond_1d
    return-void
.end method

.method public constructor <init>([CI)V
    .registers 4

    .line 72
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .registers 6

    .line 76
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static charArrayCompare(Ljava/lang/String;I[C)Z
    .registers 8

    .line 84
    array-length v0, p2

    add-int v1, v0, p1

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_b

    return v3

    :cond_b
    move v1, v3

    :goto_c
    if-ge v1, v0, :cond_1c

    .line 90
    aget-char v2, p2, v1

    add-int v4, p1, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_19

    return v3

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method static checkDate(CCCCCCII)Z
    .registers 12

    const/16 v0, 0x32

    const/16 v1, 0x31

    const/4 v2, 0x0

    if-eq p0, v1, :cond_a

    if-eq p0, v0, :cond_a

    return v2

    :cond_a
    const/16 p0, 0x30

    if-lt p1, p0, :cond_49

    const/16 v3, 0x39

    if-le p1, v3, :cond_13

    goto :goto_49

    :cond_13
    if-lt p2, p0, :cond_49

    if-le p2, v3, :cond_18

    goto :goto_49

    :cond_18
    if-lt p3, p0, :cond_49

    if-le p3, v3, :cond_1d

    goto :goto_49

    :cond_1d
    if-ne p4, p0, :cond_24

    if-lt p5, v1, :cond_23

    if-le p5, v3, :cond_2d

    :cond_23
    return v2

    :cond_24
    if-ne p4, v1, :cond_49

    if-eq p5, p0, :cond_2d

    if-eq p5, v1, :cond_2d

    if-eq p5, v0, :cond_2d

    return v2

    :cond_2d
    if-ne p6, p0, :cond_34

    if-lt p7, v1, :cond_33

    if-le p7, v3, :cond_47

    :cond_33
    return v2

    :cond_34
    if-eq p6, v1, :cond_42

    if-ne p6, v0, :cond_39

    goto :goto_42

    :cond_39
    const/16 p1, 0x33

    if-ne p6, p1, :cond_41

    if-eq p7, p0, :cond_47

    if-eq p7, v1, :cond_47

    :cond_41
    return v2

    :cond_42
    :goto_42
    if-lt p7, p0, :cond_49

    if-le p7, v3, :cond_47

    goto :goto_49

    :cond_47
    const/4 p0, 0x1

    return p0

    :cond_49
    :goto_49
    return v2
.end method

.method private checkTime(CCCCCC)Z
    .registers 10

    const/16 p0, 0x39

    const/4 v0, 0x0

    const/16 v1, 0x30

    if-ne p1, v1, :cond_c

    if-lt p2, v1, :cond_b

    if-le p2, p0, :cond_20

    :cond_b
    return v0

    :cond_c
    const/16 v2, 0x31

    if-ne p1, v2, :cond_15

    if-lt p2, v1, :cond_14

    if-le p2, p0, :cond_20

    :cond_14
    return v0

    :cond_15
    const/16 v2, 0x32

    if-ne p1, v2, :cond_42

    if-lt p2, v1, :cond_42

    const/16 p1, 0x34

    if-le p2, p1, :cond_20

    goto :goto_42

    :cond_20
    const/16 p1, 0x35

    const/16 p2, 0x36

    if-lt p3, v1, :cond_2d

    if-gt p3, p1, :cond_2d

    if-lt p4, v1, :cond_2c

    if-le p4, p0, :cond_32

    :cond_2c
    return v0

    :cond_2d
    if-ne p3, p2, :cond_42

    if-eq p4, v1, :cond_32

    return v0

    :cond_32
    if-lt p5, v1, :cond_3b

    if-gt p5, p1, :cond_3b

    if-lt p6, v1, :cond_3a

    if-le p6, p0, :cond_40

    :cond_3a
    return v0

    :cond_3b
    if-ne p5, p2, :cond_42

    if-eq p6, v1, :cond_40

    return v0

    :cond_40
    const/4 p0, 0x1

    return p0

    :cond_42
    :goto_42
    return v0
.end method

.method private setCalendar(CCCCCCCC)V
    .registers 11

    .line 599
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    add-int/lit8 p1, p1, -0x30

    mul-int/lit16 p1, p1, 0x3e8

    add-int/lit8 p2, p2, -0x30

    mul-int/lit8 p2, p2, 0x64

    add-int/2addr p1, p2

    add-int/lit8 p3, p3, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/2addr p1, p3

    add-int/lit8 p4, p4, -0x30

    add-int/2addr p1, p4

    add-int/lit8 p5, p5, -0x30

    mul-int/lit8 p5, p5, 0xa

    add-int/lit8 p6, p6, -0x30

    add-int/2addr p5, p6

    const/4 p2, 0x1

    sub-int/2addr p5, p2

    add-int/lit8 p7, p7, -0x30

    mul-int/lit8 p7, p7, 0xa

    add-int/lit8 p8, p8, -0x30

    add-int/2addr p7, p8

    .line 603
    iget-object p3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    invoke-virtual {p3, p2, p1}, Ljava/util/Calendar;->set(II)V

    .line 604
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    .line 605
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, p7}, Ljava/util/Calendar;->set(II)V

    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .registers 5

    .line 107
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected final arrayCopy(I[CII)V
    .registers 5

    .line 1327
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p4, p1

    invoke-virtual {p0, p1, p4, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public bytesValue()[B
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x1

    iget p0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-static {v0, v1, p0}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;II)[B

    move-result-object p0

    return-object p0
.end method

.method public final charArrayCompare([C)Z
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget p0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-static {v0, p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result p0

    return p0
.end method

.method public final charAt(I)C
    .registers 3

    .line 57
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt p1, v0, :cond_7

    const/16 p0, 0x1a

    return p0

    .line 61
    :cond_7
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method protected final copyTo(II[C)V
    .registers 5

    .line 80
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public final indexOf(CI)I
    .registers 3

    .line 103
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0
.end method

.method public info()Ljava/lang/String;
    .registers 4

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", json : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 1333
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/high16 v2, 0x10000

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    if-ge v1, v2, :cond_21

    goto :goto_26

    :cond_21
    const/4 v1, 0x0

    .line 1335
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEOF()Z
    .registers 5

    .line 655
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_12

    iget-char p0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x1a

    if-ne p0, v3, :cond_11

    add-int/2addr v0, v2

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :cond_12
    :goto_12
    return v2
.end method

.method public final next()C
    .registers 3

    .line 65
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 66
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt v0, v1, :cond_d

    const/16 v0, 0x1a

    goto :goto_13

    :cond_d
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_13
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return v0
.end method

.method public final numberString()Ljava/lang/String;
    .registers 4

    .line 157
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 159
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_21

    const/16 v2, 0x53

    if-eq v0, v2, :cond_21

    const/16 v2, 0x42

    if-eq v0, v2, :cond_21

    const/16 v2, 0x46

    if-eq v0, v2, :cond_21

    const/16 v2, 0x44

    if-ne v0, v2, :cond_23

    :cond_21
    add-int/lit8 v1, v1, -0x1

    .line 165
    :cond_23
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public scanFieldBoolean([C)Z
    .registers 9

    const/4 v0, 0x0

    .line 1136
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1138
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 p1, -0x2

    .line 1139
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 1143
    :cond_11
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length p1, p1

    add-int/2addr v1, p1

    add-int/lit8 p1, v1, 0x1

    .line 1145
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x74

    const/16 v3, 0x65

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v1, v2, :cond_52

    add-int/lit8 v1, p1, 0x1

    .line 1149
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    const/16 v2, 0x72

    if-eq p1, v2, :cond_30

    .line 1150
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_30
    add-int/lit8 p1, v1, 0x1

    .line 1153
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-eq v1, v2, :cond_3d

    .line 1154
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_3d
    add-int/lit8 v1, p1, 0x1

    .line 1157
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-eq p1, v3, :cond_48

    .line 1158
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 1162
    :cond_48
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1163
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    move v1, v5

    goto :goto_91

    :cond_52
    const/16 v2, 0x66

    if-ne v1, v2, :cond_fd

    add-int/lit8 v1, p1, 0x1

    .line 1166
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    const/16 v2, 0x61

    if-eq p1, v2, :cond_63

    .line 1167
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_63
    add-int/lit8 p1, v1, 0x1

    .line 1170
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_70

    .line 1171
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_70
    add-int/lit8 v1, p1, 0x1

    .line 1174
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    const/16 v2, 0x73

    if-eq p1, v2, :cond_7d

    .line 1175
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_7d
    add-int/lit8 p1, v1, 0x1

    .line 1178
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_88

    .line 1179
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 1183
    :cond_88
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1184
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    move v1, v0

    :goto_91
    const/16 v2, 0x10

    const/16 v3, 0x2c

    if-ne p1, v3, :cond_a8

    .line 1192
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 1193
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1194
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_f6

    :cond_a8
    const/16 v6, 0x7d

    if-ne p1, v6, :cond_fa

    .line 1196
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-ne p1, v3, :cond_c5

    .line 1198
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1199
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_f3

    :cond_c5
    const/16 v2, 0x5d

    if-ne p1, v2, :cond_d9

    const/16 p1, 0xf

    .line 1201
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1202
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_f3

    :cond_d9
    if-ne p1, v6, :cond_eb

    const/16 p1, 0xd

    .line 1204
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1205
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_f3

    :cond_eb
    const/16 v2, 0x1a

    if-ne p1, v2, :cond_f7

    const/16 p1, 0x14

    .line 1207
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    :goto_f3
    const/4 p1, 0x4

    .line 1212
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    :goto_f6
    return v1

    .line 1209
    :cond_f7
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 1214
    :cond_fa
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 1187
    :cond_fd
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public scanFieldInt([C)I
    .registers 13

    const/4 v0, 0x0

    .line 659
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 660
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 661
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 663
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-static {v3, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v3

    if-nez v3, :cond_13

    const/4 p1, -0x2

    .line 664
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 668
    :cond_13
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length p1, p1

    add-int/2addr v3, p1

    add-int/lit8 p1, v3, 0x1

    .line 670
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2a

    add-int/lit8 v3, p1, 0x1

    .line 674
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    move v4, v5

    goto :goto_2e

    :cond_2a
    move v4, v0

    move v10, v3

    move v3, p1

    move p1, v10

    :goto_2e
    const/4 v6, -0x1

    const/16 v7, 0x30

    if-lt p1, v7, :cond_d0

    const/16 v8, 0x39

    if-gt p1, v8, :cond_d0

    sub-int/2addr p1, v7

    :goto_38
    add-int/lit8 v9, v3, 0x1

    .line 682
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_49

    if-gt v3, v8, :cond_49

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr p1, v3

    move v3, v9

    goto :goto_38

    :cond_49
    const/16 v7, 0x2e

    if-ne v3, v7, :cond_50

    .line 686
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_50
    if-gez p1, :cond_55

    .line 694
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_55
    const/16 v7, 0x7d

    const/16 v8, 0x2c

    if-eq v3, v8, :cond_5d

    if-ne v3, v7, :cond_60

    :cond_5d
    sub-int/2addr v9, v5

    .line 699
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    :cond_60
    const/16 v9, 0x10

    if-ne v3, v8, :cond_78

    .line 707
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x3

    .line 708
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 709
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eqz v4, :cond_77

    neg-int p1, p1

    :cond_77
    return p1

    :cond_78
    if-ne v3, v7, :cond_cc

    .line 714
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_93

    .line 716
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 717
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c1

    :cond_93
    const/16 v8, 0x5d

    if-ne v3, v8, :cond_a7

    const/16 v0, 0xf

    .line 719
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 720
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c1

    :cond_a7
    if-ne v3, v7, :cond_b9

    const/16 v0, 0xd

    .line 722
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 723
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c1

    :cond_b9
    const/16 v5, 0x1a

    if-ne v3, v5, :cond_c5

    const/16 v0, 0x14

    .line 725
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    :goto_c1
    const/4 v0, 0x4

    .line 732
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_cc

    .line 727
    :cond_c5
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 728
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 729
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_cc
    :goto_cc
    if-eqz v4, :cond_cf

    neg-int p1, p1

    :cond_cf
    return p1

    .line 702
    :cond_d0
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public scanFieldLong([C)J
    .registers 16

    const/4 v0, 0x0

    .line 1053
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1054
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1055
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1057
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-static {v3, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_15

    const/4 p1, -0x2

    .line 1058
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    .line 1062
    :cond_15
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length p1, p1

    add-int/2addr v3, p1

    add-int/lit8 p1, v3, 0x1

    .line 1064
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v6, 0x2d

    const/4 v7, 0x1

    if-ne v3, v6, :cond_2c

    add-int/lit8 v0, p1, 0x1

    .line 1068
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move p1, v0

    move v0, v7

    :cond_2c
    const/16 v6, 0x30

    const/4 v8, -0x1

    if-lt v3, v6, :cond_d9

    const/16 v9, 0x39

    if-gt v3, v9, :cond_d9

    sub-int/2addr v3, v6

    int-to-long v10, v3

    :goto_37
    add-int/lit8 v3, p1, 0x1

    .line 1076
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-lt p1, v6, :cond_4a

    if-gt p1, v9, :cond_4a

    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    add-int/lit8 p1, p1, -0x30

    int-to-long v12, p1

    add-long/2addr v10, v12

    move p1, v3

    goto :goto_37

    :cond_4a
    const/16 v6, 0x2e

    if-ne p1, v6, :cond_51

    .line 1080
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    :cond_51
    const/16 v6, 0x7d

    const/16 v9, 0x2c

    if-eq p1, v9, :cond_59

    if-ne p1, v6, :cond_5c

    :cond_59
    sub-int/2addr v3, v7

    .line 1084
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    :cond_5c
    cmp-long v3, v10, v4

    if-gez v3, :cond_67

    .line 1090
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1091
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1092
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    :cond_67
    const/16 v3, 0x10

    if-ne p1, v9, :cond_7f

    .line 1103
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 1104
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1105
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eqz v0, :cond_7e

    neg-long v10, v10

    :cond_7e
    return-wide v10

    :cond_7f
    if-ne p1, v6, :cond_d6

    .line 1108
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-ne p1, v9, :cond_9a

    .line 1110
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1111
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c8

    :cond_9a
    const/16 v3, 0x5d

    if-ne p1, v3, :cond_ae

    const/16 p1, 0xf

    .line 1113
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1114
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c8

    :cond_ae
    if-ne p1, v6, :cond_c0

    const/16 p1, 0xd

    .line 1116
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1117
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c8

    :cond_c0
    const/16 v3, 0x1a

    if-ne p1, v3, :cond_cf

    const/16 p1, 0x14

    .line 1119
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    :goto_c8
    const/4 p1, 0x4

    .line 1126
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-eqz v0, :cond_ce

    neg-long v10, v10

    :cond_ce
    return-wide v10

    .line 1121
    :cond_cf
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1122
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1123
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    .line 1128
    :cond_d6
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    .line 1096
    :cond_d9
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1097
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1098
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    .line 739
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 740
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 741
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 743
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-static {v3, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v3

    if-nez v3, :cond_17

    const/4 p1, -0x2

    .line 744
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 745
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 748
    :cond_17
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v4, p1

    add-int/2addr v3, v4

    add-int/lit8 v4, v3, 0x1

    .line 750
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    const/4 v6, -0x1

    if-eq v3, v5, :cond_2d

    .line 752
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 754
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 760
    :cond_2d
    invoke-virtual {p0, v5, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v3

    if-eq v3, v6, :cond_102

    sub-int v7, v3, v4

    .line 765
    invoke-virtual {p0, v4, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x5c

    .line 766
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v6, :cond_71

    :goto_41
    add-int/lit8 v4, v3, -0x1

    move v8, v0

    :goto_44
    if-ltz v4, :cond_51

    .line 770
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_51

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_44

    .line 776
    :cond_51
    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_6a

    .line 782
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v4, p1

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    sub-int v4, v3, v4

    .line 783
    array-length p1, p1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object p1

    .line 785
    invoke-static {p1, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v4

    goto :goto_71

    :cond_6a
    add-int/lit8 v3, v3, 0x1

    .line 779
    invoke-virtual {p0, v5, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v3

    goto :goto_41

    :cond_71
    :goto_71
    add-int/lit8 v3, v3, 0x1

    .line 788
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    const/16 v0, 0x7d

    const/16 v5, 0x2c

    if-eq p1, v5, :cond_87

    if-ne p1, v0, :cond_80

    goto :goto_87

    .line 795
    :cond_80
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 797
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 791
    :cond_87
    :goto_87
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 792
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne p1, v5, :cond_9d

    .line 802
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 803
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    :cond_9d
    if-ne p1, v0, :cond_fb

    .line 806
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-ne p1, v5, :cond_bc

    const/16 p1, 0x10

    .line 808
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 809
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_ec

    :cond_bc
    const/16 v3, 0x5d

    if-ne p1, v3, :cond_d1

    const/16 p1, 0xf

    .line 811
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 812
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_ec

    :cond_d1
    if-ne p1, v0, :cond_e4

    const/16 p1, 0xd

    .line 814
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 815
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_ec

    :cond_e4
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_f0

    const/16 p1, 0x14

    .line 817
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    :goto_ec
    const/4 p1, 0x4

    .line 824
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 819
    :cond_f0
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 820
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 821
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 822
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 826
    :cond_fb
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 828
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 762
    :cond_102
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo p1, "unclosed str"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 903
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 905
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-static {v4, v5, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_18

    const/4 v1, -0x2

    .line 906
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    .line 912
    :cond_18
    const-class v4, Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 913
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto :goto_3a

    .line 914
    :cond_26
    const-class v4, Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 915
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3a

    .line 918
    :cond_34
    :try_start_34
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3a} :catch_18a

    .line 924
    :goto_3a
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v4, v1

    add-int/lit8 v1, v4, 0x1

    .line 926
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v6, 0x5b

    const-string/jumbo v7, "ull"

    const/16 v8, 0x5d

    const/16 v9, 0x2c

    const/4 v10, 0x3

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-ne v4, v6, :cond_fc

    add-int/lit8 v4, v1, 0x1

    .line 929
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    :goto_58
    const/16 v6, 0x22

    if-ne v1, v6, :cond_ac

    .line 934
    invoke-virtual {v0, v6, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v1

    if-eq v1, v11, :cond_a3

    sub-int v13, v1, v4

    .line 939
    invoke-virtual {v0, v4, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x5c

    .line 940
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-eq v15, v11, :cond_98

    :goto_70
    add-int/lit8 v13, v1, -0x1

    move v15, v3

    :goto_73
    if-ltz v13, :cond_81

    .line 944
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-ne v3, v14, :cond_81

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v13, v13, -0x1

    const/4 v3, 0x0

    goto :goto_73

    .line 950
    :cond_81
    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_90

    sub-int v3, v1, v4

    .line 957
    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object v4

    .line 959
    invoke-static {v4, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v13

    goto :goto_98

    :cond_90
    add-int/lit8 v1, v1, 0x1

    .line 953
    invoke-virtual {v0, v6, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v1

    const/4 v3, 0x0

    goto :goto_70

    :cond_98
    :goto_98
    add-int/2addr v1, v12

    add-int/lit8 v3, v1, 0x1

    .line 963
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 965
    invoke-interface {v2, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    .line 936
    :cond_a3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ac
    const/16 v3, 0x6e

    if-ne v1, v3, :cond_ea

    .line 966
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_ea

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v3, v4, 0x1

    .line 968
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 969
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_c3
    if-ne v1, v9, :cond_cd

    add-int/lit8 v4, v3, 0x1

    .line 979
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/4 v3, 0x0

    goto :goto_58

    :cond_cd
    if-ne v1, v8, :cond_e7

    add-int/lit8 v1, v3, 0x1

    .line 984
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 985
    :goto_d5
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_10d

    add-int/lit8 v3, v1, 0x1

    .line 986
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move/from16 v16, v3

    move v3, v1

    move/from16 v1, v16

    goto :goto_d5

    .line 991
    :cond_e7
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    :cond_ea
    if-ne v1, v8, :cond_f9

    .line 970
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_f9

    add-int/lit8 v1, v4, 0x1

    .line 971
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    goto :goto_10d

    .line 974
    :cond_f9
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    .line 994
    :cond_fc
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_187

    add-int/2addr v1, v10

    add-int/lit8 v2, v1, 0x1

    .line 996
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move v1, v2

    move-object v2, v5

    .line 1003
    :cond_10d
    :goto_10d
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    if-ne v3, v9, :cond_11c

    .line 1005
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1006
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    :cond_11c
    const/16 v4, 0x7d

    if-ne v3, v4, :cond_184

    .line 1009
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    :goto_126
    if-ne v3, v9, :cond_138

    const/16 v1, 0x10

    .line 1012
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1013
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_166

    :cond_138
    if-ne v3, v8, :cond_14a

    const/16 v1, 0xf

    .line 1016
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1017
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_166

    :cond_14a
    if-ne v3, v4, :cond_15c

    const/16 v1, 0xd

    .line 1020
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1021
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_166

    :cond_15c
    const/16 v6, 0x1a

    if-ne v3, v6, :cond_16a

    const/16 v1, 0x14

    .line 1024
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1025
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_166
    const/4 v1, 0x4

    .line 1043
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    :cond_16a
    move v6, v1

    const/4 v1, 0x0

    .line 1029
    :goto_16c
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_17d

    add-int/lit8 v1, v6, 0x1

    .line 1030
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 1031
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move v6, v1

    move v1, v12

    goto :goto_16c

    :cond_17d
    if-eqz v1, :cond_181

    move v1, v6

    goto :goto_126

    .line 1038
    :cond_181
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    .line 1045
    :cond_184
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    .line 999
    :cond_187
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    :catch_18a
    move-exception v0

    .line 920
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public scanFieldSymbol([CLcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    .line 835
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 837
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    const/4 p1, -0x2

    .line 838
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 842
    :cond_12
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length p1, p1

    add-int/2addr v1, p1

    add-int/lit8 p1, v1, 0x1

    .line 844
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v3, 0x22

    const/4 v4, -0x1

    if-eq v1, v3, :cond_24

    .line 846
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    :cond_24
    move v1, v0

    move v0, p1

    :goto_26
    add-int/lit8 v5, v0, 0x1

    .line 854
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_b0

    .line 856
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 857
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 859
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    sub-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v3, p1, v5, v1}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2c

    if-ne v0, p2, :cond_55

    .line 872
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p2

    iput-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p2, 0x3

    .line 873
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object p1

    :cond_55
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_ad

    .line 876
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_76

    const/16 p2, 0x10

    .line 878
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 879
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p2

    iput-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a6

    :cond_76
    const/16 p2, 0x5d

    if-ne v0, p2, :cond_8b

    const/16 p2, 0xf

    .line 881
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 882
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p2

    iput-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a6

    :cond_8b
    if-ne v0, v1, :cond_9e

    const/16 p2, 0xd

    .line 884
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 885
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p2

    iput-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a6

    :cond_9e
    const/16 p2, 0x1a

    if-ne v0, p2, :cond_aa

    const/16 p2, 0x14

    .line 887
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    :goto_a6
    const/4 p2, 0x4

    .line 892
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object p1

    .line 889
    :cond_aa
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 894
    :cond_ad
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    :cond_b0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    const/16 v6, 0x5c

    if-ne v0, v6, :cond_ba

    .line 866
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    :cond_ba
    move v0, v5

    goto/16 :goto_26
.end method

.method public scanISO8601DateIfMatch()Z
    .registers 2

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result p0

    return p0
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .registers 36

    move-object/from16 v9, p0

    .line 177
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int v10, v0, v1

    const/4 v11, 0x6

    const/4 v12, 0x3

    const/16 v13, 0xd

    const/4 v14, 0x2

    const/16 v15, 0x39

    const/4 v8, 0x5

    const/16 v16, 0x1

    const/16 v7, 0x30

    const/4 v6, 0x0

    if-nez p1, :cond_af

    if-le v10, v13, :cond_af

    .line 180
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 181
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 182
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v14

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 183
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v12

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 184
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 185
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v8

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 187
    iget v13, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v10

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v9, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    .line 188
    iget v12, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v12, v10

    sub-int/2addr v12, v14

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v14, 0x2f

    if-ne v0, v14, :cond_af

    const/16 v0, 0x44

    if-ne v1, v0, :cond_af

    const/16 v0, 0x61

    if-ne v2, v0, :cond_af

    const/16 v0, 0x74

    if-ne v3, v0, :cond_af

    const/16 v0, 0x65

    if-ne v4, v0, :cond_af

    const/16 v0, 0x28

    if-ne v5, v0, :cond_af

    const/16 v0, 0x2f

    if-ne v13, v0, :cond_af

    const/16 v0, 0x29

    if-ne v12, v0, :cond_af

    const/4 v0, -0x1

    move v1, v0

    move v0, v11

    :goto_76
    if-ge v0, v10, :cond_8d

    .line 193
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v0

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_85

    move v1, v0

    goto :goto_8a

    :cond_85
    if-lt v2, v7, :cond_8d

    if-le v2, v15, :cond_8a

    goto :goto_8d

    :cond_8a
    :goto_8a
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    :cond_8d
    :goto_8d
    const/4 v0, -0x1

    if-ne v1, v0, :cond_91

    return v6

    .line 203
    :cond_91
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v11

    sub-int/2addr v1, v0

    .line 204
    invoke-virtual {v9, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 207
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    .line 208
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 210
    iput v8, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v16

    :cond_af
    const/16 v0, 0x8

    const/16 v13, 0xe

    if-eq v10, v0, :cond_44a

    if-eq v10, v13, :cond_44a

    const/16 v0, 0x11

    if-ne v10, v0, :cond_bd

    goto/16 :goto_44a

    :cond_bd
    const/16 v0, 0x9

    if-ge v10, v0, :cond_c2

    return v6

    .line 290
    :cond_c2
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 291
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 292
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 293
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v4, 0x3

    add-int/2addr v3, v4

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 294
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 295
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v8

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 296
    iget v14, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v11

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    .line 297
    iget v7, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x7

    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 298
    iget v8, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 299
    iget v11, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v11, 0x9

    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    const/16 v15, 0x2d

    if-ne v4, v15, :cond_114

    if-eq v7, v15, :cond_1a3

    :cond_114
    const/16 v12, 0x2f

    if-ne v4, v12, :cond_11e

    const/16 v12, 0x2f

    if-ne v7, v12, :cond_11e

    goto/16 :goto_1a3

    :cond_11e
    const/16 v12, 0x2e

    if-ne v2, v12, :cond_126

    const/16 v12, 0x2e

    if-eq v5, v12, :cond_12a

    :cond_126
    if-ne v2, v15, :cond_132

    if-ne v5, v15, :cond_132

    :cond_12a
    move/from16 v32, v0

    move/from16 v33, v1

    move v5, v3

    move v12, v4

    goto/16 :goto_1b6

    :cond_132
    const/16 v12, 0x5e74

    if-eq v4, v12, :cond_13d

    const v12, 0xb144

    if-ne v4, v12, :cond_13c

    goto :goto_13d

    :cond_13c
    return v6

    :cond_13d
    :goto_13d
    const/16 v4, 0x6708

    if-eq v7, v4, :cond_17e

    const v4, 0xc6d4

    if-ne v7, v4, :cond_147

    goto :goto_17e

    :cond_147
    const/16 v4, 0x6708

    if-eq v14, v4, :cond_152

    const v4, 0xc6d4

    if-ne v14, v4, :cond_151

    goto :goto_152

    :cond_151
    return v6

    :cond_152
    :goto_152
    const/16 v4, 0x65e5

    if-eq v8, v4, :cond_172

    const v4, 0xc77c

    if-ne v8, v4, :cond_15c

    goto :goto_172

    :cond_15c
    const/16 v4, 0x65e5

    if-eq v11, v4, :cond_167

    const v4, 0xc77c

    if-ne v11, v4, :cond_166

    goto :goto_167

    :cond_166
    return v6

    :cond_167
    :goto_167
    move v14, v0

    move v11, v3

    move v12, v5

    move/from16 v32, v7

    move/from16 v33, v8

    const/16 v5, 0x30

    move v7, v1

    goto :goto_1b5

    :cond_172
    :goto_172
    move v14, v0

    move v8, v2

    move v11, v3

    move v12, v5

    move/from16 v33, v7

    const/16 v5, 0x30

    const/16 v32, 0x30

    move v7, v1

    goto :goto_1b6

    :cond_17e
    :goto_17e
    const/16 v4, 0x65e5

    if-eq v11, v4, :cond_1ad

    const v4, 0xc77c

    if-ne v11, v4, :cond_188

    goto :goto_1ad

    .line 337
    :cond_188
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v4, 0xa

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v7, 0x65e5

    if-eq v4, v7, :cond_1a3

    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v4, 0xa

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const v7, 0xc77c

    if-ne v4, v7, :cond_1a2

    goto :goto_1a3

    :cond_1a2
    return v6

    :cond_1a3
    :goto_1a3
    move v7, v1

    move/from16 v32, v8

    move/from16 v33, v11

    move v12, v14

    move v14, v0

    move v8, v2

    move v11, v3

    goto :goto_1b6

    :cond_1ad
    :goto_1ad
    move v7, v1

    move v11, v3

    move/from16 v33, v8

    move v12, v14

    const/16 v32, 0x30

    move v14, v0

    :goto_1b5
    move v8, v2

    :goto_1b6
    move/from16 v24, v14

    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v11

    move/from16 v28, v5

    move/from16 v29, v12

    move/from16 v30, v32

    move/from16 v31, v33

    .line 363
    invoke-static/range {v24 .. v31}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_1cd

    return v6

    :cond_1cd
    move-object/from16 v0, p0

    move v1, v14

    move v2, v7

    move v3, v8

    move v4, v11

    move v11, v6

    move v6, v12

    const/16 v12, 0x30

    move/from16 v7, v32

    const/4 v14, 0x5

    move/from16 v8, v33

    .line 367
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 369
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v0, 0x54

    if-eq v7, v0, :cond_289

    const/16 v0, 0x20

    if-ne v7, v0, :cond_1f3

    if-nez p1, :cond_1f3

    goto/16 :goto_289

    :cond_1f3
    const/16 v0, 0x22

    if-eq v7, v0, :cond_260

    const/16 v0, 0x1a

    if-eq v7, v0, :cond_260

    const/16 v0, 0x65e5

    if-eq v7, v0, :cond_260

    const v0, 0xc77c

    if-ne v7, v0, :cond_205

    goto :goto_260

    :cond_205
    const/16 v0, 0x2b

    if-eq v7, v0, :cond_20d

    if-ne v7, v15, :cond_20c

    goto :goto_20d

    :cond_20c
    return v11

    .line 385
    :cond_20d
    :goto_20d
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_25f

    .line 386
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v1, 0xd

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_25f

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    .line 387
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_25f

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0xf

    .line 388
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-eq v0, v12, :cond_234

    goto :goto_25f

    :cond_234
    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x30

    move-object/from16 v0, p0

    .line 392
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 393
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v13, v11}, Ljava/util/Calendar;->set(II)V

    .line 394
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v1, 0xb

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0xc

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    invoke-virtual {v9, v7, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCC)V

    return v16

    :cond_25f
    :goto_25f
    return v11

    .line 375
    :cond_260
    :goto_260
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v11}, Ljava/util/Calendar;->set(II)V

    .line 376
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v11}, Ljava/util/Calendar;->set(II)V

    .line 377
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v11}, Ljava/util/Calendar;->set(II)V

    .line 378
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v13, v11}, Ljava/util/Calendar;->set(II)V

    .line 380
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0xa

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 382
    iput v14, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v16

    .line 371
    :cond_289
    :goto_289
    sget v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    if-ge v10, v0, :cond_28e

    return v11

    .line 402
    :cond_28e
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v1, 0xd

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_29c

    return v11

    .line 405
    :cond_29c
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_2a9

    return v11

    .line 409
    :cond_2a9
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v1, 0xb

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 410
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0xc

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 411
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v17

    .line 412
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v20

    .line 413
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x11

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v21

    .line 414
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x12

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v23

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move/from16 v3, v17

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v6, v23

    .line 416
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_2ec

    return v11

    :cond_2ec
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move/from16 v3, v17

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v6, v23

    .line 420
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 422
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x13

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_414

    .line 424
    sget v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    if-ge v10, v0, :cond_30c

    return v11

    .line 447
    :cond_30c
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x14

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-lt v0, v12, :cond_413

    const/16 v1, 0x39

    if-le v0, v1, :cond_31c

    goto/16 :goto_413

    :cond_31c
    sub-int/2addr v0, v12

    .line 455
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x15

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-lt v2, v12, :cond_330

    if-gt v2, v1, :cond_330

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v2, v12

    add-int/2addr v0, v2

    move v1, v0

    const/4 v0, 0x2

    goto :goto_333

    :cond_330
    move v1, v0

    move/from16 v0, v16

    :goto_333
    const/4 v2, 0x2

    if-ne v0, v2, :cond_349

    .line 463
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x16

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-lt v2, v12, :cond_349

    const/16 v3, 0x39

    if-gt v2, v3, :cond_349

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v2, v12

    add-int/2addr v1, v2

    const/4 v0, 0x3

    .line 470
    :cond_349
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v13, v1}, Ljava/util/Calendar;->set(II)V

    .line 473
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x14

    add-int/2addr v1, v0

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_387

    if-ne v1, v15, :cond_35e

    goto :goto_387

    :cond_35e
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_384

    .line 511
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-eqz v1, :cond_380

    .line 512
    invoke-static {v11}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 513
    array-length v2, v1

    if-lez v2, :cond_380

    .line 514
    aget-object v1, v1, v11

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 515
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_380
    move/from16 v18, v16

    goto/16 :goto_3f1

    :cond_384
    move/from16 v18, v11

    goto :goto_3f1

    .line 475
    :cond_387
    :goto_387
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-lt v2, v12, :cond_413

    const/16 v3, 0x31

    if-le v2, v3, :cond_39a

    goto/16 :goto_413

    .line 480
    :cond_39a
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v0

    const/4 v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-lt v3, v12, :cond_413

    const/16 v4, 0x39

    if-le v3, v4, :cond_3ac

    goto :goto_413

    .line 485
    :cond_3ac
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v4, 0x14

    add-int/2addr v4, v0

    const/4 v5, 0x3

    add-int/2addr v4, v5

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_3d9

    .line 487
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v4, 0x14

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-eq v4, v12, :cond_3c9

    return v11

    .line 492
    :cond_3c9
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v4, 0x14

    add-int/2addr v4, v0

    add-int/2addr v4, v14

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-eq v4, v12, :cond_3d6

    return v11

    :cond_3d6
    const/16 v18, 0x6

    goto :goto_3ee

    :cond_3d9
    if-ne v4, v12, :cond_3ec

    .line 498
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v4, 0x14

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-eq v4, v12, :cond_3e9

    return v11

    :cond_3e9
    move/from16 v18, v14

    goto :goto_3ee

    :cond_3ec
    const/16 v18, 0x3

    .line 507
    :goto_3ee
    invoke-virtual {v9, v1, v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCC)V

    .line 520
    :goto_3f1
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x14

    add-int v0, v0, v18

    add-int/2addr v1, v0

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_405

    const/16 v2, 0x22

    if-eq v1, v2, :cond_405

    return v11

    .line 524
    :cond_405
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v0

    iput v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 526
    iput v14, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v16

    :cond_413
    :goto_413
    return v11

    .line 428
    :cond_414
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v13, v11}, Ljava/util/Calendar;->set(II)V

    .line 430
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x13

    iput v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 432
    iput v14, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_449

    .line 436
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-eqz v0, :cond_449

    .line 437
    invoke-static {v11}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v0

    .line 438
    array-length v1, v0

    if-lez v1, :cond_449

    .line 439
    aget-object v0, v0, v11

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 440
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_449
    return v16

    :cond_44a
    :goto_44a
    move v11, v6

    move v12, v7

    move v14, v8

    if-eqz p1, :cond_450

    return v11

    .line 220
    :cond_450
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 221
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v20

    .line 222
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v19

    .line 223
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v1, 0x3

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    .line 224
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v21

    .line 225
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v14

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v24

    .line 226
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v1, 0x6

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v22

    .line 227
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v25

    move v1, v15

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v18

    move/from16 v5, v21

    move/from16 v6, v24

    move/from16 v7, v22

    move/from16 v8, v25

    .line 229
    invoke-static/range {v1 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_4a3

    return v11

    :cond_4a3
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v18

    move/from16 v5, v21

    move/from16 v6, v24

    move/from16 v7, v22

    move/from16 v8, v25

    .line 233
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    const/16 v0, 0x8

    if-eq v10, v0, :cond_54e

    .line 237
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 238
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 239
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 240
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v1, 0xb

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    .line 241
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0xc

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v19

    .line 242
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v1, 0xd

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v20

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v15

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    .line 244
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_4ff

    return v11

    :cond_4ff
    const/16 v0, 0x11

    if-ne v10, v0, :cond_537

    .line 249
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 250
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0xf

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 251
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-lt v0, v12, :cond_536

    const/16 v3, 0x39

    if-le v0, v3, :cond_521

    goto :goto_536

    :cond_521
    if-lt v1, v12, :cond_536

    if-le v1, v3, :cond_526

    goto :goto_536

    :cond_526
    if-lt v2, v12, :cond_536

    if-le v2, v3, :cond_52b

    goto :goto_536

    :cond_52b
    sub-int/2addr v0, v12

    mul-int/lit8 v0, v0, 0x64

    sub-int/2addr v1, v12

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int/2addr v2, v12

    add-int/2addr v0, v2

    move v6, v0

    goto :goto_538

    :cond_536
    :goto_536
    return v11

    :cond_537
    move v6, v11

    :goto_538
    sub-int/2addr v7, v12

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, v12

    add-int v0, v7, v8

    sub-int/2addr v15, v12

    mul-int/lit8 v15, v15, 0xa

    add-int/lit8 v18, v18, -0x30

    add-int v1, v15, v18

    add-int/lit8 v19, v19, -0x30

    mul-int/lit8 v19, v19, 0xa

    add-int/lit8 v20, v20, -0x30

    add-int v2, v19, v20

    goto :goto_552

    :cond_54e
    move v0, v11

    move v1, v0

    move v2, v1

    move v6, v2

    .line 277
    :goto_552
    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 278
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 279
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 280
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v13, v6}, Ljava/util/Calendar;->set(II)V

    .line 282
    iput v14, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v16
.end method

.method public final scanInt(C)I
    .registers 11

    const/4 v0, 0x0

    .line 1222
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1224
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .line 1225
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_11

    const/4 v3, 0x1

    goto :goto_12

    :cond_11
    move v3, v0

    :goto_12
    if-eqz v3, :cond_1d

    add-int/lit8 v1, v2, 0x1

    .line 1229
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v8, v2

    move v2, v1

    move v1, v8

    :cond_1d
    const/4 v4, -0x1

    const/16 v5, 0x30

    if-lt v1, v5, :cond_6f

    const/16 v6, 0x39

    if-gt v1, v6, :cond_6f

    sub-int/2addr v1, v5

    :goto_27
    add-int/lit8 v7, v2, 0x1

    .line 1236
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-lt v2, v5, :cond_38

    if-gt v2, v6, :cond_38

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    move v2, v7

    goto :goto_27

    :cond_38
    const/16 v5, 0x2e

    if-ne v2, v5, :cond_3f

    .line 1240
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_3f
    if-gez v1, :cond_44

    .line 1247
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_44
    :goto_44
    if-ne v2, p1, :cond_5b

    .line 1257
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1258
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 1259
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 p1, 0x10

    .line 1260
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eqz v3, :cond_5a

    neg-int v1, v1

    :cond_5a
    return v1

    .line 1263
    :cond_5b
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_69

    add-int/lit8 v0, v7, 0x1

    .line 1264
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v7, v0

    goto :goto_44

    .line 1267
    :cond_69
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-eqz v3, :cond_6e

    neg-int v1, v1

    :cond_6e
    return v1

    .line 1251
    :cond_6f
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public scanLong(C)J
    .registers 15

    const/4 v0, 0x0

    .line 1274
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1276
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .line 1277
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_10

    const/4 v0, 0x1

    :cond_10
    if-eqz v0, :cond_1b

    add-int/lit8 v1, v2, 0x1

    .line 1281
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v12, v2

    move v2, v1

    move v1, v12

    :cond_1b
    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    const/16 v6, 0x30

    if-lt v1, v6, :cond_73

    const/16 v7, 0x39

    if-gt v1, v7, :cond_73

    sub-int/2addr v1, v6

    int-to-long v8, v1

    :goto_28
    add-int/lit8 v1, v2, 0x1

    .line 1288
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_3b

    if-gt v2, v7, :cond_3b

    const-wide/16 v10, 0xa

    mul-long/2addr v8, v10

    add-int/lit8 v2, v2, -0x30

    int-to-long v10, v2

    add-long/2addr v8, v10

    move v2, v1

    goto :goto_28

    :cond_3b
    const/16 v6, 0x2e

    if-ne v2, v6, :cond_42

    .line 1292
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v3

    :cond_42
    cmp-long v6, v8, v3

    if-gez v6, :cond_49

    .line 1299
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v3

    :cond_49
    :goto_49
    if-ne v2, p1, :cond_60

    .line 1309
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1310
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 1311
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 p1, 0x10

    .line 1312
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eqz v0, :cond_5f

    neg-long v8, v8

    :cond_5f
    return-wide v8

    .line 1315
    :cond_60
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_70

    add-int/lit8 v2, v1, 0x1

    .line 1316
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v12, v2

    move v2, v1

    move v1, v12

    goto :goto_49

    .line 1320
    :cond_70
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v8

    .line 1303
    :cond_73
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v3
.end method

.method protected setTime(CCCCCC)V
    .registers 7

    add-int/lit8 p1, p1, -0x30

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p2, p2, -0x30

    add-int/2addr p1, p2

    add-int/lit8 p3, p3, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/lit8 p4, p4, -0x30

    add-int/2addr p3, p4

    add-int/lit8 p5, p5, -0x30

    mul-int/lit8 p5, p5, 0xa

    add-int/lit8 p6, p6, -0x30

    add-int/2addr p5, p6

    .line 534
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 p4, 0xb

    invoke-virtual {p2, p4, p1}, Ljava/util/Calendar;->set(II)V

    .line 535
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 536
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 p1, 0xd

    invoke-virtual {p0, p1, p5}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method protected setTimeZone(CCC)V
    .registers 4

    add-int/lit8 p2, p2, -0x30

    mul-int/lit8 p2, p2, 0xa

    add-int/lit8 p3, p3, -0x30

    add-int/2addr p2, p3

    mul-int/lit16 p2, p2, 0xe10

    mul-int/lit16 p2, p2, 0x3e8

    const/16 p3, 0x2d

    if-ne p1, p3, :cond_10

    neg-int p2, p2

    .line 545
    :cond_10
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    if-eq p1, p2, :cond_2f

    .line 546
    invoke-static {p2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object p1

    .line 547
    array-length p2, p1

    if-lez p2, :cond_2f

    const/4 p2, 0x0

    .line 548
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 549
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_2f
    return-void
.end method

.method public final stringVal()Ljava/lang/String;
    .registers 4

    .line 122
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v0, :cond_f

    .line 124
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 126
    :cond_f
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    const/4 v2, 0x0

    iget p0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final subString(II)Ljava/lang/String;
    .registers 7

    .line 131
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v0, :cond_27

    .line 132
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p2, v1, :cond_19

    .line 133
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v3, p1, p2

    invoke-virtual {v1, p1, v3, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 134
    new-instance p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-direct {p1, p0, v2, p2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 136
    :cond_19
    new-array v0, p2, [C

    .line 137
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 138
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 141
    :cond_27
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final sub_chars(II)[C
    .registers 6

    .line 146
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v0

    if-ge p2, v2, :cond_13

    .line 147
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v2, p1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 148
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    return-object p0

    .line 150
    :cond_13
    new-array v0, p2, [C

    .line 151
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    return-object v0
.end method
