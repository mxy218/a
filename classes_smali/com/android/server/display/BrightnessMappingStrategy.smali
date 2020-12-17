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
.field private static final DARK_LIGHT_SENSOR:F = 3.0f

.field public static final DEVICE_BLACK:Ljava/lang/String; = "Black"

.field public static final DEVICE_BLUE:Ljava/lang/String; = "Blue"

.field public static final DEVICE_GOLD:Ljava/lang/String; = "Gold"

.field public static final DEVICE_WHITE:Ljava/lang/String; = "White"

.field private static final LUX_GRAD_SMOOTHING:F = 0.25f

.field private static final MAX_GRAD:F = 1.0f

.field private static final MAX_USER_SELF_ADJUSTMENT:F = 0.4f

.field private static final PLOG:Lcom/android/server/display/utils/Plog;

.field private static final TAG:Ljava/lang/String; = "BrightnessMappingStrategy"

.field private static mDeepDarkeAmbientLuxThreshold:F

.field private static final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;


# instance fields
.field protected mLoggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    const-string v0, "BrightnessMappingStrategy"

    invoke-static {v0}, Lcom/android/server/display/utils/Plog;->createSystemPlog(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    .line 1217
    new-instance v0, Lcom/android/server/display/PersistentDataStore;

    invoke-direct {v0}, Lcom/android/server/display/PersistentDataStore;-><init>()V

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/display/PersistentDataStore;
    .registers 1

    .line 50
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    return-object v0
.end method

.method static synthetic access$100()F
    .registers 1

    .line 50
    sget v0, Lcom/android/server/display/BrightnessMappingStrategy;->mDeepDarkeAmbientLuxThreshold:F

    return v0
.end method

.method static synthetic access$102(F)F
    .registers 1
    .param p0, "x0"  # F

    .line 50
    sput p0, Lcom/android/server/display/BrightnessMappingStrategy;->mDeepDarkeAmbientLuxThreshold:F

    return p0
.end method

.method static synthetic access$200()Lcom/android/server/display/utils/Plog;
    .registers 1

    .line 50
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-object v0
.end method

.method public static create(Landroid/content/res/Resources;)Lcom/android/server/display/BrightnessMappingStrategy;
    .registers 13
    .param p0, "resources"  # Landroid/content/res/Resources;

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "luxLevels":[F
    const/4 v1, 0x0

    .line 70
    .local v1, "brightnessLevelsBacklight":[I
    const-string v2, "Black"

    const-string/jumbo v3, "ro.vendor.meizu.tptype"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "deviceColorType":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v4, :sswitch_data_10a

    :cond_16
    goto :goto_3d

    :sswitch_17
    const-string v2, "White"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v8

    goto :goto_3e

    :sswitch_21
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v5

    goto :goto_3e

    :sswitch_29
    const-string v2, "Gold"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v7

    goto :goto_3e

    :sswitch_33
    const-string v2, "Blue"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v6

    goto :goto_3e

    :goto_3d
    const/4 v2, -0x1

    :goto_3e
    const v4, 0xa030004

    const v9, 0xa030012

    if-eqz v2, :cond_92

    if-eq v2, v8, :cond_7f

    if-eq v2, v7, :cond_6c

    if-eq v2, v6, :cond_59

    .line 89
    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v0

    .line 90
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    goto :goto_9f

    .line 85
    :cond_59
    const v2, 0xa030013

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v0

    .line 86
    const v2, 0xa030005

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 87
    goto :goto_9f

    .line 81
    :cond_6c
    const v2, 0xa030014

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v0

    .line 82
    const v2, 0xa030006

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 83
    goto :goto_9f

    .line 77
    :cond_7f
    const v2, 0xa030015

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v0

    .line 78
    const v2, 0xa030007

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 79
    goto :goto_9f

    .line 73
    :cond_92
    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v0

    .line 74
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 75
    nop

    .line 93
    :goto_9f
    const v2, 0x1070012

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    .line 95
    .local v2, "brightnessLevelsNits":[F
    const/high16 v4, 0x1130000

    invoke-virtual {p0, v4, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    .line 99
    .local v4, "autoBrightnessAdjustmentMaxGamma":F
    const v6, 0x107005a

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v6

    .line 101
    .local v6, "nitsRange":[F
    const v7, 0x1070059

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 104
    .local v7, "backlightRange":[I
    invoke-static {v6, v7}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v9

    if-eqz v9, :cond_fc

    .line 105
    invoke-static {v0, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result v9

    if-eqz v9, :cond_fc

    .line 106
    const v9, 0x10e00a8

    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 108
    .local v9, "minimumBacklight":I
    const v10, 0x10e00a7

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 110
    .local v10, "maximumBacklight":I
    aget v5, v7, v5

    if-gt v5, v9, :cond_e6

    array-length v5, v7

    sub-int/2addr v5, v8

    aget v5, v7, v5

    if-ge v5, v10, :cond_ed

    .line 112
    :cond_e6
    const-string v5, "BrightnessMappingStrategy"

    const-string v8, "Screen brightness mapping does not cover whole range of available backlight values, autobrightness functionality may be impaired."

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_ed
    new-instance v5, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v5, v0, v2}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    .line 117
    .local v5, "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    new-instance v8, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    invoke-virtual {v5}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v11

    invoke-direct {v8, v11, v6, v7, v4}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF)V

    return-object v8

    .line 119
    .end local v5  # "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    .end local v9  # "minimumBacklight":I
    .end local v10  # "maximumBacklight":I
    :cond_fc
    invoke-static {v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v5

    if-eqz v5, :cond_108

    .line 120
    new-instance v5, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;

    invoke-direct {v5, v0, v1, v4}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[IF)V

    return-object v5

    .line 123
    :cond_108
    const/4 v5, 0x0

    return-object v5

    :sswitch_data_10a
    .sparse-switch
        0x1fa47a -> :sswitch_33
        0x21f480 -> :sswitch_29
        0x3d49fdf -> :sswitch_21
        0x4fadc09 -> :sswitch_17
    .end sparse-switch
.end method

.method private findInsertionPoint([FF)I
    .registers 5
    .param p1, "arr"  # [F
    .param p2, "val"  # F

    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 352
    aget v1, p1, v0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_b

    .line 353
    return v0

    .line 351
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 356
    .end local v0  # "i":I
    :cond_e
    array-length v0, p1

    return v0
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 5
    .param p0, "array"  # Landroid/content/res/TypedArray;

    .line 137
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 138
    .local v0, "N":I
    new-array v1, v0, [F

    .line 139
    .local v1, "vals":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_14

    .line 140
    const/high16 v3, -0x40800000  # -1.0f

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 142
    .end local v2  # "i":I
    :cond_14
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    return-object v1
.end method

.method private static getLuxLevels([I)[F
    .registers 5
    .param p0, "lux"  # [I

    .line 129
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    .line 130
    .local v0, "levels":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 131
    add-int/lit8 v2, v1, 0x1

    aget v3, p0, v1

    int-to-float v3, v3

    aput v3, v0, v2

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 133
    .end local v1  # "i":I
    :cond_13
    return-object v0
.end method

.method private static isValidMapping([F[F)Z
    .registers 8
    .param p0, "x"  # [F
    .param p1, "y"  # [F

    .line 147
    const/4 v0, 0x0

    if-eqz p0, :cond_59

    if-eqz p1, :cond_59

    array-length v1, p0

    if-eqz v1, :cond_59

    array-length v1, p1

    if-nez v1, :cond_c

    goto :goto_59

    .line 150
    :cond_c
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_11

    .line 151
    return v0

    .line 153
    :cond_11
    array-length v1, p0

    .line 154
    .local v1, "N":I
    aget v2, p0, v0

    .line 155
    .local v2, "prevX":F
    aget v3, p1, v0

    .line 156
    .local v3, "prevY":F
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_58

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_58

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_58

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_58

    .line 159
    :cond_2c
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_2d
    if-ge v4, v1, :cond_56

    .line 160
    aget v5, p0, v4

    cmpl-float v5, v2, v5

    if-gez v5, :cond_55

    aget v5, p1, v4

    cmpl-float v5, v3, v5

    if-lez v5, :cond_3c

    goto :goto_55

    .line 163
    :cond_3c
    aget v5, p0, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_54

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_4d

    goto :goto_54

    .line 166
    :cond_4d
    aget v2, p0, v4

    .line 167
    aget v3, p1, v4

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 164
    :cond_54
    :goto_54
    return v0

    .line 161
    :cond_55
    :goto_55
    return v0

    .line 169
    .end local v4  # "i":I
    :cond_56
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_58
    :goto_58
    return v0

    .line 148
    .end local v1  # "N":I
    .end local v2  # "prevX":F
    .end local v3  # "prevY":F
    :cond_59
    :goto_59
    return v0
.end method

.method private static isValidMapping([F[I)Z
    .registers 8
    .param p0, "x"  # [F
    .param p1, "y"  # [I

    .line 173
    const/4 v0, 0x0

    if-eqz p0, :cond_46

    if-eqz p1, :cond_46

    array-length v1, p0

    if-eqz v1, :cond_46

    array-length v1, p1

    if-nez v1, :cond_c

    goto :goto_46

    .line 176
    :cond_c
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_11

    .line 177
    return v0

    .line 179
    :cond_11
    array-length v1, p0

    .line 180
    .local v1, "N":I
    aget v2, p0, v0

    .line 181
    .local v2, "prevX":F
    aget v3, p1, v0

    .line 182
    .local v3, "prevY":I
    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_45

    if-ltz v3, :cond_45

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_45

    .line 185
    :cond_24
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_25
    if-ge v4, v1, :cond_43

    .line 186
    aget v5, p0, v4

    cmpl-float v5, v2, v5

    if-gez v5, :cond_42

    aget v5, p1, v4

    if-le v3, v5, :cond_32

    goto :goto_42

    .line 189
    :cond_32
    aget v5, p0, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 190
    return v0

    .line 192
    :cond_3b
    aget v2, p0, v4

    .line 193
    aget v3, p1, v4

    .line 185
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 187
    :cond_42
    :goto_42
    return v0

    .line 195
    .end local v4  # "i":I
    :cond_43
    const/4 v0, 0x1

    return v0

    .line 183
    :cond_45
    :goto_45
    return v0

    .line 174
    .end local v1  # "N":I
    .end local v2  # "prevX":F
    .end local v3  # "prevY":I
    :cond_46
    :goto_46
    return v0
.end method

.method private permissibleRatio(FF)F
    .registers 5
    .param p1, "currLux"  # F
    .param p2, "prevLux"  # F

    .line 422
    const/high16 v0, 0x3e800000  # 0.25f

    add-float v1, p1, v0

    .line 423
    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v1

    add-float/2addr v0, p2

    .line 424
    invoke-static {v0}, Landroid/util/MathUtils;->log(F)F

    move-result v0

    sub-float/2addr v1, v0

    const/high16 v0, 0x3f800000  # 1.0f

    mul-float/2addr v1, v0

    .line 422
    invoke-static {v1}, Landroid/util/MathUtils;->exp(F)F

    move-result v0

    return v0
.end method

.method private smoothCurve([F[FI)V
    .registers 11
    .param p1, "lux"  # [F
    .param p2, "brightness"  # [F
    .param p3, "idx"  # I

    .line 360
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_c

    .line 361
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v1, "unsmoothed curve"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 363
    :cond_c
    aget v0, p1, p3

    .line 364
    .local v0, "prevLux":F
    aget v1, p2, p3

    .line 368
    .local v1, "prevBrightness":F
    add-int/lit8 v2, p3, 0x1

    .local v2, "i":I
    :goto_12
    array-length v3, p1

    if-ge v2, v3, :cond_34

    .line 369
    aget v3, p1, v2

    .line 370
    .local v3, "currLux":F
    aget v4, p2, v2

    .line 371
    .local v4, "currBrightness":F
    invoke-direct {p0, v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    .line 372
    .local v5, "maxBrightness":F
    cmpg-float v6, v4, v1

    if-gez v6, :cond_27

    .line 373
    invoke-static {v4, v1, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .local v6, "newBrightness":F
    goto :goto_2d

    .line 376
    .end local v6  # "newBrightness":F
    :cond_27
    const/high16 v6, 0x3f800000  # 1.0f

    invoke-static {v4, v1, v6}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .line 386
    .restart local v6  # "newBrightness":F
    :goto_2d
    move v0, v3

    .line 387
    move v1, v6

    .line 388
    aput v6, p2, v2

    .line 368
    .end local v3  # "currLux":F
    .end local v4  # "currBrightness":F
    .end local v5  # "maxBrightness":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 391
    .end local v2  # "i":I
    .end local v6  # "newBrightness":F
    :cond_34
    aget v0, p1, p3

    .line 392
    aget v1, p2, p3

    .line 393
    add-int/lit8 v2, p3, -0x1

    .restart local v2  # "i":I
    :goto_3a
    if-ltz v2, :cond_5a

    .line 394
    aget v3, p1, v2

    .line 395
    .restart local v3  # "currLux":F
    aget v4, p2, v2

    .line 396
    .restart local v4  # "currBrightness":F
    invoke-direct {p0, v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    .line 397
    .local v5, "minBrightness":F
    cmpl-float v6, v4, v1

    if-lez v6, :cond_4e

    .line 398
    invoke-static {v4, v5, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .restart local v6  # "newBrightness":F
    goto :goto_53

    .line 401
    .end local v6  # "newBrightness":F
    :cond_4e
    const/4 v6, 0x0

    invoke-static {v4, v6, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .line 411
    .restart local v6  # "newBrightness":F
    :goto_53
    move v0, v3

    .line 412
    move v1, v6

    .line 413
    aput v6, p2, v2

    .line 393
    .end local v3  # "currLux":F
    .end local v4  # "currBrightness":F
    .end local v5  # "minBrightness":F
    add-int/lit8 v2, v2, -0x1

    goto :goto_3a

    .line 416
    .end local v2  # "i":I
    .end local v6  # "newBrightness":F
    :cond_5a
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_66

    .line 417
    sget-object v2, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v3, "smoothed curve"

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 419
    :cond_66
    return-void
.end method


# virtual methods
.method public abstract addUserDataPoint(FF)V
.end method

.method public abstract addUserDataPoint(FFFFF)V
.end method

.method public abstract clearUserDataPoints()V
.end method

.method public abstract convertToNits(I)F
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method protected getAdjustedCurve([F[FFFFF)Landroid/util/Pair;
    .registers 16
    .param p1, "lux"  # [F
    .param p2, "brightness"  # [F
    .param p3, "userLux"  # F
    .param p4, "userBrightness"  # F
    .param p5, "adjustment"  # F
    .param p6, "maxGamma"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFFFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 462
    move-object v0, p1

    .line 463
    .local v0, "newLux":[F
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 464
    .local v1, "newBrightness":[F
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_12

    .line 465
    sget-object v2, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v3, "unadjusted curve"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 467
    :cond_12
    const/high16 v2, 0x3f800000  # 1.0f

    const/high16 v3, -0x40800000  # -1.0f

    invoke-static {p5, v3, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p5

    .line 468
    neg-float v4, p5

    invoke-static {p6, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v4

    .line 469
    .local v4, "gamma":F
    iget-boolean v5, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v5, :cond_57

    .line 470
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAdjustedCurve: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v6, p5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v6, p5

    .line 471
    invoke-static {p6, v6}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 470
    const-string v6, "BrightnessMappingStrategy"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_57
    cmpl-float v2, v4, v2

    if-eqz v2, :cond_102

    .line 475
    const/4 v2, 0x0

    .line 476
    .local v2, "adjustCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5d
    array-length v6, v1

    if-ge v5, v6, :cond_a3

    .line 478
    aget v6, v0, v5

    cmpl-float v6, v6, p3

    if-ltz v6, :cond_6c

    aget v6, v1, v5

    cmpg-float v6, v6, p4

    if-ltz v6, :cond_84

    :cond_6c
    aget v6, v0, v5

    cmpg-float v6, v6, p3

    if-gtz v6, :cond_78

    aget v6, v1, v5

    cmpl-float v6, v6, p4

    if-gtz v6, :cond_84

    :cond_78
    const/high16 v6, 0x42480000  # 50.0f

    cmpg-float v7, p3, v6

    if-gez v7, :cond_8e

    aget v7, v0, v5

    cmpg-float v6, v7, v6

    if-gez v6, :cond_8e

    .line 481
    :cond_84
    aget v6, v1, v5

    invoke-static {v6, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    aput v6, v1, v5

    .line 482
    add-int/lit8 v2, v2, 0x1

    .line 487
    :cond_8e
    cmpl-float v6, p3, v3

    if-eqz v6, :cond_a0

    sget v6, Lcom/android/server/display/BrightnessMappingStrategy;->mDeepDarkeAmbientLuxThreshold:F

    cmpg-float v7, p3, v6

    if-gtz v7, :cond_a0

    aget v7, v0, v5

    cmpg-float v6, v7, v6

    if-gtz v6, :cond_a0

    .line 488
    aput p4, v1, v5

    .line 476
    :cond_a0
    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    .line 492
    .end local v5  # "i":I
    :cond_a3
    if-lez v2, :cond_102

    .line 493
    array-length v5, p2

    invoke-static {p2, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v5

    .line 494
    .local v5, "tempBrightness":[F
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_ab
    array-length v7, v1

    if-ge v6, v7, :cond_102

    .line 495
    aget v7, v1, v6

    aget v8, v5, v6

    cmpl-float v7, v7, v8

    if-nez v7, :cond_ff

    .line 496
    if-nez v6, :cond_cb

    .line 497
    aget v7, v1, v6

    add-int/lit8 v8, v6, 0x1

    aget v8, v1, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_ff

    .line 498
    aget v7, v1, v6

    invoke-static {v7, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v7

    aput v7, v1, v6

    goto :goto_ff

    .line 500
    :cond_cb
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_e3

    .line 501
    aget v7, v1, v6

    add-int/lit8 v8, v6, -0x1

    aget v8, v1, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_ff

    .line 502
    aget v7, v1, v6

    invoke-static {v7, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v7

    aput v7, v1, v6

    goto :goto_ff

    .line 505
    :cond_e3
    aget v7, v1, v6

    add-int/lit8 v8, v6, 0x1

    aget v8, v1, v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_f7

    aget v7, v1, v6

    add-int/lit8 v8, v6, -0x1

    aget v8, v1, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_ff

    .line 506
    :cond_f7
    aget v7, v1, v6

    invoke-static {v7, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v7

    aput v7, v1, v6

    .line 494
    :cond_ff
    :goto_ff
    add-int/lit8 v6, v6, 0x1

    goto :goto_ab

    .line 514
    .end local v2  # "adjustCount":I
    .end local v5  # "tempBrightness":[F
    .end local v6  # "j":I
    :cond_102
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_10d

    .line 515
    sget-object v2, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string v5, "gamma adjusted curve"

    invoke-virtual {v2, v5, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 517
    :cond_10d
    cmpl-float v2, p3, v3

    if-eqz v2, :cond_13e

    .line 518
    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v2

    .line 520
    .local v2, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [F

    .line 521
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [F

    .line 522
    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v3, :cond_13e

    .line 523
    sget-object v3, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string v5, "gamma and user adjusted curve"

    invoke-virtual {v3, v5, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 525
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v2

    .line 526
    sget-object v3, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [F

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [F

    const-string/jumbo v7, "user adjusted curve"

    invoke-virtual {v3, v7, v5, v6}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 529
    .end local v2  # "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :cond_13e
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method public abstract getAutoBrightnessAdjustment()F
.end method

.method public abstract getAutomaticBrightnessDefaultMinLevel()F
.end method

.method public getBrightness(F)F
    .registers 4
    .param p1, "lux"  # F

    .line 249
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(FLjava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public abstract getBrightness(FLjava/lang/String;I)F
.end method

.method public abstract getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract hasUserDataPoints()Z
.end method

.method protected inferAutoBrightnessAdjustment(FFF)F
    .registers 12
    .param p1, "maxGamma"  # F
    .param p2, "desiredBrightness"  # F
    .param p3, "currentBrightness"  # F

    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "adjustment":F
    const/high16 v1, 0x7fc00000  # Float.NaN

    .line 433
    .local v1, "gamma":F
    const v2, 0x3dcccccd  # 0.1f

    cmpg-float v2, p3, v2

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    if-lez v2, :cond_39

    const v2, 0x3f666666  # 0.9f

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_15

    goto :goto_39

    .line 436
    :cond_15
    cmpl-float v2, p2, v4

    if-nez v2, :cond_1c

    .line 437
    const/high16 v0, -0x40800000  # -1.0f

    goto :goto_3b

    .line 439
    :cond_1c
    cmpl-float v2, p2, v3

    if-nez v2, :cond_23

    .line 440
    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_3b

    .line 443
    :cond_23
    invoke-static {p2}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    invoke-static {p3}, Landroid/util/MathUtils;->log(F)F

    move-result v5

    div-float v1, v2, v5

    .line 445
    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    neg-float v2, v2

    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result v5

    div-float v0, v2, v5

    goto :goto_3b

    .line 434
    :cond_39
    :goto_39
    sub-float v0, p2, p3

    .line 449
    :goto_3b
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_42

    goto :goto_48

    :cond_42
    const/high16 v2, -0x40800000  # -1.0f

    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v4

    :goto_48
    move v0, v4

    .line 451
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_aa

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inferAutoBrightnessAdjustment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "^"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v5, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v6, v0

    .line 453
    invoke-static {p1, v6}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " == "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 452
    const-string v7, "BrightnessMappingStrategy"

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-static {p3, v1}, Landroid/util/MathUtils;->pow(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_aa
    return v0
.end method

.method protected insertControlPoint([F[FFF)Landroid/util/Pair;
    .registers 10
    .param p1, "luxLevels"  # [F
    .param p2, "brightnessLevels"  # [F
    .param p3, "lux"  # F
    .param p4, "brightness"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 319
    invoke-direct {p0, p1, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->findInsertionPoint([FF)I

    move-result v0

    .line 322
    .local v0, "idx":I
    array-length v1, p1

    if-ne v0, v1, :cond_1a

    .line 323
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 324
    .local v1, "newLuxLevels":[F
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 325
    .local v2, "newBrightnessLevels":[F
    aput p3, v1, v0

    .line 326
    aput p4, v2, v0

    goto :goto_4d

    .line 327
    .end local v1  # "newLuxLevels":[F
    .end local v2  # "newBrightnessLevels":[F
    :cond_1a
    aget v1, p1, v0

    cmpl-float v1, v1, p3

    if-nez v1, :cond_2d

    .line 328
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 329
    .restart local v1  # "newLuxLevels":[F
    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 330
    .restart local v2  # "newBrightnessLevels":[F
    aput p4, v2, v0

    goto :goto_4d

    .line 332
    .end local v1  # "newLuxLevels":[F
    .end local v2  # "newBrightnessLevels":[F
    :cond_2d
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 333
    .restart local v1  # "newLuxLevels":[F
    add-int/lit8 v2, v0, 0x1

    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    aput p3, v1, v0

    .line 335
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 336
    .restart local v2  # "newBrightnessLevels":[F
    add-int/lit8 v3, v0, 0x1

    array-length v4, p2

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    aput p4, v2, v0

    .line 340
    :goto_4d
    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->smoothCurve([F[FI)V

    .line 341
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method protected insertUserSelfLuxBrightness([F[F[F[F)Landroid/util/Pair;
    .registers 22
    .param p1, "luxLevels"  # [F
    .param p2, "brightnessLevels"  # [F
    .param p3, "lux"  # [F
    .param p4, "brightness"  # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F[F[F)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 1142
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-eqz v2, :cond_f3

    if-eqz v3, :cond_f3

    array-length v4, v2

    array-length v5, v3

    if-eq v4, v5, :cond_12

    goto/16 :goto_f3

    .line 1147
    :cond_12
    const/4 v4, 0x0

    .line 1148
    .local v4, "adjustCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14
    array-length v6, v1

    const/high16 v7, -0x40800000  # -1.0f

    if-ge v5, v6, :cond_48

    .line 1149
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1a
    array-length v8, v3

    if-ge v6, v8, :cond_45

    .line 1150
    aget v8, p1, v5

    aget v9, v2, v6

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2d

    aget v8, v1, v5

    aget v9, v3, v6

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_3d

    :cond_2d
    aget v8, p1, v5

    aget v9, v2, v6

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_42

    aget v8, v1, v5

    aget v9, v3, v6

    cmpl-float v8, v8, v9

    if-lez v8, :cond_42

    .line 1152
    :cond_3d
    aput v7, v1, v5

    .line 1153
    add-int/lit8 v4, v4, 0x1

    .line 1154
    goto :goto_45

    .line 1149
    :cond_42
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 1148
    .end local v6  # "j":I
    :cond_45
    :goto_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 1159
    .end local v5  # "i":I
    :cond_48
    array-length v5, v1

    sub-int/2addr v5, v4

    .line 1160
    .local v5, "newLength":I
    new-array v6, v5, [F

    .line 1161
    .local v6, "newUserSelfLux":[F
    new-array v8, v5, [F

    .line 1163
    .local v8, "newUserSelfBrightness":[F
    const/4 v9, 0x0

    .line 1164
    .local v9, "index":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_50
    array-length v11, v1

    if-ge v10, v11, :cond_66

    .line 1165
    aget v11, v1, v10

    cmpl-float v11, v11, v7

    if-eqz v11, :cond_63

    .line 1166
    aget v11, p1, v10

    aput v11, v6, v9

    .line 1167
    aget v11, v1, v10

    aput v11, v8, v9

    .line 1168
    add-int/lit8 v9, v9, 0x1

    .line 1164
    :cond_63
    add-int/lit8 v10, v10, 0x1

    goto :goto_50

    .line 1172
    .end local v10  # "j":I
    :cond_66
    move-object v7, v6

    .line 1173
    .local v7, "newLuxLevels":[F
    move-object v10, v8

    .line 1175
    .local v10, "newBrightnessLevels":[F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_69
    array-length v12, v2

    if-ge v11, v12, :cond_ee

    .line 1176
    move-object v12, v7

    .line 1177
    .local v12, "tempLux":[F
    move-object v13, v10

    .line 1178
    .local v13, "tempBrightness":[F
    aget v14, v2, v11

    invoke-direct {v0, v12, v14}, Lcom/android/server/display/BrightnessMappingStrategy;->findInsertionPoint([FF)I

    move-result v14

    .line 1179
    .local v14, "idx":I
    array-length v15, v12

    if-ne v14, v15, :cond_8e

    .line 1180
    array-length v15, v12

    add-int/lit8 v15, v15, 0x1

    invoke-static {v12, v15}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v7

    .line 1181
    array-length v15, v13

    add-int/lit8 v15, v15, 0x1

    invoke-static {v13, v15}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v10

    .line 1182
    aget v15, v2, v11

    aput v15, v7, v14

    .line 1183
    aget v15, v3, v11

    aput v15, v10, v14

    goto :goto_ca

    .line 1184
    :cond_8e
    aget v15, v12, v14

    aget v16, v2, v11

    cmpl-float v15, v15, v16

    if-nez v15, :cond_a5

    .line 1185
    array-length v15, v12

    invoke-static {v12, v15}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v7

    .line 1186
    array-length v15, v13

    invoke-static {v13, v15}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v10

    .line 1187
    aget v15, v3, v11

    aput v15, v10, v14

    goto :goto_ca

    .line 1189
    :cond_a5
    array-length v15, v12

    add-int/lit8 v15, v15, 0x1

    invoke-static {v12, v15}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v7

    .line 1190
    add-int/lit8 v15, v14, 0x1

    array-length v1, v12

    sub-int/2addr v1, v14

    invoke-static {v7, v14, v7, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1191
    aget v1, v2, v11

    aput v1, v7, v14

    .line 1192
    array-length v1, v13

    add-int/lit8 v1, v1, 0x1

    invoke-static {v13, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 1193
    .end local v10  # "newBrightnessLevels":[F
    .local v1, "newBrightnessLevels":[F
    add-int/lit8 v10, v14, 0x1

    array-length v15, v13

    sub-int/2addr v15, v14

    invoke-static {v1, v14, v1, v10, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1195
    aget v10, v3, v11

    aput v10, v1, v14

    move-object v10, v1

    .line 1200
    .end local v1  # "newBrightnessLevels":[F
    .restart local v10  # "newBrightnessLevels":[F
    :goto_ca
    aget v1, v2, v11

    sget v15, Lcom/android/server/display/BrightnessMappingStrategy;->mDeepDarkeAmbientLuxThreshold:F

    cmpg-float v1, v1, v15

    if-gtz v1, :cond_e5

    .line 1201
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_d3
    array-length v15, v10

    if-ge v1, v15, :cond_e5

    .line 1202
    aget v15, v7, v1

    aget v16, v2, v11

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_e2

    .line 1203
    aget v15, v3, v11

    aput v15, v10, v1

    .line 1201
    :cond_e2
    add-int/lit8 v1, v1, 0x1

    goto :goto_d3

    .line 1208
    .end local v1  # "j":I
    :cond_e5
    invoke-direct {v0, v7, v10, v14}, Lcom/android/server/display/BrightnessMappingStrategy;->smoothCurve([F[FI)V

    .line 1175
    .end local v14  # "idx":I
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p2

    goto/16 :goto_69

    .line 1210
    .end local v11  # "i":I
    .end local v12  # "tempLux":[F
    .end local v13  # "tempBrightness":[F
    :cond_ee
    invoke-static {v7, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 1143
    .end local v4  # "adjustCount":I
    .end local v5  # "newLength":I
    .end local v6  # "newUserSelfLux":[F
    .end local v7  # "newLuxLevels":[F
    .end local v8  # "newUserSelfBrightness":[F
    .end local v9  # "index":I
    .end local v10  # "newBrightnessLevels":[F
    :cond_f3
    :goto_f3
    const-string v1, "BrightnessMappingStrategy"

    const-string/jumbo v4, "insertControlPoint lux and brightness is null or have a different length"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-static/range {p1 .. p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method public abstract isDefaultConfig()Z
.end method

.method protected normalizeAbsoluteBrightness(I)F
    .registers 4
    .param p1, "brightness"  # I

    .line 312
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 314
    int-to-float v0, p1

    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public abstract setAutoBrightnessAdjustment(F)Z
.end method

.method public abstract setAutoBrightnessAdjustment(FFFFF)Z
.end method

.method public abstract setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
.end method

.method public setLoggingEnabled(Z)Z
    .registers 3
    .param p1, "loggingEnabled"  # Z

    .line 207
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_6

    .line 208
    const/4 v0, 0x0

    return v0

    .line 210
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public abstract setTemporaryAutoBrightnessAdjustment(F)Z
.end method
