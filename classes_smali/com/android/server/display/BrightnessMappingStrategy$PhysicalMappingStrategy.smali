.class Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;
.super Lcom/android/server/display/BrightnessMappingStrategy;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhysicalMappingStrategy"
.end annotation


# instance fields
.field private mAutoBrightnessAdjustment:F

.field private mBacklightToNitsSpline:Landroid/util/Spline;

.field private mBrightnessSpline:Landroid/util/Spline;

.field private mConfig:Landroid/hardware/display/BrightnessConfiguration;

.field private final mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

.field private mMaxGamma:F

.field private final mNitsToBacklightSpline:Landroid/util/Spline;

.field private mUserBrightness:F

.field private mUserLux:F


# direct methods
.method public constructor <init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF)V
    .registers 9
    .param p1, "config"  # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "nits"  # [F
    .param p3, "backlight"  # [I
    .param p4, "maxGamma"  # F

    .line 909
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy;-><init>()V

    .line 910
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    array-length v0, p3

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    const-string v3, "Nits and backlight arrays must not be empty!"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 912
    array-length v0, p2

    array-length v3, p3

    if-ne v0, v3, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    const-string v0, "Nits and backlight arrays must be the same length!"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 914
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    const/4 v1, 0x0

    const-string/jumbo v3, "nits"

    invoke-static {p2, v1, v0, v3}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 916
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const-string v3, "backlight"

    invoke-static {p3, v2, v0, v3}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 919
    iput p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    .line 920
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 921
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    .line 922
    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 925
    array-length v0, p2

    .line 926
    .local v0, "N":I
    new-array v1, v0, [F

    .line 927
    .local v1, "normalizedBacklight":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_40
    if-ge v2, v0, :cond_4d

    .line 928
    aget v3, p3, v2

    invoke-virtual {p0, v3}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->normalizeAbsoluteBrightness(I)F

    move-result v3

    aput v3, v1, v2

    .line 927
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 931
    .end local v2  # "i":I
    :cond_4d
    invoke-static {p2, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    .line 932
    invoke-static {v1, p2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    .line 934
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 935
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_69

    .line 936
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()Lcom/android/server/display/utils/Plog;

    move-result-object v2

    const-string/jumbo v3, "physical mapping strategy"

    invoke-virtual {v2, v3}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 938
    :cond_69
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 939
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 940
    return-void
.end method

.method private computeSpline()V
    .registers 12

    .line 1065
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 1066
    .local v0, "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    .line 1067
    .local v1, "defaultLux":[F
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, [F

    .line 1068
    .local v9, "defaultNits":[F
    array-length v2, v9

    new-array v10, v2, [F

    .line 1069
    .local v10, "defaultBacklight":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    array-length v3, v10

    if-ge v2, v3, :cond_23

    .line 1070
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    aget v4, v9, v2

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    aput v3, v10, v2

    .line 1069
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1072
    .end local v2  # "i":I
    :cond_23
    iget v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    iget v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    iget v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    iget v8, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    move-object v2, p0

    move-object v3, v1

    move-object v4, v10

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getAdjustedCurve([F[FFFFF)Landroid/util/Pair;

    move-result-object v2

    .line 1074
    .local v2, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [F

    .line 1075
    .local v3, "lux":[F
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [F

    .line 1076
    .local v4, "backlight":[F
    array-length v5, v4

    new-array v5, v5, [F

    .line 1077
    .local v5, "nits":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3e
    array-length v7, v5

    if-ge v6, v7, :cond_4e

    .line 1078
    iget-object v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    aget v8, v4, v6

    invoke-virtual {v7, v8}, Landroid/util/Spline;->interpolate(F)F

    move-result v7

    aput v7, v5, v6

    .line 1077
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 1080
    .end local v6  # "i":I
    :cond_4e
    invoke-static {v3, v5}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    .line 1081
    return-void
.end method

.method private correctBrightness(FLjava/lang/String;I)F
    .registers 6
    .param p1, "brightness"  # F
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "category"  # I

    .line 1090
    if-eqz p2, :cond_f

    .line 1091
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, p2}, Landroid/hardware/display/BrightnessConfiguration;->getCorrectionByPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessCorrection;

    move-result-object v0

    .line 1092
    .local v0, "correction":Landroid/hardware/display/BrightnessCorrection;
    if-eqz v0, :cond_f

    .line 1093
    invoke-virtual {v0, p1}, Landroid/hardware/display/BrightnessCorrection;->apply(F)F

    move-result v1

    return v1

    .line 1096
    .end local v0  # "correction":Landroid/hardware/display/BrightnessCorrection;
    :cond_f
    const/4 v0, -0x1

    if-eq p3, v0, :cond_1f

    .line 1097
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, p3}, Landroid/hardware/display/BrightnessConfiguration;->getCorrectionByCategory(I)Landroid/hardware/display/BrightnessCorrection;

    move-result-object v0

    .line 1098
    .restart local v0  # "correction":Landroid/hardware/display/BrightnessCorrection;
    if-eqz v0, :cond_1f

    .line 1099
    invoke-virtual {v0, p1}, Landroid/hardware/display/BrightnessCorrection;->apply(F)F

    move-result v1

    return v1

    .line 1102
    .end local v0  # "correction":Landroid/hardware/display/BrightnessCorrection;
    :cond_1f
    return p1
.end method

.method private getUnadjustedBrightness(F)F
    .registers 6
    .param p1, "lux"  # F

    .line 1084
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 1085
    .local v0, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    .line 1086
    .local v1, "spline":Landroid/util/Spline;
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    return v2
.end method


# virtual methods
.method public addUserDataPoint(FF)V
    .registers 8
    .param p1, "lux"  # F
    .param p2, "brightness"  # F

    .line 1001
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v0

    .line 1002
    .local v0, "unadjustedBrightness":F
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    const-string v2, "BrightnessMappingStrategy"

    if-eqz v1, :cond_41

    .line 1003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUserDataPoint: ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()Lcom/android/server/display/utils/Plog;

    move-result-object v1

    const-string v3, "add user data point"

    invoke-virtual {v1, v3}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v1

    .line 1005
    const-string/jumbo v3, "user data point"

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    move-result-object v1

    .line 1006
    const-string v3, "current brightness"

    invoke-virtual {v1, v3, p1, v0}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    .line 1008
    :cond_41
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    move-result v1

    .line 1011
    .local v1, "adjustment":F
    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v3, :cond_69

    .line 1012
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addUserDataPoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_69
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1016
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    .line 1017
    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 1018
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 1019
    return-void
.end method

.method public addUserDataPoint(FFFFF)V
    .registers 6
    .param p1, "lux"  # F
    .param p2, "brightness"  # F
    .param p3, "darkeningThreshold"  # F
    .param p4, "brighteningThreshold"  # F
    .param p5, "deepDarkeAmbientLuxThreshold"  # F

    .line 1129
    return-void
.end method

.method public clearUserDataPoints()V
    .registers 6

    .line 1023
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_47

    .line 1024
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_3d

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearUserDataPoints: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " => 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BrightnessMappingStrategy"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v2, "clear user data points"

    invoke-virtual {v0, v2}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 1027
    const-string/jumbo v4, "user data point"

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    .line 1029
    :cond_3d
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1030
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    .line 1031
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 1032
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 1034
    :cond_47
    return-void
.end method

.method public convertToNits(I)F
    .registers 4
    .param p1, "backlight"  # I

    .line 996
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->normalizeAbsoluteBrightness(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 1053
    const-string v0, "PhysicalMappingStrategy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNitsToBacklightSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDefaultConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .registers 2

    .line 975
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    return v0
.end method

.method public getAutomaticBrightnessDefaultMinLevel()F
    .registers 5

    .line 1118
    const/high16 v0, -0x40800000  # -1.0f

    .line 1119
    .local v0, "min":F
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    if-eqz v1, :cond_20

    .line 1120
    invoke-virtual {v1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v1

    .line 1121
    .local v1, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_1d

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    array-length v2, v2

    if-lez v2, :cond_1d

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    const/4 v3, 0x0

    aget v2, v2, v3

    goto :goto_1f

    :cond_1d
    const/high16 v2, -0x40800000  # -1.0f

    :goto_1f
    move v0, v2

    .line 1124
    .end local v1  # "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :cond_20
    return v0
.end method

.method public getBrightness(FLjava/lang/String;I)F
    .registers 8
    .param p1, "lux"  # F
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "category"  # I

    .line 961
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    .line 962
    .local v0, "nits":F
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v1, v0}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    .line 965
    .local v1, "backlight":F
    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    const/high16 v3, -0x40800000  # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_19

    .line 966
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->correctBrightness(FLjava/lang/String;I)F

    move-result v1

    goto :goto_25

    .line 967
    :cond_19
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_25

    .line 968
    const-string v2, "BrightnessMappingStrategy"

    const-string/jumbo v3, "user point set, correction not applied"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_25
    :goto_25
    return v1
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 1048
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    return-object v0
.end method

.method public hasUserDataPoints()Z
    .registers 3

    .line 1038
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isDefaultConfig()Z
    .registers 3

    .line 1043
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAutoBrightnessAdjustment(F)Z
    .registers 4
    .param p1, "adjustment"  # F

    .line 980
    const/high16 v0, -0x40800000  # -1.0f

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 981
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_10

    .line 982
    const/4 v0, 0x0

    return v0

    .line 984
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_3e

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoBrightnessAdjustment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessMappingStrategy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "auto-brightness adjustment"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 989
    :cond_3e
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 990
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 991
    const/4 v0, 0x1

    return v0
.end method

.method public setAutoBrightnessAdjustment(FFFFF)Z
    .registers 7
    .param p1, "lux"  # F
    .param p2, "adjustment"  # F
    .param p3, "darkeningThreshold"  # F
    .param p4, "brighteningThreshold"  # F
    .param p5, "deepDarkeAmbientLuxThreshold"  # F

    .line 1114
    invoke-virtual {p0, p2}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->setAutoBrightnessAdjustment(F)Z

    move-result v0

    return v0
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .registers 4
    .param p1, "config"  # Landroid/hardware/display/BrightnessConfiguration;

    .line 944
    if-nez p1, :cond_4

    .line 945
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 947
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p1, v0}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 948
    const/4 v0, 0x0

    return v0

    .line 950
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_1b

    .line 951
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "brightness configuration"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 953
    :cond_1b
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 954
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 955
    const/4 v0, 0x1

    return v0
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)Z
    .registers 3
    .param p1, "adjustment"  # F

    .line 1108
    const/4 v0, 0x0

    return v0
.end method
