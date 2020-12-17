.class public Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;
.super Ljava/lang/Object;
.source "StatusBarNotificationPresenter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationPresenter;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl$BindRowCallback;


# instance fields
.field private final mAboveShelfObserver:Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mCheckSaveListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mContext:Landroid/content/Context;

.field private mDispatchUiModeChangeOnUserSwitched:Z

.field private final mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private final mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mMaxAllowedKeyguardNotifications:I

.field private mMaxKeyguardNotifications:I

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

.field private final mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private final mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;

.field private mReinflateNotificationsOnUserSwitched:Z

.field private final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

.field private final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

.field protected mVrMode:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;Landroid/view/ViewGroup;)V
    .registers 14

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-class v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 87
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 91
    const-class v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 92
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 93
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 94
    const-class v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    .line 95
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    .line 96
    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 97
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 98
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 99
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 100
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 101
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 102
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    .line 103
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    .line 104
    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 105
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 106
    const-class v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 107
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 108
    const-class v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 109
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 519
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 526
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCheckSaveListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;

    .line 542
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;

    .line 148
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mContext:Landroid/content/Context;

    .line 149
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 150
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 151
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 152
    const-class p2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, p2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 153
    new-instance p2, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    invoke-direct {p2, p5}, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;-><init>(Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mAboveShelfObserver:Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    .line 154
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    .line 155
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mAboveShelfObserver:Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    sget p3, Lcom/android/systemui/R$id;->notification_container_parent:I

    invoke-virtual {p4, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;

    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->setListener(Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;)V

    .line 157
    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 158
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 159
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 160
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 161
    const-class p2, Landroid/app/KeyguardManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$integer;->keyguard_max_notification_count:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMaxAllowedKeyguardNotifications:I

    const-string/jumbo p1, "statusbar"

    .line 165
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 164
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const-string/jumbo p1, "vrmanager"

    .line 172
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object p1

    if-eqz p1, :cond_11b

    .line 176
    :try_start_fe
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {p1, p2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_103
    .catch Landroid/os/RemoteException; {:try_start_fe .. :try_end_103} :catch_104

    goto :goto_11b

    :catch_104
    move-exception p1

    .line 178
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to register VR mode state listener: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StatusBarNotificationPresenter"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_11b
    :goto_11b
    const-class p1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 182
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object p6, p1

    check-cast p6, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 183
    const-class p1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    .line 184
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 185
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->createRemoteInputDelegate()Lcom/android/systemui/statusbar/RemoteInputController$Delegate;

    move-result-object p2

    .line 183
    invoke-virtual {p6, p1, p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->setUpWithCallback(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;Lcom/android/systemui/statusbar/RemoteInputController$Delegate;)V

    .line 186
    invoke-virtual {p6}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object p1

    const-class p2, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 187
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/RemoteInputController$Callback;

    .line 186
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/RemoteInputController;->addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    .line 189
    move-object p4, p5

    check-cast p4, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 191
    move-object p5, p12

    check-cast p5, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 193
    const-class p1, Lcom/android/systemui/InitController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/InitController;

    new-instance p8, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$JxsLEMxUmhyUkDN3YQclxN0tn34;

    move-object p2, p8

    move-object p3, p0

    move-object p7, p11

    invoke-direct/range {p2 .. p7}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$JxsLEMxUmhyUkDN3YQclxN0tn34;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;)V

    invoke-virtual {p1, p8}, Lcom/android/systemui/InitController;->addPostInitTask(Ljava/lang/Runnable;)V

    .line 250
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p10, p0}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Landroid/app/KeyguardManager;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->onLockedNotificationImportanceChange(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/systemui/statusbar/phone/ShadeController;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->maybeEndAmbientPulse()V

    return-void
.end method

.method static synthetic lambda$onExpandClicked$2()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method private maybeEndAmbientPulse()V
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hasPulsingNotifications()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 314
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->hasNotifications()Z

    move-result v0

    if-nez v0, :cond_15

    .line 317
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseOutNow()V

    :cond_15
    return-void
.end method

.method private onLockedNotificationImportanceChange(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;)V
    .registers 4

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    .line 515
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private updateNotificationOnUiModeChanged()V
    .registers 3

    .line 281
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 282
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getNotificationsForCurrentUser()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    .line 283
    :goto_b
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 284
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 285
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 287
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onUiModeChanged()V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_23
    return-void
.end method

.method private updateNotificationsOnDensityOrFontScaleChanged()V
    .registers 5

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 294
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getNotificationsForCurrentUser()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 295
    :goto_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 296
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 297
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->onDensityOrFontScaleChanged()V

    .line 298
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->areGutsExposed()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 300
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->onDensityOrFontScaleChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_28
    return-void
.end method


# virtual methods
.method public canHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)Z
    .registers 7

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->isOccluded()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_31

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 381
    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v0

    if-nez v0, :cond_25

    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 383
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_25

    :cond_23
    move v0, v2

    goto :goto_26

    :cond_25
    :goto_25
    move v0, v1

    .line 384
    :goto_26
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v3, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p1

    if-eqz v0, :cond_31

    if-eqz p1, :cond_31

    return v2

    .line 391
    :cond_31
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result p1

    if-nez p1, :cond_3a

    return v2

    .line 398
    :cond_3a
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_5d

    .line 399
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_4b

    return v2

    .line 404
    :cond_4b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5d

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 405
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->isOccluded()Z

    move-result p0

    if-eqz p0, :cond_5c

    goto :goto_5d

    :cond_5c
    move v1, v2

    :cond_5d
    :goto_5d
    return v1
.end method

.method public getMaxNotificationsWhileLocked(Z)I
    .registers 4

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    .line 477
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMaxAllowedKeyguardNotifications:I

    .line 478
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->computeMaxKeyguardNotifications(I)I

    move-result v0

    .line 477
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMaxKeyguardNotifications:I

    .line 480
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMaxKeyguardNotifications:I

    return p0

    .line 482
    :cond_14
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMaxKeyguardNotifications:I

    return p0
.end method

.method public hasActiveNotifications()Z
    .registers 1

    .line 374
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hasVisibleNotifications()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isCollapsing()Z
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    .line 308
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->isAnimationPending()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    .line 309
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->isAnimationRunning()Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public isDeviceInVrMode()Z
    .registers 1

    .line 510
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mVrMode:Z

    return p0
.end method

.method public isPresenterFullyCollapsed()Z
    .registers 1

    .line 441
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$StatusBarNotificationPresenter(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;)V
    .registers 12

    .line 194
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    .line 219
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V

    .line 224
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 225
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 229
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getLifetimeExtenders()Ljava/util/ArrayList;

    move-result-object p3

    .line 228
    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationLifetimeExtenders(Ljava/util/List;)V

    .line 230
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl$BindRowCallback;)V

    .line 232
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$zehGIehk9xIdDvIsyl4sWX9YxIM;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$zehGIehk9xIdDvIsyl4sWX9YxIM;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    invoke-virtual {p3, p0, p4, v0}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;)V

    .line 234
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p3, p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V

    .line 235
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V

    .line 236
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCheckSaveListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;)V

    .line 246
    const-class p1, Lcom/android/systemui/ForegroundServiceNotificationListener;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 248
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->onUserSwitched(I)V

    return-void
.end method

.method public synthetic lambda$onNotificationRemoved$1$StatusBarNotificationPresenter()V
    .registers 3

    .line 354
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->hasActiveNotifications()Z

    move-result v0

    if-nez v0, :cond_39

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-nez v0, :cond_14

    .line 356
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels()V

    goto :goto_39

    .line 357
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 358
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->collapse(ZF)V

    goto :goto_39

    .line 359
    :cond_25
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_39

    .line 360
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_39

    .line 361
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->goToKeyguard()V

    :cond_39
    :goto_39
    return-void
.end method

.method public onActivated()V
    .registers 4

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/4 v1, 0x0

    const/16 v2, 0xc0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$string;->notification_tap_again:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->showTransientIndication(I)V

    .line 455
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    if-eqz p0, :cond_1b

    const/4 v0, 0x1

    .line 457
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeInactive(Z)V

    :cond_1b
    return-void
.end method

.method public onActivated(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .registers 2

    .line 446
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->onActivated()V

    if-eqz p1, :cond_a

    .line 447
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    :cond_a
    return-void
.end method

.method public onActivationReset(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .registers 3

    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v0

    if-ne p1, v0, :cond_13

    .line 464
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 465
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->onActivationReset()V

    :cond_13
    return-void
.end method

.method public onBindRow(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 5

    .line 435
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mAboveShelfObserver:Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAboveShelfChangedListener(Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;)V

    .line 436
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$xngHwpynxyZFSiQxF9iZw-c24-s;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$xngHwpynxyZFSiQxF9iZw-c24-s;-><init>(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V

    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSecureStateProvider(Ljava/util/function/BooleanSupplier;)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 2

    .line 257
    invoke-static {}, Lcom/android/internal/widget/MessagingMessage;->dropCache()V

    .line 258
    invoke-static {}, Lcom/android/internal/widget/MessagingGroup;->dropCache()V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v0

    if-nez v0, :cond_16

    .line 260
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateNotificationsOnDensityOrFontScaleChanged()V

    goto :goto_19

    :cond_16
    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mReinflateNotificationsOnUserSwitched:Z

    :goto_19
    return-void
.end method

.method public onExpandClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .registers 4

    .line 492
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    if-eqz p2, :cond_2d

    .line 494
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_11

    goto :goto_2d

    .line 499
    :cond_11
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSensitive()Z

    move-result p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 500
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 501
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    .line 502
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$rp0KjJSj1GdZ6jXaKpka1OFVb7Q;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$rp0KjJSj1GdZ6jXaKpka1OFVb7Q;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public onNotificationRemoved(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .registers 5

    if-eqz p2, :cond_27

    .line 342
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->hasActiveNotifications()Z

    move-result p1

    if-nez p1, :cond_27

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 343
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->isTracking()Z

    move-result p1

    if-nez p1, :cond_27

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result p1

    if-nez p1, :cond_27

    .line 353
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$YivtzP7eb7Zr7-EMf8NvUtAYVzA;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$YivtzP7eb7Zr7-EMf8NvUtAYVzA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 368
    :cond_27
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->updateAreThereNotifications()V

    return-void
.end method

.method public onOverlayChanged()V
    .registers 1

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public onUiModeChanged()V
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v0

    if-nez v0, :cond_10

    .line 269
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateNotificationOnUiModeChanged()V

    goto :goto_13

    :cond_10
    const/4 v0, 0x1

    .line 271
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDispatchUiModeChangeOnUserSwitched:Z

    :goto_13
    return-void
.end method

.method public onUpdateRowStates()V
    .registers 1

    .line 487
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onUpdateRowStates()V

    return-void
.end method

.method public onUserSwitched(I)V
    .registers 4

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setUser(I)V

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels()V

    .line 418
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mReinflateNotificationsOnUserSwitched:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 419
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateNotificationsOnDensityOrFontScaleChanged()V

    .line 420
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mReinflateNotificationsOnUserSwitched:Z

    .line 422
    :cond_14
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDispatchUiModeChangeOnUserSwitched:Z

    if-eqz v0, :cond_1d

    .line 423
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateNotificationOnUiModeChanged()V

    .line 424
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDispatchUiModeChangeOnUserSwitched:Z

    .line 426
    :cond_1d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateNotificationViews()V

    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->clearCurrentMediaNotification()V

    .line 428
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/ShadeController;->setLockscreenUser(I)V

    const/4 p1, 0x1

    .line 429
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateMediaMetaData(ZZ)V

    return-void
.end method

.method public updateMediaMetaData(ZZ)V
    .registers 3

    .line 471
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    return-void
.end method

.method public updateNotificationViews()V
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-nez v0, :cond_5

    return-void

    .line 328
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isCollapsing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$gi2ID0w-NOAgPDK3Aiflyq0eAFU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$gi2ID0w-NOAgPDK3Aiflyq0eAFU;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->addPostCollapseAction(Ljava/lang/Runnable;)V

    return-void

    .line 333
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateNotificationViews()V

    .line 335
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationViews()V

    return-void
.end method
