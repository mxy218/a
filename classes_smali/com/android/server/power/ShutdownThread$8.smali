.class Lcom/android/server/power/ShutdownThread$8;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 914
    const-string v0, "ShutdownThread"

    const-string/jumbo v1, "setBacklightBrightness: Off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$1100(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$1100(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 916
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$1100(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 918
    :cond_2b
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$1200(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager;

    move-result-object v0

    if-nez v0, :cond_4d

    .line 919
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Lcom/android/server/power/ShutdownThread;

    move-result-object v1

    .line 920
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$1000(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 919
    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->access$1202(Lcom/android/server/power/ShutdownThread;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    .line 923
    :cond_4d
    return-void
.end method
