.class Lcom/android/server/wm/KeyguardDisableHandler;
.super Ljava/lang/Object;
.source "KeyguardDisableHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/KeyguardDisableHandler$Injector;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

.field private final mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

.field private mCurrentUser:I

.field private mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

.field private final mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/wm/KeyguardDisableHandler$Injector;Landroid/os/Handler;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    .line 111
    new-instance v0, Lcom/android/server/wm/KeyguardDisableHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/KeyguardDisableHandler$1;-><init>(Lcom/android/server/wm/KeyguardDisableHandler;)V

    iput-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

    .line 48
    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    .line 49
    new-instance p1, Lcom/android/server/utils/UserTokenWatcher;

    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

    const-string v1, "WindowManager"

    invoke-direct {p1, v0, p2, v1}, Lcom/android/server/utils/UserTokenWatcher;-><init>(Lcom/android/server/utils/UserTokenWatcher$Callback;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 50
    new-instance p1, Lcom/android/server/utils/UserTokenWatcher;

    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

    invoke-direct {p1, v0, p2, v1}, Lcom/android/server/utils/UserTokenWatcher;-><init>(Lcom/android/server/utils/UserTokenWatcher$Callback;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 51
    return-void
.end method

.method static create(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;Landroid/os/Handler;)Lcom/android/server/wm/KeyguardDisableHandler;
    .registers 5

    .line 125
    const-class p0, Landroid/os/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManagerInternal;

    .line 126
    new-instance v0, Lcom/android/server/wm/KeyguardDisableHandler;

    new-instance v1, Lcom/android/server/wm/KeyguardDisableHandler$2;

    invoke-direct {v1, p1, p0}, Lcom/android/server/wm/KeyguardDisableHandler$2;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Landroid/os/UserManagerInternal;)V

    invoke-direct {v0, v1, p2}, Lcom/android/server/wm/KeyguardDisableHandler;-><init>(Lcom/android/server/wm/KeyguardDisableHandler$Injector;Landroid/os/Handler;)V

    return-object v0
.end method

.method private shouldKeyguardBeEnabled(I)Z
    .registers 6

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    iget v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    invoke-interface {v0, v1}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->dpmRequiresPassword(I)Z

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    iget v2, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    invoke-interface {v1, v2}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->isKeyguardSecure(I)Z

    move-result v1

    .line 100
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_18

    if-nez v1, :cond_18

    move v1, v3

    goto :goto_19

    :cond_18
    move v1, v2

    .line 103
    :goto_19
    nop

    .line 105
    xor-int/2addr v0, v3

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/UserTokenWatcher;->isAcquired(I)Z

    move-result v1

    if-nez v1, :cond_2f

    :cond_25
    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 106
    invoke-virtual {v0, p1}, Lcom/android/server/utils/UserTokenWatcher;->isAcquired(I)Z

    move-result p1

    if-eqz p1, :cond_31

    :cond_2f
    move v2, v3

    goto :goto_32

    :cond_31
    nop

    .line 107
    :goto_32
    xor-int/lit8 p1, v2, 0x1

    return p1
.end method

.method private updateKeyguardEnabledLocked(I)V
    .registers 3

    .line 67
    iget v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    if-eq v0, p1, :cond_7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_12

    .line 68
    :cond_7
    iget-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    iget v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/KeyguardDisableHandler;->shouldKeyguardBeEnabled(I)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->enableKeyguard(Z)V

    .line 70
    :cond_12
    return-void
.end method

.method private watcherForCallingUid(Landroid/os/IBinder;I)Lcom/android/server/utils/UserTokenWatcher;
    .registers 4

    .line 83
    invoke-static {p2}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 84
    iget-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    return-object p1

    .line 85
    :cond_9
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_14

    instance-of p1, p1, Lcom/android/server/wm/LockTaskController$LockTaskToken;

    if-eqz p1, :cond_14

    .line 90
    iget-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    return-object p1

    .line 92
    :cond_14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Only apps can use the KeyguardLock API"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;II)V
    .registers 6

    .line 73
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/KeyguardDisableHandler;->watcherForCallingUid(Landroid/os/IBinder;I)Lcom/android/server/utils/UserTokenWatcher;

    move-result-object p3

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    invoke-interface {v0, p4}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->getProfileParentId(I)I

    move-result p4

    invoke-virtual {p3, p1, p2, p4}, Lcom/android/server/utils/UserTokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 75
    return-void
.end method

.method reenableKeyguard(Landroid/os/IBinder;II)V
    .registers 5

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/KeyguardDisableHandler;->watcherForCallingUid(Landroid/os/IBinder;I)Lcom/android/server/utils/UserTokenWatcher;

    move-result-object p2

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    invoke-interface {v0, p3}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->getProfileParentId(I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/android/server/utils/UserTokenWatcher;->release(Landroid/os/IBinder;I)V

    .line 80
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 2

    .line 54
    monitor-enter p0

    .line 55
    :try_start_1
    iput p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    .line 56
    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabledLocked(I)V

    .line 57
    monitor-exit p0

    .line 58
    return-void

    .line 57
    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method

.method updateKeyguardEnabled(I)V
    .registers 2

    .line 61
    monitor-enter p0

    .line 62
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabledLocked(I)V

    .line 63
    monitor-exit p0

    .line 64
    return-void

    .line 63
    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw p1
.end method
