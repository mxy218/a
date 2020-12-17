.class public final Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;
.super Ljava/lang/Object;
.source "BypassHeadsUpNotifier.kt"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBypassHeadsUpNotifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BypassHeadsUpNotifier.kt\ncom/android/systemui/statusbar/notification/BypassHeadsUpNotifier\n*L\n1#1,144:1\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B?\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011J\u0010\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u0013H\u0002J\u0008\u0010 \u001a\u00020\u0015H\u0002J\u001a\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020&H\u0016J\u0008\u0010\'\u001a\u00020\"H\u0016J\u000e\u0010(\u001a\u00020\"2\u0006\u0010\u0016\u001a\u00020\u0017J\u0012\u0010)\u001a\u00020\"2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0013H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X.¢\u0006\u0002\n\u0000R$\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0015@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\t\u001a\u00020\nX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0004¢\u0006\u0002\n\u0000¨\u0006*"
    }
    d2 = {
        "Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;",
        "Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;",
        "Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;",
        "context",
        "Landroid/content/Context;",
        "bypassController",
        "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
        "statusBarStateController",
        "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
        "headsUpManager",
        "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
        "notificationLockscreenUserManager",
        "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
        "mediaManager",
        "Lcom/android/systemui/statusbar/NotificationMediaManager;",
        "tunerService",
        "Lcom/android/systemui/tuner/TunerService;",
        "(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/tuner/TunerService;)V",
        "currentMediaEntry",
        "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
        "enabled",
        "",
        "entryManager",
        "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
        "value",
        "fullyAwake",
        "getFullyAwake",
        "()Z",
        "setFullyAwake",
        "(Z)V",
        "canAutoHeadsUp",
        "entry",
        "isAutoHeadsUpAllowed",
        "onMetadataOrStateChanged",
        "",
        "metadata",
        "Landroid/media/MediaMetadata;",
        "state",
        "",
        "onStatePostChange",
        "setUp",
        "updateAutoHeadsUp",
        "name"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final context:Landroid/content/Context;

.field private currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private enabled:Z

.field private entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private fullyAwake:Z

.field private final headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private final mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final notificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/tuner/TunerService;)V
    .registers 9
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bypassController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "statusBarStateController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headsUpManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationLockscreenUserManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tunerService"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->notificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->enabled:Z

    .line 62
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 64
    new-instance p1, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier$1;-><init>(Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;)V

    const-string/jumbo p0, "show_media_when_bypassing"

    .line 70
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-virtual {p7, p1, p0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;)Landroid/content/Context;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$setEnabled$p(Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;Z)V
    .registers 2

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->enabled:Z

    return-void
.end method

.method private final canAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 4

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->isAutoHeadsUpAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 106
    :cond_8
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSensitive()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 110
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->notificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-nez v0, :cond_18

    return v1

    .line 114
    :cond_18
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-eqz p0, :cond_32

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    const-string v0, "entryManager.notificationData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    return v1

    :cond_30
    const/4 p0, 0x1

    return p0

    :cond_32
    const-string p0, "entryManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final isAutoHeadsUpAllowed()Z
    .registers 4

    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->enabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 132
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    .line 135
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_19

    return v1

    .line 138
    :cond_19
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->fullyAwake:Z

    if-nez p0, :cond_1e

    return v1

    :cond_1e
    return v2
.end method

.method private final updateAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 3

    if-eqz p1, :cond_1d

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->canAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 92
    :goto_13
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setAutoHeadsUp(Z)V

    if-eqz v0, :cond_1d

    .line 94
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->showNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_1d
    return-void
.end method


# virtual methods
.method public onMetadataOrStateChanged(Landroid/media/MediaMetadata;I)V
    .registers 6

    .line 79
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    .line 81
    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result p2

    if-nez p2, :cond_1c

    move-object v0, v1

    .line 84
    :cond_1c
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->updateAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 86
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->updateAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void

    :cond_27
    const-string p0, "entryManager"

    .line 80
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onStatePostChange()V
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->updateAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public final setFullyAwake(Z)V
    .registers 2

    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->fullyAwake:Z

    if-eqz p1, :cond_9

    .line 57
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->updateAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_9
    return-void
.end method

.method public final setUp(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V
    .registers 3

    const-string v0, "entryManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 75
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->addCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V

    return-void
.end method
