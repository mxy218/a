.class public Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;
.super Ljava/lang/Object;
.source "NotificationViewHierarchyManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static sKeyguardNotificationWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlwaysExpandNonGroupedNotification:Z

.field private mApplicationAccessControl:Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl;

.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mContext:Landroid/content/Context;

.field private final mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mFaceRecognitionSucceeded:Z

.field private mFilterListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field protected final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private final mHandler:Landroid/os/Handler;

.field private mIsHandleDynamicPrivacyChangeScheduled:Z

.field private mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field protected mLockscreenSettingsObserver:Landroid/database/ContentObserver;

.field protected final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private mPerformingUpdate:Z

.field private mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private final mShadeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;"
        }
    .end annotation
.end field

.field private mShowLockScreenPeriodNoti:Z

.field private mSpaceController:Lmeizu/space/MSpaceController;

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final mTmpChildOrderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 667
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->sKeyguardNotificationWhiteList:Ljava/util/ArrayList;

    .line 668
    sget-object v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->sKeyguardNotificationWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;)V
    .registers 14
    .param p2  # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "main_handler"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/systemui/bubbles/BubbleController;",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    .line 672
    const-class v0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mApplicationAccessControl:Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl;

    .line 678
    new-instance v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager$2;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager$2;-><init>(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 128
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mHandler:Landroid/os/Handler;

    .line 129
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 130
    iput-object p9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 131
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 132
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 133
    check-cast p6, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p6, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 134
    iput-object p7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 135
    iput-object p8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mShadeController:Ldagger/Lazy;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 137
    sget p3, Lcom/android/systemui/R$bool;->config_alwaysExpandNonGroupedNotifications:I

    .line 138
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mAlwaysExpandNonGroupedNotification:Z

    .line 139
    iput-object p10, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    .line 140
    iput-object p11, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 141
    invoke-virtual {p11, p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->addListener(Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;)V

    .line 144
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mContext:Landroid/content/Context;

    .line 145
    invoke-static {p1}, Lmeizu/space/MSpaceControllerImpl;->getController(Landroid/content/Context;)Lmeizu/space/MSpaceController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mSpaceController:Lmeizu/space/MSpaceController;

    const-string/jumbo p1, "statusbar"

    .line 147
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 146
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 148
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mApplicationAccessControl:Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl;

    new-instance p2, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager$1;-><init>(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;)V

    invoke-interface {p1, p2}, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl;->addOnAccessChange(Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl$OnAccessChange;)V

    .line 159
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x1

    const-string p3, "lock_screen_show_notifications"

    invoke-static {p1, p3, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p4, 0x0

    const/4 p5, 0x2

    if-ne p1, p5, :cond_79

    goto :goto_7a

    :cond_79
    move p2, p4

    :goto_7a
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mShowLockScreenPeriodNoti:Z

    .line 162
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 163
    invoke-static {p3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    const/4 p3, -0x1

    .line 162
    invoke-virtual {p1, p2, p4, p0, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;)Landroid/content/Context;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;Z)Z
    .registers 2

    .line 78
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mShowLockScreenPeriodNoti:Z

    return p1
.end method

.method private addNotificationChildrenAndSort()V
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 430
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v3

    if-ge v1, v3, :cond_8e

    .line 431
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v3, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 432
    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v4, :cond_16

    goto :goto_8a

    .line 437
    :cond_16
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 438
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v4

    .line 439
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move v6, v0

    :goto_25
    if-eqz v5, :cond_81

    .line 441
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_81

    .line 443
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_3b

    .line 444
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7e

    .line 445
    :cond_3b
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_71

    .line 446
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "trying to add a notification child that already has a parent. class:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\n child: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "NotificationViewHierarchyManager"

    .line 446
    invoke-static {v9, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 452
    :cond_71
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyViewAddition(Landroid/view/View;)V

    .line 453
    invoke-virtual {v3, v7, v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->addChildNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    .line 454
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v8, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->notifyGroupChildAdded(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    :cond_7e
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 459
    :cond_81
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v3, v5, v4, v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z

    move-result v3

    or-int/2addr v2, v3

    :goto_8a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_8e
    if-eqz v2, :cond_95

    .line 463
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->generateChildOrderChangedEvent()V

    :cond_95
    return-void
.end method

.method private beginUpdate()V
    .registers 4

    .line 629
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPerformingUpdate:Z

    if-eqz v0, :cond_10

    .line 630
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "NotificationViewHierarchyManager"

    const-string v2, "Re-entrant code during update"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    const/4 v0, 0x1

    .line 632
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPerformingUpdate:Z

    return-void
.end method

.method private endUpdate()V
    .registers 4

    .line 636
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPerformingUpdate:Z

    if-nez v0, :cond_10

    .line 637
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "NotificationViewHierarchyManager"

    const-string v2, "Manager state has become desynced"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    const/4 v0, 0x0

    .line 639
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPerformingUpdate:Z

    return-void
.end method

.method public static synthetic lambda$VZHW9NMJkqBLUXo3lkuiamxmEXo(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->onHandleDynamicPrivacyChanged()V

    return-void
.end method

.method private onHandleDynamicPrivacyChanged()V
    .registers 2

    const/4 v0, 0x0

    .line 624
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mIsHandleDynamicPrivacyChangeScheduled:Z

    .line 625
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateNotificationViews()V

    return-void
.end method

.method private removeNotificationChildren()V
    .registers 8

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 470
    :goto_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v2

    if-ge v1, v2, :cond_82

    .line 471
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 472
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v3, :cond_19

    goto :goto_7f

    .line 477
    :cond_19
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 478
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v3

    .line 479
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v3, :cond_7f

    .line 482
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 483
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_30
    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_44

    .line 485
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_30

    .line 486
    :cond_44
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->keepInParent()Z

    move-result v6

    if-nez v6, :cond_30

    .line 487
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 490
    :cond_4e
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_52
    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 491
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->removeChildNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 492
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v5

    .line 493
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 492
    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v5

    if-nez v5, :cond_52

    .line 496
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 497
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    move-result-object v6

    .line 496
    invoke-interface {v5, v4, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->notifyGroupChildRemoved(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/ViewGroup;)V

    goto :goto_52

    :cond_7f
    :goto_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_82
    return-void
.end method

.method private updateRowStatesInternal()V
    .registers 14

    const-string v0, "NotificationViewHierarchyManager#updateRowStates"

    .line 515
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v0

    .line 519
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_17

    move v1, v3

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    if-eqz v1, :cond_1f

    .line 521
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 526
    :cond_1f
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setMaxDisplayedNotifications(I)V

    .line 527
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    sub-int/2addr v0, v3

    :goto_2b
    if-ltz v0, :cond_40

    .line 529
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v5, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 530
    instance-of v6, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v6, :cond_38

    goto :goto_3d

    .line 533
    :cond_38
    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3d
    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    :cond_40
    move v0, v2

    .line 535
    :goto_41
    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_144

    .line 536
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 537
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    .line 538
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v8, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 539
    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    .line 541
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setOnKeyguard(Z)V

    if-nez v1, :cond_73

    .line 546
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mAlwaysExpandNonGroupedNotification:Z

    if-nez v8, :cond_6f

    if-nez v0, :cond_6d

    if-nez v7, :cond_6d

    .line 548
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isLowPriority()Z

    move-result v8

    if-nez v8, :cond_6d

    goto :goto_6f

    :cond_6d
    move v8, v2

    goto :goto_70

    :cond_6f
    :goto_6f
    move v8, v3

    .line 546
    :goto_70
    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSystemExpanded(Z)V

    .line 552
    :cond_73
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isUserLocked()Z

    move-result v8

    if-nez v8, :cond_90

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v8

    if-nez v8, :cond_90

    if-nez v7, :cond_90

    .line 553
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v8

    if-nez v8, :cond_90

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpandable()Z

    move-result v8

    if-eqz v8, :cond_90

    .line 554
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSystemExpanded(Z)V

    .line 558
    :cond_90
    iget-object v8, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v8

    .line 559
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v10, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v9

    if-eqz v9, :cond_a8

    .line 560
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v9

    if-nez v9, :cond_a8

    move v9, v3

    goto :goto_a9

    :cond_a8
    move v9, v2

    .line 561
    :goto_a9
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v10, v6}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v10

    if-nez v10, :cond_ce

    .line 564
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v12, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-eqz v11, :cond_ce

    .line 565
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v12, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v11

    if-eqz v11, :cond_ce

    .line 567
    iget-object v12, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v12, v11}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v11

    if-eqz v11, :cond_ce

    move v10, v3

    :cond_ce
    const/16 v11, 0x8

    if-nez v9, :cond_114

    .line 572
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 573
    invoke-interface {v9, v8}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldHideNotifications(I)Z

    move-result v8

    if-nez v8, :cond_114

    if-eqz v1, :cond_df

    if-nez v10, :cond_df

    goto :goto_114

    .line 577
    :cond_df
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    if-ne v8, v11, :cond_eb

    move v8, v3

    goto :goto_ec

    :cond_eb
    move v8, v2

    :goto_ec
    if-eqz v8, :cond_f5

    .line 579
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setVisibility(I)V

    :cond_f5
    if-nez v7, :cond_11b

    .line 581
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_11b

    if-eqz v8, :cond_111

    .line 584
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v8

    if-nez v10, :cond_10d

    move v9, v3

    goto :goto_10e

    :cond_10d
    move v9, v2

    :goto_10e
    invoke-interface {v7, v8, v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->generateAddAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :cond_111
    add-int/lit8 v0, v0, 0x1

    goto :goto_11b

    .line 575
    :cond_114
    :goto_114
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setVisibility(I)V

    .line 590
    :cond_11b
    :goto_11b
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v7

    if-eqz v7, :cond_138

    .line 592
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v7

    .line 593
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_12a
    if-ltz v8, :cond_138

    .line 595
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v4, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    goto :goto_12a

    .line 599
    :cond_138
    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 600
    iget-wide v6, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastAudiblyAlertedMs:J

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setLastAudiblyAlertedMs(J)V

    goto/16 :goto_41

    :cond_144
    const-string v0, "NotificationPresenter#onUpdateRowStates"

    .line 603
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 604
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationPresenter;->onUpdateRowStates()V

    .line 605
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 606
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method


# virtual methods
.method public getShowLockScreenPeriodNoti()Z
    .registers 1

    .line 655
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mShowLockScreenPeriodNoti:Z

    return p0
.end method

.method public onDynamicPrivacyChanged()V
    .registers 3

    .line 611
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPerformingUpdate:Z

    if-eqz v0, :cond_b

    const-string v0, "NotificationViewHierarchyManager"

    const-string v1, "onDynamicPrivacyChanged made a re-entrant call"

    .line 612
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mIsHandleDynamicPrivacyChangeScheduled:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    .line 618
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mIsHandleDynamicPrivacyChangeScheduled:Z

    .line 619
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$NotificationViewHierarchyManager$VZHW9NMJkqBLUXo3lkuiamxmEXo;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationViewHierarchyManager$VZHW9NMJkqBLUXo3lkuiamxmEXo;-><init>(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1c
    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V
    .registers 4

    .line 175
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 176
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 178
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mFilterListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    return-void
.end method

.method public shouldShowPublicNotification()Z
    .registers 3

    .line 647
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mFaceRecognitionSucceeded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->faceAllowPrivateNotificationPolicy()I

    move-result v0

    if-eq v0, v1, :cond_18

    :cond_d
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 648
    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->faceAllowPrivateNotificationPolicy()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :cond_18
    :goto_18
    return v1
.end method

.method public updateFaceState(Z)V
    .registers 2

    .line 643
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mFaceRecognitionSucceeded:Z

    return-void
.end method

.method public updateNotificationViews()V
    .registers 19

    move-object/from16 v0, p0

    .line 187
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->beginUpdate()V

    .line 190
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_29
    const-string v7, ",oriPkg="

    const-string v8, "NotificationViewHierarchyManager"

    const/4 v9, 0x1

    if-ge v6, v4, :cond_25f

    .line 198
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 199
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v11

    if-nez v11, :cond_257

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v11

    if-nez v11, :cond_257

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    iget-object v12, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    .line 200
    invoke-virtual {v11, v12}, Lcom/android/systemui/bubbles/BubbleController;->isBubbleNotificationSuppressedFromShade(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4e

    goto/16 :goto_257

    .line 206
    :cond_4e
    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v11

    .line 211
    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v12}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v12

    .line 212
    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v13, v12}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v13

    if-nez v13, :cond_6d

    .line 213
    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 214
    invoke-interface {v14, v11}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v14

    if-eqz v14, :cond_6b

    goto :goto_6d

    :cond_6b
    const/4 v14, 0x0

    goto :goto_6e

    :cond_6d
    :goto_6d
    move v14, v9

    :goto_6e
    if-eqz v14, :cond_86

    .line 215
    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicallyUnlocked()Z

    move-result v15

    if-eqz v15, :cond_86

    if-eq v11, v12, :cond_85

    const/4 v15, -0x1

    if-eq v11, v15, :cond_85

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 217
    invoke-interface {v15, v11}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsSeparateWorkChallenge(I)Z

    move-result v11

    if-nez v11, :cond_86

    :cond_85
    const/4 v14, 0x0

    .line 222
    :cond_86
    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v11}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v11

    if-ne v11, v9, :cond_90

    move v11, v9

    goto :goto_91

    :cond_90
    const/4 v11, 0x0

    .line 223
    :goto_91
    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mApplicationAccessControl:Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl;

    iget-object v5, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v15, v5}, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl;->isEncrypt(Ljava/lang/String;)Z

    move-result v5

    if-nez v14, :cond_a4

    if-eqz v5, :cond_a2

    goto :goto_a4

    :cond_a2
    const/4 v14, 0x0

    goto :goto_a5

    :cond_a4
    :goto_a4
    move v14, v9

    .line 226
    :goto_a5
    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mSpaceController:Lmeizu/space/MSpaceController;

    iget-object v9, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-interface {v15, v9, v11}, Lmeizu/space/MSpaceController;->isSilenceNotification(Landroid/service/notification/StatusBarNotification;Z)Z

    move-result v9

    if-eqz v11, :cond_118

    .line 228
    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget v11, v11, Landroid/app/Notification;->flags:I

    const/high16 v15, 0x4000000

    and-int/2addr v11, v15

    if-nez v11, :cond_cb

    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 229
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v11

    if-eqz v11, :cond_c9

    goto :goto_cb

    :cond_c9
    const/4 v11, 0x0

    goto :goto_cc

    :cond_cb
    :goto_cb
    const/4 v11, 0x1

    :goto_cc
    if-nez v11, :cond_114

    .line 231
    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v11, v11, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    if-eqz v11, :cond_de

    const-string v15, "playbackservice.status_tag"

    invoke-virtual {v11, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_de

    const/4 v11, 0x1

    goto :goto_df

    :cond_de
    const/4 v11, 0x0

    .line 232
    :goto_df
    iget-object v15, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v15

    if-nez v15, :cond_fa

    sget-object v15, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->sKeyguardNotificationWhiteList:Ljava/util/ArrayList;

    move-object/from16 v17, v1

    iget-object v1, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f8

    goto :goto_fc

    :cond_f8
    const/4 v1, 0x0

    goto :goto_fd

    :cond_fa
    move-object/from16 v17, v1

    :goto_fc
    const/4 v1, 0x1

    .line 234
    :goto_fd
    iget-boolean v15, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mShowLockScreenPeriodNoti:Z

    if-eqz v15, :cond_10f

    .line 235
    iget-object v15, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->isKeyguardPeriodNotification()Z

    move-result v15

    if-nez v11, :cond_10d

    if-eqz v1, :cond_10d

    if-nez v15, :cond_116

    :cond_10d
    :goto_10d
    const/4 v1, 0x1

    goto :goto_11b

    :cond_10f
    if-nez v11, :cond_10d

    if-nez v1, :cond_116

    goto :goto_10d

    :cond_114
    move-object/from16 v17, v1

    :cond_116
    const/4 v1, 0x0

    goto :goto_11b

    :cond_118
    move-object/from16 v17, v1

    move v1, v11

    :goto_11b
    if-eqz v5, :cond_126

    .line 246
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v11

    iget-object v15, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11, v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updatePublicContentViewFlyme(Landroid/service/notification/StatusBarNotification;)V

    .line 250
    :cond_126
    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v11, v10}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v11

    if-nez v11, :cond_137

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->shouldShowPublicNotification()Z

    move-result v11

    if-eqz v11, :cond_135

    goto :goto_137

    :cond_135
    const/4 v11, 0x0

    goto :goto_138

    :cond_137
    :goto_137
    const/4 v11, 0x1

    :goto_138
    if-eqz v14, :cond_13e

    if-eqz v11, :cond_13e

    const/4 v14, 0x1

    goto :goto_13f

    :cond_13e
    const/4 v14, 0x0

    :goto_13f
    if-eqz v13, :cond_14b

    .line 252
    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 253
    invoke-interface {v13, v12}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v12

    if-nez v12, :cond_14b

    const/4 v12, 0x1

    goto :goto_14c

    :cond_14b
    const/4 v12, 0x0

    .line 255
    :goto_14c
    invoke-virtual {v10, v14, v12}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setSensitive(ZZ)V

    .line 256
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v12

    if-nez v11, :cond_15a

    if-eqz v5, :cond_158

    goto :goto_15a

    :cond_158
    const/4 v11, 0x0

    goto :goto_15b

    :cond_15a
    :goto_15a
    const/4 v11, 0x1

    :goto_15b
    invoke-virtual {v12, v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setNeedsRedaction(Z)V

    .line 258
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIsEncryptApp(Z)V

    if-nez v1, :cond_259

    if-nez v9, :cond_259

    .line 260
    iget-object v1, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    if-nez v1, :cond_181

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v5, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_17e

    goto :goto_181

    :cond_17e
    const/16 v16, 0x0

    goto :goto_183

    :cond_181
    :goto_181
    const/16 v16, 0x1

    .line 261
    :goto_183
    iget-object v1, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v1, v1, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    if-eqz v1, :cond_1bd

    if-nez v16, :cond_1bd

    .line 262
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNotificationViews: toShowFilter="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 265
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_259

    .line 269
    :cond_1bd
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v5, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_21c

    .line 270
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v5, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    .line 271
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    .line 272
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_1eb

    .line 274
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 275
    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_1eb
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNotificationViews: orderedChildren="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 280
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",origPkg="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_259

    :cond_21c
    if-eqz v16, :cond_228

    .line 283
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v5, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getChildrenNotificationCount(Landroid/service/notification/StatusBarNotification;)I

    move-result v1

    if-eqz v1, :cond_22f

    .line 284
    :cond_228
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_22f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNotificationViews: toShow="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 288
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_259

    :cond_257
    :goto_257
    move-object/from16 v17, v1

    :cond_259
    :goto_259
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v17

    goto/16 :goto_29

    .line 294
    :cond_25f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 295
    :goto_265
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v5

    if-ge v4, v5, :cond_28b

    .line 296
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v5, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 297
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_288

    instance-of v6, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v6, :cond_288

    .line 298
    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 302
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isBlockingHelperShowing()Z

    move-result v6

    if-nez v6, :cond_288

    .line 303
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_288
    add-int/lit8 v4, v4, 0x1

    goto :goto_265

    .line 308
    :cond_28b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 309
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_2ad

    .line 312
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setChildTransferInProgress(Z)V

    .line 314
    :cond_2ad
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v5

    if-eqz v5, :cond_2b6

    .line 315
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->removeAllChildren()V

    .line 317
    :cond_2b6
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v5, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->removeContainerView(Landroid/view/View;)V

    .line 318
    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setChildTransferInProgress(Z)V

    goto :goto_28f

    :cond_2c2
    const/4 v5, 0x0

    .line 322
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v4, v5

    .line 323
    :goto_2c9
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mFilterListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v6

    if-ge v4, v6, :cond_2e9

    .line 324
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mFilterListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v6, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 325
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2e6

    instance-of v9, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v9, :cond_2e6

    .line 326
    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c9

    .line 329
    :cond_2e9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2ed
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 331
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateNotificationViews: viewsToRemoveFilter="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 331
    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mFilterListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v6, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->removeContainerView(Landroid/view/View;)V

    goto :goto_2ed

    .line 339
    :cond_32a
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->removeNotificationChildren()V

    move v1, v5

    .line 341
    :goto_32e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_35b

    .line 342
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 343
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_34b

    .line 344
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyViewAddition(Landroid/view/View;)V

    .line 345
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v6, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->addContainerView(Landroid/view/View;)V

    goto :goto_358

    .line 346
    :cond_34b
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v6, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->containsView(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_358

    .line 349
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    :cond_358
    :goto_358
    const/4 v4, 0x1

    add-int/2addr v1, v4

    goto :goto_32e

    :cond_35b
    move v1, v5

    .line 356
    :goto_35c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_396

    .line 357
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 358
    move-object v6, v4

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 359
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_393

    .line 361
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateNotificationViews: toShowFilterAdd="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 361
    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mFilterListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v6, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->addContainerView(Landroid/view/View;)V

    :cond_393
    add-int/lit8 v1, v1, 0x1

    goto :goto_35c

    .line 369
    :cond_396
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->addNotificationChildrenAndSort()V

    move v1, v5

    move v4, v1

    .line 375
    :goto_39b
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v6

    if-ge v1, v6, :cond_3da

    .line 376
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v6, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 377
    instance-of v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v7, :cond_3ae

    goto :goto_3d7

    .line 381
    :cond_3ae
    move-object v7, v6

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isBlockingHelperShowing()Z

    move-result v7

    if-eqz v7, :cond_3b8

    goto :goto_3d7

    .line 386
    :cond_3b8
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eq v6, v7, :cond_3d5

    .line 390
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->canReorderNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v6

    if-eqz v6, :cond_3ce

    .line 391
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v6, v7, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    goto :goto_3d5

    .line 393
    :cond_3ce
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)V

    :cond_3d5
    :goto_3d5
    add-int/lit8 v4, v4, 0x1

    :goto_3d7
    add-int/lit8 v1, v1, 0x1

    goto :goto_39b

    :cond_3da
    move v1, v5

    .line 401
    :goto_3db
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mFilterListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v2

    if-ge v5, v2, :cond_400

    .line 402
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mFilterListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v2, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 403
    instance-of v4, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v4, :cond_3ee

    goto :goto_3fd

    .line 406
    :cond_3ee
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eq v2, v4, :cond_3fb

    .line 410
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mFilterListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v2, v4, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    :cond_3fb
    add-int/lit8 v1, v1, 0x1

    :goto_3fd
    add-int/lit8 v5, v5, 0x1

    goto :goto_3db

    .line 416
    :cond_400
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->onReorderingFinished()V

    .line 418
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 420
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateRowStatesInternal()V

    .line 422
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->onNotificationViewUpdateFinished()V

    .line 424
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->endUpdate()V

    return-void
.end method

.method public updateRowStates()V
    .registers 1

    .line 508
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 509
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->beginUpdate()V

    .line 510
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateRowStatesInternal()V

    .line 511
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->endUpdate()V

    return-void
.end method
