.class Lcom/android/server/am/UserController$UserProgressListener;
.super Landroid/os/IProgressListener$Stub;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UserController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserProgressListener"
.end annotation


# instance fields
.field private volatile mUnlockStarted:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2209
    invoke-direct {p0}, Landroid/os/IProgressListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/UserController$1;)V
    .registers 2

    .line 2209
    invoke-direct {p0}, Lcom/android/server/am/UserController$UserProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/Bundle;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2224
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/UserController$UserProgressListener;->mUnlockStarted:J

    sub-long/2addr v0, v2

    .line 2227
    const-wide/32 v2, 0x80000

    const-string p2, "SystemServerTiming"

    if-nez p1, :cond_19

    .line 2228
    new-instance p1, Landroid/util/TimingsTraceLog;

    invoke-direct {p1, p2, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 2229
    const-string p2, "SystemUserUnlock"

    invoke-virtual {p1, p2, v0, v1}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    goto :goto_37

    .line 2231
    :cond_19
    new-instance v4, Landroid/util/TimingsTraceLog;

    invoke-direct {v4, p2, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "Unlock"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2232
    invoke-virtual {v4, p1, v0, v1}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    .line 2234
    :goto_37
    return-void
.end method

.method public onProgress(IILandroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2219
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unlocking user "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " progress "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    return-void
.end method

.method public onStarted(ILandroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2213
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Started unlocking user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/UserController$UserProgressListener;->mUnlockStarted:J

    .line 2215
    return-void
.end method
