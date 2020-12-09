.class Lcom/android/server/DockObserver$2;
.super Landroid/os/UEventObserver;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method constructor <init>(Lcom/android/server/DockObserver;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 5

    .line 240
    const-string v0, "DockObserver"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dock UEVENT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v0}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_2a} :catch_3e

    .line 246
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/DockObserver;->access$400(Lcom/android/server/DockObserver;I)V

    .line 247
    monitor-exit v0

    .line 250
    goto :goto_55

    .line 247
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_2a .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v1
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_3e} :catch_3e

    .line 248
    :catch_3e
    move-exception v0

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse switch state from event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DockObserver"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_55
    return-void
.end method
