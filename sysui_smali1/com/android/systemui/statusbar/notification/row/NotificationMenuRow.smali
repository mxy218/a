.class public Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;
.super Ljava/lang/Object;
.source "NotificationMenuRow.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;,
        Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;
    }
.end annotation


# instance fields
.field private mAlpha:F

.field private mAnimating:Z

.field private mAppOpsItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field private mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

.field private mContext:Landroid/content/Context;

.field private mDismissRtl:Z

.field private mDismissing:Z

.field private mFadeAnimator:Landroid/animation/ValueAnimator;

.field private mHandler:Landroid/os/Handler;

.field private mHorizSpaceForIcon:I

.field private mIconLocation:[I

.field private mIconPadding:I

.field private mIconsPlaced:Z

.field private mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

.field private mIsForeground:Z

.field private mIsUserTouching:Z

.field private final mIsUsingBidirectionalSwipe:Z

.field private mLeftMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuContainer:Landroid/widget/FrameLayout;

.field private mMenuFadedIn:Z

.field private final mMenuItemsByView:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

.field private mMenuSnapped:Z

.field private mMenuSnappedOnLeft:Z

.field private mOnLeft:Z

.field private mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mParentLocation:[I

.field private mRightMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldShowMenu:Z

.field private mSnapping:Z

.field private mSnoozeItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field private mTranslation:F

.field private mVertSpaceForIcons:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuItemsByView:Ljava/util/Map;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 98
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconLocation:[I

    new-array v0, v0, [I

    .line 99
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParentLocation:[I

    const/4 v0, -0x1

    .line 101
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    .line 102
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mVertSpaceForIcons:I

    .line 103
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconPadding:I

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    .line 125
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$bool;->config_showNotificationGear:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mShouldShowMenu:Z

    .line 127
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    .line 128
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    .line 129
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    .line 130
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUsingBidirectionalSwipe:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)F
    .registers 1

    .line 55
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mTranslation:F

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)Z
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuLocationChange()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;F)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->fadeInMenu(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)Z
    .registers 1

    .line 55
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuFadedIn:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;Z)Z
    .registers 2

    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuFadedIn:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;Z)Z
    .registers 2

    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAnimating:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)F
    .registers 1

    .line 55
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    return p0
.end method

.method private addMenuView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;Landroid/view/ViewGroup;)V
    .registers 5

    .line 694
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getMenuView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 696
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 697
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 698
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 700
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 701
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 702
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 704
    :cond_20
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuItemsByView:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static createAppOpsItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .registers 5

    .line 686
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->app_ops_info:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;

    .line 688
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    const/4 v3, -0x1

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;I)V

    return-object v1
.end method

.method static createInfoItem(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;
    .registers 6

    .line 666
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 667
    sget v1, Lcom/android/systemui/R$string;->notification_menu_gear_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->notification_info:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    .line 670
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    sget v3, Lcom/android/systemui/R$drawable;->ic_settings:I

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;I)V

    return-object v2
.end method

.method static createInfoItem(Landroid/content/Context;Z)Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;
    .registers 7

    .line 675
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 676
    sget v1, Lcom/android/systemui/R$string;->notification_menu_gear_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 677
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->notification_info:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    if-eqz p1, :cond_1d

    .line 680
    sget p1, Lcom/android/systemui/R$drawable;->ic_notifications_silence:I

    goto :goto_1f

    .line 681
    :cond_1d
    sget p1, Lcom/android/systemui/R$drawable;->ic_notifications_alert:I

    .line 682
    :goto_1f
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;I)V

    return-object v2
.end method

.method private createMenuViews(ZZ)V
    .registers 8

    .line 254
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsForeground:Z

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 257
    sget v1, Lcom/android/systemui/R$dimen;->notification_menu_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    .line 258
    sget v1, Lcom/android/systemui/R$dimen;->notification_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mVertSpaceForIcons:I

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "show_notification_snooze"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_35

    move v0, v2

    goto :goto_36

    :cond_35
    move v0, v1

    :goto_36
    if-nez p2, :cond_42

    if-eqz v0, :cond_42

    .line 268
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createSnoozeItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnoozeItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 270
    :cond_42
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createAppOpsItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAppOpsItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 271
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUsingBidirectionalSwipe:Z

    if-eqz v3, :cond_62

    .line 272
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v4

    xor-int/2addr v2, v4

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createInfoItem(Landroid/content/Context;Z)Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    goto :goto_6a

    .line 274
    :cond_62
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createInfoItem(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    .line 277
    :goto_6a
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUsingBidirectionalSwipe:Z

    if-nez v2, :cond_8f

    if-nez p2, :cond_79

    if-eqz v0, :cond_79

    .line 279
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnoozeItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_79
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAppOpsItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_9d

    .line 285
    :cond_8f
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mDismissRtl:Z

    if-eqz p2, :cond_96

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    goto :goto_98

    :cond_96
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    .line 286
    :goto_98
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :goto_9d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->populateMenuViews()V

    if-eqz p1, :cond_a6

    .line 291
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->resetState(Z)V

    goto :goto_b2

    .line 293
    :cond_a6
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconsPlaced:Z

    .line 294
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuLocation()V

    .line 295
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUserTouching:Z

    if-nez p1, :cond_b2

    .line 296
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->onSnapOpen()V

    :cond_b2
    :goto_b2
    return-void
.end method

.method static createSnoozeItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .registers 6

    .line 656
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 657
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->notification_snooze:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 658
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    .line 659
    sget v2, Lcom/android/systemui/R$string;->notification_menu_snooze_description:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 660
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    sget v3, Lcom/android/systemui/R$drawable;->ic_snooze:I

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;I)V

    return-object v2
.end method

.method private fadeInMenu(F)V
    .registers 8

    .line 581
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mDismissing:Z

    if-nez v0, :cond_59

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAnimating:Z

    if-eqz v0, :cond_9

    goto :goto_59

    .line 584
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuLocationChange()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 585
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuAlpha(F)V

    .line 587
    :cond_13
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mTranslation:F

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1d

    move v1, v2

    goto :goto_1e

    :cond_1d
    move v1, v3

    .line 589
    :goto_1e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuLocation()V

    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 590
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    aput v5, v4, v3

    const/high16 v3, 0x3f800000  # 1.0f

    aput v3, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 591
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;FZF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 603
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 621
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 622
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 623
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_59
    :goto_59
    return-void
.end method

.method private isMenuLocationChange()Z
    .registers 6

    .line 510
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mTranslation:F

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconPadding:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 511
    :goto_e
    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mTranslation:F

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconPadding:I

    neg-int v4, v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1a

    move v3, v1

    goto :goto_1b

    :cond_1a
    move v3, v2

    .line 512
    :goto_1b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result v4

    if-eqz v4, :cond_23

    if-nez v3, :cond_2b

    :cond_23
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result p0

    if-nez p0, :cond_2c

    if-eqz v0, :cond_2c

    :cond_2b
    return v1

    :cond_2c
    return v2
.end method

.method private populateMenuViews()V
    .registers 5

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_d

    .line 303
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuItemsByView:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_16

    .line 306
    :cond_d
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    .line 308
    :goto_16
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mOnLeft:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    goto :goto_1f

    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    :goto_1f
    const/4 v1, 0x0

    .line 309
    :goto_20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 310
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->addMenuView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_34
    return-void
.end method

.method private resetState(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 315
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuAlpha(F)V

    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconsPlaced:Z

    .line 317
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuFadedIn:Z

    .line 318
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAnimating:Z

    .line 319
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnapping:Z

    .line 320
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mDismissing:Z

    .line 321
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnapped:Z

    .line 322
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuLocation()V

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_1f

    .line 324
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;->onMenuReset(Landroid/view/View;)V

    :cond_1f
    return-void
.end method

.method private setAppName(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;)V"
        }
    .end annotation

    .line 441
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 442
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_36

    .line 444
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 445
    sget v4, Lcom/android/systemui/R$string;->notification_menu_accessibility:I

    .line 446
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    .line 447
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getContentDescription()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 445
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 448
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getMenuView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 450
    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_36
    return-void
.end method

.method private setMenuLocation()V
    .registers 9

    .line 519
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mTranslation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_b

    move v0, v2

    goto :goto_c

    :cond_b
    move v0, v1

    .line 520
    :goto_c
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconsPlaced:Z

    if-eqz v3, :cond_16

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result v3

    if-eq v0, v3, :cond_59

    :cond_16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isSnapping()Z

    move-result v3

    if-nez v3, :cond_59

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_59

    .line 521
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_59

    .line 525
    :cond_27
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mOnLeft:Z

    .line 526
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mOnLeft:Z

    if-eq v3, v0, :cond_30

    .line 528
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->populateMenuViews()V

    .line 530
    :cond_30
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    :goto_36
    if-ge v1, v3, :cond_57

    .line 532
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 533
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    mul-int/2addr v5, v1

    int-to-float v5, v5

    .line 534
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v7, v1

    sub-int/2addr v6, v7

    int-to-float v6, v6

    if-eqz v0, :cond_52

    goto :goto_53

    :cond_52
    move v5, v6

    .line 535
    :goto_53
    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    goto :goto_36

    .line 537
    :cond_57
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconsPlaced:Z

    :cond_59
    :goto_59
    return-void
.end method


# virtual methods
.method protected beginDrag()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 359
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnapping:Z

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    .line 361
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 363
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 364
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    const/4 v0, 0x1

    .line 365
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUserTouching:Z

    return-void
.end method

.method public canBeDismissed()Z
    .registers 1

    .line 763
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result p0

    return p0
.end method

.method protected cancelDrag()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    .line 402
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 404
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createMenu(Landroid/view/ViewGroup;Landroid/service/notification/StatusBarNotification;)V
    .registers 3

    .line 190
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 p1, 0x1

    if-eqz p2, :cond_13

    .line 192
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget p2, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_13

    move p2, p1

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    .line 191
    :goto_14
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createMenuViews(ZZ)V

    return-void
.end method

.method public getAppOpsMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .registers 2

    .line 145
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAppOpsItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    return-object p0
.end method

.method protected getDismissThreshold()F
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 721
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3f19999a  # 0.6f

    mul-float/2addr p0, v0

    return p0
.end method

.method public getLongpressMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .registers 2

    .line 140
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    return-object p0
.end method

.method protected getMaximumSwipeDistance()F
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 417
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    int-to-float p0, p0

    const v0, 0x3e4ccccd  # 0.2f

    mul-float/2addr p0, v0

    return p0
.end method

.method public getMenuItems(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;"
        }
    .end annotation

    .line 135
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mOnLeft:Z

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    goto :goto_9

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    :goto_9
    return-object p0
.end method

.method public getMenuSnapTarget()I
    .registers 2

    .line 745
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getSpaceForMenu()I

    move-result p0

    if-eqz v0, :cond_b

    goto :goto_c

    :cond_b
    neg-int p0, p0

    :goto_c
    return p0
.end method

.method public getMenuView()Landroid/view/View;
    .registers 1

    .line 213
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method protected getMinimumSwipeDistance()F
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 409
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v0

    if-eqz v0, :cond_d

    const/high16 v0, 0x3e800000  # 0.25f

    goto :goto_10

    :cond_d
    const v0, 0x3e19999a  # 0.15f

    .line 412
    :goto_10
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    return p0
.end method

.method protected getParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 155
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method public getRevealAnimationOrigin()Landroid/graphics/Point;
    .registers 5

    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->getMenuView()Landroid/view/View;

    move-result-object v0

    .line 645
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 646
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    .line 647
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 648
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 650
    :cond_32
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result p0

    sub-int/2addr p0, v1

    .line 651
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p0, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method protected getSnapBackThreshold()F
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 712
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getSpaceForMenu()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getMaximumSwipeDistance()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public getSnoozeMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .registers 2

    .line 150
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnoozeItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    return-object p0
.end method

.method protected getSpaceForMenu()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 563
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method protected getTranslation()F
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 218
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mTranslation:F

    return p0
.end method

.method protected isDismissing()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 175
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mDismissing:Z

    return p0
.end method

.method protected isMenuOnLeft()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 160
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mOnLeft:Z

    return p0
.end method

.method protected isMenuSnapped()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 170
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnapped:Z

    return p0
.end method

.method protected isMenuSnappedOnLeft()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 165
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnappedOnLeft:Z

    return p0
.end method

.method public isMenuVisible()Z
    .registers 2

    .line 198
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isSnappedAndOnSameSide()Z
    .registers 2

    .line 757
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuSnapped()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 758
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuSnappedOnLeft()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result p0

    if-ne v0, p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method protected isSnapping()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 180
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnapping:Z

    return p0
.end method

.method public isSwipedEnoughToShowMenu()Z
    .registers 4

    .line 736
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getMinimumSwipeDistance()F

    move-result v0

    .line 737
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getTranslation()F

    move-result v1

    .line 738
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuVisible()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result p0

    if-eqz p0, :cond_19

    cmpl-float p0, v1, v0

    if-lez p0, :cond_20

    goto :goto_1e

    :cond_19
    neg-float p0, v0

    cmpg-float p0, v1, p0

    if-gez p0, :cond_20

    :goto_1e
    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public isTowardsMenu(F)Z
    .registers 4

    .line 425
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 426
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    cmpg-float v0, p1, v1

    if-lez v0, :cond_1b

    .line 427
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result p0

    if-nez p0, :cond_1d

    cmpl-float p0, p1, v1

    if-ltz p0, :cond_1d

    :cond_1b
    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method protected isUserTouching()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 203
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUserTouching:Z

    return p0
.end method

.method public isWithinSnapMenuThreshold()Z
    .registers 6

    .line 726
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getTranslation()F

    move-result v0

    .line 727
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getSnapBackThreshold()F

    move-result v1

    .line 728
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getDismissThreshold()F

    move-result v2

    .line 729
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_1d

    cmpl-float p0, v0, v1

    if-lez p0, :cond_28

    cmpg-float p0, v0, v2

    if-gez p0, :cond_28

    goto :goto_29

    :cond_1d
    neg-float p0, v1

    cmpg-float p0, v0, p0

    if-gez p0, :cond_28

    neg-float p0, v2

    cmpl-float p0, v0, p0

    if-lez p0, :cond_28

    goto :goto_29

    :cond_28
    move v3, v4

    :goto_29
    return v3
.end method

.method public menuItemToExposeOnSnap()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .registers 2

    .line 639
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUsingBidirectionalSwipe:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 494
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    if-nez v0, :cond_5

    return-void

    .line 498
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParentLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 500
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    div-int/lit8 v0, v0, 0x2

    .line 501
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 502
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconLocation:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParentLocation:[I

    aget v3, v5, v3

    sub-int/2addr v4, v3

    add-int/2addr v4, v0

    const/4 v0, 0x1

    .line 503
    aget v2, v2, v0

    aget v0, v5, v0

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuItemsByView:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuItemsByView:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-interface {v0, v1, v4, v2, p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;->onMenuClicked(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    :cond_44
    return-void
.end method

.method public onConfigurationChanged()V
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setLayoutListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LayoutListener;)V

    return-void
.end method

.method public onDismiss()V
    .registers 2

    .line 394
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->cancelDrag()V

    const/4 v0, 0x0

    .line 395
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnapped:Z

    const/4 v0, 0x1

    .line 396
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mDismissing:Z

    return-void
.end method

.method public onLayout()V
    .registers 2

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconsPlaced:Z

    .line 249
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuLocation()V

    .line 250
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->removeListener()V

    return-void
.end method

.method public onNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V
    .registers 4

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    return-void

    .line 237
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuVisible()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 238
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 237
    :goto_17
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createMenuViews(ZZ)V

    return-void
.end method

.method public onParentHeightUpdate()V
    .registers 3

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    .line 458
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_19

    goto :goto_37

    .line 462
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    .line 464
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mVertSpaceForIcons:I

    if-ge v0, v1, :cond_2c

    .line 465
    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_32

    .line 467
    :cond_2c
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    .line 469
    :goto_32
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_37
    :goto_37
    return-void
.end method

.method public onParentTranslationUpdate(F)V
    .registers 6

    .line 474
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mTranslation:F

    .line 475
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAnimating:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuFadedIn:Z

    if-nez v0, :cond_b

    goto :goto_37

    .line 479
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e99999a  # 0.3f

    mul-float/2addr v0, v1

    .line 480
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    const/high16 v3, 0x3f800000  # 1.0f

    if-nez v2, :cond_22

    goto :goto_34

    :cond_22
    cmpg-float v1, p1, v0

    if-gtz v1, :cond_28

    move v1, v3

    goto :goto_34

    :cond_28
    sub-float/2addr p1, v0

    .line 487
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    sub-float v1, v3, p1

    .line 489
    :goto_34
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuAlpha(F)V

    :cond_37
    :goto_37
    return-void
.end method

.method public onSnapClosed()V
    .registers 2

    .line 387
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->cancelDrag()V

    const/4 v0, 0x0

    .line 388
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnapped:Z

    const/4 v0, 0x1

    .line 389
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnapping:Z

    return-void
.end method

.method public onSnapOpen()V
    .registers 3

    const/4 v0, 0x1

    .line 375
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnapped:Z

    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnappedOnLeft:Z

    .line 377
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_1c

    .line 378
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->fadeInMenu(F)V

    .line 380
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    if-eqz v0, :cond_27

    .line 381
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;->onMenuShown(Landroid/view/View;)V

    :cond_27
    return-void
.end method

.method public onTouchEnd()V
    .registers 2

    const/4 v0, 0x0

    .line 228
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUserTouching:Z

    return-void
.end method

.method public onTouchMove(F)V
    .registers 4

    const/4 v0, 0x0

    .line 330
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnapping:Z

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isTowardsMenu(F)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_26

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuLocationChange()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 334
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnapped:Z

    .line 337
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 339
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    goto :goto_26

    :cond_1f
    const/4 p1, 0x0

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuAlpha(F)V

    .line 343
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuLocation()V

    .line 346
    :cond_26
    :goto_26
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mShouldShowMenu:Z

    if-eqz p1, :cond_60

    .line 347
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_60

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 348
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result p1

    if-nez p1, :cond_60

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 349
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result p1

    if-nez p1, :cond_60

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    if-eqz p1, :cond_50

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    .line 350
    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_60

    .line 352
    :cond_50
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    .line 353
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    const-wide/16 v0, 0x3c

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_60
    return-void
.end method

.method public onTouchStart()V
    .registers 1

    .line 370
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->beginDrag()V

    return-void
.end method

.method public resetMenu()V
    .registers 2

    const/4 v0, 0x1

    .line 223
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->resetState(Z)V

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 435
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setAppName(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setAppName(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public setDismissRtl(Z)V
    .registers 3

    .line 768
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mDismissRtl:Z

    .line 769
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    .line 770
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsForeground:Z

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createMenuViews(ZZ)V

    :cond_c
    return-void
.end method

.method protected setMenuAlpha(F)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 542
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    .line 543
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    const/4 v1, 0x0

    if-nez p1, :cond_14

    .line 547
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuFadedIn:Z

    const/4 p1, 0x4

    .line 548
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_17

    .line 550
    :cond_14
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 552
    :goto_17
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    :goto_1d
    if-ge v1, p1, :cond_2d

    .line 554
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2d
    return-void
.end method

.method public setMenuClickListener(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    return-void
.end method

.method public setMenuItems(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public shouldShowGutsOnSnapOpen()Z
    .registers 1

    .line 634
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUsingBidirectionalSwipe:Z

    return p0
.end method

.method public shouldShowMenu()Z
    .registers 1

    .line 208
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mShouldShowMenu:Z

    return p0
.end method

.method public shouldSnapBack()Z
    .registers 5

    .line 750
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getTranslation()F

    move-result v0

    .line 751
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getSnapBackThreshold()F

    move-result v1

    .line 752
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_15

    cmpg-float p0, v0, v1

    if-gez p0, :cond_1b

    goto :goto_1c

    :cond_15
    neg-float p0, v1

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v2, v3

    :goto_1c
    return v2
.end method
