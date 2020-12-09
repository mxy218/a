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

    .line 629
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy;-><init>()V

    .line 630
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

    .line 632
    array-length v0, p2

    array-length v3, p3

    if-ne v0, v3, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    const-string v0, "Nits and backlight arrays must be the same length!"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 634
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    const/4 v1, 0x0

    const-string/jumbo v3, "nits"

    invoke-static {p2, v1, v0, v3}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 636
    const/16 v0, 0xff

    const-string v3, "backlight"

    invoke-static {p3, v2, v0, v3}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 639
    iput p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    .line 640
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 641
    const/high16 p4, -0x40800000  # -1.0f

    iput p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    .line 642
    iput p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 645
    array-length p4, p2

    .line 646
    new-array v0, p4, [F

    .line 647
    nop

    :goto_40
    if-ge v2, p4, :cond_4d

    .line 648
    aget v1, p3, v2

    invoke-virtual {p0, v1}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->normalizeAbsoluteBrightness(I)F

    move-result v1

    aput v1, v0, v2

    .line 647
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 651
    :cond_4d
    invoke-static {p2, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    .line 652
    invoke-static {v0, p2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    .line 654
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 655
    iget-boolean p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz p2, :cond_69

    .line 656
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000()Lcom/android/server/display/utils/Plog;

    move-result-object p2

    const-string/jumbo p3, "physical mapping strategy"

    invoke-virtual {p2, p3}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 658
    :cond_69
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 659
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 660
    return-void
.end method

.method private computeSpline()V
    .registers 10

    .line 785
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 786
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, [F

    .line 787
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    .line 788
    array-length v1, v0

    new-array v4, v1, [F

    .line 789
    const/4 v1, 0x0

    move v2, v1

    :goto_14
    array-length v5, v4

    if-ge v2, v5, :cond_24

    .line 790
    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    aget v6, v0, v2

    invoke-virtual {v5, v6}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    aput v5, v4, v2

    .line 789
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 792
    :cond_24
    iget v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    iget v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    iget v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    iget v8, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getAdjustedCurve([F[FFFFF)Landroid/util/Pair;

    move-result-object v0

    .line 794
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [F

    .line 795
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    .line 796
    array-length v3, v0

    new-array v3, v3, [F

    .line 797
    nop

    :goto_3d
    array-length v4, v3

    if-ge v1, v4, :cond_4d

    .line 798
    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Landroid/util/Spline;->interpolate(F)F

    move-result v4

    aput v4, v3, v1

    .line 797
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 800
    :cond_4d
    invoke-static {v2, v3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    .line 801
    return-void
.end method

.method private correctBrightness(FLjava/lang/String;I)F
    .registers 5

    .line 810
    if-eqz p2, :cond_f

    .line 811
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, p2}, Landroid/hardware/display/BrightnessConfiguration;->getCorrectionByPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessCorrection;

    move-result-object p2

    .line 812
    if-eqz p2, :cond_f

    .line 813
    invoke-virtual {p2, p1}, Landroid/hardware/display/BrightnessCorrection;->apply(F)F

    move-result p1

    return p1

    .line 816
    :cond_f
    const/4 p2, -0x1

    if-eq p3, p2, :cond_1f

    .line 817
    iget-object p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p2, p3}, Landroid/hardware/display/BrightnessConfiguration;->getCorrectionByCategory(I)Landroid/hardware/display/BrightnessCorrection;

    move-result-object p2

    .line 818
    if-eqz p2, :cond_1f

    .line 819
    invoke-virtual {p2, p1}, Landroid/hardware/display/BrightnessCorrection;->apply(F)F

    move-result p1

    return p1

    .line 822
    :cond_1f
    return p1
.end method

.method private getUnadjustedBrightness(F)F
    .registers 4

    .line 804
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 805
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    invoke-static {v1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    .line 806
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    return p1
.end method


# virtual methods
.method public addUserDataPoint(FF)V
    .registers 7

    .line 721
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v0

    .line 722
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    const-string v2, "BrightnessMappingStrategy"

    if-eqz v1, :cond_41

    .line 723
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

    .line 724
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000()Lcom/android/server/display/utils/Plog;

    move-result-object v1

    const-string v3, "add user data point"

    invoke-virtual {v1, v3}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v1

    .line 725
    const-string/jumbo v3, "user data point"

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    move-result-object v1

    .line 726
    const-string v3, "current brightness"

    invoke-virtual {v1, v3, p1, v0}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    .line 728
    :cond_41
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    move-result v0

    .line 731
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v1, :cond_69

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUserDataPoint: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_69
    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 736
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    .line 737
    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 738
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 739
    return-void
.end method

.method public clearUserDataPoints()V
    .registers 6

    .line 743
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_47

    .line 744
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_3d

    .line 745
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

    .line 746
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v2, "clear user data points"

    invoke-virtual {v0, v2}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 747
    const-string/jumbo v4, "user data point"

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    .line 749
    :cond_3d
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 750
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    .line 751
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 752
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 754
    :cond_47
    return-void
.end method

.method public convertToNits(I)F
    .registers 3

    .line 716
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->normalizeAbsoluteBrightness(I)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    return p1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 773
    const-string v0, "PhysicalMappingStrategy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNitsToBacklightSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDefaultConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 782
    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .registers 2

    .line 695
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    return v0
.end method

.method public getBrightness(FLjava/lang/String;I)F
    .registers 6

    .line 681
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    .line 682
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    .line 685
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_19

    .line 686
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->correctBrightness(FLjava/lang/String;I)F

    move-result p1

    goto :goto_25

    .line 687
    :cond_19
    iget-boolean p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz p2, :cond_25

    .line 688
    const-string p2, "BrightnessMappingStrategy"

    const-string/jumbo p3, "user point set, correction not applied"

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_25
    :goto_25
    return p1
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 768
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    return-object v0
.end method

.method public hasUserDataPoints()Z
    .registers 3

    .line 758
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

    .line 763
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAutoBrightnessAdjustment(F)Z
    .registers 4

    .line 700
    const/high16 v0, -0x40800000  # -1.0f

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 701
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_10

    .line 702
    const/4 p1, 0x0

    return p1

    .line 704
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_3e

    .line 705
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

    .line 707
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "auto-brightness adjustment"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 709
    :cond_3e
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 710
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 711
    const/4 p1, 0x1

    return p1
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .registers 4

    .line 664
    if-nez p1, :cond_4

    .line 665
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 667
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p1, v0}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 668
    const/4 p1, 0x0

    return p1

    .line 670
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_1b

    .line 671
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "brightness configuration"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 673
    :cond_1b
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 674
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 675
    const/4 p1, 0x1

    return p1
.end method
