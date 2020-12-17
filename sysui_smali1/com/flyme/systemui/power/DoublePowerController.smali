.class public final Lcom/flyme/systemui/power/DoublePowerController;
.super Ljava/lang/Object;
.source "DoublePowerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;
    }
.end annotation


# static fields
.field public static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static sInstance:Lcom/flyme/systemui/power/DoublePowerController;


# instance fields
.field private mCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mContext:Landroid/content/Context;

.field private mDoublePowerType:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

.field private mFirstDoublePower:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenPosterObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x800000

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.meizu.media.camera"

    const-string v2, "com.meizu.media.camera.SecureCameraActivity"

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/flyme/systemui/power/DoublePowerController;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.meizu.media.camera.CameraLauncher"

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/flyme/systemui/power/DoublePowerController;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lcom/flyme/systemui/power/DoublePowerController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/power/DoublePowerController$1;-><init>(Lcom/flyme/systemui/power/DoublePowerController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mLockscreenPosterObserver:Landroid/database/ContentObserver;

    .line 85
    iput-object p1, p0, Lcom/flyme/systemui/power/DoublePowerController;->mContext:Landroid/content/Context;

    .line 86
    iget-object p1, p0, Lcom/flyme/systemui/power/DoublePowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/power/DoublePowerController;->mResolver:Landroid/content/ContentResolver;

    .line 87
    iget-object p1, p0, Lcom/flyme/systemui/power/DoublePowerController;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "power_double_click"

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/flyme/systemui/power/DoublePowerController;->convertToType(I)V

    .line 88
    iget-object p1, p0, Lcom/flyme/systemui/power/DoublePowerController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "FIRST_DOUBLE_POWER"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_32

    goto :goto_33

    :cond_32
    move v2, v3

    :goto_33
    iput-boolean v2, p0, Lcom/flyme/systemui/power/DoublePowerController;->mFirstDoublePower:Z

    .line 89
    iget-object p1, p0, Lcom/flyme/systemui/power/DoublePowerController;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/flyme/systemui/power/DoublePowerController;->mLockscreenPosterObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 92
    iget-object p1, p0, Lcom/flyme/systemui/power/DoublePowerController;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/power/DoublePowerController;->mLockscreenPosterObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/flyme/systemui/power/DoublePowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/power/DoublePowerController;)Landroid/content/ContentResolver;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$100(Lcom/flyme/systemui/power/DoublePowerController;I)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/flyme/systemui/power/DoublePowerController;->convertToType(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/systemui/power/DoublePowerController;)Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mFirstDoublePower:Z

    return p0
.end method

.method static synthetic access$202(Lcom/flyme/systemui/power/DoublePowerController;Z)Z
    .registers 2

    .line 22
    iput-boolean p1, p0, Lcom/flyme/systemui/power/DoublePowerController;->mFirstDoublePower:Z

    return p1
.end method

.method static synthetic access$300(Lcom/flyme/systemui/power/DoublePowerController;)Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mDoublePowerType:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    return-object p0
.end method

.method private convertToType(I)V
    .registers 3

    if-nez p1, :cond_7

    .line 119
    sget-object p1, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->MEIZU_PAY:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    iput-object p1, p0, Lcom/flyme/systemui/power/DoublePowerController;->mDoublePowerType:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    goto :goto_26

    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 121
    sget-object p1, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->VOICE:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    iput-object p1, p0, Lcom/flyme/systemui/power/DoublePowerController;->mDoublePowerType:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    goto :goto_26

    :cond_f
    const/4 v0, 0x2

    if-ne p1, v0, :cond_17

    .line 123
    sget-object p1, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->CAMERA:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    iput-object p1, p0, Lcom/flyme/systemui/power/DoublePowerController;->mDoublePowerType:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    goto :goto_26

    :cond_17
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1f

    .line 125
    sget-object p1, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->NONE:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    iput-object p1, p0, Lcom/flyme/systemui/power/DoublePowerController;->mDoublePowerType:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    goto :goto_26

    :cond_1f
    const/4 v0, 0x4

    if-ne p1, v0, :cond_26

    .line 127
    sget-object p1, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->SMART_VOICE:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    iput-object p1, p0, Lcom/flyme/systemui/power/DoublePowerController;->mDoublePowerType:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    :cond_26
    :goto_26
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/flyme/systemui/power/DoublePowerController;
    .registers 2

    .line 99
    sget-object v0, Lcom/flyme/systemui/power/DoublePowerController;->sInstance:Lcom/flyme/systemui/power/DoublePowerController;

    if-nez v0, :cond_b

    .line 100
    new-instance v0, Lcom/flyme/systemui/power/DoublePowerController;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/power/DoublePowerController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/flyme/systemui/power/DoublePowerController;->sInstance:Lcom/flyme/systemui/power/DoublePowerController;

    .line 102
    :cond_b
    sget-object p0, Lcom/flyme/systemui/power/DoublePowerController;->sInstance:Lcom/flyme/systemui/power/DoublePowerController;

    return-object p0
.end method

.method private shouldStartSecurityCamera()Z
    .registers 8

    .line 247
    iget-object v0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 249
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 248
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1b

    .line 249
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionSucceeded()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_1b

    :cond_19
    move v1, v2

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v1, v3

    .line 250
    :goto_1c
    iget-object p0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    .line 251
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v4

    .line 252
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "secure "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",canskip "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",keyguard show "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DoublePowerController"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_58

    if-eqz v1, :cond_5a

    :cond_58
    if-eqz v0, :cond_5d

    :cond_5a
    if-eqz v4, :cond_5d

    move v2, v3

    :cond_5d
    return v2
.end method

.method private startCameraFromDoublePower()V
    .registers 6

    .line 179
    invoke-direct {p0}, Lcom/flyme/systemui/power/DoublePowerController;->shouldStartSecurityCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 180
    sget-object v1, Lcom/flyme/systemui/power/DoublePowerController;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_b

    :cond_9
    sget-object v1, Lcom/flyme/systemui/power/DoublePowerController;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 181
    :goto_b
    iget-object v2, p0, Lcom/flyme/systemui/power/DoublePowerController;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-nez v0, :cond_2e

    .line 183
    iget-object v0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 185
    iget-object p0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(ZI)V

    :cond_2e
    return-void
.end method

.method private startFirstDoublePowerActivity()V
    .registers 4

    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.flyme.systemuitools"

    const-string v2, "com.flyme.systemuitools.power.DoublePowerActivity"

    .line 173
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 175
    iget-object p0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private startGoogleSearchFromDoublePower()V
    .registers 4

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.googlequicksearchbox"

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14200000

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 211
    iget-object p0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private startMzPayFromDoublePower()V
    .registers 4

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.mznfcpay.SHOW_PAY_PAGE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 219
    iget-object p0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private startSmartVoiceFromDoublePower()V
    .registers 4

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "flyme.intent.action.VOICE_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "source"

    const-string v2, "power_key"

    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.meizu.voiceassistant"

    .line 225
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    iget-object p0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private startVoiceFromDoublePower()V
    .registers 4

    .line 190
    invoke-virtual {p0}, Lcom/flyme/systemui/power/DoublePowerController;->isAssistantAppOpened()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 194
    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.meizu.assistant"

    const-string v2, "com.meizu.assistant.ui.activity.FakeLauncherActivity"

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "START_ASSISTANT_APP"

    const-string v2, "WINDOW_POLICY"

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10208000

    .line 198
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 201
    iget-object p0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public canStartDoublePowerActivity()Z
    .registers 4

    .line 234
    iget-object v0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mDoublePowerType:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    sget-object v1, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->VOICE:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/flyme/systemui/power/DoublePowerController;->isAssistantAppOpened()Z

    move-result v0

    if-nez v0, :cond_e

    return v2

    .line 238
    :cond_e
    iget-boolean v0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mFirstDoublePower:Z

    if-nez v0, :cond_18

    iget-object p0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mDoublePowerType:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    sget-object v0, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->NONE:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    if-eq p0, v0, :cond_19

    :cond_18
    const/4 v2, 0x1

    :cond_19
    return v2
.end method

.method public getDoublePowerType()Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mDoublePowerType:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    return-object p0
.end method

.method public isAssistantAppOpened()Z
    .registers 3

    .line 262
    iget-object p0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "mz_assistant_app_open_state"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V
    .registers 2

    .line 258
    iput-object p1, p0, Lcom/flyme/systemui/power/DoublePowerController;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-void
.end method

.method public startDoublePowerActivity()V
    .registers 3

    .line 143
    iget-boolean v0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mFirstDoublePower:Z

    if-eqz v0, :cond_8

    .line 144
    invoke-direct {p0}, Lcom/flyme/systemui/power/DoublePowerController;->startFirstDoublePowerActivity()V

    goto :goto_46

    .line 146
    :cond_8
    sget-object v0, Lcom/flyme/systemui/power/DoublePowerController$2;->$SwitchMap$com$flyme$systemui$power$DoublePowerController$DoublePowerType:[I

    iget-object v1, p0, Lcom/flyme/systemui/power/DoublePowerController;->mDoublePowerType:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_43

    const/4 v1, 0x2

    if-eq v0, v1, :cond_35

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1f

    goto :goto_46

    .line 165
    :cond_1f
    invoke-direct {p0}, Lcom/flyme/systemui/power/DoublePowerController;->startSmartVoiceFromDoublePower()V

    goto :goto_46

    .line 160
    :cond_23
    iget-object v0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object v0

    const-string v1, "com.meizu.media.camera"

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->isAppOnForeground(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 161
    invoke-direct {p0}, Lcom/flyme/systemui/power/DoublePowerController;->startCameraFromDoublePower()V

    goto :goto_46

    .line 152
    :cond_35
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 153
    invoke-direct {p0}, Lcom/flyme/systemui/power/DoublePowerController;->startGoogleSearchFromDoublePower()V

    goto :goto_46

    .line 155
    :cond_3f
    invoke-direct {p0}, Lcom/flyme/systemui/power/DoublePowerController;->startVoiceFromDoublePower()V

    goto :goto_46

    .line 148
    :cond_43
    invoke-direct {p0}, Lcom/flyme/systemui/power/DoublePowerController;->startMzPayFromDoublePower()V

    :cond_46
    :goto_46
    return-void
.end method

.method public supportDoublePower()Z
    .registers 2

    .line 242
    iget-object p0, p0, Lcom/flyme/systemui/power/DoublePowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110038

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
