.class public Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
.super Ljava/lang/Object;
.source "NotificationRemoteInputManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;,
        Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;,
        Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputActiveExtender;,
        Lcom/android/systemui/statusbar/NotificationRemoteInputManager$SmartReplyHistoryExtender;,
        Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputHistoryExtender;,
        Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputExtender;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final ENABLE_REMOTE_INPUT:Z

.field public static FORCE_REMOTE_INPUT_HISTORY:Z


# instance fields
.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

.field protected final mContext:Landroid/content/Context;

.field protected final mEntriesKeptForRemoteInputActive:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field protected final mKeysKeptForRemoteInputHistory:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLifetimeExtenders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationLifetimeExtender;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mMainHandler:Landroid/os/Handler;

.field protected mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

.field private final mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field protected mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

.field private final mShadeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x1

    const-string v1, "debug.enable_remote_input"

    .line 92
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    const-string v1, "debug.force_remoteinput_history"

    .line 94
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ldagger/Lazy;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/os/Handler;)V
    .registers 9
    .param p7  # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "main_handler"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeysKeptForRemoteInputHistory:Landroid/util/ArraySet;

    .line 117
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntriesKeptForRemoteInputActive:Landroid/util/ArraySet;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLifetimeExtenders:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 314
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mContext:Landroid/content/Context;

    .line 315
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 316
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    .line 317
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 318
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mShadeController:Ldagger/Lazy;

    .line 319
    iput-object p7, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mMainHandler:Landroid/os/Handler;

    const-string/jumbo p2, "statusbar"

    .line 321
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 320
    invoke-static {p2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 322
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "user"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mUserManager:Landroid/os/UserManager;

    .line 323
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->addLifetimeExtenders()V

    .line 324
    const-class p2, Landroid/app/KeyguardManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 325
    iput-object p6, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 327
    new-instance p1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$2;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Ldagger/Lazy;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mShadeController:Ldagger/Lazy;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Landroid/view/ViewParent;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .registers 2

    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getExpandableNotificationRow(Landroid/view/ViewParent;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 4

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/SmartReplyController;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Landroid/os/Handler;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private findRemoteInputView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 502
    :cond_4
    sget-object p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object p0
.end method

.method private getExpandableNotificationRow(Landroid/view/ViewParent;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .registers 2

    :goto_0
    if-eqz p1, :cond_e

    .line 858
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_9

    .line 859
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p1

    .line 861
    :cond_9
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method private sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 14

    const/high16 v0, 0x200000

    if-eqz p2, :cond_b

    .line 833
    :try_start_4
    iget-object v1, p2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v1, v0}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    :goto_9
    move-object v5, p2

    goto :goto_16

    .line 835
    :cond_b
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 836
    iget-object v1, p2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v1, v0}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    goto :goto_9

    .line 838
    :goto_16
    iget-object p2, v5, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    const/high16 v0, 0x8000000

    invoke-virtual {p2, v0}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 840
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v9, p3

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_28
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_28} :catch_2a

    const/4 p0, 0x1

    return p0

    :catch_2a
    move-exception p0

    .line 845
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Sending pendingIntent failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotifRemoteInputManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public activateRemoteInput(Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;)Z
    .registers 13

    .line 412
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_4
    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 416
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_21

    .line 417
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 418
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 419
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->findRemoteInputView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v0

    .line 420
    sget v3, Lcom/android/systemui/R$id;->row_tag_for_content_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_28

    .line 424
    :cond_21
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    :cond_26
    move-object v0, v1

    move-object v2, v0

    :goto_28
    const/4 v3, 0x0

    if-nez v2, :cond_2c

    return v3

    :cond_2c
    const/4 v4, 0x1

    .line 431
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 433
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldAllowLockscreenRemoteInput()Z

    move-result v5

    if-nez v5, :cond_71

    .line 434
    invoke-virtual {p4}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 435
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v6, v5}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v6

    if-nez v6, :cond_6b

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 436
    invoke-interface {v6}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v6

    if-ne v6, v4, :cond_51

    goto :goto_6b

    .line 442
    :cond_51
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_71

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 443
    invoke-virtual {v6, v5}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 444
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    invoke-interface {p0, v5, v2, p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;->onLockedWorkRemoteInput(ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;)V

    return v4

    .line 439
    :cond_6b
    :goto_6b
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    invoke-interface {p0, v2, p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;->onLockedRemoteInput(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;)V

    return v4

    :cond_71
    if-eqz v0, :cond_7a

    .line 449
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v5

    if-nez v5, :cond_7a

    move-object v0, v1

    :cond_7a
    if-nez v0, :cond_8b

    .line 455
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->findRemoteInputView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v0

    if-nez v0, :cond_8b

    return v3

    .line 460
    :cond_8b
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedRemoteInput()Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v1

    if-ne v0, v1, :cond_a9

    .line 461
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_a9

    .line 464
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    invoke-interface {p0, v2, p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;->onMakeExpandedVisibleForRemoteInput(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;)V

    return v4

    .line 468
    :cond_a9
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p0

    if-nez p0, :cond_b0

    return v3

    .line 472
    :cond_b0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    .line 473
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_d8

    .line 475
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    .line 476
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_d8

    .line 477
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    float-to-int v2, v2

    .line 478
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    add-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 479
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 482
    :cond_d8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v1, p0

    .line 483
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    .line 484
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    .line 485
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    add-int v3, v1, p0

    sub-int/2addr v2, p0

    add-int v5, v1, v2

    .line 487
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr p1, v1

    add-int v5, p1, p0

    add-int/2addr p1, v2

    .line 488
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 486
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 490
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRevealParameters(III)V

    .line 491
    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 492
    invoke-virtual {v0, p2, p3, p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoteInput([Landroid/app/RemoteInput;Landroid/app/RemoteInput;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;)V

    .line 493
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focusAnimated()V

    return v4
.end method

.method protected addLifetimeExtenders()V
    .registers 3

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLifetimeExtenders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputHistoryExtender;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputHistoryExtender;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLifetimeExtenders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$SmartReplyHistoryExtender;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$SmartReplyHistoryExtender;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLifetimeExtenders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputActiveExtender;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputActiveExtender;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bindRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 3

    .line 630
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V

    .line 631
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setRemoteViewClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "NotificationRemoteInputManager state:"

    .line 622
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mKeysKeptForRemoteInputHistory: "

    .line 623
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeysKeptForRemoteInputHistory:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  mEntriesKeptForRemoteInputActive: "

    .line 625
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 626
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntriesKeptForRemoteInputActive:Landroid/util/ArraySet;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method protected getActivityOptions()Landroid/os/Bundle;
    .registers 1

    .line 852
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    .line 853
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getController()Lcom/android/systemui/statusbar/RemoteInputController;
    .registers 1

    .line 520
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    return-object p0
.end method

.method public getEntriesKeptForRemoteInputActive()Ljava/util/Set;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 636
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntriesKeptForRemoteInputActive:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getLifetimeExtenders()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationLifetimeExtender;",
            ">;"
        }
    .end annotation

    .line 516
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLifetimeExtenders:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isNotificationKeptForRemoteInputHistory(Ljava/lang/String;)Z
    .registers 2

    .line 545
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeysKeptForRemoteInputHistory:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$setUpWithCallback$0$NotificationRemoteInputManager(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/CharSequence;)V
    .registers 4

    const/4 v0, 0x1

    .line 393
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->rebuildNotificationWithRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/CharSequence;Z)Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 394
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public onPanelCollapsed()V
    .registers 5

    const/4 v0, 0x0

    .line 534
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntriesKeptForRemoteInputActive:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 535
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntriesKeptForRemoteInputActive:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 536
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/RemoteInputController;->removeRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)V

    .line 537
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    if-eqz v2, :cond_20

    .line 538
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;->onSafeToRemove(Ljava/lang/String;)V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 541
    :cond_23
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntriesKeptForRemoteInputActive:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method onPerformRemoveNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeysKeptForRemoteInputHistory:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 526
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeysKeptForRemoteInputHistory:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 528
    :cond_d
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 529
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/RemoteInputController;->removeRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method rebuildNotificationForCanceledSmartReplies(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Landroid/service/notification/StatusBarNotification;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 573
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->rebuildNotificationWithRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/CharSequence;Z)Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    return-object p0
.end method

.method rebuildNotificationWithRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/CharSequence;Z)Landroid/service/notification/StatusBarNotification;
    .registers 19
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p1

    .line 580
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object v1, p0

    .line 582
    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mContext:Landroid/content/Context;

    .line 583
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p2, :cond_3a

    .line 585
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.remoteInputHistory"

    .line 586
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_28

    new-array v3, v2, [Ljava/lang/CharSequence;

    goto :goto_31

    .line 591
    :cond_28
    array-length v5, v3

    add-int/2addr v5, v2

    new-array v5, v5, [Ljava/lang/CharSequence;

    .line 592
    array-length v6, v3

    invoke-static {v3, v4, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v5

    .line 594
    :goto_31
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 595
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_3a
    move/from16 v3, p3

    .line 597
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setShowRemoteInputSpinner(Z)Landroid/app/Notification$Builder;

    .line 598
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setHideSmartReplies(Z)Landroid/app/Notification$Builder;

    .line 600
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 603
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v1, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 604
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iput-object v1, v10, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 605
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    iput-object v1, v10, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 607
    new-instance v1, Landroid/service/notification/StatusBarNotification;

    .line 608
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 609
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v5

    .line 610
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    .line 611
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v7

    .line 612
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v8

    .line 613
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v9

    .line 615
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v11

    .line 616
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v12

    .line 617
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v13

    move-object v3, v1

    invoke-direct/range {v3 .. v14}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    return-object v1
.end method

.method public setUpWithCallback(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;Lcom/android/systemui/statusbar/RemoteInputController$Delegate;)V
    .registers 3

    .line 352
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    .line 353
    new-instance p1, Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/RemoteInputController;-><init>(Lcom/android/systemui/statusbar/RemoteInputController$Delegate;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 354
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    new-instance p2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/RemoteInputController;->addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    .line 391
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    new-instance p2, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$Nf_J1NPWba8TQAi27Yt-XiB5drE;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$Nf_J1NPWba8TQAi27Yt-XiB5drE;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/SmartReplyController;->setCallback(Lcom/android/systemui/statusbar/SmartReplyController$Callback;)V

    return-void
.end method

.method public shouldKeepForRemoteInputHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 4

    .line 549
    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 552
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isSpinning(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_16

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasJustSentRemoteInput()Z

    move-result p0

    if-eqz p0, :cond_17

    :cond_16
    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public shouldKeepForSmartReplyHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 3

    .line 556
    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 559
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/SmartReplyController;->isSendingSmartReply(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
