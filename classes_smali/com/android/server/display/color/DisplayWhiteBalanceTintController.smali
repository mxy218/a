.class final Lcom/android/server/display/color/DisplayWhiteBalanceTintController;
.super Lcom/android/server/display/color/TintController;
.source "DisplayWhiteBalanceTintController.java"


# static fields
.field private static final COLORSPACE_MATRIX_LENGTH:I = 0x9

.field private static final NUM_DISPLAY_PRIMARIES_VALS:I = 0xc

.field private static final NUM_VALUES_PER_PRIMARY:I = 0x3


# instance fields
.field private mChromaticAdaptationMatrix:[F

.field mCurrentColorTemperature:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mCurrentColorTemperatureXYZ:[F

.field mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mDisplayNominalWhiteXYZ:[F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mIsAvailable:Ljava/lang/Boolean;

.field private final mLock:Ljava/lang/Object;

.field private mMatrixDisplayWhiteBalance:[F

.field mSetUp:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mTemperatureDefault:I

.field mTemperatureMax:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mTemperatureMin:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/android/server/display/color/TintController;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteXYZ:[F

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    .line 61
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    return-void
.end method

.method private getDisplayColorSpaceFromResources(Landroid/content/res/Resources;)Landroid/graphics/ColorSpace$Rgb;
    .registers 7

    .line 261
    const v0, 0x1070035

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 263
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 265
    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 267
    const/4 v2, 0x0

    move v3, v2

    :goto_10
    array-length v4, v0

    if-ge v3, v4, :cond_1e

    .line 268
    aget-object v4, p1, v3

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v0, v3

    .line 267
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 271
    :cond_1e
    nop

    :goto_1f
    array-length v3, v1

    if-ge v2, v3, :cond_2f

    .line 272
    array-length v3, v0

    add-int/2addr v3, v2

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v2

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 276
    :cond_2f
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->makeRgbColorSpaceFromXYZ([F[F)Landroid/graphics/ColorSpace$Rgb;

    move-result-object p1

    return-object p1
.end method

.method private getDisplayColorSpaceFromSurfaceControl()Landroid/graphics/ColorSpace$Rgb;
    .registers 9

    .line 239
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v0

    .line 240
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 241
    return-object v1

    .line 244
    :cond_8
    invoke-static {v0}, Landroid/view/SurfaceControl;->getDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_7c

    iget-object v2, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->red:Landroid/view/SurfaceControl$CieXyz;

    if-eqz v2, :cond_7c

    iget-object v2, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->green:Landroid/view/SurfaceControl$CieXyz;

    if-eqz v2, :cond_7c

    iget-object v2, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->blue:Landroid/view/SurfaceControl$CieXyz;

    if-eqz v2, :cond_7c

    iget-object v2, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->white:Landroid/view/SurfaceControl$CieXyz;

    if-nez v2, :cond_1f

    goto :goto_7c

    .line 250
    :cond_1f
    const/16 v1, 0x9

    new-array v1, v1, [F

    iget-object v2, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->red:Landroid/view/SurfaceControl$CieXyz;

    iget v2, v2, Landroid/view/SurfaceControl$CieXyz;->X:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->red:Landroid/view/SurfaceControl$CieXyz;

    iget v2, v2, Landroid/view/SurfaceControl$CieXyz;->Y:F

    const/4 v4, 0x1

    aput v2, v1, v4

    iget-object v2, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->red:Landroid/view/SurfaceControl$CieXyz;

    iget v2, v2, Landroid/view/SurfaceControl$CieXyz;->Z:F

    const/4 v5, 0x2

    aput v2, v1, v5

    iget-object v2, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->green:Landroid/view/SurfaceControl$CieXyz;

    iget v2, v2, Landroid/view/SurfaceControl$CieXyz;->X:F

    const/4 v6, 0x3

    aput v2, v1, v6

    const/4 v2, 0x4

    iget-object v7, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->green:Landroid/view/SurfaceControl$CieXyz;

    iget v7, v7, Landroid/view/SurfaceControl$CieXyz;->Y:F

    aput v7, v1, v2

    const/4 v2, 0x5

    iget-object v7, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->green:Landroid/view/SurfaceControl$CieXyz;

    iget v7, v7, Landroid/view/SurfaceControl$CieXyz;->Z:F

    aput v7, v1, v2

    const/4 v2, 0x6

    iget-object v7, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->blue:Landroid/view/SurfaceControl$CieXyz;

    iget v7, v7, Landroid/view/SurfaceControl$CieXyz;->X:F

    aput v7, v1, v2

    const/4 v2, 0x7

    iget-object v7, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->blue:Landroid/view/SurfaceControl$CieXyz;

    iget v7, v7, Landroid/view/SurfaceControl$CieXyz;->Y:F

    aput v7, v1, v2

    const/16 v2, 0x8

    iget-object v7, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->blue:Landroid/view/SurfaceControl$CieXyz;

    iget v7, v7, Landroid/view/SurfaceControl$CieXyz;->Z:F

    aput v7, v1, v2

    new-array v2, v6, [F

    iget-object v6, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->white:Landroid/view/SurfaceControl$CieXyz;

    iget v6, v6, Landroid/view/SurfaceControl$CieXyz;->X:F

    aput v6, v2, v3

    iget-object v3, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->white:Landroid/view/SurfaceControl$CieXyz;

    iget v3, v3, Landroid/view/SurfaceControl$CieXyz;->Y:F

    aput v3, v2, v4

    iget-object v0, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->white:Landroid/view/SurfaceControl$CieXyz;

    iget v0, v0, Landroid/view/SurfaceControl$CieXyz;->Z:F

    aput v0, v2, v5

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->makeRgbColorSpaceFromXYZ([F[F)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v0

    return-object v0

    .line 247
    :cond_7c
    :goto_7c
    return-object v1
.end method

.method private isColorMatrixCoeffValid(F)Z
    .registers 3

    .line 280
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    .line 284
    :cond_d
    const/4 p1, 0x1

    return p1

    .line 281
    :cond_f
    :goto_f
    const/4 p1, 0x0

    return p1
.end method

.method private isColorMatrixValid([F)Z
    .registers 5

    .line 288
    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    array-length v1, p1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_9

    goto :goto_1b

    .line 292
    :cond_9
    move v1, v0

    :goto_a
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 293
    aget v2, p1, v1

    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isColorMatrixCoeffValid(F)Z

    move-result v2

    if-nez v2, :cond_16

    .line 294
    return v0

    .line 292
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 298
    :cond_19
    const/4 p1, 0x1

    return p1

    .line 289
    :cond_1b
    :goto_1b
    return v0
.end method

.method private makeRgbColorSpaceFromXYZ([F[F)Landroid/graphics/ColorSpace$Rgb;
    .registers 10

    .line 230
    new-instance v6, Landroid/graphics/ColorSpace$Rgb;

    const-string v1, "Display Color Space"

    const-wide v4, 0x40019999a0000000L  # 2.200000047683716

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FD)V

    return-object v6
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    .line 206
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mSetUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    iget-boolean v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    if-nez v1, :cond_1f

    .line 209
    monitor-exit v0

    return-void

    .line 212
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mTemperatureMin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mTemperatureMax = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mTemperatureDefault = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureDefault:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mCurrentColorTemperature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mCurrentColorTemperatureXYZ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperatureXYZ:[F

    .line 217
    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mDisplayColorSpaceRGB RGB-to-XYZ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    .line 219
    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Rgb;->getTransform()[F

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mChromaticAdaptationMatrix = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mChromaticAdaptationMatrix:[F

    .line 221
    invoke-static {v2, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mDisplayColorSpaceRGB XYZ-to-RGB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    .line 223
    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Rgb;->getInverseTransform()[F

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mMatrixDisplayWhiteBalance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    const/4 v3, 0x4

    .line 225
    invoke-static {v2, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    monitor-exit v0

    .line 227
    return-void

    .line 226
    :catchall_105
    move-exception p1

    monitor-exit v0
    :try_end_107
    .catchall {:try_start_3 .. :try_end_107} :catchall_105

    throw p1
.end method

.method public getLevel()I
    .registers 2

    .line 193
    const/16 v0, 0x7d

    return v0
.end method

.method public getMatrix()[F
    .registers 2

    .line 130
    iget-boolean v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    goto :goto_f

    .line 131
    :cond_d
    sget-object v0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 130
    :goto_f
    return-object v0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    .line 199
    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->isDisplayWhiteBalanceAvailable(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAvailable:Ljava/lang/Boolean;

    .line 201
    :cond_e
    iget-object p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAvailable:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public setMatrix(I)V
    .registers 13

    .line 136
    iget-boolean v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    if-nez v0, :cond_c

    .line 137
    const-string p1, "ColorDisplayService"

    const-string v0, "Can\'t set display white balance temperature: uninitialized"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 142
    :cond_c
    iget v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMin:I

    if-ge p1, v0, :cond_1a

    .line 143
    const-string p1, "ColorDisplayService"

    const-string v0, "Requested display color temperature is below allowed minimum"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMin:I

    goto :goto_27

    .line 146
    :cond_1a
    iget v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMax:I

    if-le p1, v0, :cond_27

    .line 147
    const-string p1, "ColorDisplayService"

    const-string v0, "Requested display color temperature is above allowed maximum"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMax:I

    .line 152
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_2a
    iput p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperature:I

    .line 156
    invoke-static {p1}, Landroid/graphics/ColorSpace;->cctToXyz(I)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperatureXYZ:[F

    .line 158
    sget-object v1, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteXYZ:[F

    iget-object v3, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperatureXYZ:[F

    .line 159
    invoke-static {v1, v2, v3}, Landroid/graphics/ColorSpace;->chromaticAdaptation(Landroid/graphics/ColorSpace$Adaptation;[F[F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mChromaticAdaptationMatrix:[F

    .line 163
    iget-object v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mChromaticAdaptationMatrix:[F

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    .line 164
    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Rgb;->getTransform()[F

    move-result-object v2

    .line 163
    invoke-static {v1, v2}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object v1

    .line 165
    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Rgb;->getInverseTransform()[F

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object v1

    .line 168
    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x3

    aget v5, v1, v4

    add-float/2addr v3, v5

    const/4 v5, 0x6

    aget v6, v1, v5

    add-float/2addr v3, v6

    .line 169
    const/4 v6, 0x1

    aget v6, v1, v6

    const/4 v7, 0x4

    aget v8, v1, v7

    add-float/2addr v6, v8

    const/4 v8, 0x7

    aget v8, v1, v8

    add-float/2addr v6, v8

    .line 170
    const/4 v8, 0x2

    aget v8, v1, v8

    const/4 v9, 0x5

    aget v9, v1, v9

    add-float/2addr v8, v9

    const/16 v9, 0x8

    aget v10, v1, v9

    add-float/2addr v8, v10

    .line 171
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 173
    iget-object v6, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    invoke-static {v6, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 174
    move v6, v2

    :goto_84
    array-length v8, v1

    if-ge v6, v8, :cond_a0

    .line 175
    aget v8, v1, v6

    div-float/2addr v8, v3

    aput v8, v1, v6

    .line 176
    aget v8, v1, v6

    invoke-direct {p0, v8}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isColorMatrixCoeffValid(F)Z

    move-result v8

    if-nez v8, :cond_9d

    .line 177
    const-string p1, "ColorDisplayService"

    const-string v1, "Invalid DWB color matrix"

    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    monitor-exit v0

    return-void

    .line 174
    :cond_9d
    add-int/lit8 v6, v6, 0x1

    goto :goto_84

    .line 182
    :cond_a0
    iget-object v3, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    invoke-static {v1, v4, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    invoke-static {v1, v5, v2, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_2a .. :try_end_b0} :catchall_d8

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisplayWhiteBalanceTemperatureMatrix: cct = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " matrix = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    const/16 v1, 0x10

    .line 188
    invoke-static {p1, v1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 187
    const-string v0, "ColorDisplayService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void

    .line 185
    :catchall_d8
    move-exception p1

    :try_start_d9
    monitor-exit v0
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    throw p1
.end method

.method public setUp(Landroid/content/Context;Z)V
    .registers 7

    .line 66
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 69
    invoke-direct {p0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->getDisplayColorSpaceFromSurfaceControl()Landroid/graphics/ColorSpace$Rgb;

    move-result-object v0

    .line 70
    if-nez v0, :cond_22

    .line 71
    const-string v0, "ColorDisplayService"

    const-string v1, "Failed to get display color space from SurfaceControl, trying res"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->getDisplayColorSpaceFromResources(Landroid/content/res/Resources;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v0

    .line 74
    if-nez v0, :cond_22

    .line 75
    const-string p1, "ColorDisplayService"

    const-string p2, "Failed to get display color space from resources"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 81
    :cond_22
    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getTransform()[F

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isColorMatrixValid([F)Z

    move-result v1

    if-nez v1, :cond_34

    .line 82
    const-string p1, "ColorDisplayService"

    const-string p2, "Invalid display color space RGB-to-XYZ transform"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 85
    :cond_34
    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getInverseTransform()[F

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isColorMatrixValid([F)Z

    move-result v1

    if-nez v1, :cond_46

    .line 86
    const-string p1, "ColorDisplayService"

    const-string p2, "Invalid display color space XYZ-to-RGB transform"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 90
    :cond_46
    const v1, 0x1070034

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 92
    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 93
    nop

    :goto_51
    array-length v3, v1

    if-ge p2, v3, :cond_5f

    .line 94
    aget-object v3, v1, p2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, p2

    .line 93
    add-int/lit8 p2, p2, 0x1

    goto :goto_51

    .line 97
    :cond_5f
    const p2, 0x10e0049

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 99
    if-gtz p2, :cond_70

    .line 100
    const-string p1, "ColorDisplayService"

    const-string p2, "Display white balance minimum temperature must be greater than 0"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 105
    :cond_70
    const v1, 0x10e0048

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 107
    if-ge v1, p2, :cond_81

    .line 108
    const-string p1, "ColorDisplayService"

    const-string p2, "Display white balance max temp must be greater or equal to min"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 113
    :cond_81
    const v3, 0x10e0046

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 116
    iget-object v3, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 117
    :try_start_8b
    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    .line 118
    iput-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteXYZ:[F

    .line 119
    iput p2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMin:I

    .line 120
    iput v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMax:I

    .line 121
    iput p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureDefault:I

    .line 122
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    .line 123
    monitor-exit v3
    :try_end_99
    .catchall {:try_start_8b .. :try_end_99} :catchall_9f

    .line 125
    iget p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureDefault:I

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->setMatrix(I)V

    .line 126
    return-void

    .line 123
    :catchall_9f
    move-exception p1

    :try_start_a0
    monitor-exit v3
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw p1
.end method
