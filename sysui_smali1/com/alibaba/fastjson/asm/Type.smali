.class public Lcom/alibaba/fastjson/asm/Type;
.super Ljava/lang/Object;
.source "Type.java"


# static fields
.field public static final BOOLEAN_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final BYTE_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final CHAR_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final DOUBLE_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final FLOAT_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final INT_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final LONG_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final SHORT_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final VOID_TYPE:Lcom/alibaba/fastjson/asm/Type;


# instance fields
.field private final buf:[C

.field private final len:I

.field private final off:I

.field protected final sort:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 42
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x56050000

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->VOID_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 47
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const v3, 0x5a000501

    invoke-direct {v0, v2, v1, v3, v2}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->BOOLEAN_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 52
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v3, 0x2

    const v4, 0x43000601

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->CHAR_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 57
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v3, 0x3

    const v4, 0x42000501

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->BYTE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 62
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v3, 0x4

    const v4, 0x53000701

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->SHORT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 67
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v3, 0x5

    const v4, 0x49000001

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->INT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 72
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v3, 0x6

    const v4, 0x46020201

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->FLOAT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 77
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v3, 0x7

    const v4, 0x4a010102  # 2113600.5f

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->LONG_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 82
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/16 v3, 0x8

    const v4, 0x44030302

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->DOUBLE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-void
.end method

.method private constructor <init>(I[CII)V
    .registers 5

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Lcom/alibaba/fastjson/asm/Type;->sort:I

    .line 116
    iput-object p2, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    .line 117
    iput p3, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    .line 118
    iput p4, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    return-void
.end method

.method public static getArgumentsAndReturnSizes(Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x1

    move v1, v0

    move v2, v1

    :goto_3
    add-int/lit8 v3, v1, 0x1

    .line 135
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x29

    const/16 v5, 0x4a

    const/16 v6, 0x44

    if-ne v1, v4, :cond_25

    .line 137
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/4 v1, 0x2

    shl-int/2addr v2, v1

    const/16 v3, 0x56

    if-ne p0, v3, :cond_1d

    const/4 v0, 0x0

    goto :goto_22

    :cond_1d
    if-eq p0, v6, :cond_21

    if-ne p0, v5, :cond_22

    :cond_21
    move v0, v1

    :cond_22
    :goto_22
    or-int p0, v2, v0

    return p0

    :cond_25
    const/16 v4, 0x4c

    if-ne v1, v4, :cond_38

    :goto_29
    add-int/lit8 v1, v3, 0x1

    .line 140
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_35

    move v3, v1

    goto :goto_29

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_38
    if-eq v1, v6, :cond_40

    if-ne v1, v5, :cond_3d

    goto :goto_40

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x2

    :goto_42
    move v1, v3

    goto :goto_3
.end method

.method public static getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;
    .registers 2

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/asm/Type;->getType([CI)Lcom/alibaba/fastjson/asm/Type;

    move-result-object p0

    return-object p0
.end method

.method private static getType([CI)Lcom/alibaba/fastjson/asm/Type;
    .registers 8

    .line 167
    aget-char v0, p0, p1

    const/16 v1, 0x46

    if-eq v0, v1, :cond_72

    const/16 v1, 0x53

    if-eq v0, v1, :cond_6f

    const/16 v1, 0x56

    if-eq v0, v1, :cond_6c

    const/16 v1, 0x49

    if-eq v0, v1, :cond_69

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_66

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_63

    const/16 v1, 0x3b

    const/16 v2, 0x5b

    const/4 v3, 0x1

    if-eq v0, v2, :cond_41

    packed-switch v0, :pswitch_data_76

    move v0, v3

    :goto_25
    add-int v2, p1, v0

    .line 201
    aget-char v2, p0, v2

    if-eq v2, v1, :cond_2e

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 204
    :cond_2e
    new-instance v1, Lcom/alibaba/fastjson/asm/Type;

    const/16 v2, 0xa

    add-int/2addr p1, v3

    sub-int/2addr v0, v3

    invoke-direct {v1, v2, p0, p1, v0}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    return-object v1

    .line 185
    :pswitch_38  #0x44
    sget-object p0, Lcom/alibaba/fastjson/asm/Type;->DOUBLE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object p0

    .line 173
    :pswitch_3b  #0x43
    sget-object p0, Lcom/alibaba/fastjson/asm/Type;->CHAR_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object p0

    .line 175
    :pswitch_3e  #0x42
    sget-object p0, Lcom/alibaba/fastjson/asm/Type;->BYTE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object p0

    :cond_41
    move v0, v3

    :goto_42
    add-int v4, p1, v0

    .line 188
    aget-char v5, p0, v4

    if-ne v5, v2, :cond_4b

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 191
    :cond_4b
    aget-char v2, p0, v4

    const/16 v4, 0x4c

    if-ne v2, v4, :cond_5a

    :goto_51
    add-int/lit8 v0, v0, 0x1

    add-int v2, p1, v0

    .line 193
    aget-char v2, p0, v2

    if-eq v2, v1, :cond_5a

    goto :goto_51

    .line 197
    :cond_5a
    new-instance v1, Lcom/alibaba/fastjson/asm/Type;

    const/16 v2, 0x9

    add-int/2addr v0, v3

    invoke-direct {v1, v2, p0, p1, v0}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    return-object v1

    .line 171
    :cond_63
    sget-object p0, Lcom/alibaba/fastjson/asm/Type;->BOOLEAN_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object p0

    .line 183
    :cond_66
    sget-object p0, Lcom/alibaba/fastjson/asm/Type;->LONG_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object p0

    .line 179
    :cond_69
    sget-object p0, Lcom/alibaba/fastjson/asm/Type;->INT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object p0

    .line 169
    :cond_6c
    sget-object p0, Lcom/alibaba/fastjson/asm/Type;->VOID_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object p0

    .line 177
    :cond_6f
    sget-object p0, Lcom/alibaba/fastjson/asm/Type;->SHORT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object p0

    .line 181
    :cond_72
    sget-object p0, Lcom/alibaba/fastjson/asm/Type;->FLOAT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object p0

    nop

    :pswitch_data_76
    .packed-switch 0x42
        :pswitch_3e  #00000042
        :pswitch_3b  #00000043
        :pswitch_38  #00000044
    .end packed-switch
.end method


# virtual methods
.method getDescriptor()Ljava/lang/String;
    .registers 4

    .line 222
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    iget p0, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .registers 4

    .line 209
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    iget p0, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
