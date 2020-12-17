.class public interface abstract Lcom/android/systemui/util/wakelock/WakeLock;
.super Ljava/lang/Object;
.source "WakeLock.java"


# direct methods
.method public static createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;
    .registers 4

    const-wide/16 v0, 0x4e20

    .line 54
    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;J)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p0

    return-object p0
.end method

.method public static createPartial(Landroid/content/Context;Ljava/lang/String;J)Lcom/android/systemui/util/wakelock/WakeLock;
    .registers 4

    .line 61
    invoke-static {p0, p1}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartialInner(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Landroid/os/PowerManager$WakeLock;J)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p0

    return-object p0
.end method

.method public static createPartialInner(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 66
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0, v0, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$wrapImpl$0(Ljava/lang/Runnable;Lcom/android/systemui/util/wakelock/WakeLock;)V
    .registers 3

    const-string/jumbo v0, "wrap"

    .line 74
    :try_start_3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 76
    invoke-interface {p1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    return-void

    :catchall_a
    move-exception p0

    invoke-interface {p1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    throw p0
.end method

.method public static wrap(Landroid/os/PowerManager$WakeLock;J)Lcom/android/systemui/util/wakelock/WakeLock;
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 89
    new-instance v0, Lcom/android/systemui/util/wakelock/WakeLock$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/util/wakelock/WakeLock$1;-><init>(Landroid/os/PowerManager$WakeLock;J)V

    return-object v0
.end method

.method public static wrapImpl(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 3

    const-string/jumbo v0, "wrap"

    .line 71
    invoke-interface {p0, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/android/systemui/util/wakelock/-$$Lambda$WakeLock$Rdut1DSGlHtP-OM8Y87P7galvtM;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/util/wakelock/-$$Lambda$WakeLock$Rdut1DSGlHtP-OM8Y87P7galvtM;-><init>(Ljava/lang/Runnable;Lcom/android/systemui/util/wakelock/WakeLock;)V

    return-object v0
.end method


# virtual methods
.method public abstract acquire(Ljava/lang/String;)V
.end method

.method public abstract release(Ljava/lang/String;)V
.end method

.method public abstract wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end method
