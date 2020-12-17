.class public Lcom/meizu/settings/language/FlymeHanziToPinyin;
.super Ljava/lang/Object;
.source "FlymeHanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;
    }
.end annotation


# static fields
.field private static final COLLATOR:Ljava/text/Collator;

.field private static final MULTINAMES:[Ljava/lang/String;

.field private static final MULTIPYS:[[B

.field private static sInstance:Lcom/meizu/settings/language/FlymeHanziToPinyin;


# instance fields
.field private mAsciiTransliterator:Landroid/icu/text/Transliterator;

.field private mPinyinTransliterator:Landroid/icu/text/Transliterator;


# direct methods
.method static constructor <clinit>()V
    .registers 45

    .line 41
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/language/FlymeHanziToPinyin;->COLLATOR:Ljava/text/Collator;

    const-string v1, "夏"

    const-string v2, "瞿"

    const-string v3, "曾"

    const-string v4, "石"

    const-string v5, "解"

    const-string v6, "藏"

    const-string v7, "翟"

    const-string v8, "都"

    const-string v9, "六"

    const-string v10, "薄"

    const-string v11, "贾"

    const-string v12, "居"

    const-string v13, "查"

    const-string v14, "盛"

    const-string v15, "塔"

    const-string v16, "和"

    const-string v17, "蓝"

    const-string v18, "殷"

    const-string v19, "乾"

    const-string v20, "陆"

    const-string v21, "乜"

    const-string v22, "阚"

    const-string v23, "叶"

    const-string v24, "强"

    const-string v25, "汤"

    const-string v26, "万"

    const-string v27, "沈"

    const-string v28, "仇"

    const-string v29, "南"

    const-string v30, "单"

    const-string v31, "卜"

    const-string v32, "鸟"

    const-string v33, "思"

    const-string v34, "寻"

    const-string v35, "於"

    const-string v36, "余"

    const-string v37, "浅"

    const-string v38, "浣"

    const-string v39, "无"

    const-string v40, "信"

    const-string v41, "許"

    const-string v42, "齐"

    const-string v43, "俞"

    const-string v44, "若"

    .line 42
    filled-new-array/range {v1 .. v44}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/language/FlymeHanziToPinyin;->MULTINAMES:[Ljava/lang/String;

    const/16 v0, 0x2c

    new-array v0, v0, [[B

    const/4 v1, 0x6

    new-array v2, v1, [B

    .line 51
    fill-array-data v2, :array_1f2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1fa

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_202

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_20a

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_212

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_21a

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_222

    aput-object v2, v0, v1

    new-array v2, v1, [B

    fill-array-data v2, :array_22a

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_232

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_23a

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_242

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_24a

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_252

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_25a

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_262

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_26a

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_272

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_27a

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_282

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_28a

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_292

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_29a

    const/16 v3, 0x15

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2a2

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2aa

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2b2

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2ba

    const/16 v3, 0x19

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2c2

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2ca

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2d2

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2da

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2e2

    const/16 v3, 0x1e

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2ea

    const/16 v3, 0x1f

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2f2

    const/16 v3, 0x20

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2fa

    const/16 v3, 0x21

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_302

    const/16 v3, 0x22

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_30a

    const/16 v3, 0x23

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_312

    const/16 v3, 0x24

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_31a

    const/16 v3, 0x25

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_322

    const/16 v3, 0x26

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_32a

    const/16 v3, 0x27

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_332

    const/16 v3, 0x28

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_33a

    const/16 v3, 0x29

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_342

    const/16 v3, 0x2a

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_34a

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sput-object v0, Lcom/meizu/settings/language/FlymeHanziToPinyin;->MULTIPYS:[[B

    return-void

    nop

    :array_1f2
    .array-data 1
        0x58t
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1fa
    .array-data 1
        0x51t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_202
    .array-data 1
        0x5at
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_20a
    .array-data 1
        0x53t
        0x48t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_212
    .array-data 1
        0x58t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_21a
    .array-data 1
        0x5at
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_222
    .array-data 1
        0x5at
        0x48t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_22a
    .array-data 1
        0x44t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_232
    .array-data 1
        0x4ct
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_23a
    .array-data 1
        0x42t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_242
    .array-data 1
        0x4at
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_24a
    .array-data 1
        0x4at
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_252
    .array-data 1
        0x5at
        0x48t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_25a
    .array-data 1
        0x53t
        0x48t
        0x45t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_262
    .array-data 1
        0x54t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_26a
    .array-data 1
        0x48t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_272
    .array-data 1
        0x4ct
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_27a
    .array-data 1
        0x59t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_282
    .array-data 1
        0x51t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_28a
    .array-data 1
        0x4ct
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_292
    .array-data 1
        0x4et
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_29a
    .array-data 1
        0x4bt
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a2
    .array-data 1
        0x59t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2aa
    .array-data 1
        0x51t
        0x49t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_2b2
    .array-data 1
        0x54t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ba
    .array-data 1
        0x57t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c2
    .array-data 1
        0x53t
        0x48t
        0x45t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ca
    .array-data 1
        0x51t
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d2
    .array-data 1
        0x4et
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2da
    .array-data 1
        0x53t
        0x48t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e2
    .array-data 1
        0x42t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ea
    .array-data 1
        0x4et
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f2
    .array-data 1
        0x53t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2fa
    .array-data 1
        0x58t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_302
    .array-data 1
        0x59t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_30a
    .array-data 1
        0x59t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_312
    .array-data 1
        0x51t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_31a
    .array-data 1
        0x57t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_322
    .array-data 1
        0x57t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32a
    .array-data 1
        0x58t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_332
    .array-data 1
        0x58t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_33a
    .array-data 1
        0x51t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_342
    .array-data 1
        0x59t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_34a
    .array-data 1
        0x52t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 4

    const-string v0, "Han-Latin/Names transliterator data is missing, FlymeHanziToPinyin is disabled"

    const-string v1, "FlymeHanziToPinyin"

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_7
    const-string v2, "Han-Latin/Names; Latin-Ascii; Any-Upper"

    .line 193
    invoke-static {v2}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/language/FlymeHanziToPinyin;->mPinyinTransliterator:Landroid/icu/text/Transliterator;

    const-string v2, "Latin-Ascii"

    .line 194
    invoke-static {v2}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/language/FlymeHanziToPinyin;->mAsciiTransliterator:Landroid/icu/text/Transliterator;
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_17} :catch_1c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_17} :catch_18

    goto :goto_1f

    .line 199
    :catch_18
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 196
    :catch_1c
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method private addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;",
            ">;I)V"
        }
    .end annotation

    .line 344
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 345
    new-instance v0, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;

    invoke-direct {v0, p3, p0, p0}, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 346
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public static getInstance()Lcom/meizu/settings/language/FlymeHanziToPinyin;
    .registers 2

    .line 209
    const-class v0, Lcom/meizu/settings/language/FlymeHanziToPinyin;

    monitor-enter v0

    .line 210
    :try_start_3
    sget-object v1, Lcom/meizu/settings/language/FlymeHanziToPinyin;->sInstance:Lcom/meizu/settings/language/FlymeHanziToPinyin;

    if-nez v1, :cond_e

    .line 211
    new-instance v1, Lcom/meizu/settings/language/FlymeHanziToPinyin;

    invoke-direct {v1}, Lcom/meizu/settings/language/FlymeHanziToPinyin;-><init>()V

    sput-object v1, Lcom/meizu/settings/language/FlymeHanziToPinyin;->sInstance:Lcom/meizu/settings/language/FlymeHanziToPinyin;

    .line 213
    :cond_e
    sget-object v1, Lcom/meizu/settings/language/FlymeHanziToPinyin;->sInstance:Lcom/meizu/settings/language/FlymeHanziToPinyin;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    .line 214
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static getMPinyin(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v1

    move v1, v0

    .line 228
    :goto_4
    sget-object v3, Lcom/meizu/settings/language/FlymeHanziToPinyin;->MULTINAMES:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_17

    .line 229
    sget-object v2, Lcom/meizu/settings/language/FlymeHanziToPinyin;->COLLATOR:Ljava/text/Collator;

    aget-object v3, v3, v1

    invoke-virtual {v2, p0, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_14

    goto :goto_17

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_17
    :goto_17
    if-eqz v2, :cond_1b

    const/4 p0, 0x0

    return-object p0

    .line 238
    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    :goto_20
    sget-object v2, Lcom/meizu/settings/language/FlymeHanziToPinyin;->MULTIPYS:[[B

    aget-object v3, v2, v1

    array-length v3, v3

    if-ge v0, v3, :cond_38

    aget-object v3, v2, v1

    aget-byte v3, v3, v0

    if-eqz v3, :cond_38

    .line 240
    aget-object v2, v2, v1

    aget-byte v2, v2, v0

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 242
    :cond_38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private tokenize(CLcom/meizu/settings/language/FlymeHanziToPinyin$Token;Z)V
    .registers 6

    .line 247
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->source:Ljava/lang/String;

    const/4 v0, 0x1

    const/16 v1, 0x80

    if-ge p1, v1, :cond_12

    .line 251
    iput v0, p2, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->type:I

    .line 252
    iget-object p0, p2, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->source:Ljava/lang/String;

    iput-object p0, p2, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->target:Ljava/lang/String;

    return-void

    :cond_12
    const/16 v1, 0x250

    if-lt p1, v1, :cond_57

    const/16 v1, 0x1e00

    if-gt v1, p1, :cond_1f

    const/16 v1, 0x1eff

    if-ge p1, v1, :cond_1f

    goto :goto_57

    :cond_1f
    const/4 v0, 0x2

    .line 264
    iput v0, p2, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->type:I

    if-eqz p3, :cond_33

    .line 267
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/language/FlymeHanziToPinyin;->getMPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->target:Ljava/lang/String;

    .line 268
    iget-object p1, p2, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->target:Ljava/lang/String;

    if-eqz p1, :cond_33

    return-void

    .line 273
    :cond_33
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeHanziToPinyin;->mPinyinTransliterator:Landroid/icu/text/Transliterator;

    iget-object p1, p2, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->target:Ljava/lang/String;

    .line 274
    iget-object p0, p2, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4f

    iget-object p0, p2, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->source:Ljava/lang/String;

    iget-object p1, p2, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->target:Ljava/lang/String;

    .line 275
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_56

    :cond_4f
    const/4 p0, 0x3

    .line 276
    iput p0, p2, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->type:I

    .line 277
    iget-object p0, p2, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->source:Ljava/lang/String;

    iput-object p0, p2, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->target:Ljava/lang/String;

    :cond_56
    return-void

    .line 258
    :cond_57
    :goto_57
    iput v0, p2, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->type:I

    .line 259
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeHanziToPinyin;->mAsciiTransliterator:Landroid/icu/text/Transliterator;

    if-nez p0, :cond_60

    iget-object p0, p2, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->source:Ljava/lang/String;

    goto :goto_66

    .line 260
    :cond_60
    iget-object p1, p2, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_66
    iput-object p0, p2, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->target:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    invoke-virtual {p0}, Lcom/meizu/settings/language/FlymeHanziToPinyin;->hasChineseTransliterator()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto/16 :goto_79

    .line 296
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    new-instance v3, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;

    invoke-direct {v3}, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v7, v3

    move v3, v4

    move v6, v5

    :goto_26
    if-ge v3, v1, :cond_70

    .line 307
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 308
    invoke-static {v8}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 309
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_6d

    .line 310
    invoke-direct {p0, v2, v0, v6}, Lcom/meizu/settings/language/FlymeHanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    goto :goto_6d

    :cond_3c
    if-nez v3, :cond_40

    move v9, v5

    goto :goto_41

    :cond_40
    move v9, v4

    .line 318
    :goto_41
    invoke-direct {p0, v8, v7, v9}, Lcom/meizu/settings/language/FlymeHanziToPinyin;->tokenize(CLcom/meizu/settings/language/FlymeHanziToPinyin$Token;Z)V

    .line 321
    iget v8, v7, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->type:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5b

    .line 322
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_52

    .line 323
    invoke-direct {p0, v2, v0, v6}, Lcom/meizu/settings/language/FlymeHanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 325
    :cond_52
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v7, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;

    invoke-direct {v7}, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;-><init>()V

    goto :goto_6b

    :cond_5b
    if-eq v6, v8, :cond_66

    .line 328
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_66

    .line 329
    invoke-direct {p0, v2, v0, v6}, Lcom/meizu/settings/language/FlymeHanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 331
    :cond_66
    iget-object v6, v7, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :goto_6b
    iget v6, v7, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->type:I

    :cond_6d
    :goto_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 336
    :cond_70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_79

    .line 337
    invoke-direct {p0, v2, v0, v6}, Lcom/meizu/settings/language/FlymeHanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    :cond_79
    :goto_79
    return-object v0
.end method

.method public hasChineseTransliterator()Z
    .registers 1

    .line 205
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeHanziToPinyin;->mPinyinTransliterator:Landroid/icu/text/Transliterator;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
