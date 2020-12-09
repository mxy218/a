.class public Lcom/android/server/policy/keyguard/KeyguardStateMonitor;
.super Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
.source "KeyguardStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardStateMonitor"


# instance fields
.field private final mCallback:Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentUserId:I

.field private volatile mHasLockscreenWallpaper:Z

.field private volatile mInputRestricted:Z

.field private volatile mIsShowing:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private volatile mSimSecure:Z

.field private volatile mTrusted:Z

.field private mUsbRestrictor:Lvendor/lineage/trust/V1_0/IUsbRestrict;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;)V
    .registers 5

    .line 62
    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mHasLockscreenWallpaper:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mUsbRestrictor:Lvendor/lineage/trust/V1_0/IUsbRestrict;

    .line 63
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 64
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    .line 65
    iput-object p3, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCallback:Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mContentResolver:Landroid/content/ContentResolver;

    .line 69
    :try_start_27
    invoke-interface {p2, p0}, Lcom/android/internal/policy/IKeyguardService;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2b

    .line 72
    goto :goto_33

    .line 70
    :catch_2b
    move-exception p1

    .line 71
    const-string p2, "KeyguardStateMonitor"

    const-string p3, "Remote Exception"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :goto_33
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyguardStateMonitor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSimSecure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mInputRestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTrusted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mCurrentUserId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public hasLockscreenWallpaper()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mHasLockscreenWallpaper:Z

    return v0
.end method

.method public isInputRestricted()Z
    .registers 2

    .line 84
    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    return v0
.end method

.method public isSecure(I)Z
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-nez p1, :cond_f

    iget-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public isShowing()Z
    .registers 2

    .line 76
    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    return v0
.end method

.method public isTrusted()Z
    .registers 2

    .line 88
    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    return v0
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .registers 2

    .line 146
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mHasLockscreenWallpaper:Z

    .line 147
    return-void
.end method

.method public onInputRestrictedStateChanged(Z)V
    .registers 2

    .line 135
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    .line 136
    return-void
.end method

.method public onShowingStateChanged(Z)V
    .registers 5

    .line 97
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    .line 99
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCallback:Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;

    invoke-interface {v0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;->onShowingChanged()V

    .line 101
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mUsbRestrictor:Lvendor/lineage/trust/V1_0/IUsbRestrict;

    if-nez v0, :cond_19

    .line 103
    :try_start_b
    invoke-static {}, Lvendor/lineage/trust/V1_0/IUsbRestrict;->getService()Lvendor/lineage/trust/V1_0/IUsbRestrict;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mUsbRestrictor:Lvendor/lineage/trust/V1_0/IUsbRestrict;

    .line 104
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mUsbRestrictor:Lvendor/lineage/trust/V1_0/IUsbRestrict;
    :try_end_13
    .catch Ljava/util/NoSuchElementException; {:try_start_b .. :try_end_13} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_17

    if-nez v0, :cond_16

    .line 106
    return-void

    .line 110
    :cond_16
    goto :goto_19

    .line 108
    :catch_17
    move-exception p1

    .line 109
    return-void

    .line 113
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string/jumbo v2, "trust_restrict_usb"

    invoke-static {v0, v2, v1}, Llineageos/providers/LineageSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    move v1, v2

    .line 115
    :cond_27
    if-eqz v1, :cond_30

    .line 117
    :try_start_29
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mUsbRestrictor:Lvendor/lineage/trust/V1_0/IUsbRestrict;

    invoke-interface {v0, p1}, Lvendor/lineage/trust/V1_0/IUsbRestrict;->setEnabled(Z)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f

    .line 120
    goto :goto_30

    .line 118
    :catch_2f
    move-exception p1

    .line 122
    :cond_30
    :goto_30
    return-void
.end method

.method public onSimSecureStateChanged(Z)V
    .registers 2

    .line 126
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    .line 127
    return-void
.end method

.method public onTrustedChanged(Z)V
    .registers 2

    .line 140
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    .line 141
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCallback:Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;

    invoke-interface {p1}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;->onTrustedChanged()V

    .line 142
    return-void
.end method

.method public declared-synchronized setCurrentUser(I)V
    .registers 2

    monitor-enter p0

    .line 130
    :try_start_1
    iput p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 131
    monitor-exit p0

    return-void

    .line 129
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
