.class public abstract Lcom/android/server/display/BrightnessMappingStrategy;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;,
        Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;
    }
.end annotation


# static fields
.field private static final LUX_GRAD_SMOOTHING:F = 0.25f

.field private static final MAX_GRAD:F = 1.0f

.field private static final PLOG:Lcom/android/server/display/utils/Plog;

.field private static final TAG:Ljava/lang/String; = "BrightnessMappingStrategy"


# instance fields
.field protected mLoggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-string v0, "BrightnessMappingStrategy"

    invoke-static {v0}, Lcom/android/server/display/utils/Plog;->createSystemPlog(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/display/utils/Plog;
    .registers 1

    .line 45
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-object v0
.end method

.method public static create(Landroid/content/res/Resources;)Lcom/android/server/display/BrightnessMappingStrategy;
    .registers 9

    .line 57
    const v0, 0x1070016

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v0

    .line 59
    const v1, 0x1070015

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 61
    const v2, 0x1070013

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    .line 63
    const/4 v3, 0x1

    const/high16 v4, 0x1130000

    invoke-virtual {p0, v4, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    .line 67
    const v5, 0x1070065

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v5

    .line 69
    const v6, 0x1070064

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 72
    invoke-static {v5, v6}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 73
    invoke-static {v0, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 74
    const v1, 0x10e00aa

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 76
    const v7, 0x10e00a9

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 78
    const/4 v7, 0x0

    aget v7, v6, v7

    if-gt v7, v1, :cond_5b

    array-length v1, v6

    sub-int/2addr v1, v3

    aget v1, v6, v1

    if-ge v1, p0, :cond_62

    .line 80
    :cond_5b
    const-string p0, "BrightnessMappingStrategy"

    const-string v1, "Screen brightness mapping does not cover whole range of available backlight values, autobrightness functionality may be impaired."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_62
    new-instance p0, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {p0, v0, v2}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    .line 85
    new-instance v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    invoke-virtual {p0}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    invoke-direct {v0, p0, v5, v6, v4}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF)V

    return-object v0

    .line 87
    :cond_71
    invoke-static {v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result p0

    if-eqz p0, :cond_7d

    .line 88
    new-instance p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;

    invoke-direct {p0, v0, v1, v4}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[IF)V

    return-object p0

    .line 91
    :cond_7d
    const/4 p0, 0x0

    return-object p0
.end method

.method private findInsertionPoint([FF)I
    .registers 5

    .line 319
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 320
    aget v1, p1, v0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_b

    .line 321
    return v0

    .line 319
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 324
    :cond_e
    array-length p1, p1

    return p1
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 5

    .line 105
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 106
    new-array v1, v0, [F

    .line 107
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_14

    .line 108
    const/high16 v3, -0x40800000  # -1.0f

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 110
    :cond_14
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    return-object v1
.end method

.method private static getLuxLevels([I)[F
    .registers 4

    .line 97
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    .line 98
    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 99
    add-int/lit8 v2, v1, 0x1

    aget v1, p0, v1

    int-to-float v1, v1

    aput v1, v0, v2

    .line 98
    move v1, v2

    goto :goto_6

    .line 101
    :cond_12
    return-object v0
.end method

.method private insertControlPoint([F[FFF)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 287
    invoke-direct {p0, p1, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->findInsertionPoint([FF)I

    move-result v0

    .line 290
    array-length v1, p1

    if-ne v0, v1, :cond_1a

    .line 291
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    .line 292
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p2

    .line 293
    aput p3, p1, v0

    .line 294
    aput p4, p2, v0

    goto :goto_4d

    .line 295
    :cond_1a
    aget v1, p1, v0

    cmpl-float v1, v1, p3

    if-nez v1, :cond_2d

    .line 296
    array-length p3, p1

    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    .line 297
    array-length p3, p2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p2

    .line 298
    aput p4, p2, v0

    goto :goto_4d

    .line 300
    :cond_2d
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 301
    add-int/lit8 v2, v0, 0x1

    array-length p1, p1

    sub-int/2addr p1, v0

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    aput p3, v1, v0

    .line 303
    array-length p1, p2

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    .line 304
    array-length p2, p2

    sub-int/2addr p2, v0

    invoke-static {p1, v0, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    aput p4, p1, v0

    move-object p2, p1

    move-object p1, v1

    .line 308
    :goto_4d
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->smoothCurve([F[FI)V

    .line 309
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static isValidMapping([F[F)Z
    .registers 9

    .line 115
    const/4 v0, 0x0

    if-eqz p0, :cond_5b

    if-eqz p1, :cond_5b

    array-length v1, p0

    if-eqz v1, :cond_5b

    array-length v1, p1

    if-nez v1, :cond_c

    goto :goto_5b

    .line 118
    :cond_c
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_11

    .line 119
    return v0

    .line 121
    :cond_11
    array-length v1, p0

    .line 122
    aget v2, p0, v0

    .line 123
    aget v3, p1, v0

    .line 124
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_5a

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_5a

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_5a

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_5a

    .line 127
    :cond_2c
    const/4 v4, 0x1

    move v5, v3

    move v3, v2

    move v2, v4

    :goto_30
    if-ge v2, v1, :cond_59

    .line 128
    aget v6, p0, v2

    cmpl-float v3, v3, v6

    if-gez v3, :cond_58

    aget v3, p1, v2

    cmpl-float v3, v5, v3

    if-lez v3, :cond_3f

    goto :goto_58

    .line 131
    :cond_3f
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_57

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_50

    goto :goto_57

    .line 134
    :cond_50
    aget v3, p0, v2

    .line 135
    aget v5, p1, v2

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 132
    :cond_57
    :goto_57
    return v0

    .line 129
    :cond_58
    :goto_58
    return v0

    .line 137
    :cond_59
    return v4

    .line 125
    :cond_5a
    :goto_5a
    return v0

    .line 116
    :cond_5b
    :goto_5b
    return v0
.end method

.method private static isValidMapping([F[I)Z
    .registers 9

    .line 141
    const/4 v0, 0x0

    if-eqz p0, :cond_48

    if-eqz p1, :cond_48

    array-length v1, p0

    if-eqz v1, :cond_48

    array-length v1, p1

    if-nez v1, :cond_c

    goto :goto_48

    .line 144
    :cond_c
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_11

    .line 145
    return v0

    .line 147
    :cond_11
    array-length v1, p0

    .line 148
    aget v2, p0, v0

    .line 149
    aget v3, p1, v0

    .line 150
    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_47

    if-ltz v3, :cond_47

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_47

    .line 153
    :cond_24
    const/4 v4, 0x1

    move v5, v3

    move v3, v2

    move v2, v4

    :goto_28
    if-ge v2, v1, :cond_46

    .line 154
    aget v6, p0, v2

    cmpl-float v3, v3, v6

    if-gez v3, :cond_45

    aget v3, p1, v2

    if-le v5, v3, :cond_35

    goto :goto_45

    .line 157
    :cond_35
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 158
    return v0

    .line 160
    :cond_3e
    aget v3, p0, v2

    .line 161
    aget v5, p1, v2

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 155
    :cond_45
    :goto_45
    return v0

    .line 163
    :cond_46
    return v4

    .line 151
    :cond_47
    :goto_47
    return v0

    .line 142
    :cond_48
    :goto_48
    return v0
.end method

.method private permissibleRatio(FF)F
    .registers 4

    .line 369
    const/high16 v0, 0x3e800000  # 0.25f

    add-float/2addr p1, v0

    .line 370
    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result p1

    add-float/2addr p2, v0

    .line 371
    invoke-static {p2}, Landroid/util/MathUtils;->log(F)F

    move-result p2

    sub-float/2addr p1, p2

    const/high16 p2, 0x3f800000  # 1.0f

    mul-float/2addr p1, p2

    .line 369
    invoke-static {p1}, Landroid/util/MathUtils;->exp(F)F

    move-result p1

    return p1
.end method

.method private smoothCurve([F[FI)V
    .registers 9

    .line 328
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_c

    .line 329
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v1, "unsmoothed curve"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 331
    :cond_c
    aget v0, p1, p3

    .line 332
    aget v1, p2, p3

    .line 334
    add-int/lit8 v2, p3, 0x1

    :goto_12
    array-length v3, p1

    if-ge v2, v3, :cond_2f

    .line 335
    aget v3, p1, v2

    .line 336
    aget v4, p2, v2

    .line 337
    invoke-direct {p0, v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v0

    mul-float/2addr v0, v1

    .line 338
    invoke-static {v4, v1, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 340
    cmpl-float v0, v1, v4

    if-nez v0, :cond_27

    .line 341
    goto :goto_2f

    .line 343
    :cond_27
    nop

    .line 344
    nop

    .line 345
    aput v1, p2, v2

    .line 334
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_12

    .line 348
    :cond_2f
    :goto_2f
    aget v0, p1, p3

    .line 349
    aget v1, p2, p3

    .line 350
    add-int/lit8 p3, p3, -0x1

    :goto_35
    if-ltz p3, :cond_51

    .line 351
    aget v2, p1, p3

    .line 352
    aget v3, p2, p3

    .line 353
    invoke-direct {p0, v2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v0

    mul-float/2addr v0, v1

    .line 354
    invoke-static {v3, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 356
    cmpl-float v0, v1, v3

    if-nez v0, :cond_49

    .line 357
    goto :goto_51

    .line 359
    :cond_49
    nop

    .line 360
    nop

    .line 361
    aput v1, p2, p3

    .line 350
    add-int/lit8 p3, p3, -0x1

    move v0, v2

    goto :goto_35

    .line 363
    :cond_51
    :goto_51
    iget-boolean p3, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p3, :cond_5d

    .line 364
    sget-object p3, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v0, "smoothed curve"

    invoke-virtual {p3, v0, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 366
    :cond_5d
    return-void
.end method


# virtual methods
.method public abstract addUserDataPoint(FF)V
.end method

.method public abstract clearUserDataPoints()V
.end method

.method public abstract convertToNits(I)F
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method protected getAdjustedCurve([F[FFFFF)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFFFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 406
    nop

    .line 407
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    .line 408
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v1, :cond_12

    .line 409
    sget-object v1, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v2, "unadjusted curve"

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 411
    :cond_12
    const/high16 v1, 0x3f800000  # 1.0f

    const/high16 v2, -0x40800000  # -1.0f

    invoke-static {p5, v2, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p5

    .line 412
    neg-float p5, p5

    invoke-static {p6, p5}, Landroid/util/MathUtils;->pow(FF)F

    move-result v3

    .line 413
    iget-boolean v4, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v4, :cond_55

    .line 414
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdjustedCurve: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-static {p6, p5}, Landroid/util/MathUtils;->pow(FF)F

    move-result p5

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p5, " == "

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 414
    const-string p6, "BrightnessMappingStrategy"

    invoke-static {p6, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_55
    cmpl-float p5, v3, v1

    if-eqz p5, :cond_68

    .line 418
    const/4 p5, 0x0

    :goto_5a
    array-length p6, v0

    if-ge p5, p6, :cond_68

    .line 419
    aget p6, v0, p5

    invoke-static {p6, v3}, Landroid/util/MathUtils;->pow(FF)F

    move-result p6

    aput p6, v0, p5

    .line 418
    add-int/lit8 p5, p5, 0x1

    goto :goto_5a

    .line 422
    :cond_68
    iget-boolean p5, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p5, :cond_73

    .line 423
    sget-object p5, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string p6, "gamma adjusted curve"

    invoke-virtual {p5, p6, p1, v0}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 425
    :cond_73
    cmpl-float p5, p3, v2

    if-eqz p5, :cond_a4

    .line 426
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object p5

    .line 428
    iget-object p6, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p6, [F

    .line 429
    iget-object p5, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, p5

    check-cast v0, [F

    .line 430
    iget-boolean p5, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p5, :cond_a3

    .line 431
    sget-object p5, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string v1, "gamma and user adjusted curve"

    invoke-virtual {p5, v1, p6, v0}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 433
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object p1

    .line 434
    sget-object p2, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, [F

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [F

    const-string/jumbo p4, "user adjusted curve"

    invoke-virtual {p2, p4, p3, p1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 437
    :cond_a3
    move-object p1, p6

    :cond_a4
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public abstract getAutoBrightnessAdjustment()F
.end method

.method public getBrightness(F)F
    .registers 4

    .line 217
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(FLjava/lang/String;I)F

    move-result p1

    return p1
.end method

.method public abstract getBrightness(FLjava/lang/String;I)F
.end method

.method public abstract getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract hasUserDataPoints()Z
.end method

.method protected inferAutoBrightnessAdjustment(FFF)F
    .registers 11

    .line 376
    nop

    .line 377
    nop

    .line 380
    const v0, 0x3dcccccd  # 0.1f

    cmpg-float v0, p3, v0

    const/high16 v1, -0x40800000  # -1.0f

    const/high16 v2, 0x3f800000  # 1.0f

    const/high16 v3, 0x7fc00000  # Float.NaN

    if-lez v0, :cond_39

    const v0, 0x3f666666  # 0.9f

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_17

    goto :goto_39

    .line 383
    :cond_17
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1e

    .line 384
    move v0, v1

    goto :goto_3b

    .line 386
    :cond_1e
    cmpl-float v0, p2, v2

    if-nez v0, :cond_24

    .line 387
    move v0, v2

    goto :goto_3b

    .line 390
    :cond_24
    invoke-static {p2}, Landroid/util/MathUtils;->log(F)F

    move-result v0

    invoke-static {p3}, Landroid/util/MathUtils;->log(F)F

    move-result v3

    div-float v3, v0, v3

    .line 392
    invoke-static {v3}, Landroid/util/MathUtils;->log(F)F

    move-result v0

    neg-float v0, v0

    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float/2addr v0, v4

    goto :goto_3b

    .line 381
    :cond_39
    :goto_39
    sub-float v0, p2, p3

    .line 394
    :goto_3b
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 395
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v1, :cond_9e

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inferAutoBrightnessAdjustment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "^"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-static {p1, v5}, Landroid/util/MathUtils;->pow(FF)F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " == "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    const-string v5, "BrightnessMappingStrategy"

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-static {p3, v3}, Landroid/util/MathUtils;->pow(FF)F

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_9e
    return v0
.end method

.method public abstract isDefaultConfig()Z
.end method

.method protected normalizeAbsoluteBrightness(I)F
    .registers 4

    .line 280
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 282
    int-to-float p1, p1

    const/high16 v0, 0x437f0000  # 255.0f

    div-float/2addr p1, v0

    return p1
.end method

.method public abstract setAutoBrightnessAdjustment(F)Z
.end method

.method public abstract setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
.end method

.method public setLoggingEnabled(Z)Z
    .registers 3

    .line 175
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_6

    .line 176
    const/4 p1, 0x0

    return p1

    .line 178
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 179
    const/4 p1, 0x1

    return p1
.end method
