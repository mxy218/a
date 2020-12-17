.class public Lcom/android/systemui/statusbar/notification/stack/AmbientState;
.super Ljava/lang/Object;
.source "AmbientState.java"


# instance fields
.field private mActivatedChild:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field private mAppearing:Z

.field private mBaseZHeight:I

.field private mCurrentScrollVelocity:F

.field private mDimmed:Z

.field private mDismissAllInProgress:Z

.field private mDozeAmount:F

.field private mDozing:Z

.field private mDraggedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandAnimationTopChange:I

.field private mExpandingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mExpandingVelocity:F

.field private mExpansionChanging:Z

.field private mHeadUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHideAmount:F

.field private mHideSensitive:Z

.field private mIntrinsicPadding:I

.field private mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field private mLayoutHeight:I

.field private mLayoutMinHeight:I

.field private mMaxHeadsUpTranslation:F

.field private mMaxLayoutHeight:I

.field private mOnPulseHeightChangedListener:Ljava/lang/Runnable;

.field private mOverScrollBottomAmount:F

.field private mOverScrollTopAmount:F

.field private mPanelFullWidth:Z

.field private mPanelTracking:Z

.field private mPulseHeight:F

.field private mPulsing:Z

.field private mQsCustomizerShowing:Z

.field private mScrollY:I

.field private final mSectionProvider:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;

.field private mShadeExpanded:Z

.field private mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field private mSpeedBumpIndex:I

.field private mStackTranslation:F

.field private mStatusBarState:I

.field private mTopPadding:I

.field private mUnlockHintRunning:Z

.field private mZDistanceBetweenElements:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .registers 5

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mSpeedBumpIndex:I

    const v0, 0x47c35000  # 100000.0f

    .line 83
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    .line 92
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mSectionProvider:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;

    .line 93
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHeadUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->reload(Landroid/content/Context;)V

    return-void
.end method

.method private static getBaseHeight(I)I
    .registers 1

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static getNotificationLaunchHeight(Landroid/content/Context;)I
    .registers 1

    .line 118
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getZDistanceBetweenElements(Landroid/content/Context;)I

    move-result p0

    .line 119
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseHeight(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private static getZDistanceBetweenElements(Landroid/content/Context;)I
    .registers 2

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->z_distance_between_notifications:I

    .line 107
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v0, 0x1

    .line 106
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mActivatedChild:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    return-object p0
.end method

.method public getBaseZHeight()I
    .registers 1

    .line 126
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mBaseZHeight:I

    return p0
.end method

.method public getCurrentScrollVelocity()F
    .registers 1

    .line 363
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mCurrentScrollVelocity:F

    return p0
.end method

.method public getDraggedViews()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getExpandAnimationTopChange()I
    .registers 1

    .line 482
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpandAnimationTopChange:I

    return p0
.end method

.method public getExpandingNotification()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .registers 1

    .line 478
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpandingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method public getExpandingVelocity()F
    .registers 1

    .line 387
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpandingVelocity:F

    return p0
.end method

.method public getHideAmount()F
    .registers 1

    .line 202
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    return p0
.end method

.method public getInnerHeight()I
    .registers 2

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight(Z)I

    move-result p0

    return p0
.end method

.method public getInnerHeight(Z)I
    .registers 5

    .line 288
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v0

    if-nez v0, :cond_15

    .line 289
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0

    .line 291
    :cond_15
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutMinHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mMaxLayoutHeight:I

    .line 292
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    sub-int/2addr v1, v2

    .line 291
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz p1, :cond_29

    return v0

    .line 296
    :cond_29
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 297
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    invoke-static {v0, p1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getIntrinsicPadding()I
    .registers 1

    .line 449
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIntrinsicPadding:I

    return p0
.end method

.method public getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .registers 1

    .line 355
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    return-object p0
.end method

.method public getMaxHeadsUpTranslation()F
    .registers 1

    .line 317
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mMaxHeadsUpTranslation:F

    return p0
.end method

.method public getOverScrollAmount(Z)F
    .registers 2

    if-eqz p1, :cond_5

    .line 244
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverScrollTopAmount:F

    goto :goto_7

    :cond_5
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverScrollBottomAmount:F

    :goto_7
    return p0
.end method

.method public getPulseHeight()F
    .registers 2

    .line 515
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    const v0, 0x47c35000  # 100000.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    :cond_a
    return p0
.end method

.method public getScrollY()I
    .registers 1

    .line 137
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    return p0
.end method

.method public getSectionProvider()Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;
    .registers 1

    .line 256
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mSectionProvider:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;

    return-object p0
.end method

.method public getShelf()Lcom/android/systemui/statusbar/NotificationShelf;
    .registers 1

    .line 338
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    return-object p0
.end method

.method public getSpeedBumpIndex()I
    .registers 1

    .line 248
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mSpeedBumpIndex:I

    return p0
.end method

.method public getStackTranslation()F
    .registers 1

    .line 260
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    return p0
.end method

.method public getTopPadding()F
    .registers 1

    .line 272
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    int-to-float p0, p0

    return p0
.end method

.method public getZDistanceBetweenElements()I
    .registers 1

    .line 133
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mZDistanceBetweenElements:I

    return p0
.end method

.method public hasPulsingNotifications()Z
    .registers 2

    .line 395
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulsing:Z

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHeadUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->hasNotifications()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isAppearing()Z
    .registers 1

    .line 502
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mAppearing:Z

    return p0
.end method

.method public isDimmed()Z
    .registers 2

    .line 220
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDimmed:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v0

    if-eqz v0, :cond_12

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public isDozing()Z
    .registers 1

    .line 224
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    return p0
.end method

.method public isDozingAndNotPulsing(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .registers 3

    .line 466
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulsing(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isDozingAndNotPulsing(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .registers 3

    .line 456
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_b

    .line 457
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozingAndNotPulsing(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isExpansionChanging()Z
    .registers 1

    .line 383
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    return p0
.end method

.method public isFullyAwake()Z
    .registers 2

    .line 537
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isFullyHidden()Z
    .registers 2

    .line 490
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isHiddenAtAll()Z
    .registers 2

    .line 494
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isHideSensitive()Z
    .registers 1

    .line 228
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideSensitive:Z

    return p0
.end method

.method public isOnKeyguard()Z
    .registers 2

    .line 367
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStatusBarState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isPanelFullWidth()Z
    .registers 1

    .line 421
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPanelFullWidth:Z

    return p0
.end method

.method public isPanelTracking()Z
    .registers 1

    .line 417
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPanelTracking:Z

    return p0
.end method

.method public isPulseExpanding()Z
    .registers 3

    .line 301
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    const v1, 0x47c35000  # 100000.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1a

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public isPulsing(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 3

    .line 410
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulsing:Z

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHeadUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-nez p0, :cond_9

    goto :goto_10

    .line 413
    :cond_9
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method

.method public isQsCustomizerShowing()Z
    .registers 1

    .line 437
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mQsCustomizerShowing:Z

    return p0
.end method

.method public isShadeExpanded()Z
    .registers 1

    .line 305
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    return p0
.end method

.method public isUnlockHintRunning()Z
    .registers 1

    .line 433
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mUnlockHintRunning:Z

    return p0
.end method

.method public onBeginDrag(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .registers 2

    .line 167
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDragFinished(Landroid/view/View;)V
    .registers 2

    .line 171
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reload(Landroid/content/Context;)V
    .registers 2

    .line 101
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getZDistanceBetweenElements(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mZDistanceBetweenElements:I

    .line 102
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mZDistanceBetweenElements:I

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseHeight(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mBaseZHeight:I

    return-void
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mActivatedChild:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    return-void
.end method

.method public setAppearing(Z)V
    .registers 2

    .line 498
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mAppearing:Z

    return-void
.end method

.method public setCurrentScrollVelocity(F)V
    .registers 2

    .line 359
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mCurrentScrollVelocity:F

    return-void
.end method

.method public setDimmed(Z)V
    .registers 2

    .line 183
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDimmed:Z

    return-void
.end method

.method public setDismissAllInProgress(Z)V
    .registers 2

    .line 321
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDismissAllInProgress:Z

    return-void
.end method

.method public setDozeAmount(F)V
    .registers 3

    .line 523
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_19

    .line 524
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_13

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_19

    :cond_13
    const p1, 0x47c35000  # 100000.0f

    .line 527
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setPulseHeight(F)V

    :cond_19
    return-void
.end method

.method public setDozing(Z)V
    .registers 2

    .line 188
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    return-void
.end method

.method public setExpandAnimationTopChange(I)V
    .registers 2

    .line 470
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpandAnimationTopChange:I

    return-void
.end method

.method public setExpandingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 2

    .line 474
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpandingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-void
.end method

.method public setExpandingVelocity(F)V
    .registers 2

    .line 375
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpandingVelocity:F

    return-void
.end method

.method public setExpansionChanging(Z)V
    .registers 2

    .line 379
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    return-void
.end method

.method public setHideAmount(F)V
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_12

    .line 193
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_12

    const v0, 0x47c35000  # 100000.0f

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setPulseHeight(F)V

    .line 197
    :cond_12
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    return-void
.end method

.method public setHideSensitive(Z)V
    .registers 2

    .line 206
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideSensitive:Z

    return-void
.end method

.method public setIntrinsicPadding(I)V
    .registers 2

    .line 445
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIntrinsicPadding:I

    return-void
.end method

.method public setLastVisibleBackgroundChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    return-void
.end method

.method public setLayoutHeight(I)V
    .registers 2

    .line 268
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutHeight:I

    return-void
.end method

.method public setLayoutMaxHeight(I)V
    .registers 2

    .line 342
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mMaxLayoutHeight:I

    return-void
.end method

.method public setLayoutMinHeight(I)V
    .registers 2

    .line 329
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutMinHeight:I

    return-void
.end method

.method public setMaxHeadsUpTranslation(F)V
    .registers 2

    .line 313
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mMaxHeadsUpTranslation:F

    return-void
.end method

.method public setOnPulseHeightChangedListener(Ljava/lang/Runnable;)V
    .registers 2

    .line 541
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOnPulseHeightChangedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOverScrollAmount(FZ)V
    .registers 3

    if-eqz p2, :cond_5

    .line 237
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverScrollTopAmount:F

    goto :goto_7

    .line 239
    :cond_5
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverScrollBottomAmount:F

    :goto_7
    return-void
.end method

.method public setPanelFullWidth(Z)V
    .registers 2

    .line 425
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPanelFullWidth:Z

    return-void
.end method

.method public setPanelTracking(Z)V
    .registers 2

    .line 391
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPanelTracking:Z

    return-void
.end method

.method public setPulseHeight(F)V
    .registers 3

    .line 506
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_f

    .line 507
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    .line 508
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOnPulseHeightChangedListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_f

    .line 509
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_f
    return-void
.end method

.method public setPulsing(Z)V
    .registers 2

    .line 399
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulsing:Z

    return-void
.end method

.method public setQsCustomizerShowing(Z)V
    .registers 2

    .line 441
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mQsCustomizerShowing:Z

    return-void
.end method

.method public setScrollY(I)V
    .registers 2

    .line 141
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    return-void
.end method

.method public setShadeExpanded(Z)V
    .registers 2

    .line 309
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    return-void
.end method

.method public setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .registers 2

    .line 333
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    return-void
.end method

.method public setSpeedBumpIndex(I)V
    .registers 2

    .line 252
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mSpeedBumpIndex:I

    return-void
.end method

.method public setStackTranslation(F)V
    .registers 2

    .line 264
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    return-void
.end method

.method public setStatusBarState(I)V
    .registers 2

    .line 371
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStatusBarState:I

    return-void
.end method

.method public setTopPadding(I)V
    .registers 2

    .line 276
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    return-void
.end method

.method public setUnlockHintRunning(Z)V
    .registers 2

    .line 429
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mUnlockHintRunning:Z

    return-void
.end method
