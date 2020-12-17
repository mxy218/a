.class public Lcom/flyme/systemui/power/SOSController;
.super Ljava/lang/Object;
.source "SOSController.java"


# static fields
.field private static sInstance:Lcom/flyme/systemui/power/SOSController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyguardUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/flyme/systemui/power/SOSController$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/power/SOSController$1;-><init>(Lcom/flyme/systemui/power/SOSController;)V

    iput-object v0, p0, Lcom/flyme/systemui/power/SOSController;->mKeyguardUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    iput-object p1, p0, Lcom/flyme/systemui/power/SOSController;->mContext:Landroid/content/Context;

    .line 34
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/flyme/systemui/power/SOSController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/flyme/systemui/power/SOSController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/flyme/systemui/power/SOSController;
    .registers 2

    .line 38
    sget-object v0, Lcom/flyme/systemui/power/SOSController;->sInstance:Lcom/flyme/systemui/power/SOSController;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lcom/flyme/systemui/power/SOSController;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/power/SOSController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/flyme/systemui/power/SOSController;->sInstance:Lcom/flyme/systemui/power/SOSController;

    .line 42
    :cond_b
    sget-object p0, Lcom/flyme/systemui/power/SOSController;->sInstance:Lcom/flyme/systemui/power/SOSController;

    return-object p0
.end method

.method private lockScreen()V
    .registers 4

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "meizu.intent.action.ACTION_SHOW_LOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "lock_reason"

    const-string/jumbo v2, "sos_mode"

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    iget-object p0, p0, Lcom/flyme/systemui/power/SOSController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private registerKeyguardUnlockReceiver()V
    .registers 3

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/flyme/systemui/power/SOSController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/flyme/systemui/power/SOSController;->mKeyguardUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unRegisterKeyguardUnlockReceiver()V
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/flyme/systemui/power/SOSController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/flyme/systemui/power/SOSController;->mKeyguardUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public enterSOSMode()V
    .registers 5

    const-string v0, "SOSController"

    const-string v1, "enter sos mode.."

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :try_start_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.meizu.contacts.action.SOS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.dialer"

    .line 66
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 67
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    iget-object v2, p0, Lcom/flyme/systemui/power/SOSController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_1d} :catch_76

    .line 75
    iget-object v0, p0, Lcom/flyme/systemui/power/SOSController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 76
    invoke-direct {p0}, Lcom/flyme/systemui/power/SOSController;->lockScreen()V

    .line 78
    invoke-direct {p0}, Lcom/flyme/systemui/power/SOSController;->registerKeyguardUnlockReceiver()V

    .line 80
    iget-object v0, p0, Lcom/flyme/systemui/power/SOSController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_fingerprint_use_unlock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_53

    .line 82
    iget-object v0, p0, Lcom/flyme/systemui/power/SOSController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    iget-object v0, p0, Lcom/flyme/systemui/power/SOSController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flyme_sos_mode_need_restore_fp"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    :cond_53
    iget-object v0, p0, Lcom/flyme/systemui/power/SOSController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_face_unlock"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_75

    .line 90
    iget-object v0, p0, Lcom/flyme/systemui/power/SOSController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    iget-object p0, p0, Lcom/flyme/systemui/power/SOSController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "flyme_sos_mode_need_restore_face"

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_75
    return-void

    :catch_76
    move-exception p0

    .line 70
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string p0, "com.meizu.contacts.action.SOS activity not found, return."

    .line 71
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public exitSOSMode()V
    .registers 5

    const-string v0, "SOSController"

    const-string v1, "exit sos mode.."

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/flyme/systemui/power/SOSController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 102
    invoke-direct {p0}, Lcom/flyme/systemui/power/SOSController;->unRegisterKeyguardUnlockReceiver()V

    .line 104
    iget-object v0, p0, Lcom/flyme/systemui/power/SOSController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "flyme_sos_mode_need_restore_fp"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_31

    .line 106
    iget-object v0, p0, Lcom/flyme/systemui/power/SOSController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mz_fingerprint_use_unlock"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    :cond_31
    iget-object v0, p0, Lcom/flyme/systemui/power/SOSController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "flyme_sos_mode_need_restore_face"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4a

    .line 112
    iget-object p0, p0, Lcom/flyme/systemui/power/SOSController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mz_face_unlock"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4a
    return-void
.end method
