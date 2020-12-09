.class final Lcom/android/server/input/InputManagerService$LocalService;
.super Landroid/hardware/input/InputManagerInternal;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2

    .line 2377
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/hardware/input/InputManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V
    .registers 3

    .line 2377
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;)V

    return-void
.end method


# virtual methods
.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 4

    .line 2385
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->access$2000(Lcom/android/server/input/InputManagerService;Landroid/view/InputEvent;I)Z

    move-result p1

    return p1
.end method

.method public setDisplayViewports(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;)V"
        }
    .end annotation

    .line 2380
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->access$1900(Lcom/android/server/input/InputManagerService;Ljava/util/List;)V

    .line 2381
    return-void
.end method

.method public setInteractive(Z)V
    .registers 4

    .line 2390
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1300(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->access$2100(JZ)V

    .line 2391
    return-void
.end method

.method public setPulseGestureEnabled(Z)V
    .registers 5

    .line 2400
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$2300(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 2401
    const/4 v0, 0x0

    .line 2403
    :try_start_9
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$2300(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_2a
    .catchall {:try_start_9 .. :try_end_14} :catchall_28

    .line 2404
    if-eqz p1, :cond_19

    :try_start_16
    const-string p1, "1"

    goto :goto_1b

    :cond_19
    const-string p1, "0"

    :goto_1b
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1e} :catch_25
    .catchall {:try_start_16 .. :try_end_1e} :catchall_22

    .line 2408
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_35

    :catchall_22
    move-exception p1

    move-object v0, v1

    goto :goto_36

    .line 2405
    :catch_25
    move-exception p1

    move-object v0, v1

    goto :goto_2b

    .line 2408
    :catchall_28
    move-exception p1

    goto :goto_36

    .line 2405
    :catch_2a
    move-exception p1

    .line 2406
    :goto_2b
    :try_start_2b
    const-string v1, "InputManager"

    const-string v2, "Unable to setPulseGestureEnabled"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_28

    .line 2408
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2409
    :goto_35
    goto :goto_3a

    .line 2408
    :goto_36
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    .line 2411
    :cond_3a
    :goto_3a
    return-void
.end method

.method public toggleCapsLock(I)V
    .registers 4

    .line 2395
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1300(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->access$2200(JI)V

    .line 2396
    return-void
.end method
