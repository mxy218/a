.class public Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;
.super Ljava/lang/Object;
.source "StatusBarNotificationActivityStarter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;


# static fields
.field protected static final DEBUG:Z


# instance fields
.field private final mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

.field private final mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mContext:Landroid/content/Context;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mIsCollapsingToShowActivityOverLockscreen:Z

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

.field private final mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private final mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final mStatusBarRemoteInputCallback:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "NotificationClickHandler"

    const/4 v1, 0x3

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/assist/AssistManager;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/app/KeyguardManager;Landroid/service/dreams/IDreamManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/widget/LockPatternUtils;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/ActivityIntentHelper;Lcom/android/systemui/bubbles/BubbleController;)V
    .registers 30

    move-object v0, p0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 143
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    move-object v1, p4

    .line 144
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object v1, p5

    .line 145
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    move-object v1, p7

    .line 146
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-object v1, p9

    .line 147
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    move-object v1, p10

    .line 148
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object v1, p2

    .line 149
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object v1, p12

    .line 150
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardManager:Landroid/app/KeyguardManager;

    move-object/from16 v1, p13

    .line 151
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mDreamManager:Landroid/service/dreams/IDreamManager;

    move-object/from16 v1, p14

    .line 152
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object/from16 v1, p17

    .line 153
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v1, p18

    .line 154
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v1, p19

    .line 155
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-object v1, p8

    .line 156
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object v1, p6

    .line 157
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-object v1, p11

    .line 158
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v1, p20

    .line 159
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    move-object/from16 v1, p21

    .line 160
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object v1, p3

    .line 161
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    move-object/from16 v1, p16

    .line 162
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v1, p22

    .line 163
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v1, p24

    .line 164
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBackgroundHandler:Landroid/os/Handler;

    .line 165
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    move-object/from16 v1, p15

    .line 171
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarRemoteInputCallback:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    move-object/from16 v1, p23

    .line 172
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    move-object/from16 v1, p25

    .line 173
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    move-object/from16 v1, p26

    .line 174
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 2

    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->handleFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private collapseOnMainThread()V
    .registers 3

    .line 511
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 512
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel()Z

    goto :goto_1f

    .line 514
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$XDmf1V0qHGBRkx-V63RRNIpOXuQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$XDmf1V0qHGBRkx-V63RRNIpOXuQ;-><init>(Lcom/android/systemui/statusbar/phone/ShadeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1f
    return-void
.end method

.method private expandBubbleStackOnMainThread(Ljava/lang/String;)V
    .registers 4

    .line 364
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 365
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->expandStackAndSelectBubble(Ljava/lang/String;)V

    goto :goto_1a

    .line 367
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$SAG_ctHvOhll_OxtSg-OBbXZGGw;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$SAG_ctHvOhll_OxtSg-OBbXZGGw;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void
.end method

.method private handleFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 6

    .line 450
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldLaunchFullScreenIntentWhenAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 451
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldSuppressFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    const-string v1, "NotificationClickHandler"

    if-eqz v0, :cond_2b

    .line 452
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->DEBUG:Z

    if-eqz p0, :cond_8d

    .line 453
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Fullscreen intent: suppressed by DND: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 455
    :cond_2b
    iget v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->importance:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_4b

    .line 456
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->DEBUG:Z

    if-eqz p0, :cond_8d

    .line 457
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Fullscreen intent: not important enough: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 462
    :cond_4b
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$r9RsnGtfcZuVJem-yK82SlR0x7o;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$r9RsnGtfcZuVJem-yK82SlR0x7o;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const-string v0, "Notification has fullScreenIntent; sending fullScreenIntent"

    .line 472
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x8ca2

    .line 475
    :try_start_63
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 479
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 480
    iget-object v1, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 481
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 485
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notifyFullScreenIntentLaunched()V

    .line 486
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string p1, "note_fullscreen"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V
    :try_end_8d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_63 .. :try_end_8d} :catch_8d

    :catch_8d
    :cond_8d
    :goto_8d
    return-void
.end method

.method private handleNotificationClickAfterKeyguardDismissed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;Ljava/lang/String;ZZZ)Z
    .registers 22

    move-object v10, p0

    move-object v2, p1

    .line 240
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    const/4 v11, 0x1

    if-eqz v0, :cond_27

    move-object/from16 v6, p5

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 243
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v0

    move-object v3, p2

    if-eqz v0, :cond_1b

    .line 244
    invoke-static {p2, v11}, Lcom/android/systemui/statusbar/policy/HeadsUpUtil;->setIsClickedHeadsUpNotification(Landroid/view/View;Z)V

    .line 249
    :cond_1b
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    goto :goto_2a

    :cond_25
    move-object v3, p2

    goto :goto_2a

    :cond_27
    move-object v3, p2

    move-object/from16 v6, p5

    :goto_2a
    const/4 v0, 0x0

    .line 253
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isOnlyChildInGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 254
    iget-object v1, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 255
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 256
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_49

    move-object v9, v1

    goto :goto_4a

    :cond_49
    move-object v9, v0

    .line 261
    :goto_4a
    new-instance v12, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$H4WWHLQEcsZwa09U0GneoOwngZE;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$H4WWHLQEcsZwa09U0GneoOwngZE;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;Ljava/lang/String;ZZLandroid/service/notification/StatusBarNotification;)V

    if-eqz p8, :cond_6a

    .line 266
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0, v12}, Lcom/android/systemui/statusbar/phone/ShadeController;->addPostCollapseAction(Ljava/lang/Runnable;)V

    .line 267
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0, v11}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel(Z)V

    goto :goto_8a

    .line 268
    :cond_6a
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 269
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 270
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0, v12}, Lcom/android/systemui/statusbar/phone/ShadeController;->addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V

    .line 271
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel()Z

    goto :goto_8a

    .line 273
    :cond_85
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 275
    :goto_8a
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_93

    goto :goto_94

    :cond_93
    const/4 v11, 0x0

    :goto_94
    return v11
.end method

.method private handleNotificationClickAfterPanelCollapsed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;Ljava/lang/String;ZZLandroid/service/notification/StatusBarNotification;)V
    .registers 19

    move-object v6, p0

    move-object v7, p5

    move-object/from16 v8, p8

    .line 292
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_b

    :catch_b
    if-eqz p6, :cond_35

    .line 299
    invoke-virtual {p4}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 300
    iget-object v1, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 301
    invoke-virtual {v1, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 304
    iget-object v1, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarRemoteInputCallback:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    .line 305
    invoke-virtual {p4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 304
    invoke-virtual {v1, v0, v2, p5}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 308
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->collapseOnMainThread()V

    return-void

    .line 314
    :cond_35
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v9

    .line 317
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_49

    .line 318
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    goto :goto_4a

    :cond_49
    move-object v1, v2

    .line 320
    :goto_4a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_69

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    move-object v3, p3

    invoke-virtual {p3, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isSpinning(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 321
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 322
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.remoteInputDraft"

    .line 321
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move-object v2, v0

    :cond_69
    if-eqz v9, :cond_6f

    .line 325
    invoke-direct {p0, p5}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->expandBubbleStackOnMainThread(Ljava/lang/String;)V

    goto :goto_79

    :cond_6f
    move-object v0, p0

    move-object v1, p4

    move-object v3, p2

    move/from16 v4, p7

    move/from16 v5, p6

    .line 327
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->startNotificationIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZ)V

    :goto_79
    if-nez p6, :cond_7d

    if-eqz v9, :cond_82

    .line 330
    :cond_7d
    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    .line 332
    :cond_82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldCollapse()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 333
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->collapseOnMainThread()V

    .line 336
    :cond_8b
    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 337
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 338
    iget-object v1, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRank(Ljava/lang/String;)I

    move-result v1

    .line 339
    iget-object v2, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 341
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    .line 340
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object v2

    const/4 v3, 0x1

    .line 342
    invoke-static {p5, v1, v0, v3, v2}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    .line 345
    :try_start_b6
    iget-object v1, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, p5, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_bb} :catch_bb

    :catch_bb
    if-nez v9, :cond_d3

    if-eqz v8, :cond_c2

    .line 351
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->removeNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 353
    :cond_c2
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_d0

    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 354
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->isNotificationKeptForRemoteInputHistory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 357
    :cond_d0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->removeNotification(Landroid/service/notification/StatusBarNotification;)V

    :cond_d3
    const/4 v0, 0x0

    .line 360
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mIsCollapsingToShowActivityOverLockscreen:Z

    return-void
.end method

.method private removeNotification(Landroid/service/notification/StatusBarNotification;)V
    .registers 4

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$SjtS704WtC3nfx3PLxg0F_Agha4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$SjtS704WtC3nfx3PLxg0F_Agha4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4

    .line 500
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, p0, 0x10

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_e

    return v1

    :cond_e
    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_13

    return v1

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method private shouldCollapse()Z
    .registers 2

    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    .line 520
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->isAnimationPending()Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private shouldSuppressFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 2

    .line 524
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationPresenter;->isDeviceInVrMode()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 528
    :cond_a
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressFullScreenIntent()Z

    move-result p0

    return p0
.end method

.method private startNotificationIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZ)V
    .registers 15

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-virtual {v0, p3, p4}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->getLaunchAnimation(Landroid/view/View;Z)Landroid/view/RemoteAnimationAdapter;

    move-result-object p4

    const-string v0, "NotificationClickHandler"

    if-eqz p4, :cond_15

    .line 378
    :try_start_a
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    .line 380
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    .line 379
    invoke-interface {v1, v2, p4}, Landroid/app/IActivityTaskManager;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V

    .line 384
    :cond_15
    invoke-static {p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    move-result-object v8

    if-eqz p3, :cond_78

    .line 385
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p4

    if-eqz p4, :cond_78

    .line 386
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object p3

    .line 387
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/flyme/systemui/quickreply/QuickReplyController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/quickreply/QuickReplyController;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/flyme/systemui/quickreply/QuickReplyController;->isPopQuickOpen(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_78

    const-string/jumbo p4, "start_windowmode"

    const/4 v1, 0x1

    .line 388
    invoke-virtual {v8, p4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_3c} :catch_bb
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_a .. :try_end_3c} :catch_bb

    .line 390
    :try_start_3c
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/flyme/systemui/quickreply/QuickReplyController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/quickreply/QuickReplyController;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/flyme/systemui/quickreply/QuickReplyController;->isWindowSpaceModePackage(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_78

    const-string/jumbo p3, "start_spacemode"

    .line 391
    invoke-virtual {v8, p3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 392
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Package:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ",SpaceMode:true succeed"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_73} :catch_74

    goto :goto_78

    :catch_74
    move-exception p3

    .line 395
    :try_start_75
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_78
    :goto_78
    const/high16 p3, 0x200000

    if-eqz p2, :cond_83

    .line 403
    iget-object p4, p2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {p4, p3}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    :goto_81
    move-object v4, p2

    goto :goto_8e

    .line 405
    :cond_83
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 406
    iget-object p4, p2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {p4, p3}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    goto :goto_81

    .line 408
    :goto_8e
    iget-object p2, v4, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    const/high16 p3, 0x8000000

    invoke-virtual {p2, p3}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 410
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->sendAndReturnResult(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    .line 412
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "startNotificationIntent: send intent success,launchResult="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-virtual {p0, p1, p5}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->setLaunchResult(IZ)V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_ba} :catch_bb
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_75 .. :try_end_ba} :catch_bb

    goto :goto_d0

    :catch_bb
    move-exception p0

    .line 417
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Sending contentIntent failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d0
    return-void
.end method


# virtual methods
.method public isCollapsingToShowActivityOverLockscreen()Z
    .registers 1

    .line 496
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mIsCollapsingToShowActivityOverLockscreen:Z

    return p0
.end method

.method public synthetic lambda$expandBubbleStackOnMainThread$2$StatusBarNotificationActivityStarter(Ljava/lang/String;)V
    .registers 2

    .line 368
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->expandStackAndSelectBubble(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$handleFullScreenIntent$6$StatusBarNotificationActivityStarter()V
    .registers 1

    .line 464
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 466
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public synthetic lambda$handleNotificationClickAfterKeyguardDismissed$1$StatusBarNotificationActivityStarter(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;Ljava/lang/String;ZZLandroid/service/notification/StatusBarNotification;)V
    .registers 9

    .line 261
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->handleNotificationClickAfterPanelCollapsed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;Ljava/lang/String;ZZLandroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public synthetic lambda$onNotificationClicked$0$StatusBarNotificationActivityStarter(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;Ljava/lang/String;ZZZ)Z
    .registers 9

    .line 218
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->handleNotificationClickAfterKeyguardDismissed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;Ljava/lang/String;ZZZ)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$removeNotification$7$StatusBarNotificationActivityStarter(Landroid/service/notification/StatusBarNotification;)V
    .registers 3

    .line 535
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;I)V

    return-void
.end method

.method public synthetic lambda$removeNotification$8$StatusBarNotificationActivityStarter(Landroid/service/notification/StatusBarNotification;)V
    .registers 3

    .line 534
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$66g6EDAhWCxfzMKE6qPXX_8qGwI;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$66g6EDAhWCxfzMKE6qPXX_8qGwI;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Landroid/service/notification/StatusBarNotification;)V

    .line 536
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationPresenter;->isCollapsing()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 539
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->addPostCollapseAction(Ljava/lang/Runnable;)V

    goto :goto_16

    .line 541
    :cond_13
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_16
    return-void
.end method

.method public synthetic lambda$startNotificationGutsIntent$3$StatusBarNotificationActivityStarter()V
    .registers 3

    .line 437
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    return-void
.end method

.method public synthetic lambda$startNotificationGutsIntent$4$StatusBarNotificationActivityStarter(Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V
    .registers 6

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    .line 429
    invoke-virtual {v0, p1}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 432
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->isOccluded()Z

    move-result v1

    .line 431
    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->getLaunchAnimation(Landroid/view/View;Z)Landroid/view/RemoteAnimationAdapter;

    move-result-object p2

    .line 430
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    move-result-object p2

    new-instance v0, Landroid/os/UserHandle;

    .line 433
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-direct {v0, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 430
    invoke-virtual {p1, p2, v0}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)I

    move-result p1

    .line 434
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->setLaunchResult(IZ)V

    .line 435
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldCollapse()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 437
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$ZBMwRNC8tX8dffchdtumyW_afiA;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$ZBMwRNC8tX8dffchdtumyW_afiA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3d} :catch_3e

    goto :goto_45

    :catch_3e
    const-string p0, "NotificationClickHandler"

    const-string p1, "ActivityNotFoundException for startNotificationGutsIntent"

    .line 441
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    :goto_45
    return-void
.end method

.method public synthetic lambda$startNotificationGutsIntent$5$StatusBarNotificationActivityStarter(Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z
    .registers 5

    .line 426
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$SrsXjl_aP_YXf0BoPG0DcKfnIqA;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$SrsXjl_aP_YXf0BoPG0DcKfnIqA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onNotificationClicked(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 18

    move-object v10, p0

    .line 185
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v4

    .line 186
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 187
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getActiveRemoteInputText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 190
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/RemoteInputController;->closeRemoteInputs()V

    return-void

    .line 193
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 194
    iget-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_29

    move-object v5, v1

    goto :goto_2c

    .line 196
    :cond_29
    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    move-object v5, v0

    .line 197
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v0

    if-nez v5, :cond_40

    if-nez v0, :cond_40

    const-string v0, "NotificationClickHandler"

    const-string v1, "onNotificationClicked called for non-clickable notification!"

    .line 203
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 207
    :cond_40
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v11, 0x1

    if-eqz v5, :cond_52

    .line 209
    invoke-virtual {v5}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-eqz v2, :cond_52

    if-nez v0, :cond_52

    move v7, v11

    goto :goto_53

    :cond_52
    move v7, v1

    :goto_53
    if-eqz v7, :cond_69

    .line 210
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 211
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 212
    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v3

    .line 211
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/ActivityIntentHelper;->wouldLaunchResolverActivity(Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_69

    move v12, v11

    goto :goto_6a

    :cond_69
    move v12, v1

    .line 213
    :goto_6a
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->isOccluded()Z

    move-result v8

    .line 214
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8e

    if-eqz v5, :cond_8e

    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 215
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 216
    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v3

    .line 215
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/ActivityIntentHelper;->wouldShowOverLockscreen(Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_8e

    move v13, v11

    goto :goto_8f

    :cond_8e
    move v13, v1

    .line 217
    :goto_8f
    new-instance v14, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$yPRbQ0J1oyZW5IHADurUixbhRxg;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v9, v13

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$yPRbQ0J1oyZW5IHADurUixbhRxg;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;Ljava/lang/String;ZZZ)V

    if-eqz v13, :cond_a3

    .line 222
    iput-boolean v11, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mIsCollapsingToShowActivityOverLockscreen:Z

    .line 223
    invoke-interface {v14}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    goto :goto_a9

    .line 225
    :cond_a3
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, 0x0

    invoke-interface {v0, v14, v1, v12}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    :goto_a9
    return-void
.end method

.method public startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 6

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$cyhnCXwOFANppGr5Crfg0gR112k;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$cyhnCXwOFANppGr5Crfg0gR112k;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    const/4 p0, 0x0

    const/4 p1, 0x0

    invoke-interface {v0, v1, p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method
