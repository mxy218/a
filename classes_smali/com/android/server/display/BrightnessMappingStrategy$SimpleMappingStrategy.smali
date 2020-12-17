.class Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;
.super Lcom/android/server/display/BrightnessMappingStrategy;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleMappingStrategy"
.end annotation


# instance fields
.field private mAutoBrightnessAdjustment:F

.field private mBrighteningThreshold:F

.field private final mBrightness:[F

.field private mDarkeningThreshold:F

.field private mDefaultSpline:Landroid/util/Spline;

.field private final mLux:[F

.field private mMaxGamma:F

.field private mSpline:Landroid/util/Spline;

.field private mTemporaryAutoBrightnessAdjustment:F

.field private mUserBrightness:F

.field private mUserLux:F

.field private mUserSelfBrightness:[F

.field private mUserSelfLux:[F


# direct methods
.method public constructor <init>([F[IF)V
    .registers 10
    .param p1, "lux"  # [F
    .param p2, "brightness"  # [I
    .param p3, "maxGamma"  # F

    .line 559
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy;-><init>()V

    .line 551
    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mTemporaryAutoBrightnessAdjustment:F

    .line 552
    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfLux:[F

    .line 553
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfBrightness:[F

    .line 555
    const/high16 v1, -0x40800000  # -1.0f

    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrighteningThreshold:F

    .line 556
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDarkeningThreshold:F

    .line 560
    array-length v2, p1

    const/4 v3, 0x1

    if-eqz v2, :cond_1f

    array-length v2, p2

    if-eqz v2, :cond_1f

    move v2, v3

    goto :goto_20

    :cond_1f
    move v2, v0

    :goto_20
    const-string v4, "Lux and brightness arrays must not be empty!"

    invoke-static {v2, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 562
    array-length v2, p1

    array-length v4, p2

    if-ne v2, v4, :cond_2a

    goto :goto_2b

    :cond_2a
    move v3, v0

    :goto_2b
    const-string v2, "Lux and brightness arrays must be the same length!"

    invoke-static {v3, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 564
    const v2, 0x7f7fffff  # Float.MAX_VALUE

    const/4 v3, 0x0

    const-string/jumbo v4, "lux"

    invoke-static {p1, v3, v2, v4}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 565
    const v2, 0x7fffffff

    const-string v4, "brightness"

    invoke-static {p2, v0, v2, v4}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 568
    array-length v0, p2

    .line 569
    .local v0, "N":I
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    .line 570
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    .line 571
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4c
    if-ge v2, v0, :cond_61

    .line 572
    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    aget v5, p1, v2

    aput v5, v4, v2

    .line 573
    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    aget v5, p2, v2

    invoke-virtual {p0, v5}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->normalizeAbsoluteBrightness(I)F

    move-result v5

    aput v5, v4, v2

    .line 571
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 576
    .end local v2  # "i":I
    :cond_61
    iput p3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    .line 577
    iput v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 578
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    .line 579
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    .line 581
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000()Lcom/android/server/display/PersistentDataStore;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/display/PersistentDataStore;->getUserBrightnessLevelConfiguration(I)Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;

    move-result-object v2

    .line 582
    .local v2, "config":Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;
    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->access$102(F)F

    .line 583
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    invoke-static {v3, v4}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDefaultSpline:Landroid/util/Spline;

    .line 585
    if-eqz v2, :cond_ec

    .line 586
    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->getUserLux()F

    move-result v3

    iput v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    .line 587
    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->getUserAdjustment()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_a0

    .line 588
    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->getUserAdjustment()F

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v3, v1, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 590
    :cond_a0
    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->getUserBrightness()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    .line 591
    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_c0

    .line 592
    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfLux:[F

    .line 593
    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [F

    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfBrightness:[F

    .line 595
    :cond_c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserBrightnessLevelConfiguration mUserLux = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mAutoBrightnessAdjustment = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mUserBrightness = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BrightnessMappingStrategy"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_ec
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLoggingEnabled:Z

    if-eqz v1, :cond_fa

    .line 599
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()Lcom/android/server/display/utils/Plog;

    move-result-object v1

    const-string/jumbo v3, "simple mapping strategy"

    invoke-virtual {v1, v3}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 601
    :cond_fa
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 602
    return-void
.end method

.method private computeSpline()V
    .registers 11

    .line 739
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeUserSelfLuxBrightness()V

    .line 740
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    iget v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    iget v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->getAdjustedCurve([F[FFFFF)Landroid/util/Pair;

    move-result-object v0

    .line 742
    .local v0, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfLux:[F

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfBrightness:[F

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->insertUserSelfLuxBrightness([F[F[F[F)Landroid/util/Pair;

    move-result-object v0

    .line 743
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    const/high16 v2, -0x40800000  # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3c

    .line 744
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v0

    .line 746
    :cond_3c
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    .line 747
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000()Lcom/android/server/display/PersistentDataStore;

    move-result-object v1

    new-instance v9, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfLux:[F

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfBrightness:[F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    iget v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    iget v8, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;-><init>([F[FLjava/lang/String;FFF)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v9, v2}, Lcom/android/server/display/PersistentDataStore;->setUserBrightnessLevelConfigurationForUser(Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;I)V

    .line 748
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000()Lcom/android/server/display/PersistentDataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 750
    return-void
.end method

.method private computeUserSelfLuxBrightness()V
    .registers 13

    .line 802
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c8

    .line 803
    const/4 v0, 0x0

    .line 804
    .local v0, "adjustCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfBrightness:[F

    array-length v4, v3

    if-ge v2, v4, :cond_5c

    .line 807
    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2b

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfLux:[F

    aget v3, v3, v2

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2b

    .line 808
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfBrightness:[F

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    aput v4, v3, v2

    .line 811
    :cond_2b
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfLux:[F

    aget v3, v3, v2

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3f

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfBrightness:[F

    aget v3, v3, v2

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_53

    :cond_3f
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfLux:[F

    aget v3, v3, v2

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_59

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfBrightness:[F

    aget v3, v3, v2

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_59

    .line 813
    :cond_53
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfBrightness:[F

    aput v1, v3, v2

    .line 814
    add-int/lit8 v0, v0, 0x1

    .line 804
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 818
    .end local v2  # "i":I
    :cond_5c
    array-length v2, v3

    sub-int/2addr v2, v0

    .line 819
    .local v2, "newLength":I
    new-array v3, v2, [F

    .line 820
    .local v3, "newUserSelfLux":[F
    new-array v4, v2, [F

    .line 822
    .local v4, "newUserSelfBrightness":[F
    const/4 v5, 0x0

    .line 823
    .local v5, "index":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_64
    iget-object v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfBrightness:[F

    array-length v8, v7

    if-ge v6, v8, :cond_7e

    .line 824
    aget v8, v7, v6

    cmpl-float v8, v8, v1

    if-eqz v8, :cond_7b

    .line 825
    iget-object v8, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfLux:[F

    aget v8, v8, v6

    aput v8, v3, v5

    .line 826
    aget v7, v7, v6

    aput v7, v4, v5

    .line 827
    add-int/lit8 v5, v5, 0x1

    .line 823
    :cond_7b
    add-int/lit8 v6, v6, 0x1

    goto :goto_64

    .line 831
    .end local v6  # "j":I
    :cond_7e
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    iget v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    invoke-virtual {p0, v3, v4, v1, v6}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v1

    .line 833
    .local v1, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    const/high16 v7, 0x3fc00000  # 1.5f

    mul-float/2addr v7, v6

    .line 834
    .local v7, "similarUpperAmbientLux":F
    const v8, 0x3ecccccc  # 0.39999998f

    mul-float/2addr v6, v8

    .line 835
    .local v6, "similarLowerAmbientLux":F
    const/4 v8, 0x0

    cmpl-float v9, v7, v8

    if-ltz v9, :cond_a2

    .line 836
    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, [F

    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, [F

    iget v11, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    invoke-virtual {p0, v9, v10, v7, v11}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v1

    .line 839
    :cond_a2
    iget v9, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    const/high16 v10, 0x41200000  # 10.0f

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_bc

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_bc

    .line 840
    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, [F

    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [F

    iget v10, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    invoke-virtual {p0, v8, v9, v6, v10}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v1

    .line 844
    :cond_bc
    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, [F

    iput-object v8, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfLux:[F

    .line 845
    iget-object v8, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, [F

    iput-object v8, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfBrightness:[F

    .line 847
    .end local v0  # "adjustCount":I
    .end local v1  # "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    .end local v2  # "newLength":I
    .end local v3  # "newUserSelfLux":[F
    .end local v4  # "newUserSelfBrightness":[F
    .end local v5  # "index":I
    .end local v6  # "similarLowerAmbientLux":F
    .end local v7  # "similarUpperAmbientLux":F
    :cond_c8
    return-void
.end method

.method private getUnadjustedBrightness(F)F
    .registers 4
    .param p1, "lux"  # F

    .line 753
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    .line 754
    .local v0, "spline":Landroid/util/Spline;
    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    return v1
.end method


# virtual methods
.method public addUserDataPoint(FF)V
    .registers 8
    .param p1, "lux"  # F
    .param p2, "brightness"  # F

    .line 663
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v0

    .line 665
    .local v0, "unadjustedBrightness":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addUserDataPoint: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrightnessMappingStrategy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()Lcom/android/server/display/utils/Plog;

    move-result-object v1

    const-string v3, "add user data point"

    invoke-virtual {v1, v3}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v1

    .line 667
    const-string/jumbo v3, "user data point"

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    move-result-object v1

    .line 668
    const-string v3, "current brightness"

    invoke-virtual {v1, v3, p1, v0}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    .line 670
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    move-result v1

    .line 674
    .local v1, "adjustment":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addUserDataPoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 678
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    .line 679
    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    .line 680
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 681
    return-void
.end method

.method public addUserDataPoint(FFFFF)V
    .registers 11
    .param p1, "lux"  # F
    .param p2, "brightness"  # F
    .param p3, "darkeningThreshold"  # F
    .param p4, "brighteningThreshold"  # F
    .param p5, "deepDarkeAmbientLuxThreshold"  # F

    .line 851
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v0

    .line 853
    .local v0, "unadjustedBrightness":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addUserDataPoint: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrightnessMappingStrategy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()Lcom/android/server/display/utils/Plog;

    move-result-object v1

    const-string v3, "add user data point"

    invoke-virtual {v1, v3}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v1

    .line 855
    const-string/jumbo v3, "user data point"

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    move-result-object v1

    .line 856
    const-string v3, "current brightness"

    invoke-virtual {v1, v3, p1, v0}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    .line 858
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    move-result v1

    .line 862
    .local v1, "adjustment":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addUserDataPoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", mDarkeningThreshold = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", mBrighteningThreshold = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 867
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    .line 868
    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    .line 869
    iput p3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDarkeningThreshold:F

    .line 870
    iput p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrighteningThreshold:F

    .line 871
    invoke-static {p5}, Lcom/android/server/display/BrightnessMappingStrategy;->access$102(F)F

    .line 872
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 873
    return-void
.end method

.method public clearUserDataPoints()V
    .registers 6

    .line 685
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_50

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearUserDataPoints: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " => 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BrightnessMappingStrategy"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v2, "clear user data points"

    invoke-virtual {v0, v2}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    .line 689
    const-string/jumbo v4, "user data point"

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    .line 691
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 692
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    .line 693
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    .line 695
    const/4 v0, 0x0

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfLux:[F

    .line 696
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfBrightness:[F

    .line 697
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDarkeningThreshold:F

    .line 698
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrighteningThreshold:F

    .line 700
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 702
    :cond_50
    return-void
.end method

.method public convertToNits(I)F
    .registers 3
    .param p1, "backlight"  # I

    .line 658
    const/high16 v0, -0x40800000  # -1.0f

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 721
    const-string v0, "SimpleMappingStrategy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mTemporaryAutoBrightnessAdjustment:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLux="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserSelfLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfLux:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserSelfBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserSelfBrightness:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDeepDarkeAmbientLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .registers 3

    .line 627
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mTemporaryAutoBrightnessAdjustment:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_23

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get temporary auto brightness adjustment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mTemporaryAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessMappingStrategy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mTemporaryAutoBrightnessAdjustment:F

    return v0

    .line 632
    :cond_23
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    return v0
.end method

.method public getAutomaticBrightnessDefaultMinLevel()F
    .registers 3

    .line 797
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    if-eqz v0, :cond_b

    array-length v1, v0

    if-lez v1, :cond_b

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_d

    :cond_b
    const/high16 v0, -0x40800000  # -1.0f

    :goto_d
    return v0
.end method

.method public getBrightness(FLjava/lang/String;I)F
    .registers 6
    .param p1, "lux"  # F
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "category"  # I

    .line 613
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mTemporaryAutoBrightnessAdjustment:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get temporary brightness, adjustment = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mTemporaryAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessMappingStrategy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mTemporaryAutoBrightnessAdjustment:F

    neg-float v1, v1

    invoke-static {v0, v1}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    .line 616
    .local v0, "gamma":F
    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3a

    .line 617
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    invoke-static {v1, v0}, Landroid/util/MathUtils;->pow(FF)F

    move-result v1

    return v1

    .line 621
    .end local v0  # "gamma":F
    :cond_3a
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 716
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasUserDataPoints()Z
    .registers 3

    .line 706
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

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
    .registers 2

    .line 711
    const/4 v0, 0x1

    return v0
.end method

.method public setAutoBrightnessAdjustment(F)Z
    .registers 7
    .param p1, "adjustment"  # F

    .line 639
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    const/high16 v0, -0x40800000  # -1.0f

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 640
    .local v0, "temp":F
    :goto_10
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3eb0c6f7a0b5ed8dL  # 1.0E-6

    cmpg-double v1, v1, v3

    if-gez v1, :cond_23

    .line 641
    const/4 v1, 0x0

    return v1

    .line 644
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoBrightnessAdjustment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrightnessMappingStrategy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()Lcom/android/server/display/utils/Plog;

    move-result-object v1

    const-string v2, "auto-brightness adjustment"

    invoke-virtual {v1, v2}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 648
    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 649
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    neg-float v2, v0

    invoke-static {v1, v2}, Landroid/util/MathUtils;->pow(FF)F

    move-result v1

    .line 650
    .local v1, "gamma":F
    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    invoke-direct {p0, v2}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v2

    invoke-static {v2, v1}, Landroid/util/MathUtils;->pow(FF)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    .line 652
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 653
    const/4 v2, 0x1

    return v2
.end method

.method public setAutoBrightnessAdjustment(FFFFF)Z
    .registers 12
    .param p1, "lux"  # F
    .param p2, "adjustment"  # F
    .param p3, "darkeningThreshold"  # F
    .param p4, "brighteningThreshold"  # F
    .param p5, "deepDarkeAmbientLuxThreshold"  # F

    .line 772
    const/high16 v0, 0x3f800000  # 1.0f

    const/high16 v1, -0x40800000  # -1.0f

    invoke-static {p2, v1, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 773
    .local v1, "temp":F
    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3eb0c6f7a0b5ed8dL  # 1.0E-6

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1b

    .line 774
    const/4 v0, 0x0

    return v0

    .line 776
    :cond_1b
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 777
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    .line 778
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    .line 779
    iput p3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDarkeningThreshold:F

    .line 780
    iput p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrighteningThreshold:F

    .line 781
    invoke-static {p5}, Lcom/android/server/display/BrightnessMappingStrategy;->access$102(F)F

    .line 782
    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    neg-float v3, v1

    invoke-static {v2, v3}, Landroid/util/MathUtils;->pow(FF)F

    move-result v2

    .line 783
    .local v2, "gamma":F
    cmpl-float v0, v2, v0

    if-eqz v0, :cond_3f

    .line 784
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    invoke-static {v0, v2}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    .line 787
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAutoBrightnessAdjustment: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", lux => "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mUserBrightness => "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mDarkeningThreshold = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDarkeningThreshold:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mBrighteningThreshold = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrighteningThreshold:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BrightnessMappingStrategy"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v3, "auto-brightness adjustment"

    invoke-virtual {v0, v3}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 792
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 793
    const/4 v0, 0x1

    return v0
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .registers 3
    .param p1, "config"  # Landroid/hardware/display/BrightnessConfiguration;

    .line 606
    const/4 v0, 0x0

    return v0
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)Z
    .registers 4
    .param p1, "adjustment"  # F

    .line 760
    const/high16 v0, -0x40800000  # -1.0f

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 761
    .local v0, "temp":F
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mTemporaryAutoBrightnessAdjustment:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_10

    .line 762
    const/4 v1, 0x0

    return v1

    .line 765
    :cond_10
    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mTemporaryAutoBrightnessAdjustment:F

    .line 766
    const/4 v1, 0x1

    return v1
.end method
