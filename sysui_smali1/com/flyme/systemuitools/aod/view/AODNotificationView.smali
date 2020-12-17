.class public Lcom/flyme/systemuitools/aod/view/AODNotificationView;
.super Landroid/support/v7/widget/RecyclerView;
.source "AODNotificationView.java"

# interfaces
.implements Lcom/flyme/systemuitools/aod/view/INotificationCallback;
.implements Lcom/flyme/systemuitools/aod/presenter/GradientPresenter$IGradientCallback;
.implements Lcom/flyme/systemuitools/aod/presenter/AODStateController$StyleChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;,
        Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationViewHolder;,
        Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;
    }
.end annotation


# instance fields
.field private mColors:[I

.field private mContext:Landroid/content/Context;

.field private mFilterNotificationData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;",
            ">;"
        }
    .end annotation
.end field

.field private mItemHeight:I

.field private mItemWidth:I

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mMoreImage:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

.field private mMusicPlaying:Z

.field private mNeedRefresh:Z

.field private mNotificationAdapter:Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;

.field private mNotificationData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationSortByTime:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mNotificationViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

.field private mNotifyImage:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

.field private mOnGoingImage:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

.field private mOngoingNotificationData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;",
            ">;"
        }
    .end annotation
.end field

.field private mThirdAppNotificationData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 65
    sget-object p1, Lcom/flyme/systemuitools/aod/Config;->DEFAULT_COLOR:[I

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mColors:[I

    .line 67
    const-class p1, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    .line 68
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    sget-object p2, Lcom/flyme/systemuitools/aod/Config;->DEFAULT_COLOR:[I

    iput-object p2, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mColors:[I

    .line 67
    const-class p2, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    .line 68
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    iput-object p2, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    .line 76
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mContext:Landroid/content/Context;

    .line 77
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationData:Ljava/util/Map;

    .line 78
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mThirdAppNotificationData:Ljava/util/Map;

    .line 79
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mOngoingNotificationData:Ljava/util/Map;

    .line 80
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mFilterNotificationData:Ljava/util/Map;

    .line 81
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->aod_notication_item_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mItemWidth:I

    .line 82
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->aod_notication_item_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mItemHeight:I

    .line 83
    invoke-static {}, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;->getInstance()Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;->registerCallback(Lcom/flyme/systemuitools/aod/presenter/GradientPresenter$IGradientCallback;)V

    .line 84
    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->addCallBack(Lcom/flyme/systemuitools/aod/presenter/AODStateController$StyleChangeCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    sget-object p1, Lcom/flyme/systemuitools/aod/Config;->DEFAULT_COLOR:[I

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mColors:[I

    .line 67
    const-class p1, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    .line 68
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Ljava/util/Map;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationData:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationAdapter:Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/flyme/systemuitools/aod/view/AODNotificationView;Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;)Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationAdapter:Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Ljava/util/Map;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mOngoingNotificationData:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Ljava/util/Map;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mThirdAppNotificationData:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotifyImage:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/flyme/systemuitools/aod/view/AODNotificationView;Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;)Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotifyImage:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mOnGoingImage:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/flyme/systemuitools/aod/view/AODNotificationView;Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;)Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mOnGoingImage:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mMoreImage:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/flyme/systemuitools/aod/view/AODNotificationView;Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;)Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mMoreImage:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)[I
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mColors:[I

    return-object p0
.end method

.method static synthetic access$800(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mItemWidth:I

    return p0
.end method

.method static synthetic access$900(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mItemHeight:I

    return p0
.end method

.method private doAnimation()V
    .registers 3

    const-string v0, "AODNotificationView"

    const-string v1, "doAnimation"

    .line 520
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->getCommonAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 522
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private insertNotificationData(Landroid/service/notification/StatusBarNotification;)V
    .registers 7

    .line 231
    new-instance v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;

    invoke-direct {v0, p0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;-><init>(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)V

    .line 232
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notifcationPackage:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notifcationOrigPackage:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->isOnGoing:Z

    .line 235
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->getIcons(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;

    move-result-object v1

    iget-object v2, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notifcationOrigPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->isInternalApp(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->isSystemApp:Z

    .line 238
    iget-boolean v1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->isSystemApp:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_42

    .line 239
    iput-boolean v2, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->hasCustomizedIcon:Z

    .line 240
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notificationDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_6d

    .line 242
    :cond_42
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->getIcons(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;

    move-result-object v1

    iget-object v4, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notifcationOrigPackage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->getMeizuCustomizedIcon(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_53

    move v2, v3

    .line 244
    :cond_53
    iput-boolean v2, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->hasCustomizedIcon:Z

    .line 245
    iget-boolean v2, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->hasCustomizedIcon:Z

    if-eqz v2, :cond_68

    .line 247
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->getIcons(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->getDrawableById(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notificationDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_6d

    .line 249
    :cond_68
    iget-boolean v1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->isOnGoing:Z

    xor-int/2addr v1, v3

    iput-boolean v1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->isThirdAppNotify:Z

    .line 253
    :goto_6d
    iput v3, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notificationNums:I

    .line 254
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notificaationId:Ljava/util/HashSet;

    .line 255
    iget-object v1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notificaationId:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->icon:I

    iput v1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->iconId:I

    .line 257
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->priority:I

    iput v1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->priority:I

    .line 258
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->time:J

    .line 260
    iget-object p1, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean p1, p1, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    if-eqz p1, :cond_a7

    .line 261
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mFilterNotificationData:Ljava/util/Map;

    iget-object p1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notifcationOrigPackage:Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cf

    .line 262
    :cond_a7
    iget-boolean p1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->isSystemApp:Z

    if-nez p1, :cond_c8

    iget-boolean p1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->hasCustomizedIcon:Z

    if-eqz p1, :cond_b0

    goto :goto_c8

    .line 264
    :cond_b0
    iget-boolean p1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->isThirdAppNotify:Z

    if-eqz p1, :cond_bc

    .line 265
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mThirdAppNotificationData:Ljava/util/Map;

    iget-object p1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notifcationOrigPackage:Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cf

    .line 266
    :cond_bc
    iget-boolean p1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->isOnGoing:Z

    if-eqz p1, :cond_cf

    .line 267
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mOngoingNotificationData:Ljava/util/Map;

    iget-object p1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notifcationOrigPackage:Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cf

    .line 263
    :cond_c8
    :goto_c8
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationData:Ljava/util/Map;

    iget-object p1, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notifcationOrigPackage:Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_cf
    :goto_cf
    return-void
.end method

.method private updateAdatperData()V
    .registers 3

    .line 273
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationSortByTime:Landroid/os/AsyncTask;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 274
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 277
    :cond_8
    new-instance v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;-><init>(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationSortByTime:Landroid/os/AsyncTask;

    .line 362
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationSortByTime:Landroid/os/AsyncTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateFilterNotificationData(Landroid/service/notification/StatusBarNotification;Z)V
    .registers 9

    .line 209
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_5f

    .line 211
    iget-object p2, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mFilterNotificationData:Ljava/util/Map;

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    .line 212
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->insertNotificationData(Landroid/service/notification/StatusBarNotification;)V

    .line 215
    :cond_11
    iget-object p2, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationData:Ljava/util/Map;

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2b

    .line 216
    iget-object p2, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationData:Ljava/util/Map;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;

    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationData:Ljava/util/Map;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateNotificationMap(Landroid/service/notification/StatusBarNotification;Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;Ljava/util/Map;Ljava/lang/String;Z)V

    goto :goto_6c

    .line 217
    :cond_2b
    iget-object p2, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mThirdAppNotificationData:Ljava/util/Map;

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_45

    .line 218
    iget-object p2, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mThirdAppNotificationData:Ljava/util/Map;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;

    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mThirdAppNotificationData:Ljava/util/Map;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateNotificationMap(Landroid/service/notification/StatusBarNotification;Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;Ljava/util/Map;Ljava/lang/String;Z)V

    goto :goto_6c

    .line 219
    :cond_45
    iget-object p2, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mOngoingNotificationData:Ljava/util/Map;

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6c

    .line 220
    iget-object p2, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mOngoingNotificationData:Ljava/util/Map;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;

    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mOngoingNotificationData:Ljava/util/Map;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateNotificationMap(Landroid/service/notification/StatusBarNotification;Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;Ljava/util/Map;Ljava/lang/String;Z)V

    goto :goto_6c

    .line 224
    :cond_5f
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mFilterNotificationData:Ljava/util/Map;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 225
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mFilterNotificationData:Ljava/util/Map;

    invoke-interface {p0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6c
    :goto_6c
    return-void
.end method

.method private updateNotificationData(Landroid/service/notification/StatusBarNotification;Z)V
    .registers 11

    const/4 v0, 0x1

    if-eqz p2, :cond_3b

    .line 134
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-nez v1, :cond_3a

    .line 135
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 136
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "group_key_override"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 137
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 138
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "mz_window_mode_video"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_3b

    :cond_3a
    return-void

    .line 144
    :cond_3b
    iget-object v1, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v1, v1, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    if-eqz v1, :cond_45

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateFilterNotificationData(Landroid/service/notification/StatusBarNotification;Z)V

    return-void

    .line 149
    :cond_45
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->getShowLockScreenPeriodNoti()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isKeyguardPeriodNotification()Z

    move-result v1

    if-nez v1, :cond_54

    return-void

    .line 153
    :cond_54
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v6

    .line 155
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationData:Ljava/util/Map;

    if-eqz v1, :cond_cf

    .line 156
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 157
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationData:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;

    .line 158
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->getIcons(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->isInternalApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    iget v1, v4, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->iconId:I

    .line 159
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->icon:I

    if-eq v1, v2, :cond_8b

    if-eqz p2, :cond_cf

    .line 162
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->insertNotificationData(Landroid/service/notification/StatusBarNotification;)V

    .line 163
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNeedRefresh:Z

    goto :goto_cf

    .line 166
    :cond_8b
    iget-object v5, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationData:Ljava/util/Map;

    move-object v2, p0

    move-object v3, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateNotificationMap(Landroid/service/notification/StatusBarNotification;Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;Ljava/util/Map;Ljava/lang/String;Z)V

    goto :goto_cf

    .line 168
    :cond_94
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mThirdAppNotificationData:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 169
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mThirdAppNotificationData:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;

    .line 170
    iget-object v5, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mThirdAppNotificationData:Ljava/util/Map;

    move-object v2, p0

    move-object v3, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateNotificationMap(Landroid/service/notification/StatusBarNotification;Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;Ljava/util/Map;Ljava/lang/String;Z)V

    goto :goto_cf

    .line 171
    :cond_ae
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mOngoingNotificationData:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 172
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mOngoingNotificationData:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;

    .line 173
    iget-object v5, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mOngoingNotificationData:Ljava/util/Map;

    move-object v2, p0

    move-object v3, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateNotificationMap(Landroid/service/notification/StatusBarNotification;Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;Ljava/util/Map;Ljava/lang/String;Z)V

    goto :goto_cf

    :cond_c8
    if-eqz p2, :cond_cf

    .line 176
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->insertNotificationData(Landroid/service/notification/StatusBarNotification;)V

    .line 177
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNeedRefresh:Z

    :cond_cf
    :goto_cf
    return-void
.end method

.method private updateNotificationMap(Landroid/service/notification/StatusBarNotification;Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;Ljava/util/Map;Ljava/lang/String;Z)V
    .registers 8

    const/4 v0, 0x1

    if-eqz p5, :cond_2f

    .line 186
    iget-object p0, p2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notificaationId:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p0, p5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_60

    .line 187
    iget p0, p2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notificationNums:I

    add-int/2addr p0, v0

    iput p0, p2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notificationNums:I

    .line 188
    iget-object p0, p2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notificaationId:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p0, p5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide p0

    iput-wide p0, p2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->time:J

    .line 190
    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    .line 193
    :cond_2f
    iget-object p5, p2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notificaationId:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_60

    .line 194
    iget p5, p2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notificationNums:I

    sub-int/2addr p5, v0

    iput p5, p2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notificationNums:I

    .line 196
    iget p5, p2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notificationNums:I

    if-nez p5, :cond_4e

    .line 197
    invoke-interface {p3, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNeedRefresh:Z

    goto :goto_60

    :cond_4e
    if-lez p5, :cond_60

    .line 201
    iget-object p0, p2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notificaationId:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    :goto_60
    return-void
.end method

.method private updateNotificationVisibility(Z)V
    .registers 2

    if-eqz p1, :cond_11

    .line 507
    iget-boolean p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mMusicPlaying:Z

    if-nez p1, :cond_11

    .line 508
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1c

    .line 510
    :cond_11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1c
    return-void
.end method


# virtual methods
.method public musicPlaying(Z)V
    .registers 2

    .line 515
    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mMusicPlaying:Z

    .line 516
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getNotificationSettings()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateNotificationVisibility(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 499
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onAttachedToWindow()V

    .line 500
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getNotificationColors()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateNotificationIconGradientColor([I)V

    .line 501
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getNotificationSettings()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateNotificationVisibility(Z)V

    .line 503
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->doAnimation()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 93
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 94
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 95
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onNotificationFilterChange(Landroid/service/notification/StatusBarNotification;)V
    .registers 5

    .line 444
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v0

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filterPackageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v2, v2, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AODNotificationView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v1, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v1, v1, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    if-eqz v1, :cond_65

    .line 448
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mFilterNotificationData:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    const/4 v1, 0x1

    .line 449
    invoke-direct {p0, p1, v1}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateFilterNotificationData(Landroid/service/notification/StatusBarNotification;Z)V

    .line 452
    :cond_38
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationData:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 453
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationData:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    .line 454
    :cond_46
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mThirdAppNotificationData:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 455
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mThirdAppNotificationData:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    .line 456
    :cond_54
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mOngoingNotificationData:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 457
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mOngoingNotificationData:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_61
    :goto_61
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateAdatperData()V

    goto :goto_90

    .line 463
    :cond_65
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationData:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mThirdAppNotificationData:Ljava/util/Map;

    .line 464
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mOngoingNotificationData:Ljava/util/Map;

    .line 465
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    .line 466
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->insertNotificationData(Landroid/service/notification/StatusBarNotification;)V

    .line 467
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateAdatperData()V

    .line 470
    :cond_83
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mFilterNotificationData:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_90

    .line 471
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mFilterNotificationData:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_90
    :goto_90
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .registers 4

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "posted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",iconid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AODNotificationView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 125
    invoke-direct {p0, p1, v0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateNotificationData(Landroid/service/notification/StatusBarNotification;Z)V

    .line 127
    iget-boolean p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNeedRefresh:Z

    if-eqz p1, :cond_36

    .line 128
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateAdatperData()V

    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNeedRefresh:Z

    :cond_36
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .registers 4

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",iconid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AODNotificationView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateNotificationData(Landroid/service/notification/StatusBarNotification;Z)V

    .line 116
    iget-boolean p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNeedRefresh:Z

    if-eqz p1, :cond_35

    .line 117
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateAdatperData()V

    .line 118
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNeedRefresh:Z

    :cond_35
    return-void
.end method

.method public onNotificationSettings(Z)V
    .registers 2

    .line 372
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateNotificationVisibility(Z)V

    return-void
.end method

.method public onStyleChange()V
    .registers 1

    return-void
.end method

.method public refreshNotification()V
    .registers 1

    return-void
.end method

.method public updateClockGradientColor([I)V
    .registers 2

    return-void
.end method

.method public updateDateGradientColor([I)V
    .registers 2

    return-void
.end method

.method public updateNotificationIconGradientColor([I)V
    .registers 2

    .line 493
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mColors:[I

    .line 494
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateAdatperData()V

    return-void
.end method

.method public updateNotifications([Landroid/service/notification/StatusBarNotification;)V
    .registers 6

    .line 100
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mNotificationData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 101
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mFilterNotificationData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 102
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mOngoingNotificationData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 103
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->mThirdAppNotificationData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 104
    array-length v0, p1

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_21

    aget-object v2, p1, v1

    const/4 v3, 0x1

    .line 105
    invoke-direct {p0, v2, v3}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateNotificationData(Landroid/service/notification/StatusBarNotification;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 108
    :cond_21
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateAdatperData()V

    return-void
.end method
