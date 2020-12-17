.class public Lcom/android/systemui/bubbles/BubbleController;
.super Ljava/lang/Object;
.source "BubbleController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;,
        Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;,
        Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;,
        Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;,
        Lcom/android/systemui/bubbles/BubbleController$BubbleStateChangeListener;,
        Lcom/android/systemui/bubbles/BubbleController$DismissReason;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

.field private final mBubbleDataListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

.field private mExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

.field private final mNotifUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mNotificationGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private final mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

.field private mOrientation:I

.field private final mRemoveInterceptor:Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;

.field private final mSavedBubbleKeysPerUser:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStackView:Lcom/android/systemui/bubbles/BubbleStackView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mStateChangeListener:Lcom/android/systemui/bubbles/BubbleController$BubbleStateChangeListener;

.field private mStatusBarStateListener:Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;

.field private final mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private mSurfaceSynchronizer:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mTaskStackListener:Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .registers 11
    .param p4  # Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 168
    iput v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mOrientation:I

    .line 535
    new-instance v0, Lcom/android/systemui/bubbles/BubbleController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/BubbleController$3;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mRemoveInterceptor:Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;

    .line 638
    new-instance v0, Lcom/android/systemui/bubbles/BubbleController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/BubbleController$4;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 674
    new-instance v0, Lcom/android/systemui/bubbles/BubbleController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/BubbleController$5;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleDataListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

    .line 236
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    .line 237
    iput-object p6, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    .line 238
    iput-object p8, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotifUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 239
    iput-object p7, p0, Lcom/android/systemui/bubbles/BubbleController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 240
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    new-instance p6, Lcom/android/systemui/bubbles/BubbleController$1;

    invoke-direct {p6, p0}, Lcom/android/systemui/bubbles/BubbleController$1;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    invoke-interface {p1, p6}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 256
    invoke-interface {p5, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 258
    iput-object p3, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    .line 259
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleDataListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

    invoke-virtual {p1, p3}, Lcom/android/systemui/bubbles/BubbleData;->setListener(Lcom/android/systemui/bubbles/BubbleData$Listener;)V

    .line 261
    const-class p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 262
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleController;->mEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 263
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleController;->mRemoveInterceptor:Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->setNotificationRemoveInterceptor(Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;)V

    .line 264
    iput-object p9, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 265
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    new-instance p3, Lcom/android/systemui/bubbles/BubbleController$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/bubbles/BubbleController$2;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->addOnGroupChangeListener(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;)V

    .line 283
    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 284
    new-instance p1, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;-><init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/BubbleController$1;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mStatusBarStateListener:Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;

    .line 285
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleController;->mStatusBarStateListener:Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;

    invoke-interface {p1, p3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 287
    new-instance p1, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;-><init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/BubbleController$1;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mTaskStackListener:Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;

    .line 288
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleController;->mTaskStackListener:Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;

    invoke-virtual {p1, p3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 291
    :try_start_8b
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;-><init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/BubbleController$1;)V

    invoke-virtual {p1, p3}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->addPinnedStackListener(Landroid/view/IPinnedStackListener;)V
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_97} :catch_98

    goto :goto_9c

    :catch_98
    move-exception p1

    .line 293
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 295
    :goto_9c
    iput-object p4, p0, Lcom/android/systemui/bubbles/BubbleController;->mSurfaceSynchronizer:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

    const-string/jumbo p1, "statusbar"

    .line 298
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 297
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 300
    new-instance p1, Landroid/util/SparseSetArray;

    invoke-direct {p1}, Landroid/util/SparseSetArray;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mSavedBubbleKeysPerUser:Landroid/util/SparseSetArray;

    .line 301
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotifUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mCurrentUserId:I

    .line 302
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotifUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    new-instance p2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$c6Q6I6kWtflKxnnWPbsWzJlB8Eo;

    invoke-direct {p2, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$c6Q6I6kWtflKxnnWPbsWzJlB8Eo;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->addUserChangedListener(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .registers 19
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 224
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/bubbles/BubbleController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/bubbles/BubbleController;)V
    .registers 1

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleController;->ensureStackViewCreated()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z
    .registers 3

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleController;->handleSummaryRemovalInterception(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/bubbles/BubbleController;)Landroid/content/Context;
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Landroid/content/Context;)Z
    .registers 1

    .line 110
    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->areBubblesEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    return-object p0
.end method

.method private static areBubblesEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 952
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "experiment_enable_bubbles"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static canLaunchInActivityView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 6

    .line 966
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 967
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    const-string v0, "Bubbles"

    const/4 v1, 0x0

    if-nez p1, :cond_1b

    const-string p0, "Unable to create bubble -- no intent"

    .line 970
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 974
    :cond_1b
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-nez p0, :cond_3e

    .line 976
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to send as bubble -- couldn\'t find activity info for intent: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 980
    :cond_3e
    iget v2, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 981
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to send as bubble -- activity is not resizable for intent: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 985
    :cond_5b
    iget v2, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_75

    .line 986
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to send as bubble -- activity is not documentLaunchMode=always for intent: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 990
    :cond_75
    iget p0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v2, -0x80000000

    and-int/2addr p0, v2

    if-nez p0, :cond_91

    .line 991
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to send as bubble -- activity is not embeddable for intent: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_91
    const/4 p0, 0x1

    return p0
.end method

.method private ensureStackViewCreated()V
    .registers 6

    .line 316
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-nez v0, :cond_37

    .line 317
    new-instance v0, Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController;->mSurfaceSynchronizer:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/bubbles/BubbleStackView;-><init>(Landroid/content/Context;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 318
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->getStatusBarView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 321
    sget v1, Lcom/android/systemui/R$id;->scrim_behind:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 322
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    if-eqz v0, :cond_37

    .line 325
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->setExpandListener(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;)V

    :cond_37
    return-void
.end method

.method private getExpandedBubble(Landroid/content/Context;)Lcom/android/systemui/bubbles/Bubble;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 846
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 849
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 850
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 851
    :goto_19
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedBubble()Lcom/android/systemui/bubbles/Bubble;

    move-result-object v0

    if-eqz p1, :cond_32

    if-eqz v0, :cond_32

    .line 852
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->isStackExpanded()Z

    move-result p1

    if-eqz p1, :cond_32

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 853
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->getPanelExpanded()Z

    move-result p0

    if-nez p0, :cond_32

    return-object v0

    :cond_32
    return-object v1
.end method

.method private handleSummaryRemovalInterception(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z
    .registers 8

    .line 594
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    .line 595
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/BubbleData;->getBubblesInGroup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p2, :cond_63

    move p2, v2

    .line 599
    :goto_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_39

    .line 600
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    .line 603
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 604
    invoke-virtual {v0, v2}, Lcom/android/systemui/bubbles/Bubble;->setShowInShadeWhenBubble(Z)V

    .line 605
    invoke-virtual {v0, v2}, Lcom/android/systemui/bubbles/Bubble;->setShowBubbleDot(Z)V

    .line 606
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz v3, :cond_36

    .line 607
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateDotVisibility(Ljava/lang/String;)V

    :cond_36
    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    .line 611
    :cond_39
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 615
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget p2, p2, Landroid/app/Notification;->flags:I

    and-int/lit16 p2, p2, 0x400

    const/4 v0, 0x1

    if-eqz p2, :cond_4c

    move v2, v0

    :cond_4c
    if-nez v2, :cond_60

    .line 618
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p2, v1, p1}, Lcom/android/systemui/bubbles/BubbleData;->addSummaryToSuppress(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    :cond_60
    xor-int/lit8 p0, v2, 0x1

    return p0

    .line 626
    :cond_63
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/BubbleData;->removeSuppressedSummary(Ljava/lang/String;)V

    move p1, v2

    .line 629
    :goto_69
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_83

    .line 630
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bubbles/Bubble;

    .line 631
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p2}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p2

    const/16 v3, 0x9

    invoke-virtual {v0, p2, v3}, Lcom/android/systemui/bubbles/BubbleData;->notificationEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_69

    :cond_83
    return v2
.end method

.method private restoreBubbles(I)V
    .registers 5

    .line 351
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 352
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mSavedBubbleKeysPerUser:Landroid/util/SparseSetArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object p1

    if-nez p1, :cond_f

    return-void

    .line 358
    :cond_f
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getNotificationsForCurrentUser()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 359
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    .line 360
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldBubbleUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    .line 361
    invoke-static {v2, v1}, Lcom/android/systemui/bubbles/BubbleController;->canLaunchInActivityView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    .line 362
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/bubbles/BubbleController;->updateBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    goto :goto_17

    .line 366
    :cond_40
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mSavedBubbleKeysPerUser:Landroid/util/SparseSetArray;

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mCurrentUserId:I

    invoke-virtual {p1, p0}, Landroid/util/SparseSetArray;->remove(I)V

    return-void
.end method

.method private saveBubbles(I)V
    .registers 5

    .line 338
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mSavedBubbleKeysPerUser:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 340
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 341
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mSavedBubbleKeysPerUser:Landroid/util/SparseSetArray;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    goto :goto_f

    :cond_25
    return-void
.end method


# virtual methods
.method public collapseStack()V
    .registers 2

    .line 442
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    return-void
.end method

.method dismissStack(I)V
    .registers 2

    .line 491
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->dismissAll(I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string v0, "BubbleController state:"

    .line 868
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/bubbles/BubbleData;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 870
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 871
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz p0, :cond_14

    .line 872
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/bubbles/BubbleStackView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 874
    :cond_14
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public expandStackAndSelectBubble(Ljava/lang/String;)V
    .registers 3

    .line 480
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 482
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubble(Lcom/android/systemui/bubbles/Bubble;)V

    .line 483
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    :cond_13
    return-void
.end method

.method public getExpandedDisplayId(Landroid/content/Context;)I
    .registers 2

    .line 840
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->getExpandedBubble(Landroid/content/Context;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 841
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getDisplayId()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, -0x1

    :goto_c
    return p0
.end method

.method getStackView()Lcom/android/systemui/bubbles/BubbleStackView;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 861
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    return-object p0
.end method

.method public getTouchableRegion()Landroid/graphics/Rect;
    .registers 3

    .line 828
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_15

    .line 831
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 832
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mTempRect:Landroid/graphics/Rect;

    return-object p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasBubbles()Z
    .registers 2

    .line 418
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 421
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbles()Z

    move-result p0

    return p0
.end method

.method public isBubbleNotificationSuppressedFromShade(Ljava/lang/String;)Z
    .registers 7

    .line 455
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbleWithKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    .line 456
    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->showInShadeWhenBubble()Z

    move-result v0

    if-nez v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    move v0, v2

    .line 457
    :goto_19
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 458
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    .line 459
    :goto_2d
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v4, v3}, Lcom/android/systemui/bubbles/BubbleData;->isSummarySuppressed(Ljava/lang/String;)Z

    move-result v4

    .line 460
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0, v3}, Lcom/android/systemui/bubbles/BubbleData;->getSummaryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_41

    if-nez v4, :cond_45

    :cond_41
    if-eqz v0, :cond_44

    goto :goto_45

    :cond_44
    move v1, v2

    :cond_45
    :goto_45
    return v1
.end method

.method public isStackExpanded()Z
    .registers 1

    .line 428
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$BubbleController(I)V
    .registers 4

    .line 304
    iget v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleController;->saveBubbles(I)V

    .line 305
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleData;->dismissAll(I)V

    .line 306
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->restoreBubbles(I)V

    .line 307
    iput p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mCurrentUserId:I

    return-void
.end method

.method public synthetic lambda$setExpandListener$1$BubbleController(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;ZLjava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_5

    .line 404
    invoke-interface {p1, p2, p3}, Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;->onBubbleExpandChanged(ZLjava/lang/String;)V

    .line 406
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setBubbleExpanded(Z)V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 385
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mOrientation:I

    if-eq p1, v1, :cond_11

    .line 386
    iput p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mOrientation:I

    .line 387
    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->onOrientationChanged(I)V

    :cond_11
    return-void
.end method

.method public onOverlayChanged()V
    .registers 1

    .line 378
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz p0, :cond_7

    .line 379
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->onThemeChanged()V

    :cond_7
    return-void
.end method

.method public onUiModeChanged()V
    .registers 1

    .line 371
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz p0, :cond_7

    .line 372
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->onThemeChanged()V

    :cond_7
    return-void
.end method

.method public performBackPressIfNeeded()V
    .registers 1

    .line 499
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz p0, :cond_7

    .line 500
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->performBackPressIfNeeded()Z

    :cond_7
    return-void
.end method

.method removeBubble(Ljava/lang/String;I)V
    .registers 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 531
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleData;->notificationEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    :cond_11
    return-void
.end method

.method selectBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .registers 2

    .line 465
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubble(Lcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method

.method selectBubble(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p1

    .line 471
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->selectBubble(Lcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method

.method public setBubbleStateChangeListener(Lcom/android/systemui/bubbles/BubbleController$BubbleStateChangeListener;)V
    .registers 2

    .line 395
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mStateChangeListener:Lcom/android/systemui/bubbles/BubbleController$BubbleStateChangeListener;

    return-void
.end method

.method public setExpandListener(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;)V
    .registers 3

    .line 402
    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$Dj-2pSkleqD_4pzyUsy7sxAegg4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$Dj-2pSkleqD_4pzyUsy7sxAegg4;-><init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    .line 408
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz p1, :cond_10

    .line 409
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/BubbleStackView;->setExpandListener(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;)V

    :cond_10
    return-void
.end method

.method updateBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 3

    const/4 v0, 0x0

    .line 510
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleController;->updateBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    return-void
.end method

.method updateBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .registers 5

    .line 515
    iget v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->importance:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_8

    .line 516
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setInterruption()V

    .line 518
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleData;->notificationEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    return-void
.end method

.method public updateStack()V
    .registers 5

    .line 803
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-nez v0, :cond_5

    return-void

    .line 806
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStatusBarStateListener:Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;->getCurrentState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->hasBubbles()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 808
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->hasBubbles()Z

    move-result v3

    if-eqz v3, :cond_1e

    move v2, v1

    :cond_1e
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_29

    .line 809
    :cond_22
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz v0, :cond_29

    .line 810
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 814
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->getBubblesShowing()Z

    move-result v0

    .line 815
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->hasBubbles()Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3e

    const/4 v1, 0x1

    .line 816
    :cond_3e
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setBubblesShowing(Z)V

    .line 817
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mStateChangeListener:Lcom/android/systemui/bubbles/BubbleController$BubbleStateChangeListener;

    if-eqz v2, :cond_4c

    if-eq v0, v1, :cond_4c

    .line 818
    invoke-interface {v2, v1}, Lcom/android/systemui/bubbles/BubbleController$BubbleStateChangeListener;->onHasBubblesChanged(Z)V

    .line 821
    :cond_4c
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateContentDescription()V

    return-void
.end method
