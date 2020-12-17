.class public Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;
.super Ljava/lang/Object;
.source "StatusBarRemoteInputCallback.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$ChallengeReceiver;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field protected mChallengeReceiver:Landroid/content/BroadcastReceiver;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mContext:Landroid/content/Context;

.field private mDisabled2:I

.field private final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private mMainHandler:Landroid/os/Handler;

.field private mPendingRemoteInputView:Landroid/view/View;

.field private mPendingWorkRemoteInputView:Landroid/view/View;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .registers 10
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 63
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 64
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 65
    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 66
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 67
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 73
    const-class v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$ChallengeReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$ChallengeReceiver;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mChallengeReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mMainHandler:Landroid/os/Handler;

    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mContext:Landroid/content/Context;

    .line 85
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mChallengeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 88
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 89
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 90
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 91
    new-instance p1, Lcom/android/systemui/ActivityIntentHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/systemui/ActivityIntentHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 92
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    return-object p0
.end method


# virtual methods
.method public disable(IIIZ)V
    .registers 5

    .line 259
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    if-ne p1, p2, :cond_a

    .line 260
    iput p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mDisabled2:I

    :cond_a
    return-void
.end method

.method public handleRemoteViewClick(Landroid/view/View;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;)Z
    .registers 5

    .line 236
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 238
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 239
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v0

    .line 238
    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/ActivityIntentHelper;->wouldLaunchResolverActivity(Landroid/content/Intent;I)Z

    move-result p1

    .line 240
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarRemoteInputCallback$8d3SjU56C80S4rq-vR5b0crRuYY;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarRemoteInputCallback$8d3SjU56C80S4rq-vR5b0crRuYY;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;)V

    const/4 p0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    const/4 p0, 0x1

    return p0

    .line 253
    :cond_23
    invoke-interface {p3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;->handleClick()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$handleRemoteViewClick$3$StatusBarRemoteInputCallback(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;)Z
    .registers 3

    .line 242
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_7

    .line 246
    :catch_7
    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;->handleClick()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 249
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->closeShadeIfOpen()Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public synthetic lambda$onWorkChallengeChanged$0$StatusBarRemoteInputCallback(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingWorkRemoteInputView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingWorkRemoteInputView:Landroid/view/View;

    .line 148
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setFinishScrollingCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onWorkChallengeChanged$1$StatusBarRemoteInputCallback(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 4

    .line 145
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarRemoteInputCallback$Pf9b4xR3WdydZqpSHpd3WHttUBw;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarRemoteInputCallback$Pf9b4xR3WdydZqpSHpd3WHttUBw;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    .line 150
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->scrollTo(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 152
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setFinishScrollingCallback(Ljava/lang/Runnable;)V

    goto :goto_12

    .line 155
    :cond_f
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_12
    return-void
.end method

.method public synthetic lambda$onWorkChallengeChanged$2$StatusBarRemoteInputCallback()V
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingWorkRemoteInputView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 130
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 131
    :goto_9
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v1, :cond_15

    if-nez v0, :cond_10

    return-void

    .line 135
    :cond_10
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_9

    .line 138
    :cond_15
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 139
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 140
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v2, :cond_2c

    .line 141
    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 143
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->makeActionsVisibile()V

    .line 144
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarRemoteInputCallback$L_R5DgtrNavZQt2DnmfrB_93PMA;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarRemoteInputCallback$L_R5DgtrNavZQt2DnmfrB_93PMA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_2c
    return-void
.end method

.method public onLockedRemoteInput(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;)V
    .registers 4

    .line 111
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_c

    .line 112
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    .line 114
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->showBouncer(Z)V

    .line 115
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingRemoteInputView:Landroid/view/View;

    return-void
.end method

.method public onLockedWorkRemoteInput(ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;)V
    .registers 4

    .line 184
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels()V

    const/4 p2, 0x0

    .line 185
    invoke-virtual {p0, p1, p2, p2}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z

    .line 188
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingWorkRemoteInputView:Landroid/view/View;

    return-void
.end method

.method public onMakeExpandedVisibleForRemoteInput(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;)V
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->onLockedRemoteInput(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;)V

    goto :goto_34

    .line 171
    :cond_c
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v0

    if-nez v0, :cond_21

    .line 173
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->toggleGroupExpansion(Landroid/service/notification/StatusBarNotification;)Z

    :cond_21
    const/4 p0, 0x1

    .line 175
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 176
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$MVkYf3B-uVxXy7rxrXvHR4SUXEU;

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$MVkYf3B-uVxXy7rxrXvHR4SUXEU;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setOnExpandedVisibleListener(Ljava/lang/Runnable;)V

    :goto_34
    return-void
.end method

.method public onStateChanged(I)V
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingRemoteInputView:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-nez p1, :cond_2f

    .line 98
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 99
    invoke-interface {p1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result p1

    if-nez p1, :cond_13

    if-eqz v0, :cond_2f

    .line 100
    :cond_13
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->isKeyguardRequested()Z

    move-result p1

    if-nez p1, :cond_2f

    if-eqz v0, :cond_2c

    .line 102
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingRemoteInputView:Landroid/view/View;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$au9TYywfgPbmO65RQz_jg3-3Qz0;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$au9TYywfgPbmO65RQz_jg3-3Qz0;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2c
    const/4 p1, 0x0

    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingRemoteInputView:Landroid/view/View;

    :cond_2f
    return-void
.end method

.method protected onWorkChallengeChanged()V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->updatePublicMode()V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingWorkRemoteInputView:Landroid/view/View;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 121
    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isAnyProfilePublicMode()Z

    move-result v0

    if-nez v0, :cond_20

    .line 123
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarRemoteInputCallback$R1k7Wh1xlx-jAMn9HjU1lr6mXXE;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarRemoteInputCallback$R1k7Wh1xlx-jAMn9HjU1lr6mXXE;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;)V

    .line 160
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->postOnShadeExpanded(Ljava/lang/Runnable;)V

    .line 161
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->instantExpandNotificationsPanel()V

    :cond_20
    return-void
.end method

.method public shouldHandleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;)Z
    .registers 3

    .line 230
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mDisabled2:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingWorkRemoteInputView:Landroid/view/View;

    .line 197
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1, v0, v0, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_d

    return v1

    .line 202
    :cond_d
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.INTENT"

    .line 203
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.INDEX"

    .line 204
    invoke-virtual {v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mContext:Landroid/content/Context;

    const/high16 p2, 0x54000000

    invoke-static {p0, v1, v2, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 216
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0

    .line 214
    invoke-virtual {p1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 218
    :try_start_36
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3d} :catch_3d

    :catch_3d
    const/4 p0, 0x1

    return p0
.end method
