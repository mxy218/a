.class public Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "LockSettingsService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SynchronizedStrongAuthTracker"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 276
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    .line 277
    return-void
.end method


# virtual methods
.method public getStrongAuthForUser(I)I
    .registers 2

    .line 288
    monitor-enter p0

    .line 289
    :try_start_1
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p1

    monitor-exit p0

    return p1

    .line 290
    :catchall_7
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw p1
.end method

.method protected handleStrongAuthRequiredChanged(II)V
    .registers 3

    .line 281
    monitor-enter p0

    .line 282
    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->handleStrongAuthRequiredChanged(II)V

    .line 283
    monitor-exit p0

    .line 284
    return-void

    .line 283
    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw p1
.end method

.method register(Lcom/android/server/locksettings/LockSettingsStrongAuth;)V
    .registers 3

    .line 294
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 295
    return-void
.end method
