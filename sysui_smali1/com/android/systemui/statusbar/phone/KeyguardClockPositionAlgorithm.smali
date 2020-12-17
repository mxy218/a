.class public Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
.super Ljava/lang/Object;
.source "KeyguardClockPositionAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;
    }
.end annotation


# static fields
.field private static CLOCK_HEIGHT_WEIGHT:F = 0.7f


# instance fields
.field private mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mBurnInPreventionOffsetX:I

.field private mBurnInPreventionOffsetY:I

.field private mBypassEnabled:Z

.field private mClockNotificationsMargin:I

.field private mClockPreferredY:I

.field private mContainerTopPadding:I

.field private mDarkAmount:F

.field private mDensity:F

.field private mEmptyDragAmount:F

.field private mExpandedHeight:F

.field private mHasCustomClock:Z

.field private mHasVisibleNotifs:Z

.field private mHeight:I

.field private mKeyguardDateTimeViewY:I

.field private mKeyguardStatusHeight:I

.field private mMaxPanelHeight:I

.field private mMaxShadeBottom:I

.field private mMinTopMargin:I

.field private mNotificationStackHeight:I

.field private mPanelExpansion:F

.field private mUnlockedStackScrollerPadding:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method private getClockScale(III)F
    .registers 6

    int-to-float p2, p2

    .line 343
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40a00000  # 5.0f

    mul-float/2addr v0, v1

    sub-float/2addr p2, v0

    int-to-float p1, p1

    sub-float/2addr p1, p2

    int-to-float p3, p3

    sub-float/2addr p3, p2

    div-float/2addr p1, p3

    const/high16 p2, 0x3f800000  # 1.0f

    .line 346
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p3, 0x0

    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 347
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {p3, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result p1

    float-to-double v0, p1

    .line 348
    iget p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mEmptyDragAmount:F

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDensity:F

    div-float/2addr p1, p0

    const/high16 p0, 0x43960000  # 300.0f

    div-float/2addr p1, p0

    add-float/2addr p1, p2

    float-to-double p0, p1

    const-wide p2, 0x3fd3333340000000L  # 0.30000001192092896

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method private getClockYExpansionAdjustment()F
    .registers 2

    .line 327
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mExpandedHeight:F

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxPanelHeight:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    return v0
.end method

.method private getMaxClockY()I
    .registers 3

    .line 203
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMargin:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private getTopPaddingAdjMultiplier()F
    .registers 1

    const/high16 p0, 0x3f800000  # 1.0f

    return p0
.end method

.method private mzGetClockAlpha(F)F
    .registers 2

    const/high16 p0, 0x3f400000  # 0.75f

    sub-float/2addr p1, p0

    const p0, 0x3e4ccccc  # 0.19999999f

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000  # 1.0f

    .line 338
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public getExpandedClockPosition()I
    .registers 5

    .line 221
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxShadeBottom:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    sub-int/2addr v0, v1

    .line 222
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 224
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    int-to-float v2, v2

    sget v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->CLOCK_HEIGHT_WEIGHT:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMargin:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationStackHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    int-to-float v2, v1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_20

    int-to-float v0, v1

    .line 231
    :cond_20
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getMaxClockY()I

    move-result p0

    int-to-float p0, p0

    cmpl-float v1, v0, p0

    if-lez v1, :cond_2a

    goto :goto_2b

    :cond_2a
    move p0, v0

    :goto_2b
    float-to-int p0, p0

    return p0
.end method

.method public getMinStackScrollerPadding()F
    .registers 3

    .line 198
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBypassEnabled:Z

    if-eqz v0, :cond_8

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUnlockedStackScrollerPadding:I

    int-to-float p0, p0

    goto :goto_11

    .line 199
    :cond_8
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMargin:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    :goto_11
    return p0
.end method

.method public loadDimens(Landroid/content/res/Resources;)V
    .registers 5

    .line 130
    sget v0, Lcom/android/systemui/R$dimen;->keyguard_clock_notifications_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMargin:I

    .line 134
    sget v0, Lcom/android/systemui/R$dimen;->keyguard_clock_top_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_lock_height:I

    .line 136
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_lock_padding:I

    .line 137
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_clock_lock_margin:I

    .line 138
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 134
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mContainerTopPadding:I

    .line 139
    sget v0, Lcom/android/systemui/R$dimen;->burn_in_prevention_offset_x:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetX:I

    .line 141
    sget v0, Lcom/android/systemui/R$dimen;->burn_in_prevention_offset_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetY:I

    .line 144
    sget v0, Lcom/android/systemui/R$dimen;->keyguard_data_time_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardDateTimeViewY:I

    .line 146
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDensity:F

    return-void
.end method

.method public mzGetClockY()I
    .registers 1

    .line 323
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardDateTimeViewY:I

    return p0
.end method

.method public run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V
    .registers 6

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mzGetClockY()I

    move-result v0

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockYExpansionAdjustment()F

    move-result v1

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getTopPaddingAdjMultiplier()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 182
    iput v1, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingAdjustment:I

    .line 185
    iget v1, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingAdjustment:I

    add-int v2, v0, v1

    iput v2, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    .line 187
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int v3, v0, v2

    add-int/2addr v3, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMargin:I

    add-int/2addr v3, v1

    iput v3, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    add-int v3, v0, v2

    add-int/2addr v3, v1

    .line 190
    iput v3, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingRegular:I

    .line 191
    iget v1, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockScale(III)F

    move-result v0

    .line 192
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mzGetClockAlpha(F)F

    move-result p0

    iput p0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    const/4 p0, 0x0

    .line 194
    iput p0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    return-void
.end method

.method public setup(IIIFIIIZZFFZIFI)V
    .registers 18

    move-object v0, p0

    .line 158
    iget v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mContainerTopPadding:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    move v1, p2

    .line 159
    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxShadeBottom:I

    move v1, p3

    .line 160
    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationStackHeight:I

    move v1, p4

    .line 161
    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mPanelExpansion:F

    move v1, p5

    .line 162
    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHeight:I

    move v1, p6

    .line 163
    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    move v1, p7

    .line 164
    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockPreferredY:I

    move v1, p8

    .line 165
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHasCustomClock:Z

    move v1, p9

    .line 166
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHasVisibleNotifs:Z

    move v1, p10

    .line 167
    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    move v1, p11

    .line 168
    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mEmptyDragAmount:F

    move v1, p12

    .line 169
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBypassEnabled:Z

    move v1, p13

    .line 170
    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUnlockedStackScrollerPadding:I

    move/from16 v1, p14

    .line 172
    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mExpandedHeight:F

    move/from16 v1, p15

    .line 173
    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxPanelHeight:I

    return-void
.end method
