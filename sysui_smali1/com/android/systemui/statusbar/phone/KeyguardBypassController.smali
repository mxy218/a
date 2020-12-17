.class public final Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
.super Ljava/lang/Object;
.source "KeyguardBypassController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBypassController$Companion;
    }
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
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 22\u00020\u0001:\u00012B\'\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0006\u0010(\u001a\u00020\u000cJ\u0006\u0010)\u001a\u00020\u000cJ\u000e\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-J\u0006\u0010.\u001a\u00020+J\u000e\u0010/\u001a\u00020\u000c2\u0006\u00100\u001a\u00020\u001bJ\u0006\u00101\u001a\u00020+R\u001a\u0010\u000b\u001a\u00020\u000cX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R \u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u000c8F@BX\u000e¢\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000eR\u000e\u0010\u0014\u001a\u00020\u000cX\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u00020\u000cX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000e\"\u0004\u0008\u0016\u0010\u0010R\u001a\u0010\u0017\u001a\u00020\u000cX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u000e\"\u0004\u0008\u0019\u0010\u0010R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u000e¢\u0006\u0002\n\u0000R$\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u000c@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u000e\"\u0004\u0008\u001f\u0010\u0010R\u000e\u0010\u0006\u001a\u00020\u0007X\u0004¢\u0006\u0002\n\u0000R\u001a\u0010 \u001a\u00020!X.¢\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u000e\u0010&\u001a\u00020\'X\u0004¢\u0006\u0002\n\u0000¨\u00063"
    }
    d2 = {
        "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
        "",
        "context",
        "Landroid/content/Context;",
        "tunerService",
        "Lcom/android/systemui/tuner/TunerService;",
        "statusBarStateController",
        "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
        "lockscreenUserManager",
        "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
        "(Landroid/content/Context;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V",
        "bouncerShowing",
        "",
        "getBouncerShowing",
        "()Z",
        "setBouncerShowing",
        "(Z)V",
        "<set-?>",
        "bypassEnabled",
        "getBypassEnabled",
        "hasFaceFeature",
        "isPulseExpanding",
        "setPulseExpanding",
        "launchingAffordance",
        "getLaunchingAffordance",
        "setLaunchingAffordance",
        "pendingUnlockType",
        "Landroid/hardware/biometrics/BiometricSourceType;",
        "value",
        "qSExpanded",
        "getQSExpanded",
        "setQSExpanded",
        "unlockController",
        "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
        "getUnlockController",
        "()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
        "setUnlockController",
        "(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V",
        "unlockMethodCache",
        "Lcom/android/systemui/statusbar/phone/UnlockMethodCache;",
        "canBypass",
        "canPlaySubtleWindowAnimations",
        "dump",
        "",
        "pw",
        "Ljava/io/PrintWriter;",
        "maybePerformPendingUnlock",
        "onBiometricAuthenticated",
        "biometricSourceType",
        "onStartedGoingToSleep",
        "Companion",
        "name"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$Companion;


# instance fields
.field private bouncerShowing:Z

.field private bypassEnabled:Z

.field private hasFaceFeature:Z

.field private isPulseExpanding:Z

.field private launchingAffordance:Z

.field private pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

.field private qSExpanded:Z

.field private final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public unlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private final unlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->Companion:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V
    .registers 7
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tunerService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "statusBarStateController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lockscreenUserManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    const-string v1, "UnlockMethodCache.getInstance(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->unlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 72
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->hasFaceFeature:Z

    .line 75
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->hasFaceFeature:Z

    if-nez v0, :cond_37

    return-void

    .line 79
    :cond_37
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    invoke-interface {p3, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x111007e

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 89
    new-instance p3, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$2;

    invoke-direct {p3, p0, p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/tuner/TunerService;I)V

    const-string p1, "face_unlock_dismisses_keyguard"

    .line 93
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-virtual {p2, p3, p1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 94
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    invoke-interface {p4, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->addUserChangedListener(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;)V

    return-void
.end method

.method public static final synthetic access$setBypassEnabled$p(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Z)V
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bypassEnabled:Z

    return-void
.end method

.method public static final synthetic access$setPendingUnlockType$p(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Landroid/hardware/biometrics/BiometricSourceType;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    return-void
.end method


# virtual methods
.method public final canBypass()Z
    .registers 4

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 128
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bouncerShowing:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    :cond_c
    move v1, v2

    goto :goto_24

    .line 129
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-eq v0, v2, :cond_17

    goto :goto_24

    .line 130
    :cond_17
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    if-eqz v0, :cond_1c

    goto :goto_24

    .line 131
    :cond_1c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->isPulseExpanding:Z

    if-nez v0, :cond_24

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->qSExpanded:Z

    if-eqz p0, :cond_c

    :cond_24
    :goto_24
    return v1
.end method

.method public final canPlaySubtleWindowAnimations()Z
    .registers 4

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_11

    goto :goto_17

    .line 145
    :cond_11
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->qSExpanded:Z

    if-eqz p0, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :cond_17
    :goto_17
    return v1
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "pw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "KeyguardBypassController:"

    .line 157
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  pendingUnlockType: "

    .line 158
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  bypassEnabled: "

    .line 159
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  canBypass: "

    .line 160
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->canBypass()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  bouncerShowing: "

    .line 161
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bouncerShowing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  isPulseExpanding: "

    .line 162
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->isPulseExpanding:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  launchingAffordance: "

    .line 163
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  qSExpanded: "

    .line 164
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->qSExpanded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  hasFaceFeature: "

    .line 165
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->hasFaceFeature:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final getBypassEnabled()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bypassEnabled:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->unlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isFaceAuthEnabled()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final maybePerformPendingUnlock()V
    .registers 4

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    if-eqz v0, :cond_24

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->onBiometricAuthenticated(Landroid/hardware/biometrics/BiometricSourceType;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->unlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    if-eqz v0, :cond_19

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 117
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    goto :goto_24

    :cond_19
    const-string/jumbo p0, "unlockController"

    .line 116
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_20
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_24
    :goto_24
    return-void
.end method

.method public final onBiometricAuthenticated(Landroid/hardware/biometrics/BiometricSourceType;)Z
    .registers 4

    const-string v0, "biometricSourceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->canBypass()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 105
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->isPulseExpanding:Z

    if-nez v1, :cond_19

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->qSExpanded:Z

    if-eqz v1, :cond_1b

    .line 106
    :cond_19
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    :cond_1b
    return v0

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public final onStartedGoingToSleep()V
    .registers 2

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    return-void
.end method

.method public final setBouncerShowing(Z)V
    .registers 2

    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bouncerShowing:Z

    return-void
.end method

.method public final setLaunchingAffordance(Z)V
    .registers 2

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    return-void
.end method

.method public final setPulseExpanding(Z)V
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->isPulseExpanding:Z

    return-void
.end method

.method public final setQSExpanded(Z)V
    .registers 3

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->qSExpanded:Z

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 58
    :goto_7
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->qSExpanded:Z

    if-eqz v0, :cond_10

    if-nez p1, :cond_10

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->maybePerformPendingUnlock()V

    :cond_10
    return-void
.end method

.method public final setUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->unlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-void
.end method
