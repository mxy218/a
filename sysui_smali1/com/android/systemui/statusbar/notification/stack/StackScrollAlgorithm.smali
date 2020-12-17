.class public Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;
.super Ljava/lang/Object;
.source "StackScrollAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;,
        Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    }
.end annotation


# instance fields
.field private mClipNotificationScrollToTop:Z

.field private mCollapsedSize:I

.field private mGapHeight:I

.field private mHeadsUpInset:F

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private final mHostView:Landroid/view/ViewGroup;

.field private mIncreasedPaddingBetweenElements:I

.field private mIsExpanded:Z

.field private mPaddingBetweenElements:I

.field private mPinnedZTranslationExtra:I

.field private mStatusBarHeight:I

.field private mTempAlgorithmState:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;-><init>(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 65
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;)I
    .registers 1

    .line 43
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    return p0
.end method

.method public static canChildBeDismissed(Landroid/view/View;)Z
    .registers 3

    .line 198
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 201
    :cond_6
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isBlockingHelperShowingAndTranslationFinished()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 205
    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasFinishedInitialization()Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_26

    .line 208
    :cond_21
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result p0

    return p0

    :cond_26
    :goto_26
    return v1
.end method

.method private childNeedsGapHeight(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILandroid/view/View;)Z
    .registers 5

    .line 486
    invoke-interface {p1, p4}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;->beginsSection(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_a

    if-lez p3, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private clampHunToMaxTranslation(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V
    .registers 6

    .line 591
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getMaxHeadsUpTranslation()F

    move-result p0

    .line 592
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v1

    add-float/2addr v0, v1

    .line 593
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result p1

    add-float/2addr v0, p1

    .line 594
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 595
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float p1, p0, p1

    .line 596
    iget p2, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 597
    iget p2, p3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float p2, p2

    sub-float/2addr p0, p1

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-int p0, p0

    iput p0, p3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 599
    iput p1, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    return-void
.end method

.method private clampHunToTop(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V
    .registers 5

    .line 581
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result p0

    .line 582
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result p1

    add-float/2addr p0, p1

    iget p1, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 581
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 583
    iget p1, p3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float p1, p1

    iget v0, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    sub-float v0, p0, v0

    sub-float/2addr p1, v0

    .line 584
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result p2

    int-to-float p2, p2

    .line 583
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 585
    iput p0, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    return-void
.end method

.method private clampPositionToShelf(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .registers 5

    .line 612
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 616
    :cond_7
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result p0

    .line 617
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    sub-int/2addr p0, v0

    .line 618
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isAppearing()Z

    move-result p3

    if-eqz p3, :cond_29

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isAboveShelf()Z

    move-result p3

    if-nez p3, :cond_29

    .line 620
    iget p3, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    int-to-float v0, p0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iput p3, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 622
    :cond_29
    iget p3, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    int-to-float p0, p0

    invoke-static {p3, p0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    iput p3, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 623
    iget p3, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    cmpl-float p0, p3, p0

    if-ltz p0, :cond_4f

    .line 624
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isExpandAnimationRunning()Z

    move-result p0

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_48

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasExpandingChild()Z

    move-result p0

    if-nez p0, :cond_48

    move p0, p3

    goto :goto_49

    :cond_48
    move p0, v0

    :goto_49
    iput-boolean p0, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 625
    iput-boolean p3, p2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 626
    iput-boolean v0, p2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    :cond_4f
    return-void
.end method

.method private getNotificationChildrenStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .registers 6

    .line 126
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, p0, :cond_1d

    .line 128
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 129
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_1a

    .line 130
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 131
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateChildrenStates(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1d
    return-void
.end method

.method private getPaddingForValue(Ljava/lang/Float;)F
    .registers 4

    if-nez p1, :cond_6

    .line 337
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float p0, p0

    return p0

    .line 338
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1e

    .line 339
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIncreasedPaddingBetweenElements:I

    int-to-float p0, p0

    .line 342
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 339
    invoke-static {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p0

    return p0

    .line 344
    :cond_1e
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float p0, p0

    const/high16 v0, 0x3f800000  # 1.0f

    .line 347
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float/2addr p1, v0

    .line 344
    invoke-static {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p0

    return p0
.end method

.method private initAlgorithmState(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    move-object/from16 v3, p3

    .line 237
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v4

    .line 239
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result v5

    .line 243
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    float-to-int v4, v5

    .line 244
    iput v4, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    .line 251
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 252
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 253
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 254
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 257
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 258
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->hasPulsingNotifications()Z

    move-result v5

    if-eqz v5, :cond_39

    const/4 v5, 0x1

    goto :goto_3c

    :cond_39
    move v5, v2

    goto :goto_3c

    :cond_3b
    move v5, v4

    :goto_3c
    move v7, v2

    const/4 v8, 0x0

    :goto_3e
    if-ge v2, v4, :cond_fa

    move-object/from16 v9, p1

    .line 271
    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 272
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_f6

    .line 273
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v11

    if-ne v10, v11, :cond_58

    goto/16 :goto_f6

    :cond_58
    if-lt v2, v5, :cond_5b

    const/4 v8, 0x0

    .line 280
    :cond_5b
    invoke-direct {v0, v1, v7, v10}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateNotGoneIndex(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    move-result v7

    .line 281
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v11

    const/4 v13, 0x0

    cmpl-float v14, v11, v13

    if-eqz v14, :cond_aa

    .line 283
    iget-object v15, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v15, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v8, :cond_c1

    .line 285
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 286
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v15

    if-eqz v6, :cond_a0

    .line 288
    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v12

    if-lez v14, :cond_90

    .line 290
    invoke-static {v12, v15, v11}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v15

    goto :goto_a0

    .line 294
    :cond_90
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpl-float v11, v11, v13

    if-lez v11, :cond_a0

    .line 298
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 295
    invoke-static {v15, v12, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v15

    .line 301
    :cond_a0
    :goto_a0
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c1

    :cond_aa
    if-eqz v8, :cond_c1

    .line 306
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v6

    .line 307
    iget-object v11, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v11, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_c1
    :goto_c1
    instance-of v6, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v6, :cond_f5

    .line 310
    move-object v6, v10

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 313
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v8

    .line 314
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v6

    if-eqz v6, :cond_f5

    if-eqz v8, :cond_f5

    .line 315
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d8
    :goto_d8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 316
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_d8

    .line 317
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v8

    .line 318
    iput v7, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_d8

    :cond_f5
    move-object v8, v10

    :cond_f6
    :goto_f6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3e

    .line 327
    :cond_fa
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpandingNotification()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    if-eqz v0, :cond_118

    .line 329
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v2

    if-eqz v2, :cond_111

    .line 330
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_119

    .line 331
    :cond_111
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_119

    :cond_118
    const/4 v0, -0x1

    .line 328
    :goto_119
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->access$002(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;I)I

    return-void
.end method

.method private initConstants(Landroid/content/Context;)V
    .registers 4

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 75
    sget v0, Lcom/android/systemui/R$dimen;->notification_divider_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    .line 77
    sget v0, Lcom/android/systemui/R$dimen;->notification_divider_height_increased:I

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIncreasedPaddingBetweenElements:I

    .line 79
    sget v0, Lcom/android/systemui/R$dimen;->notification_min_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mCollapsedSize:I

    .line 80
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mStatusBarHeight:I

    .line 81
    sget v0, Lcom/android/systemui/R$bool;->config_clipNotificationScrollToTop:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mClipNotificationScrollToTop:Z

    .line 82
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mStatusBarHeight:I

    sget v1, Lcom/android/systemui/R$dimen;->heads_up_status_bar_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    .line 84
    sget v0, Lcom/android/systemui/R$dimen;->heads_up_pinned_elevation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPinnedZTranslationExtra:I

    .line 86
    sget v0, Lcom/android/systemui/R$dimen;->notification_section_divider_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeight:I

    return-void
.end method

.method private resetChildViewStates()V
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 119
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 120
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->resetViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method private updateClipping(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .registers 15

    .line 160
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v0

    .line 161
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpandAnimationTopChange()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, v0

    goto :goto_18

    :cond_17
    move p2, v1

    .line 164
    :goto_18
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v1

    move v5, v2

    move v1, v3

    :goto_23
    if-ge v1, v0, :cond_81

    .line 167
    iget-object v6, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 168
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v7

    .line 169
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    move-result v8

    if-eqz v8, :cond_3b

    iget-boolean v8, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-eqz v8, :cond_3f

    .line 170
    :cond_3b
    invoke-static {p2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 172
    :cond_3f
    iget v8, v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 173
    iget v9, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v9, v9

    add-float/2addr v9, v8

    .line 175
    instance-of v10, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v10, :cond_54

    move-object v10, v6

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 176
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v10

    if-eqz v10, :cond_54

    move v10, v2

    goto :goto_55

    :cond_54
    move v10, v3

    .line 177
    :goto_55
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mClipNotificationScrollToTop:Z

    if-eqz v11, :cond_6b

    iget-boolean v11, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    if-eqz v11, :cond_61

    if-eqz v10, :cond_6b

    if-nez v5, :cond_6b

    :cond_61
    cmpg-float v11, v8, v4

    if-gez v11, :cond_6b

    sub-float v11, v4, v8

    float-to-int v11, v11

    .line 182
    iput v11, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    goto :goto_6d

    .line 184
    :cond_6b
    iput v3, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    :goto_6d
    if-eqz v10, :cond_70

    move v5, v3

    .line 189
    :cond_70
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isTransparent()Z

    move-result v6

    if-nez v6, :cond_7e

    if-eqz v10, :cond_79

    goto :goto_7a

    :cond_79
    move v8, v9

    .line 192
    :goto_7a
    invoke-static {v4, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :cond_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_81
    return-void
.end method

.method private updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .registers 12

    .line 216
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDimmed()Z

    move-result p0

    .line 217
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHideSensitive()Z

    move-result v0

    .line 218
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v1

    .line 219
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_3f

    .line 221
    iget-object v5, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 222
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v6

    .line 223
    iput-boolean p0, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    .line 224
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    if-ne v1, v5, :cond_2a

    const/4 v5, 0x1

    goto :goto_2b

    :cond_2a
    move v5, v3

    :goto_2b
    if-eqz p0, :cond_3c

    if-eqz v5, :cond_3c

    .line 227
    iget v5, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    const/high16 v7, 0x40000000  # 2.0f

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getZDistanceBetweenElements()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    add-float/2addr v5, v8

    iput v5, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_3f
    return-void
.end method

.method private updateHeadsUpStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .registers 15

    .line 518
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_a
    if-ge v3, v0, :cond_d8

    .line 521
    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 522
    instance-of v6, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v6, :cond_1a

    goto/16 :goto_d4

    .line 525
    :cond_1a
    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 526
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v6

    if-nez v6, :cond_24

    goto/16 :goto_d4

    .line 529
    :cond_24
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v4, :cond_38

    .line 530
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mustStayOnScreen()Z

    move-result v8

    if-eqz v8, :cond_38

    iget-boolean v8, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-nez v8, :cond_38

    .line 532
    iput v7, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    move-object v4, v5

    :cond_38
    if-ne v4, v5, :cond_3b

    goto :goto_3c

    :cond_3b
    move v7, v2

    .line 535
    :goto_3c
    iget v8, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v9, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 536
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v9, :cond_66

    .line 537
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mustStayOnScreen()Z

    move-result v9

    if-eqz v9, :cond_66

    iget-boolean v9, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-nez v9, :cond_66

    .line 538
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result v9

    if-nez v9, :cond_66

    .line 540
    invoke-direct {p0, p2, v5, v6}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->clampHunToTop(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V

    if-nez v3, :cond_66

    .line 541
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v9

    if-eqz v9, :cond_66

    .line 543
    invoke-direct {p0, p2, v5, v6}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->clampHunToMaxTranslation(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V

    .line 544
    iput-boolean v2, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 548
    :cond_66
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v9

    if-eqz v9, :cond_cc

    .line 549
    iget v9, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v10, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 550
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v9

    iget v10, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 551
    iput-boolean v2, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-nez v4, :cond_88

    move-object v9, v1

    goto :goto_8c

    .line 553
    :cond_88
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v9

    :goto_8c
    if-eqz v9, :cond_b6

    if-nez v7, :cond_b6

    .line 554
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v10, :cond_9e

    iget v10, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v11, v9, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    cmpl-float v8, v8, v10

    if-lez v8, :cond_b6

    .line 558
    :cond_9e
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v8

    iput v8, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 559
    iget v8, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v9, v9, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 569
    :cond_b6
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-nez v8, :cond_cc

    if-eqz v7, :cond_cc

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result v7

    if-lez v7, :cond_cc

    .line 570
    iget v7, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 573
    :cond_cc
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 574
    iput-boolean v2, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    :cond_d4
    :goto_d4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    :cond_d8
    return-void
.end method

.method private updateNotGoneIndex(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/notification/row/ExpandableView;)I
    .registers 4

    .line 353
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object p0

    .line 354
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 355
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method private updatePositionsForState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .registers 12

    .line 382
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    neg-int v0, v0

    int-to-float v0, v0

    .line 383
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v7, v0

    :goto_c
    if-ge v2, v1, :cond_1a

    const/4 v8, 0x0

    move-object v3, p0

    move v4, v2

    move-object v5, p1

    move-object v6, p2

    .line 385
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateChild(ILcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;FZ)F

    move-result v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1a
    return-void
.end method

.method private updatePulsingStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .registers 7

    .line 500
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, p0, :cond_37

    .line 502
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 503
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v3, :cond_17

    goto :goto_34

    .line 506
    :cond_17
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 507
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result v3

    if-nez v3, :cond_34

    if-nez v1, :cond_2e

    .line 508
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_34

    .line 511
    :cond_2e
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v2

    .line 512
    iput-boolean v0, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    :cond_34
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_37
    return-void
.end method

.method private updateShelfState(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .registers 2

    .line 152
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateState(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    :cond_9
    return-void
.end method

.method private updateSpeedBumpState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .registers 7

    .line 138
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 139
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getSpeedBumpIndex()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, p0, :cond_24

    .line 141
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 142
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v2

    if-lt v1, p2, :cond_1e

    const/4 v3, 0x1

    goto :goto_1f

    :cond_1e
    move v3, v0

    .line 146
    :goto_1f
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_24
    return-void
.end method

.method private updateZValuesForState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .registers 5

    .line 647
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-ltz v0, :cond_12

    .line 650
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateChildZValue(IFLcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)F

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_12
    return-void
.end method


# virtual methods
.method public getHeadsupInset()F
    .registers 1

    .line 767
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    return p0
.end method

.method protected getMaxAllowedChildHeight(Landroid/view/View;)I
    .registers 3

    .line 631
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_b

    .line 632
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 633
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p0

    return p0

    :cond_b
    if-nez p1, :cond_10

    .line 635
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mCollapsedSize:I

    goto :goto_14

    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_14
    return p0
.end method

.method protected getPaddingAfterChild(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I
    .registers 3

    .line 495
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->getPaddingAfterChild(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    move-result p0

    return p0
.end method

.method public initView(Landroid/content/Context;)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->initConstants(Landroid/content/Context;)V

    return-void
.end method

.method public resetViewStates(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->resetChildViewStates()V

    .line 100
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->initAlgorithmState(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 102
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updatePositionsForState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 104
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateZValuesForState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 106
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateHeadsUpStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 107
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updatePulsingStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 110
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateClipping(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 111
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateSpeedBumpState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateShelfState(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 113
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getNotificationChildrenStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .registers 2

    .line 763
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    return-void
.end method

.method public setIsExpanded(Z)V
    .registers 2

    .line 706
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    return-void
.end method

.method protected updateChild(ILcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;FZ)F
    .registers 21

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 414
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 416
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getSectionProvider()Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;

    move-result-object v4

    invoke-direct {p0, v4, v2, v1, v3}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->childNeedsGapHeight(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILandroid/view/View;)Z

    move-result v4

    .line 417
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v5

    const/4 v6, 0x0

    .line 418
    iput v6, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    if-eqz v4, :cond_26

    if-nez p5, :cond_26

    .line 421
    iget v7, v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeight:I

    int-to-float v7, v7

    add-float v7, p4, v7

    goto :goto_28

    :cond_26
    move/from16 v7, p4

    .line 424
    :goto_28
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getPaddingAfterChild(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    move-result v8

    .line 425
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eqz p5, :cond_42

    add-int v12, v9, v8

    int-to-float v12, v12

    sub-float v12, v7, v12

    .line 427
    iput v12, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    cmpg-float v7, v7, v11

    if-gtz v7, :cond_44

    .line 429
    iput v10, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    goto :goto_44

    .line 432
    :cond_42
    iput v7, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 434
    :cond_44
    :goto_44
    instance-of v7, v3, Lcom/android/systemui/statusbar/notification/row/FooterView;

    .line 435
    instance-of v12, v3, Lcom/android/systemui/statusbar/EmptyShadeView;

    const/4 v13, 0x4

    .line 437
    iput v13, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 438
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v13

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result v14

    add-float/2addr v13, v14

    .line 439
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->getIndexOfExpandingNotification()I

    move-result v2

    if-gt v1, v2, :cond_60

    .line 440
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpandAnimationTopChange()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v13, v2

    .line 442
    :cond_60
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    move-result v2

    if-eqz v2, :cond_7c

    iget v2, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    cmpl-float v14, v2, v11

    if-ltz v14, :cond_7c

    .line 445
    iget v14, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v14, v14

    add-float/2addr v2, v14

    add-float/2addr v2, v13

    .line 446
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getMaxHeadsUpTranslation()F

    move-result v14

    cmpg-float v2, v2, v14

    if-gez v2, :cond_7a

    const/4 v6, 0x1

    :cond_7a
    iput-boolean v6, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    :cond_7c
    if-eqz v7, :cond_8d

    .line 449
    iget v2, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 450
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result v3

    sub-int/2addr v3, v9

    int-to-float v3, v3

    .line 449
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    goto :goto_b5

    :cond_8d
    if-eqz v12, :cond_a0

    .line 452
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result v2

    sub-int/2addr v2, v9

    int-to-float v2, v2

    .line 453
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result v3

    const/high16 v6, 0x3e800000  # 0.25f

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    goto :goto_b5

    .line 456
    :cond_a0
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v2

    if-nez v2, :cond_b0

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->isHeadsUpGoingAway()Z

    move-result v2

    if-eqz v2, :cond_b5

    :cond_b0
    move-object/from16 v2, p3

    .line 457
    invoke-direct {p0, v3, v5, v2}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->clampPositionToShelf(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    :cond_b5
    :goto_b5
    if-eqz p5, :cond_c0

    .line 463
    iget v2, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    if-eqz v4, :cond_cc

    .line 465
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeight:I

    int-to-float v0, v0

    sub-float/2addr v2, v0

    goto :goto_cc

    .line 468
    :cond_c0
    iget v0, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    int-to-float v2, v9

    add-float/2addr v0, v2

    int-to-float v2, v8

    add-float/2addr v2, v0

    cmpg-float v0, v2, v11

    if-gtz v0, :cond_cc

    .line 470
    iput v10, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 473
    :cond_cc
    :goto_cc
    iget v0, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    if-nez v0, :cond_e6

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to assign location for child "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackScrollAlgorithm"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_e6
    iget v0, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    add-float/2addr v0, v13

    iput v0, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    return v2
.end method

.method protected updateChildZValue(IFLcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)F
    .registers 12

    .line 658
    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 659
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    .line 660
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getZDistanceBetweenElements()I

    move-result v1

    .line 661
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result v2

    int-to-float v2, v2

    .line 662
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    if-eqz v3, :cond_58

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-nez v3, :cond_58

    .line 663
    invoke-virtual {p4, p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozingAndNotPulsing(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v3

    if-nez v3, :cond_58

    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 664
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v5

    .line 665
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result v6

    add-float/2addr v5, v6

    cmpg-float v3, v3, v5

    if-gez v3, :cond_58

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_3d

    add-float/2addr p2, v4

    goto :goto_52

    .line 669
    :cond_3d
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result p1

    .line 670
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result p4

    add-float/2addr p1, p4

    iget p4, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    sub-float/2addr p1, p4

    .line 671
    iget p4, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float p4, p4

    div-float/2addr p1, p4

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    add-float/2addr p2, p1

    :goto_52
    int-to-float p1, v1

    mul-float/2addr p1, p2

    add-float/2addr v2, p1

    .line 673
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    goto :goto_a8

    :cond_58
    if-nez p1, :cond_a6

    .line 675
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isAboveShelf()Z

    move-result p1

    if-nez p1, :cond_66

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result p1

    if-eqz p1, :cond_a6

    .line 678
    :cond_66
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object p1

    if-nez p1, :cond_6e

    const/4 p1, 0x0

    goto :goto_76

    .line 679
    :cond_6e
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p1

    .line 680
    :goto_76
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result v3

    sub-int/2addr v3, p1

    int-to-float v3, v3

    .line 681
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v5

    add-float/2addr v3, v5

    .line 682
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result p4

    add-float/2addr v3, p4

    .line 683
    iget p4, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getPinnedHeadsUpHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v5, v5

    add-float/2addr p4, v5

    cmpl-float v5, v3, p4

    if-lez v5, :cond_99

    .line 686
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    goto :goto_a8

    :cond_99
    sub-float/2addr p4, v3

    int-to-float p1, p1

    div-float/2addr p4, p1

    .line 689
    invoke-static {p4, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p4, v1

    mul-float/2addr p1, p4

    add-float/2addr v2, p1

    .line 690
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    goto :goto_a8

    .line 693
    :cond_a6
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 700
    :goto_a8
    iget p1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getHeaderVisibleAmount()F

    move-result p3

    sub-float/2addr v4, p3

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPinnedZTranslationExtra:I

    int-to-float p0, p0

    mul-float/2addr v4, p0

    add-float/2addr p1, v4

    iput p1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    return p2
.end method
