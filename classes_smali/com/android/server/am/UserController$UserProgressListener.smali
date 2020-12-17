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

    .line 2173
    invoke-direct {p0}, Landroid/os/IProgressListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/UserController$1;)V
    .registers 2
    .param p1, "x0"  # Lcom/android/server/am/UserController$1;

    .line 2173
    invoke-direct {p0}, Lcom/android/server/am/UserController$UserProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/Bundle;)V
    .registers 9
    .param p1, "id"  # I
    .param p2, "extras"  # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2188
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/UserController$UserProgressListener;->mUnlockStarted:J

    sub-long/2addr v0, v2

    .line 2191
    .local v0, "unlockTime":J
    const-wide/32 v2, 0x80000

    const-string v4, "SystemServerTiming"

    if-nez p1, :cond_19

    .line 2192
    new-instance v5, Landroid/util/TimingsTraceLog;

    invoke-direct {v5, v4, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 2193
    const-string v2, "SystemUserUnlock"

    invoke-virtual {v5, v2, v0, v1}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    goto :goto_37

    .line 2195
    :cond_19
    new-instance v5, Landroid/util/TimingsTraceLog;

    invoke-direct {v5, v4, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Unlock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2196
    invoke-virtual {v5, v2, v0, v1}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    .line 2198
    :goto_37
    return-void
.end method

.method public onProgress(IILandroid/os/Bundle;)V
    .registers 6
    .param p1, "id"  # I
    .param p2, "progress"  # I
    .param p3, "extras"  # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unlocking user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " progress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    return-void
.end method

.method public onStarted(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "id"  # I
    .param p2, "extras"  # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started unlocking user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/UserController$UserProgressListener;->mUnlockStarted:J

    .line 2179
    return-void
.end method
