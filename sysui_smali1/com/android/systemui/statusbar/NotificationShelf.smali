.class public Lcom/android/systemui/statusbar/NotificationShelf;
.super Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
.source "NotificationShelf.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;
    }
.end annotation


# static fields
.field private static final ICON_ANMATIONS_WHILE_SCROLLING:Z

.field private static final TAG_CONTINUOUS_CLIPPING:I

.field private static final USE_ANIMATIONS_WHEN_OPENING:Z


# instance fields
.field private mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field private mAnimationsEnabled:Z

.field private mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mClipRect:Landroid/graphics/Rect;

.field private mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mCutoutHeight:I

.field private mFirstElementRoundness:F

.field private mGapHeight:I

.field private mHasItemsInStableShelf:Z

.field private mHiddenShelfIconSize:F

.field private mHideBackground:Z

.field private mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private mIconAppearTopPadding:I

.field private mIconSize:I

.field private mInteractive:Z

.field private mMaxLayoutHeight:I

.field private mMaxShelfEnd:F

.field private mNoAnimationsInThisFrame:Z

.field private mNotGoneIndex:I

.field private mOpenedAmount:F

.field private mPaddingBetweenElements:I

.field private mRelativeOffset:I

.field private mScrollFastThreshold:I

.field private mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mShowNotificationShelf:Z

.field private mStatusBarHeight:I

.field private mStatusBarPaddingStart:I

.field private mStatusBarState:I

.field private mTmp:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x1

    const-string v1, "debug.icon_opening_animations"

    .line 66
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    const-string v1, "debug.icon_scroll_animations"

    .line 68
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    .line 69
    sget v0, Lcom/android/systemui/R$id;->continuous_clipping_tag:I

    sput v0, Lcom/android/systemui/statusbar/NotificationShelf;->TAG_CONTINUOUS_CLIPPING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 74
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    .line 98
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object p0
.end method

.method static synthetic access$400()I
    .registers 1

    .line 62
    sget v0, Lcom/android/systemui/statusbar/NotificationShelf;->TAG_CONTINUOUS_CLIPPING:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconClipAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/NotificationShelf;)Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/NotificationShelf;F)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setOpenedAmount(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/NotificationShelf;Z)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setHasItemsInStableShelf(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/NotificationShelf;)Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    return p0
.end method

.method private clipTransientViews()V
    .registers 5

    const/4 v0, 0x0

    .line 409
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTransientViewCount()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 410
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getTransientView(I)Landroid/view/View;

    move-result-object v1

    .line 411
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_1e

    .line 412
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 413
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    const/4 v3, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;FI)I

    goto :goto_25

    :cond_1e
    const-string v1, "NotificationShelf"

    const-string v2, "NotificationShelf.clipTransientViews(): Trying to clip non-row transient view"

    .line 415
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_28
    return-void
.end method

.method private getFullyClosedTranslation()F
    .registers 2

    .line 764
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    sub-int/2addr v0, p0

    neg-int p0, v0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    return p0
.end method

.method private getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .registers 2

    .line 760
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object p0

    return-object p0
.end method

.method private initDimens()V
    .registers 5

    .line 144
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 145
    sget v1, Lcom/android/systemui/R$dimen;->notification_icon_appear_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    .line 146
    sget v1, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    .line 147
    sget v1, Lcom/android/systemui/R$dimen;->status_bar_padding_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarPaddingStart:I

    .line 148
    sget v1, Lcom/android/systemui/R$dimen;->notification_divider_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    .line 150
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 151
    sget v2, Lcom/android/systemui/R$dimen;->notification_shelf_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 152
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    sget v1, Lcom/android/systemui/R$dimen;->shelf_icon_container_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 155
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 156
    sget v1, Lcom/android/systemui/R$dimen;->scroll_fast_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    .line 157
    sget v1, Lcom/android/systemui/R$bool;->config_showNotificationShelf:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    const v1, 0x1050212

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconSize:I

    .line 159
    sget v1, Lcom/android/systemui/R$dimen;->hidden_shelf_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHiddenShelfIconSize:F

    .line 160
    sget v1, Lcom/android/systemui/R$dimen;->qs_notification_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mGapHeight:I

    .line 162
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-nez v0, :cond_72

    const/16 v0, 0x8

    .line 163
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_72
    return-void
.end method

.method private setFirstElementRoundness(F)V
    .registers 3

    .line 422
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mFirstElementRoundness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_c

    .line 423
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mFirstElementRoundness:F

    const/4 v0, 0x0

    .line 424
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setTopRoundness(FZ)Z

    :cond_c
    return-void
.end method

.method private setHasItemsInStableShelf(Z)V
    .registers 3

    .line 876
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-eq v0, p1, :cond_9

    .line 877
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    .line 878
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    :cond_9
    return-void
.end method

.method private setHideBackground(Z)V
    .registers 3

    .line 777
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eq v0, p1, :cond_c

    .line 778
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    .line 779
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    .line 780
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->updateOutline()V

    :cond_c
    return-void
.end method

.method private setIconTransformationAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;FFZZ)V
    .registers 16

    .line 683
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 684
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v1

    .line 686
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationIcon()Landroid/view/View;

    move-result-object v2

    .line 687
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getContentTranslation()F

    move-result v4

    add-float/2addr v3, v4

    .line 688
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_27

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isTransformingIntoShelf()Z

    move-result v4

    if-nez v4, :cond_27

    move v4, v6

    goto :goto_28

    :cond_27
    move v4, v5

    :goto_28
    if-eqz p4, :cond_32

    if-nez v4, :cond_32

    .line 694
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p4

    sub-float v3, p4, p3

    :cond_32
    const/4 p3, 0x0

    if-eqz v2, :cond_3f

    .line 699
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getRelativeTopPadding(Landroid/view/View;)I

    move-result p4

    .line 700
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    goto :goto_42

    .line 702
    :cond_3f
    iget p4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    move v2, p3

    :goto_42
    int-to-float p4, p4

    add-float/2addr v3, p4

    .line 705
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr p4, v7

    .line 706
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result v7

    if-eqz v7, :cond_59

    iget v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHiddenShelfIconSize:F

    goto :goto_5c

    :cond_59
    iget v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconSize:I

    int-to-float v7, v7

    .line 707
    :goto_5c
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v9

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000  # 2.0f

    div-float/2addr v8, v9

    add-float/2addr p4, v8

    sub-float/2addr v3, p4

    .line 708
    invoke-static {v3, p3, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p4

    .line 712
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v3

    mul-float/2addr v7, v3

    .line 714
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isShowingIcon()Z

    move-result v3

    xor-int/2addr v3, v6

    const/high16 v8, 0x3f800000  # 1.0f

    if-eqz v3, :cond_82

    div-float v2, v7, v9

    move v9, p2

    goto :goto_83

    :cond_82
    move v9, v8

    .line 721
    :goto_83
    invoke-static {v2, v7, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    if-eqz v1, :cond_113

    div-float/2addr v2, v7

    .line 724
    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    .line 725
    iget v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    cmpl-float p2, p2, p3

    if-nez p2, :cond_9c

    .line 726
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_9c

    move p2, v6

    goto :goto_9d

    :cond_9c
    move p2, v5

    :goto_9d
    iput-boolean p2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 727
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDrawingAppearAnimation()Z

    move-result p2

    if-eqz p2, :cond_ad

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result p2

    if-nez p2, :cond_ad

    move p2, v6

    goto :goto_ae

    :cond_ad
    move p2, v5

    :goto_ae
    if-eqz p2, :cond_b4

    .line 729
    iput-boolean v6, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 730
    iput p3, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 732
    :cond_b4
    iput v9, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 733
    iput p4, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    if-eqz v4, :cond_c4

    .line 735
    iput v8, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 736
    iput v8, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 737
    iput v8, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    .line 738
    iput v8, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    .line 739
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 741
    :cond_c4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result p2

    if-nez p2, :cond_ed

    .line 742
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result p2

    if-nez p2, :cond_ed

    .line 743
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result p2

    if-nez p2, :cond_f7

    if-eqz p5, :cond_de

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result p2

    if-nez p2, :cond_ed

    .line 744
    :cond_de
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result p3

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_f7

    :cond_ed
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 745
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result p2

    if-nez p2, :cond_f7

    .line 746
    iput-boolean v6, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 748
    :cond_f7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    move-result p0

    .line 749
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContrastedStaticDrawableColor(I)I

    move-result p0

    if-nez v3, :cond_111

    if-eqz p0, :cond_111

    .line 751
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/NotificationHeaderView;->getOriginalIconColor()I

    move-result p1

    .line 752
    iget p2, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    invoke-static {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result p0

    .line 755
    :cond_111
    iput p0, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    :cond_113
    return-void
.end method

.method private setOpenedAmount(F)V
    .registers 6

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_f

    .line 829
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mOpenedAmount:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNoAnimationsInThisFrame:Z

    .line 830
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mOpenedAmount:F

    .line 831
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPanelFullWidth()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_24
    move p1, v0

    .line 835
    :cond_25
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    .line 836
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 837
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    sub-int v0, v1, v0

    .line 839
    :cond_3a
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 840
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 841
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    .line 842
    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 839
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    float-to-int v1, v1

    .line 843
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualLayoutWidth(I)V

    .line 844
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->hasOverflow()Z

    move-result v1

    .line 845
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    if-nez v1, :cond_6e

    .line 849
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getNoOverflowExtraPadding()I

    move-result v1

    goto :goto_74

    .line 852
    :cond_6e
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPartialOverflowExtraPadding()I

    move-result v1

    :goto_74
    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 854
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 855
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    int-to-float v2, v2

    .line 854
    invoke-static {v1, v2, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    .line 857
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualPaddingEnd(F)V

    int-to-float v0, v0

    .line 858
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 859
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    int-to-float v1, v1

    .line 858
    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    .line 860
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualPaddingStart(F)V

    .line 861
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setOpenedAmount(F)V

    return-void
.end method

.method private updateContinuousClipping(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 7

    .line 446
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 447
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v1

    if-nez v1, :cond_18

    move v1, v2

    goto :goto_19

    :cond_18
    move v1, v3

    .line 448
    :goto_19
    sget v4, Lcom/android/systemui/statusbar/NotificationShelf;->TAG_CONTINUOUS_CLIPPING:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_22

    goto :goto_23

    :cond_22
    move v2, v3

    :goto_23
    if-eqz v1, :cond_40

    if-nez v2, :cond_40

    .line 450
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 451
    new-instance v2, Lcom/android/systemui/statusbar/NotificationShelf$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/systemui/statusbar/NotificationShelf$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 467
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 468
    new-instance p1, Lcom/android/systemui/statusbar/NotificationShelf$2;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationShelf$2;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 483
    sget p0, Lcom/android/systemui/statusbar/NotificationShelf;->TAG_CONTINUOUS_CLIPPING:I

    invoke-virtual {v0, p0, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_40
    return-void
.end method

.method private updateIconAppearance(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;FZZZZ)F
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 537
    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    return v3

    .line 543
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    .line 544
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v5

    iget v6, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    add-int/2addr v5, v6

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3fc00000  # 1.5f

    mul-float/2addr v6, v7

    const/high16 v8, 0x3f800000  # 1.0f

    .line 546
    invoke-static {v8, v7, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v7

    mul-float/2addr v6, v7

    int-to-float v7, v5

    .line 547
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    if-eqz p6, :cond_4e

    .line 549
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 550
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight()I

    move-result v7

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    .line 550
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :cond_4e
    int-to-float v7, v5

    add-float/2addr v7, v4

    const/high16 v9, -0x80000000

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz p5, :cond_c0

    .line 555
    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result v12

    if-nez v12, :cond_c0

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 556
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v12

    if-nez v12, :cond_c0

    iget-boolean v12, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-nez v12, :cond_c0

    .line 564
    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getIntrinsicPadding()I

    move-result v12

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-object/from16 v14, p1

    .line 565
    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    .line 566
    iget v13, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v15

    sub-int/2addr v13, v15

    int-to-float v13, v13

    cmpg-float v15, v12, v13

    if-gez v15, :cond_c2

    .line 567
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v15, v12

    cmpl-float v13, v15, v13

    if-ltz v13, :cond_c2

    .line 568
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v13

    cmpg-float v13, v13, v12

    if-gez v13, :cond_c2

    .line 569
    iput-boolean v11, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    .line 570
    iput v9, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    .line 572
    iget v13, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v15

    sub-int/2addr v13, v15

    int-to-float v13, v13

    sub-float/2addr v13, v12

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v15

    int-to-float v15, v15

    cmpg-float v13, v13, v15

    if-gez v13, :cond_b0

    move v13, v11

    goto :goto_b1

    :cond_b0
    move v13, v10

    :goto_b1
    if-nez v13, :cond_c2

    .line 577
    iget v13, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v15

    sub-int/2addr v13, v15

    int-to-float v13, v13

    sub-float/2addr v13, v12

    float-to-int v12, v13

    iput v12, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    goto :goto_c2

    :cond_c0
    move-object/from16 v14, p1

    .line 584
    :cond_c2
    :goto_c2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v12

    .line 585
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hasCustomTransformHeight()Z

    move-result v13

    if-eqz v13, :cond_cf

    .line 586
    iget v5, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    int-to-float v6, v5

    :cond_cf
    cmpl-float v7, v7, v12

    if-ltz v7, :cond_116

    .line 590
    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isUnlockHintRunning()Z

    move-result v7

    if-eqz v7, :cond_e1

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v7

    if-eqz v7, :cond_116

    :cond_e1
    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 591
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result v7

    if-nez v7, :cond_f5

    .line 592
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v7

    if-nez v7, :cond_116

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v7

    if-nez v7, :cond_116

    :cond_f5
    cmpg-float v3, v4, v12

    if-gez v3, :cond_117

    sub-float/2addr v12, v4

    int-to-float v3, v5

    div-float v3, v12, v3

    .line 595
    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 596
    sget-object v4, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 598
    invoke-static {v4, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    sub-float v1, v8, v1

    div-float/2addr v12, v6

    .line 603
    invoke-static {v8, v12}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v8, v3

    move v12, v1

    move v11, v10

    goto :goto_118

    :cond_116
    move v8, v3

    :cond_117
    move v12, v8

    :goto_118
    if-eqz v11, :cond_124

    if-nez p5, :cond_124

    .line 614
    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-eqz v1, :cond_124

    .line 615
    iput-boolean v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    .line 616
    iput v9, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    :cond_124
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move v3, v12

    move v4, v6

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 618
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconPositioning(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;FFFZZZZ)V

    return v12
.end method

.method private updateIconClipAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 6

    .line 429
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    .line 430
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v1

    if-eqz v1, :cond_18

    .line 432
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 434
    :cond_18
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 435
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    cmpg-float v2, v1, v0

    if-gez v2, :cond_51

    .line 436
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result p0

    if-nez p0, :cond_51

    sub-float/2addr v0, v1

    float-to-int p0, v0

    .line 438
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v1, p0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 439
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_55

    :cond_51
    const/4 p0, 0x0

    .line 441
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_55
    return-void
.end method

.method private updateIconPositioning(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;FFFZZZZ)V
    .registers 21

    move-object v0, p0

    move/from16 v5, p8

    .line 626
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 627
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v2

    if-nez v2, :cond_10

    return-void

    .line 631
    :cond_10
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_1e

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hasCustomTransformHeight()Z

    move-result v3

    if-nez v3, :cond_1e

    move v3, v6

    goto :goto_1f

    :cond_1e
    move v3, v4

    :goto_1f
    const/high16 v7, 0x3f000000  # 0.5f

    cmpl-float v7, p2, v7

    const/high16 v8, 0x3f800000  # 1.0f

    const/4 v9, 0x0

    if-lez v7, :cond_2a

    move v7, v8

    goto :goto_2b

    :cond_2a
    move v7, v9

    :goto_2b
    cmpl-float v10, v7, p3

    if-nez v10, :cond_7a

    if-nez p6, :cond_33

    if-eqz p7, :cond_37

    :cond_33
    if-nez v3, :cond_37

    move v10, v6

    goto :goto_38

    :cond_37
    move v10, v4

    .line 634
    :goto_38
    iput-boolean v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 635
    iget-boolean v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    if-nez v10, :cond_4b

    sget-boolean v10, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    if-nez v10, :cond_49

    cmpl-float v10, p3, v9

    if-nez v10, :cond_49

    if-eqz p5, :cond_49

    goto :goto_4b

    :cond_49
    move v10, v4

    goto :goto_4c

    :cond_4b
    :goto_4b
    move v10, v6

    :goto_4c
    iput-boolean v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 637
    sget-boolean v10, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    if-nez v10, :cond_60

    cmpl-float v10, p3, v9

    if-nez v10, :cond_60

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 638
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v10

    if-nez v10, :cond_60

    move v10, v6

    goto :goto_61

    :cond_60
    move v10, v4

    :goto_61
    iput-boolean v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useLinearTransitionAmount:Z

    .line 639
    iget v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    int-to-float v10, v10

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v11

    sub-float/2addr v10, v11

    .line 640
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    cmpl-float v10, v10, v9

    if-lez v10, :cond_77

    move v10, v6

    goto :goto_78

    :cond_77
    move v10, v4

    :goto_78
    iput-boolean v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    :cond_7a
    if-nez v3, :cond_91

    if-nez p6, :cond_8a

    if-eqz p7, :cond_91

    .line 642
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-eqz v3, :cond_91

    .line 643
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_91

    .line 644
    :cond_8a
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    .line 645
    iput-boolean v6, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 646
    iput-boolean v6, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 648
    :cond_91
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hasCustomTransformHeight()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 649
    iput-boolean v6, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 651
    :cond_99
    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-eqz v1, :cond_9f

    .line 652
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    .line 655
    :cond_9f
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    move-result v1

    if-eqz v1, :cond_b8

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v1

    if-nez v1, :cond_b8

    .line 656
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result v1

    if-eqz v1, :cond_b6

    goto :goto_d9

    :cond_b6
    move v8, v9

    goto :goto_d9

    :cond_b8
    if-nez v5, :cond_d8

    .line 657
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    if-eqz v1, :cond_d8

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-nez v1, :cond_d8

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useLinearTransitionAmount:Z

    if-eqz v1, :cond_c7

    goto :goto_d8

    .line 663
    :cond_c7
    iget v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_d3

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNoAnimationsInThisFrame:Z

    if-nez v1, :cond_d3

    move v1, v6

    goto :goto_d4

    :cond_d3
    move v1, v4

    :goto_d4
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    move v8, v7

    goto :goto_d9

    :cond_d8
    :goto_d8
    move v8, p2

    .line 667
    :goto_d9
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    if-eqz v1, :cond_e4

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-eqz v1, :cond_e2

    goto :goto_e4

    :cond_e2
    move v1, v8

    goto :goto_e5

    :cond_e4
    :goto_e4
    move v1, p3

    .line 669
    :goto_e5
    iput v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 670
    iput v7, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 671
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v1

    if-nez v1, :cond_fe

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result v1

    if-nez v1, :cond_fe

    if-nez v5, :cond_fb

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    if-eqz v1, :cond_fe

    :cond_fb
    move-object v1, p1

    move v9, p2

    goto :goto_ff

    :cond_fe
    move-object v1, p1

    .line 675
    :goto_ff
    invoke-virtual {p1, v9, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentTransformationAmount(FZ)V

    cmpl-float v2, v7, v8

    if-eqz v2, :cond_107

    move v4, v6

    :cond_107
    move-object v0, p0

    move-object v1, p1

    move v2, v8

    move/from16 v3, p4

    move/from16 v5, p8

    .line 676
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationShelf;->setIconTransformationAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;FFZZ)V

    return-void
.end method

.method private updateInteractiveness()V
    .registers 3

    .line 902
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    .line 903
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 904
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 905
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x4

    :goto_1e
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method private updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;FI)I
    .registers 9

    .line 493
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 494
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isPinned()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_18

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isHeadsUpAnimatingAway()Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_18
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 495
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozingAndNotPulsing(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v1

    if-nez v1, :cond_22

    move v1, v2

    goto :goto_23

    :cond_22
    move v1, v3

    .line 497
    :goto_23
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v4

    if-eqz v4, :cond_30

    if-nez p3, :cond_2e

    goto :goto_3e

    :cond_2e
    move v2, v3

    goto :goto_3e

    .line 500
    :cond_30
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result p3

    if-eqz p3, :cond_2e

    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result p3

    if-nez p3, :cond_2e

    :goto_3e
    cmpl-float p3, v0, p2

    if-lez p3, :cond_64

    if-nez v2, :cond_64

    .line 503
    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 504
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result p3

    if-nez p3, :cond_4e

    if-nez v1, :cond_64

    :cond_4e
    sub-float p2, v0, p2

    float-to-int p2, p2

    if-eqz v1, :cond_60

    .line 507
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 510
    :cond_60
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setClipBottomAmount(I)V

    goto :goto_67

    .line 512
    :cond_64
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setClipBottomAmount(I)V

    :goto_67
    if-eqz v2, :cond_70

    .line 515
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_70
    return v3
.end method

.method private updateRelativeOffset()V
    .registers 4

    .line 806
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 807
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    .line 808
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 809
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    aget v1, v2, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    return-void
.end method


# virtual methods
.method public bind(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .registers 3

    .line 139
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 140
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-void
.end method

.method public createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .registers 3

    .line 184
    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/NotificationShelf$1;)V

    return-object v0
.end method

.method protected getContentView()Landroid/view/View;
    .registers 1

    .line 175
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object p0
.end method

.method public getNotGoneIndex()I
    .registers 1

    .line 872
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    return p0
.end method

.method public getNotificationMergeSize()I
    .registers 1

    .line 768
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .registers 1

    .line 179
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object p0
.end method

.method public hasNoContentHeight()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isInteractive()Z
    .registers 1

    .line 911
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    return p0
.end method

.method protected needsOutline()Z
    .registers 2

    .line 786
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-nez v0, :cond_c

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->needsOutline()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4

    .line 814
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 821
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 822
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    if-gez v1, :cond_11

    goto :goto_16

    .line 823
    :cond_11
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p1

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p1, 0x0

    :goto_17
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCutoutHeight:I

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 127
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 128
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x3

    .line 129
    invoke-interface {v0, p0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 169
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 134
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 135
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 112
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onFinishInflate()V

    .line 113
    sget v0, Lcom/android/systemui/R$id;->content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 117
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipToActualHeight(Z)V

    .line 118
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 119
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIsStaticLayout(Z)V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 121
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setBottomRoundness(FZ)Z

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    .line 933
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 934
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    if-eqz v0, :cond_20

    .line 935
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 936
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    .line 939
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$string;->accessibility_overflow_action:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 940
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_20
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 796
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onLayout(ZIIII)V

    .line 797
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    .line 800
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 801
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    neg-int p3, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p2, p5, p3, p4, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 802
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 947
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    return-void
.end method

.method public onStateChanged(I)V
    .registers 2

    .line 897
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    .line 898
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    return-void
.end method

.method public onUiModeChanged()V
    .registers 1

    .line 951
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundColors()V

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .registers 2

    .line 919
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    if-nez p1, :cond_a

    .line 922
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    :cond_a
    return-void
.end method

.method public setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .registers 2

    .line 891
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 892
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public setFakeShadowIntensity(FFII)V
    .registers 6

    .line 524
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-nez v0, :cond_5

    const/4 p1, 0x0

    .line 527
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setFakeShadowIntensity(FFII)V

    return-void
.end method

.method public setKeyguardBypassController(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .registers 2

    .line 989
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-void
.end method

.method public setMaxLayoutHeight(I)V
    .registers 2

    .line 865
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    return-void
.end method

.method public setMaxShelfEnd(F)V
    .registers 2

    .line 915
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxShelfEnd:F

    return-void
.end method

.method protected shouldHideBackground()Z
    .registers 2

    .line 791
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public updateAppearance()V
    .registers 34

    move-object/from16 v7, p0

    .line 235
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-nez v0, :cond_7

    return-void

    .line 239
    :cond_7
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 240
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v8

    .line 242
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v9

    const/4 v10, -0x1

    .line 243
    iput v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 244
    iget v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v1, v8, v0

    const/high16 v11, 0x3f800000  # 1.0f

    const/4 v12, 0x0

    if-ltz v1, :cond_38

    sub-float v0, v8, v0

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 248
    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v13, v0

    goto :goto_39

    :cond_38
    move v13, v12

    .line 254
    :goto_39
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eqz v0, :cond_4c

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$200(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)Z

    move-result v0

    if-nez v0, :cond_4c

    const/16 v16, 0x1

    goto :goto_4e

    :cond_4c
    const/16 v16, 0x0

    .line 260
    :goto_4e
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getCurrentScrollVelocity()F

    move-result v0

    .line 261
    iget v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_78

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 262
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v1

    if-eqz v1, :cond_75

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 263
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpandingVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_75

    goto :goto_78

    :cond_75
    const/16 v17, 0x0

    goto :goto_7a

    :cond_78
    :goto_78
    const/16 v17, 0x1

    :goto_7a
    cmpl-float v0, v0, v12

    if-lez v0, :cond_81

    const/16 v18, 0x1

    goto :goto_83

    :cond_81
    const/16 v18, 0x0

    .line 265
    :goto_83
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v0

    if-eqz v0, :cond_96

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 266
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPanelTracking()Z

    move-result v0

    if-nez v0, :cond_96

    const/16 v19, 0x1

    goto :goto_98

    :cond_96
    const/16 v19, 0x0

    .line 267
    :goto_98
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result v6

    const/4 v0, 0x0

    move-object/from16 v22, v0

    move v3, v12

    move v11, v3

    move/from16 v20, v11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x0

    .line 273
    :goto_ad
    iget-object v12, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/16 v15, 0x8

    if-ge v5, v12, :cond_270

    .line 274
    iget-object v12, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v12, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 276
    instance-of v10, v12, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    if-eqz v10, :cond_24c

    .line 277
    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v10

    if-eq v10, v15, :cond_24c

    if-ne v12, v7, :cond_cd

    goto/16 :goto_24c

    .line 281
    :cond_cd
    move-object v10, v12

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 283
    invoke-static {v10}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getFinalTranslationZ(Landroid/view/View;)F

    move-result v15

    move/from16 v23, v1

    int-to-float v1, v6

    cmpl-float v1, v15, v1

    if-gtz v1, :cond_e4

    .line 284
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_e2

    goto :goto_e4

    :cond_e2
    const/4 v15, 0x0

    goto :goto_e5

    :cond_e4
    :goto_e4
    const/4 v15, 0x1

    :goto_e5
    if-ne v12, v9, :cond_ea

    const/16 v24, 0x1

    goto :goto_ec

    :cond_ea
    const/16 v24, 0x0

    .line 286
    :goto_ec
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v25

    if-eqz v24, :cond_f8

    .line 287
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v1

    if-eqz v1, :cond_126

    :cond_f8
    if-nez v15, :cond_126

    if-eqz v16, :cond_fd

    goto :goto_126

    .line 290
    :cond_fd
    iget v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    int-to-float v1, v1

    sub-float v1, v8, v1

    sub-float v12, v1, v25

    .line 292
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isBelowSpeedBump()Z

    move-result v26

    if-nez v26, :cond_121

    move/from16 v26, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotificationMergeSize()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v12, v1

    if-gtz v1, :cond_123

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotificationMergeSize()I

    move-result v1

    int-to-float v1, v1

    add-float v1, v25, v1

    .line 295
    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_12c

    :cond_121
    move/from16 v26, v1

    :cond_123
    move/from16 v1, v26

    goto :goto_12c

    .line 288
    :cond_126
    :goto_126
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v8

    .line 299
    :goto_12c
    invoke-direct {v7, v10, v1, v2}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;FI)I

    move-result v1

    .line 300
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 304
    instance-of v0, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_1ed

    .line 305
    move-object v1, v10

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-object/from16 v0, p0

    move-object/from16 v26, v1

    move/from16 v32, v23

    move-object/from16 v23, v9

    move/from16 v9, v32

    move/from16 v27, v12

    move v12, v2

    move v2, v13

    move/from16 v28, v13

    move v13, v3

    move/from16 v3, v18

    move/from16 v29, v13

    move v13, v4

    move/from16 v4, v17

    move/from16 v30, v5

    move/from16 v5, v19

    move/from16 v31, v6

    move/from16 v6, v24

    .line 307
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconAppearance(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;FZZZZ)F

    move-result v0

    add-float v20, v20, v0

    .line 311
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    move-result v1

    cmpl-float v2, v25, v8

    if-ltz v2, :cond_177

    .line 312
    iget v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_178

    .line 313
    iput v12, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 314
    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setTintColor(I)V

    .line 315
    invoke-virtual {v7, v14, v11}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    goto :goto_17e

    :cond_177
    const/4 v3, -0x1

    .line 317
    :cond_178
    iget v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    if-ne v2, v3, :cond_17e

    move v11, v0

    move v14, v9

    .line 322
    :cond_17e
    :goto_17e
    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result v2

    if-eqz v2, :cond_198

    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 323
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_196

    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v2

    if-nez v2, :cond_198

    :cond_196
    const/4 v2, 0x1

    goto :goto_199

    :cond_198
    const/4 v2, 0x0

    :goto_199
    if-eqz v24, :cond_1aa

    if-eqz v2, :cond_1aa

    if-nez v21, :cond_1a1

    move v2, v1

    goto :goto_1a3

    :cond_1a1
    move/from16 v2, v21

    .line 328
    :goto_1a3
    invoke-virtual {v10, v2, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    move/from16 v21, v2

    const/4 v2, 0x0

    goto :goto_1b1

    :cond_1aa
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 331
    invoke-virtual {v10, v2, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    move/from16 v21, v1

    :goto_1b1
    if-nez v12, :cond_1b9

    if-nez v15, :cond_1b6

    goto :goto_1b9

    :cond_1b6
    move-object/from16 v0, v26

    goto :goto_1be

    :cond_1b9
    :goto_1b9
    move-object/from16 v0, v26

    .line 334
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAboveShelf(Z)V

    :goto_1be
    if-nez v12, :cond_1e5

    .line 337
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 338
    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v0

    if-eqz v0, :cond_1e5

    .line 342
    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1e5

    .line 344
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 345
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentTopRoundness()F

    move-result v2

    move v4, v0

    move v3, v2

    goto :goto_1e8

    :cond_1e5
    move v4, v13

    move/from16 v3, v29

    :goto_1e8
    add-int/lit8 v2, v12, 0x1

    move/from16 v29, v3

    goto :goto_200

    :cond_1ed
    move/from16 v29, v3

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v27, v12

    move/from16 v28, v13

    move v12, v2

    move v13, v4

    move/from16 v32, v23

    move-object/from16 v23, v9

    move/from16 v9, v32

    move v1, v9

    .line 353
    :goto_200
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isFirstInSection()Z

    move-result v0

    if-eqz v0, :cond_243

    move-object/from16 v3, v22

    if-eqz v3, :cond_243

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isLastInSection()Z

    move-result v0

    if-eqz v0, :cond_243

    .line 356
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v5

    sub-float/2addr v0, v5

    .line 357
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v5

    .line 358
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v6

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v6, v9

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    cmpl-float v9, v5, v6

    if-lez v9, :cond_241

    const-wide/high16 v12, 0x3ff0000000000000L  # 1.0

    .line 365
    iget v4, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mGapHeight:I

    int-to-float v4, v4

    div-float/2addr v5, v4

    float-to-double v4, v5

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x0

    .line 366
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setBottomRoundness(FZ)Z

    float-to-int v0, v0

    move/from16 v29, v4

    goto :goto_246

    :cond_241
    const/4 v5, 0x0

    goto :goto_245

    :cond_243
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_245
    move v0, v4

    :goto_246
    move v4, v0

    move-object/from16 v22, v10

    move/from16 v0, v27

    goto :goto_262

    :cond_24c
    :goto_24c
    move v12, v2

    move/from16 v29, v3

    move/from16 v30, v5

    move/from16 v31, v6

    move-object/from16 v23, v9

    move/from16 v28, v13

    move-object/from16 v3, v22

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v9, v1

    move v13, v4

    move-object/from16 v22, v3

    move v1, v9

    move v2, v12

    move v4, v13

    :goto_262
    move/from16 v3, v29

    add-int/lit8 v9, v30, 0x1

    move v5, v9

    move-object/from16 v9, v23

    move/from16 v13, v28

    move/from16 v6, v31

    const/4 v10, -0x1

    goto/16 :goto_ad

    :cond_270
    move v12, v2

    move/from16 v29, v3

    move v13, v4

    const/4 v5, 0x0

    .line 373
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->clipTransientViews()V

    .line 375
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setClipTopAmount(I)V

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-nez v1, :cond_28c

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    if-lt v0, v1, :cond_28a

    goto :goto_28c

    :cond_28a
    move v0, v5

    goto :goto_28d

    :cond_28c
    :goto_28c
    const/4 v0, 0x1

    .line 377
    :goto_28d
    iget-boolean v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-eqz v1, :cond_299

    if-eqz v0, :cond_295

    const/4 v0, 0x4

    goto :goto_296

    :cond_295
    move v0, v5

    .line 378
    :goto_296
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 380
    :cond_299
    invoke-virtual {v7, v13}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setBackgroundTop(I)V

    move/from16 v3, v29

    .line 381
    invoke-direct {v7, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->setFirstElementRoundness(F)V

    .line 382
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setSpeedBumpIndex(I)V

    .line 383
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations()V

    .line 384
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    move v0, v5

    .line 385
    :goto_2b7
    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2db

    .line 386
    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 387
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_2d8

    .line 388
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v15, :cond_2d0

    goto :goto_2d8

    .line 391
    :cond_2d0
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 392
    invoke-direct {v7, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconClipAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 393
    invoke-direct {v7, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateContinuousClipping(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_2d8
    :goto_2d8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b7

    :cond_2db
    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float v0, v20, v0

    if-gez v0, :cond_2e3

    const/4 v0, 0x1

    goto :goto_2e4

    :cond_2e3
    move v0, v5

    :goto_2e4
    if-nez v0, :cond_2e8

    if-eqz v16, :cond_2e9

    :cond_2e8
    const/4 v5, 0x1

    .line 396
    :cond_2e9
    invoke-direct {v7, v5}, Lcom/android/systemui/statusbar/NotificationShelf;->setHideBackground(Z)V

    .line 397
    iget v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2f3

    .line 398
    iput v12, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    :cond_2f3
    return-void
.end method

.method public updateState(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .registers 9

    .line 189
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    .line 191
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_ab

    if-eqz v0, :cond_ab

    .line 192
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v5

    add-float/2addr v2, v5

    .line 193
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result v5

    add-float/2addr v2, v5

    .line 194
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    .line 195
    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v6, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 196
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v6

    iput v6, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 199
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v6, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getFullyClosedTranslation()F

    move-result v6

    .line 199
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 201
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 206
    iget p1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getFullyClosedTranslation()F

    move-result v5

    sub-float/2addr p1, v5

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCutoutHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr p1, v5

    const/high16 v5, 0x3f800000  # 1.0f

    .line 208
    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 209
    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$102(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F

    .line 210
    iput v4, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 211
    iput v5, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 212
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getSpeedBumpIndex()I

    move-result p1

    if-nez p1, :cond_76

    move p1, v3

    goto :goto_77

    :cond_76
    move p1, v4

    :goto_77
    iput-boolean p1, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 213
    iput-boolean v4, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    .line 214
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p1

    iput p1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 215
    iget p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v5, -0x1

    if-eq p1, v5, :cond_8e

    .line 216
    iget v5, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 218
    :cond_8e
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$202(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    .line 219
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result p1

    if-eqz p1, :cond_a5

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isQsCustomizerShowing()Z

    move-result p0

    if-eqz p0, :cond_a4

    goto :goto_a5

    :cond_a4
    move v3, v4

    :cond_a5
    :goto_a5
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 221
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$302(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F

    goto :goto_b4

    .line 223
    :cond_ab
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    const/16 p0, 0x40

    .line 224
    iput p0, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 225
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$202(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    :goto_b4
    return-void
.end method
