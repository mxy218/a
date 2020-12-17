.class public Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;
.super Landroid/view/ViewGroup;
.source "NotificationChildrenContainer.java"


# static fields
.field private static final ALPHA_FADE_IN:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field static final NUMBER_OF_CHILDREN_WHEN_CHILDREN_EXPANDED:I = 0x64
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final NUMBER_OF_CHILDREN_WHEN_COLLAPSED:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final NUMBER_OF_CHILDREN_WHEN_SYSTEM_EXPANDED:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mActualHeight:I

.field private mChildPadding:I

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenExpanded:Z

.field private mClipBottomAmount:I

.field mClipRect:Landroid/graphics/Rect;

.field private mCollapsedBottompadding:F

.field private mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mCurrentHeader:Landroid/view/ViewGroup;

.field private mCurrentHeaderTranslation:I

.field private mDividerAlpha:F

.field private mDividerHeight:I

.field private final mDividers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableShadowOnChildNotifications:Z

.field private mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

.field private mHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mHeaderHeight:I

.field private mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

.field private mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

.field private mHeaderVisibleAmount:F

.field private mHideDividersDuringExpand:Z

.field private final mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

.field private mIsLowPriority:Z

.field private mNeverAppliedGroupState:Z

.field private mNotificationHeader:Landroid/view/NotificationHeaderView;

.field private mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

.field private mNotificationHeaderMargin:I

.field private mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field private mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field private mNotificatonTopPadding:I

.field private mOverflowNumber:Landroid/widget/TextView;

.field private mRealHeight:I

.field private mShowDividersWhenExpanded:Z

.field private mTranslationForHeader:I

.field private mUserLocked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 61
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$1;-><init>()V

    const-wide/16 v1, 0xc8

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->ALPHA_FADE_IN:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 126
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    const/4 p1, 0x0

    .line 109
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    const/high16 p2, 0x3f800000  # 1.0f

    .line 110
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderVisibleAmount:F

    .line 1329
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mClipRect:Landroid/graphics/Rect;

    .line 127
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p0}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->initDimens()V

    .line 129
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method private calculateDesiredHeader()Landroid/view/ViewGroup;
    .registers 2

    .line 969
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 970
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    goto :goto_b

    .line 972
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    :goto_b
    return-object p0
.end method

.method private getIntrinsicHeight(F)I
    .registers 13

    .line 503
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 504
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result p0

    return p0

    .line 506
    :cond_d
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    add-int/2addr v0, v1

    .line 508
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 511
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_22

    .line 512
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v2

    goto :goto_23

    :cond_22
    move v2, v3

    .line 514
    :goto_23
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v8, v0

    move v7, v5

    move v0, v6

    move v5, v0

    :goto_2b
    if-ge v0, v1, :cond_80

    int-to-float v9, v5

    cmpl-float v9, v9, p1

    if-ltz v9, :cond_33

    goto :goto_80

    :cond_33
    if-nez v7, :cond_50

    .line 520
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v9, :cond_47

    int-to-float v8, v8

    .line 521
    iget v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v10, v10

    invoke-static {v9, v10, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v8, v8

    goto :goto_6e

    :cond_47
    if-eqz v4, :cond_4c

    .line 524
    iget v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    goto :goto_4e

    :cond_4c
    iget v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    :goto_4e
    add-int/2addr v8, v9

    goto :goto_6e

    .line 527
    :cond_50
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v7, :cond_63

    int-to-float v7, v8

    .line 528
    iget v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    iget v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v3, v8, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    move v8, v7

    goto :goto_6d

    :cond_63
    if-eqz v4, :cond_6b

    .line 534
    iget v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    iget v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v7, v9

    goto :goto_6c

    :cond_6b
    move v7, v6

    :goto_6c
    add-int/2addr v8, v7

    :goto_6d
    move v7, v6

    .line 539
    :goto_6e
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 540
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 543
    :cond_80
    :goto_80
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz p1, :cond_8e

    int-to-float p1, v8

    .line 544
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    invoke-static {p0, v3, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p0

    :goto_8b
    add-float/2addr p1, p0

    float-to-int v8, p1

    goto :goto_94

    :cond_8e
    if-nez v4, :cond_94

    int-to-float p1, v8

    .line 547
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    goto :goto_8b

    :cond_94
    :goto_94
    return v8
.end method

.method private getMinHeight(IZ)I
    .registers 4

    .line 1140
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMinHeight(IZI)I

    move-result p0

    return p0
.end method

.method private getMinHeight(IZI)I
    .registers 9

    if-nez p2, :cond_f

    .line 1152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 1153
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result p0

    return p0

    .line 1155
    :cond_f
    iget p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    add-int/2addr p2, p3

    .line 1158
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, p2

    move v2, v0

    move p2, v1

    move v0, p2

    :goto_1e
    if-ge p2, p3, :cond_40

    if-lt v0, p1, :cond_23

    goto :goto_40

    :cond_23
    if-nez v2, :cond_29

    .line 1164
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    add-int/2addr v3, v4

    goto :goto_2a

    :cond_29
    move v2, v1

    .line 1168
    :goto_2a
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1169
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1e

    :cond_40
    :goto_40
    int-to-float p1, v3

    .line 1172
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private getVisibleChildrenExpandHeight()I
    .registers 9

    .line 1100
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v0, v1

    .line 1103
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    .line 1104
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v3

    const/4 v4, 0x0

    move v5, v0

    move v0, v4

    :goto_19
    if-ge v4, v1, :cond_42

    if-lt v0, v3, :cond_1e

    goto :goto_42

    .line 1109
    :cond_1e
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1110
    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 1111
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v6

    goto :goto_39

    .line 1112
    :cond_31
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight(Z)I

    move-result v6

    :goto_39
    int-to-float v6, v6

    int-to-float v5, v5

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_42
    :goto_42
    return v5
.end method

.method private getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .registers 3

    .line 1009
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-ne p1, v0, :cond_7

    .line 1010
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 1012
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0
.end method

.method private inflateDivider()Landroid/view/View;
    .registers 4

    .line 437
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->notification_children_divider:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private initDimens()V
    .registers 4

    .line 133
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    sget v1, Lcom/android/systemui/R$dimen;->notification_children_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    .line 135
    sget v1, Lcom/android/systemui/R$dimen;->notification_children_container_divider_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 137
    sget v1, Lcom/android/systemui/R$dimen;->notification_divider_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerAlpha:F

    .line 138
    sget v1, Lcom/android/systemui/R$dimen;->notification_children_container_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 140
    sget v1, Lcom/android/systemui/R$dimen;->notification_children_container_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    .line 142
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderHeight:I

    .line 143
    sget v1, Lcom/android/systemui/R$dimen;->notification_content_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    .line 146
    sget v1, Lcom/android/systemui/R$bool;->config_enableShadowOnChildNotifications:I

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mEnableShadowOnChildNotifications:Z

    .line 148
    sget v1, Lcom/android/systemui/R$bool;->config_showDividersWhenGroupNotificationExpanded:I

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mShowDividersWhenExpanded:Z

    .line 150
    sget v1, Lcom/android/systemui/R$bool;->config_hideDividersDuringExpand:I

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHideDividersDuringExpand:Z

    const v1, 0x105019a

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mTranslationForHeader:I

    .line 155
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->initDimens()V

    return-void
.end method

.method private recreateLowPriorityHeader(Landroid/app/Notification$Builder;)V
    .registers 5

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 350
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-eqz v1, :cond_72

    if-nez p1, :cond_18

    .line 352
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 353
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 352
    invoke-static {p1, v0}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    :cond_18
    const/4 v0, 0x1

    .line 355
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-nez v0, :cond_58

    .line 357
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/NotificationHeaderView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 359
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    const v0, 0x1020262

    invoke-virtual {p1, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {p1, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 365
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 366
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_61

    .line 368
    :cond_58
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 370
    :goto_61
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 371
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->calculateDesiredHeader()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    goto :goto_7c

    .line 373
    :cond_72
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 374
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 375
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    :goto_7c
    return-void
.end method

.method private resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 957
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_15

    if-eq p1, p2, :cond_15

    .line 958
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setVisible(Z)V

    const/4 v0, 0x4

    .line 959
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    if-ne p1, p2, :cond_28

    .line 961
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_28

    .line 962
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setVisible(Z)V

    .line 963
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_28
    return-void
.end method

.method private startChildAlphaAnimations(Z)V
    .registers 10

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p1, :cond_6

    move p1, v0

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    sub-float/2addr v0, p1

    .line 980
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_3a

    const/4 v3, 0x5

    if-lt v2, v3, :cond_15

    goto :goto_3a

    .line 985
    :cond_15
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 986
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 987
    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    .line 988
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 989
    iput p1, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 990
    sget-object v5, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->ALPHA_FADE_IN:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    mul-int/lit8 v6, v2, 0x32

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 991
    sget-object v5, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->ALPHA_FADE_IN:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_3a
    :goto_3a
    return-void
.end method

.method private updateChildrenClipping()V
    .registers 10

    .line 756
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGutExposed()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 760
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->hasExpandingChild()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 763
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 764
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mClipBottomAmount:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, v2

    :goto_23
    if-ge v3, v0, :cond_63

    .line 766
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 767
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_36

    goto :goto_60

    .line 770
    :cond_36
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v5

    .line 771
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    int-to-float v7, v1

    cmpl-float v5, v5, v7

    const/4 v8, 0x1

    if-lez v5, :cond_48

    move v5, v2

    goto :goto_4b

    :cond_48
    cmpl-float v5, v6, v7

    move v5, v8

    .line 784
    :goto_4b
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_52

    goto :goto_53

    :cond_52
    move v8, v2

    :goto_53
    if-eq v5, v8, :cond_5d

    if-eqz v5, :cond_59

    move v5, v2

    goto :goto_5a

    :cond_59
    const/4 v5, 0x4

    .line 786
    :goto_5a
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setVisibility(I)V

    .line 789
    :cond_5d
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setClipBottomAmount(I)V

    :goto_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 793
    :cond_63
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 794
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateExpansionStates()V
    .registers 6

    .line 478
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v0, :cond_9

    goto :goto_28

    .line 482
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    if-ge v2, v0, :cond_28

    .line 484
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v4, 0x1

    if-nez v2, :cond_21

    if-ne v0, v4, :cond_21

    goto :goto_22

    :cond_21
    move v4, v1

    .line 485
    :goto_22
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSystemChildExpanded(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_28
    :goto_28
    return-void
.end method

.method private updateHeaderTouchability()V
    .registers 3

    .line 1219
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_13

    .line 1220
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v1, :cond_f

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    invoke-virtual {v0, p0}, Landroid/view/NotificationHeaderView;->setAcceptAllTouches(Z)V

    :cond_13
    return-void
.end method

.method private updateHeaderTransformation()V
    .registers 4

    .line 997
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 998
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v0

    .line 999
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 1001
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/NotificationHeaderView;->setVisibility(I)V

    .line 1002
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    :cond_22
    return-void
.end method

.method private updateHeaderVisibility(Z)V
    .registers 9

    .line 911
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    .line 912
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->calculateDesiredHeader()Landroid/view/ViewGroup;

    move-result-object v1

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_36

    if-eqz v1, :cond_35

    if-eqz v0, :cond_35

    .line 920
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 921
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 922
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v4

    .line 923
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v5

    .line 924
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    .line 925
    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationChildrenContainer$yaCA55rJjaS5fwWl4gZlw69MJ2w;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationChildrenContainer$yaCA55rJjaS5fwWl4gZlw69MJ2w;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;)V

    invoke-virtual {v5, v4, v6}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    .line 926
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-ne v1, v4, :cond_30

    move v4, v2

    goto :goto_31

    :cond_30
    move v4, v3

    :goto_31
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->startChildAlphaAnimations(Z)V

    goto :goto_36

    :cond_35
    move p1, v3

    :cond_36
    :goto_36
    if-nez p1, :cond_53

    if-eqz v1, :cond_44

    .line 933
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setVisible(Z)V

    .line 934
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_44
    if-eqz v0, :cond_53

    .line 939
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 941
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setVisible(Z)V

    :cond_4f
    const/4 p1, 0x4

    .line 943
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 947
    :cond_53
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 948
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 950
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public addNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V
    .registers 5

    .line 255
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-gez p2, :cond_f

    .line 257
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 258
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 259
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 260
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->inflateDivider()Landroid/view/View;

    move-result-object v0

    .line 263
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 264
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    const/4 p0, 0x0

    const/4 p2, 0x0

    .line 267
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentTransformationAmount(FZ)V

    .line 269
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object p0

    if-eqz p0, :cond_3c

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->cancelAnimations(Landroid/view/View;)V

    .line 272
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->cancelAppearDrawing()V

    :cond_3c
    return-void
.end method

.method public applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    move v1, v0

    .line 460
    :goto_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3b

    .line 461
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 462
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eq v2, v3, :cond_38

    .line 464
    invoke-virtual {p2, v3}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->canReorderNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 465
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 466
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_38

    .line 469
    :cond_35
    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)V

    :cond_38
    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 473
    :cond_3b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateExpansionStates()V

    return v1
.end method

.method public applyState()V
    .registers 12

    .line 712
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 713
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    .line 715
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_15

    .line 716
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v2

    goto :goto_16

    :cond_15
    move v2, v3

    .line 718
    :goto_16
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v4, :cond_20

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v4

    if-eqz v4, :cond_32

    :cond_20
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v4, :cond_28

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mShowDividersWhenExpanded:Z

    if-nez v4, :cond_32

    :cond_28
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 720
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v4

    if-eqz v4, :cond_32

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHideDividersDuringExpand:Z

    :cond_32
    const/4 v4, 0x0

    move v5, v4

    :goto_34
    if-ge v5, v0, :cond_8b

    .line 723
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 724
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v7

    .line 725
    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 728
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 729
    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 730
    iget v9, v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 731
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v9, :cond_65

    iget v9, v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    cmpl-float v9, v9, v3

    if-eqz v9, :cond_65

    iget v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerAlpha:F

    goto :goto_66

    :cond_65
    move v9, v3

    .line 732
    :goto_66
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v10, :cond_80

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v10

    if-nez v10, :cond_80

    iget v7, v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    cmpl-float v10, v7, v3

    if-eqz v10, :cond_80

    const/high16 v9, 0x3f000000  # 0.5f

    .line 734
    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 733
    invoke-static {v3, v9, v7}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v9

    .line 739
    :cond_80
    iput v9, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 740
    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 742
    invoke-virtual {v6, v3, v3, v4, v4}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setFakeShadowIntensity(FFII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 744
    :cond_8b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    if-eqz v0, :cond_96

    .line 745
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 746
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    .line 748
    :cond_96
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    if-eqz v0, :cond_9f

    .line 749
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 751
    :cond_9f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateChildrenClipping()V

    return-void
.end method

.method public getCollapsedHeight()I
    .registers 3

    const/4 v0, 0x1

    .line 1124
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMinHeight(IZ)I

    move-result p0

    return p0
.end method

.method public getCollapsedHeightWithoutHeader()I
    .registers 3

    const/4 v0, 0x1

    .line 1129
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMinHeight(IZI)I

    move-result p0

    return p0
.end method

.method public getCurrentHeaderView()Landroid/view/ViewGroup;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 906
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getGroupExpandFraction()F
    .registers 3

    .line 1091
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxContentHeight()I

    move-result v0

    goto :goto_f

    .line 1092
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getVisibleChildrenExpandHeight()I

    move-result v0

    .line 1093
    :goto_f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getCollapsedHeight()I

    move-result v1

    .line 1094
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mActualHeight:I

    sub-int/2addr p0, v1

    int-to-float p0, p0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p0, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    .line 1096
    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public getHeaderView()Landroid/view/NotificationHeaderView;
    .registers 1

    .line 897
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    return-object p0
.end method

.method public getIncreasedPaddingAmount()F
    .registers 2

    .line 1299
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1302
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result p0

    return p0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 494
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    move-result v0

    int-to-float v0, v0

    .line 495
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getIntrinsicHeight(F)I

    move-result p0

    return p0
.end method

.method public getLowPriorityHeaderView()Landroid/view/NotificationHeaderView;
    .registers 1

    .line 901
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    return-object p0
.end method

.method getMaxAllowedVisibleChildren()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 692
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result p0

    return p0
.end method

.method getMaxAllowedVisibleChildren(Z)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_17

    .line 697
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isUserLocked()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 698
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result p1

    if-nez p1, :cond_17

    const/16 p0, 0x64

    return p0

    .line 701
    :cond_17
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    const/4 v0, 0x5

    if-nez p1, :cond_3d

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 702
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result p1

    if-nez p1, :cond_2c

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_3d

    :cond_2c
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 703
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpState()Z

    move-result p1

    if-eqz p1, :cond_3d

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 704
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    move-result p0

    if-eqz p0, :cond_3d

    nop

    :cond_3d
    return v0
.end method

.method public getMaxContentHeight()I
    .registers 8

    .line 1033
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    const/4 v0, 0x5

    .line 1034
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMinHeight(IZ)I

    move-result p0

    return p0

    .line 1037
    :cond_d
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int/2addr v0, v2

    .line 1040
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    :goto_1e
    if-ge v3, v2, :cond_49

    const/16 v5, 0x64

    if-lt v0, v5, :cond_25

    goto :goto_49

    .line 1045
    :cond_25
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1046
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 1047
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v5

    goto :goto_40

    .line 1048
    :cond_38
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight(Z)I

    move-result v5

    :goto_40
    int-to-float v5, v5

    int-to-float v4, v4

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_49
    :goto_49
    if-lez v0, :cond_4f

    .line 1053
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    mul-int/2addr v0, p0

    add-int/2addr v4, v0

    :cond_4f
    return v4
.end method

.method public getMinHeight()I
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1120
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMinHeight(IZ)I

    move-result p0

    return p0
.end method

.method public getNotificationChildCount()I
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getNotificationChildren()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation

    .line 442
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    return-object p0
.end method

.method public getPositionInLinearLayout(Landroid/view/View;)I
    .registers 8

    .line 1230
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 1233
    :goto_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_38

    .line 1234
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1235
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_25

    const/4 v4, 0x1

    goto :goto_26

    :cond_25
    move v4, v1

    :goto_26
    if-eqz v4, :cond_2b

    .line 1237
    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v2, v5

    :cond_2b
    if-ne v3, p1, :cond_2e

    return v2

    :cond_2e
    if-eqz v4, :cond_35

    .line 1243
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v2, v3

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_38
    return v1
.end method

.method public getViewAtPosition(F)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .registers 8

    .line 856
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2d

    .line 858
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 859
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    .line 860
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    .line 861
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2a

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_2a

    return-object v2

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVisibleHeader()Landroid/view/NotificationHeaderView;
    .registers 3

    .line 1282
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 1283
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1284
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    :cond_a
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isUserLocked()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1307
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    return p0
.end method

.method public synthetic lambda$updateHeaderVisibility$0$NotificationChildrenContainer()V
    .registers 2

    const/4 v0, 0x0

    .line 925
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 432
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 433
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    return-void
.end method

.method public onExpansionChanged()V
    .registers 2

    .line 1290
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-eqz v0, :cond_f

    .line 1291
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v0, :cond_b

    .line 1292
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setUserLocked(Z)V

    :cond_b
    const/4 v0, 0x1

    .line 1294
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    :cond_f
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .line 160
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x64

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_e
    if-ge p3, p1, :cond_37

    .line 162
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    .line 165
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p4, p2, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 166
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p5

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    invoke-virtual {p4, p2, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_e

    .line 168
    :cond_37
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz p1, :cond_63

    .line 169
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_43

    goto :goto_44

    :cond_43
    move p3, p2

    :goto_44
    if-eqz p3, :cond_48

    move p1, p2

    goto :goto_53

    .line 170
    :cond_48
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p1, p3

    .line 171
    :goto_53
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p1

    .line 172
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p4, p1, p2, p3, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 174
    :cond_63
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz p1, :cond_74

    .line 175
    invoke-virtual {p1}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result p3

    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 176
    invoke-virtual {p4}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    move-result p4

    .line 175
    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/view/NotificationHeaderView;->layout(IIII)V

    .line 178
    :cond_74
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-eqz p1, :cond_85

    .line 180
    invoke-virtual {p1}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result p3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 181
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    move-result p0

    .line 179
    invoke-virtual {p1, p2, p2, p3, p0}, Landroid/view/NotificationHeaderView;->layout(IIII)V

    :cond_85
    return-void
.end method

.method protected onMeasure(II)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 187
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    const/4 v5, 0x1

    if-ne v2, v3, :cond_f

    move v6, v5

    goto :goto_10

    :cond_f
    const/4 v6, 0x0

    :goto_10
    const/high16 v7, -0x80000000

    if-ne v2, v7, :cond_16

    move v8, v5

    goto :goto_17

    :cond_16
    const/4 v8, 0x0

    .line 190
    :goto_17
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    if-nez v6, :cond_23

    if-eqz v8, :cond_20

    goto :goto_23

    :cond_20
    move/from16 v6, p2

    goto :goto_27

    .line 193
    :cond_23
    :goto_23
    invoke-static {v9, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 195
    :goto_27
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 196
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v10, :cond_36

    .line 197
    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v10, v7, v6}, Landroid/widget/TextView;->measure(II)V

    .line 200
    :cond_36
    iget v7, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 201
    iget v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int/2addr v10, v11

    .line 202
    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/16 v12, 0x64

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 203
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v12

    if-le v11, v12, :cond_55

    sub-int/2addr v12, v5

    goto :goto_56

    :cond_55
    const/4 v12, -0x1

    :goto_56
    move v13, v10

    const/4 v10, 0x0

    :goto_58
    if-ge v10, v11, :cond_97

    .line 206
    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-ne v10, v12, :cond_66

    move v15, v5

    goto :goto_67

    :cond_66
    const/4 v15, 0x0

    :goto_67
    if-eqz v15, :cond_72

    .line 210
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v15, :cond_72

    .line 211
    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    goto :goto_73

    :cond_72
    const/4 v15, 0x0

    .line 210
    :goto_73
    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSingleLineWidthIndention(I)V

    .line 212
    invoke-virtual {v14, v1, v6}, Landroid/widget/FrameLayout;->measure(II)V

    .line 214
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 215
    invoke-virtual {v15, v1, v7}, Landroid/view/View;->measure(II)V

    .line 216
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v15

    const/16 v4, 0x8

    if-eq v15, v4, :cond_94

    .line 217
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    iget v14, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v4, v14

    add-int/2addr v13, v4

    :cond_94
    add-int/lit8 v10, v10, 0x1

    goto :goto_58

    .line 220
    :cond_97
    iput v13, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mRealHeight:I

    if-eqz v2, :cond_9f

    .line 222
    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 225
    :cond_9f
    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 226
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v4, :cond_ac

    .line 227
    invoke-virtual {v4, v1, v2}, Landroid/view/NotificationHeaderView;->measure(II)V

    .line 229
    :cond_ac
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-eqz v2, :cond_bb

    .line 230
    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 231
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {v3, v1, v2}, Landroid/view/NotificationHeaderView;->measure(II)V

    .line 234
    :cond_bb
    invoke-virtual {v0, v8, v13}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNotificationUpdated()V
    .registers 3

    .line 1225
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationColor()I

    move-result p0

    .line 1225
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->setOverflowNumberColor(Landroid/widget/TextView;I)V

    return-void
.end method

.method public pointInView(FFF)Z
    .registers 6

    neg-float v0, p3

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1e

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1e

    .line 244
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1e

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mRealHeight:I

    int-to-float p0, p0

    add-float/2addr p0, p3

    cmpg-float p0, p2, p0

    if-gez p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public prepareExpansionChanged()V
    .registers 1

    return-void
.end method

.method public reInflateViews(Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;)V
    .registers 5

    .line 1181
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 1182
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1183
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 1185
    :cond_a
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-eqz p2, :cond_13

    .line 1186
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1187
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 1189
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->recreateNotificationHeader(Landroid/view/View$OnClickListener;)V

    .line 1190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->initDimens()V

    const/4 p1, 0x0

    .line 1191
    :goto_1a
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_40

    .line 1192
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 1193
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1194
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1195
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->inflateDivider()Landroid/view/View;

    move-result-object p2

    .line 1196
    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1197
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    .line 1199
    :cond_40
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1200
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 1201
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 1202
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    return-void
.end method

.method public recreateNotificationHeader(Landroid/view/View$OnClickListener;)V
    .registers 7

    .line 315
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 316
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 317
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 318
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 317
    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->makeNotificationHeader()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 320
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    const/4 v3, 0x0

    if-nez v2, :cond_53

    .line 321
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/NotificationHeaderView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 322
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    const v2, 0x1020262

    invoke-virtual {v1, v2}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 324
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v1, v2, v4}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 328
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 329
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_5c

    .line 331
    :cond_53
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 334
    :goto_5c
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-static {v1, p1, v2}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->updateHeaderIconAndText(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/view/NotificationHeaderView;)V

    .line 336
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 337
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->recreateLowPriorityHeader(Landroid/app/Notification$Builder;)V

    .line 338
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 339
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateChildrenHeaderAppearance()V

    return-void
.end method

.method public removeNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 4

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return-void

    .line 283
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 286
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 287
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 288
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 289
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$2;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 296
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSystemChildExpanded(Z)V

    .line 297
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 299
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_41

    .line 302
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->restoreNotificationHeaderFlyme(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_41
    return-void
.end method

.method public setActualHeight(I)V
    .registers 11

    .line 1059
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-nez v0, :cond_5

    return-void

    .line 1062
    :cond_5
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mActualHeight:I

    .line 1063
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result p1

    .line 1064
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    .line 1065
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderTransformation()V

    const/4 v1, 0x1

    .line 1066
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v2

    .line 1067
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1f
    if-ge v5, v3, :cond_64

    .line 1069
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_35

    .line 1072
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight(Z)I

    move-result v7

    :goto_33
    int-to-float v7, v7

    goto :goto_49

    .line 1073
    :cond_35
    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 1074
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v7

    goto :goto_33

    .line 1076
    :cond_40
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight(Z)I

    move-result v7

    goto :goto_33

    :goto_49
    if-ge v5, v2, :cond_5d

    .line 1080
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight(Z)I

    move-result v8

    int-to-float v8, v8

    .line 1082
    invoke-static {v8, v7, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setActualHeight(IZ)V

    goto :goto_61

    :cond_5d
    float-to-int v7, v7

    .line 1085
    invoke-virtual {v6, v7, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setActualHeight(IZ)V

    :goto_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_64
    return-void
.end method

.method public setChildrenExpanded(Z)V
    .registers 6

    .line 870
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 871
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateExpansionStates()V

    .line 872
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_c

    .line 873
    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->setExpanded(Z)V

    .line 875
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_14
    if-ge v2, v0, :cond_24

    .line 877
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 878
    invoke-virtual {v3, p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChildrenExpanded(ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 880
    :cond_24
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderTouchability()V

    return-void
.end method

.method public setClipBottomAmount(I)V
    .registers 2

    .line 1266
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mClipBottomAmount:I

    .line 1267
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateChildrenClipping()V

    return-void
.end method

.method public setContainingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 3

    .line 884
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 885
    new-instance p1, Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    .line 888
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->initDimens(Landroid/content/Context;)V

    return-void
.end method

.method public setCurrentBottomRoundness(F)V
    .registers 7

    .line 1312
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_2b

    .line 1313
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1314
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1b

    goto :goto_28

    :cond_1b
    if-eqz v1, :cond_1f

    move v1, p1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 1318
    :goto_20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setBottomRoundness(FZ)Z

    const/4 v1, 0x0

    :goto_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2b
    return-void
.end method

.method public setHeaderVisibleAmount(F)V
    .registers 3

    .line 1324
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderVisibleAmount:F

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p1

    .line 1325
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mTranslationForHeader:I

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    return-void
.end method

.method public setIconsVisible(Z)V
    .registers 4

    .line 1250
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_13

    .line 1251
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1253
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    .line 1256
    :cond_13
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz p0, :cond_26

    .line 1258
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 1260
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    :cond_26
    return-void
.end method

.method public setIsLowPriority(Z)V
    .registers 2

    .line 1271
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    .line 1272
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_e

    const/4 p1, 0x0

    .line 1273
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->recreateLowPriorityHeader(Landroid/app/Notification$Builder;)V

    const/4 p1, 0x0

    .line 1274
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 1276
    :cond_e
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz p1, :cond_15

    .line 1277
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setUserLocked(Z)V

    :cond_15
    return-void
.end method

.method public setUserLocked(Z)V
    .registers 7

    .line 1206
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 1207
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1208
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 1210
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_11
    if-ge v2, v0, :cond_2c

    .line 1212
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_25

    .line 1213
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v4

    if-nez v4, :cond_25

    const/4 v4, 0x1

    goto :goto_26

    :cond_25
    move v4, v1

    :goto_26
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1215
    :cond_2c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderTouchability()V

    return-void
.end method

.method public showingAsLowPriority()Z
    .registers 2

    .line 1177
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public startAnimationToState(Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .registers 15

    .line 811
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 812
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    .line 813
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v2

    .line 814
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1b

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v3

    if-eqz v3, :cond_2f

    :cond_1b
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v3, :cond_23

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mShowDividersWhenExpanded:Z

    if-nez v3, :cond_2f

    :cond_23
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 816
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v3

    if-eqz v3, :cond_31

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHideDividersDuringExpand:Z

    if-nez v3, :cond_31

    :cond_2f
    move v3, v4

    goto :goto_32

    :cond_31
    move v3, v5

    :goto_32
    sub-int/2addr v0, v4

    :goto_33
    const/4 v6, 0x0

    if-ltz v0, :cond_8e

    .line 819
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 820
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v8

    .line 821
    invoke-virtual {v8, v7, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 824
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 825
    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 826
    iget v10, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v11, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iput v10, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 827
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    const/high16 v11, 0x3f000000  # 0.5f

    if-eqz v10, :cond_66

    iget v10, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    cmpl-float v10, v10, v6

    if-eqz v10, :cond_66

    move v10, v11

    goto :goto_67

    :cond_66
    move v10, v6

    .line 828
    :goto_67
    iget-boolean v12, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v12, :cond_7f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v12

    if-nez v12, :cond_7f

    iget v8, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    cmpl-float v12, v8, v6

    if-eqz v12, :cond_7f

    .line 830
    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 829
    invoke-static {v6, v11, v8}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v10

    :cond_7f
    xor-int/lit8 v8, v3, 0x1

    .line 832
    iput-boolean v8, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 833
    iput v10, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 834
    invoke-virtual {v1, v9, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 836
    invoke-virtual {v7, v6, v6, v5, v5}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setFakeShadowIntensity(FFII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_33

    .line 838
    :cond_8e
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_ac

    .line 839
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    if-eqz v1, :cond_a5

    .line 840
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 841
    iput v6, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 842
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 843
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 844
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    .line 846
    :cond_a5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 848
    :cond_ac
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz p1, :cond_b5

    .line 849
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 851
    :cond_b5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateChildrenClipping()V

    return-void
.end method

.method public updateChildrenHeaderAppearance()V
    .registers 1

    .line 382
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->updateChildrenHeaderAppearanceFlyme()V

    return-void
.end method

.method public updateGroupOverflow()V
    .registers 3

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 416
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz p0, :cond_28

    const v1, 0x10202b1

    .line 417
    invoke-virtual {p0, v1}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_28

    if-eqz v0, :cond_23

    const/4 v1, 0x0

    .line 420
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_28

    :cond_23
    const/16 v0, 0x8

    .line 423
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_28
    :goto_28
    return-void
.end method

.method public updateState(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 558
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 559
    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    add-int/2addr v3, v4

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    add-int/lit8 v6, v4, 0x1

    .line 565
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v7, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v7

    if-nez v7, :cond_23

    move v7, v5

    goto :goto_24

    :cond_23
    const/4 v7, 0x0

    .line 566
    :goto_24
    iget-boolean v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_37

    .line 567
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v6

    .line 568
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v9

    move/from16 v18, v9

    move v9, v6

    move/from16 v6, v18

    goto :goto_38

    :cond_37
    move v9, v10

    .line 571
    :goto_38
    iget-boolean v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v11, :cond_46

    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 572
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v11

    if-nez v11, :cond_46

    move v11, v5

    goto :goto_47

    :cond_46
    const/4 v11, 0x0

    :goto_47
    move v13, v3

    move v12, v5

    const/4 v3, 0x0

    const/4 v14, 0x0

    :goto_4b
    if-ge v3, v2, :cond_111

    .line 575
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v12, :cond_72

    if-eqz v7, :cond_67

    int-to-float v13, v13

    .line 578
    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    int-to-float v5, v5

    iget v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v8, v8

    invoke-static {v5, v8, v9}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    add-float/2addr v13, v5

    float-to-int v5, v13

    goto :goto_90

    .line 581
    :cond_67
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v5, :cond_6e

    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    goto :goto_70

    :cond_6e
    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    :goto_70
    add-int/2addr v5, v13

    goto :goto_90

    :cond_72
    if-eqz v7, :cond_82

    int-to-float v5, v13

    .line 585
    iget v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    iget v12, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v8, v12

    int-to-float v8, v8

    invoke-static {v10, v8, v9}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v8

    add-float/2addr v5, v8

    float-to-int v5, v5

    goto :goto_8f

    .line 590
    :cond_82
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v5, :cond_8c

    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    iget v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v8, v5

    goto :goto_8d

    :cond_8c
    const/4 v8, 0x0

    :goto_8d
    add-int/2addr v13, v8

    move v5, v13

    :goto_8f
    const/4 v12, 0x0

    .line 595
    :goto_90
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v8

    .line 596
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v13

    .line 597
    iput v13, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    add-int v10, v5, v14

    int-to-float v10, v10

    .line 598
    iput v10, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    const/4 v10, 0x0

    .line 599
    iput-boolean v10, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-eqz v11, :cond_ab

    .line 603
    iget-boolean v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mEnableShadowOnChildNotifications:Z

    if-eqz v10, :cond_ab

    .line 604
    iget v10, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    goto :goto_ac

    :cond_ab
    const/4 v10, 0x0

    .line 605
    :goto_ac
    iput v10, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 606
    iget-boolean v10, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    iput-boolean v10, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    .line 607
    iget-boolean v10, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    iput-boolean v10, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    .line 608
    iget-boolean v10, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    iput-boolean v10, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    const/4 v10, 0x0

    .line 609
    iput v10, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    const/4 v10, 0x0

    .line 610
    iput v10, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    const/high16 v10, 0x3f800000  # 1.0f

    if-ge v3, v6, :cond_ce

    .line 612
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v16

    if-eqz v16, :cond_cb

    move v10, v9

    :cond_cb
    iput v10, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    goto :goto_f2

    :cond_ce
    cmpl-float v16, v9, v10

    if-nez v16, :cond_f2

    if-gt v3, v4, :cond_f2

    .line 614
    iget v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mActualHeight:I

    int-to-float v10, v10

    move/from16 v17, v4

    iget v4, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    sub-float/2addr v10, v4

    iget v4, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v4, v4

    div-float/2addr v10, v4

    iput v10, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 615
    iget v4, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    const/high16 v10, 0x3f800000  # 1.0f

    invoke-static {v10, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v10, 0x0

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    goto :goto_f4

    :cond_f2
    :goto_f2
    move/from16 v17, v4

    .line 617
    :goto_f4
    iget v4, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    iput v4, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 618
    iget-boolean v4, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    iput-boolean v4, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    add-int/2addr v13, v5

    .line 620
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpandAnimationRunning()Z

    move-result v4

    if-eqz v4, :cond_109

    .line 621
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpandAnimationTopChange()I

    move-result v4

    neg-int v4, v4

    move v14, v4

    :cond_109
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v17

    const/4 v5, 0x1

    const/4 v10, 0x0

    goto/16 :goto_4b

    .line 625
    :cond_111
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_174

    .line 626
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    const/4 v4, 0x1

    .line 627
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v5

    .line 626
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 628
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    .line 630
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v3, :cond_166

    .line 631
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    move-result-object v3

    if-eqz v3, :cond_174

    .line 633
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    .line 634
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_14a

    .line 635
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->getTitleView()Landroid/widget/TextView;

    move-result-object v4

    .line 637
    :cond_14a
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v6, :cond_151

    goto :goto_152

    :cond_151
    move-object v3, v4

    .line 640
    :goto_152
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v5

    iput v5, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 641
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget v5, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getRelativeYOffset(Landroid/view/View;Landroid/view/View;)F

    move-result v2

    add-float/2addr v5, v2

    iput v5, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    goto :goto_174

    .line 645
    :cond_166
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget v3, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    const/4 v10, 0x0

    .line 646
    iput v10, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    goto :goto_175

    :cond_174
    :goto_174
    const/4 v10, 0x0

    .line 649
    :goto_175
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v2, :cond_1a1

    .line 650
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    if-nez v2, :cond_184

    .line 651
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 653
    :cond_184
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 654
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    if-eqz v11, :cond_191

    .line 655
    iget v10, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 656
    :cond_191
    iput v10, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 657
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    int-to-float v2, v2

    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 658
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderVisibleAmount:F

    iput v0, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    const/4 v0, 0x0

    .line 661
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    :cond_1a1
    return-void
.end method
