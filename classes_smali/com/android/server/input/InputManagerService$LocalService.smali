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

    .line 2292
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/hardware/input/InputManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/input/InputManagerService;
    .param p2, "x1"  # Lcom/android/server/input/InputManagerService$1;

    .line 2292
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;)V

    return-void
.end method


# virtual methods
.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 4
    .param p1, "event"  # Landroid/view/InputEvent;
    .param p2, "mode"  # I

    .line 2300
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->access$1600(Lcom/android/server/input/InputManagerService;Landroid/view/InputEvent;I)Z

    move-result v0

    return v0
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

    .line 2295
    .local p1, "viewports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayViewport;>;"
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->access$1500(Lcom/android/server/input/InputManagerService;Ljava/util/List;)V

    .line 2296
    return-void
.end method

.method public setInteractive(Z)V
    .registers 4
    .param p1, "interactive"  # Z

    .line 2305
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$900(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->access$1700(JZ)V

    .line 2306
    return-void
.end method

.method public setPulseGestureEnabled(Z)V
    .registers 6
    .param p1, "enabled"  # Z

    .line 2315
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1900(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 2316
    const/4 v0, 0x0

    .line 2318
    .local v0, "writer":Ljava/io/FileWriter;
    :try_start_9
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$1900(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 2319
    if-eqz p1, :cond_1a

    const-string v1, "1"

    goto :goto_1c

    :cond_1a
    const-string v1, "0"

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1f} :catch_22
    .catchall {:try_start_9 .. :try_end_1f} :catchall_20

    .line 2323
    goto :goto_2b

    :catchall_20
    move-exception v1

    goto :goto_2f

    .line 2320
    :catch_22
    move-exception v1

    .line 2321
    .local v1, "e":Ljava/io/IOException;
    :try_start_23
    const-string v2, "InputManager"

    const-string v3, "Unable to setPulseGestureEnabled"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 2323
    nop

    .end local v1  # "e":Ljava/io/IOException;
    :goto_2b
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2324
    goto :goto_33

    .line 2323
    :goto_2f
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 2326
    .end local v0  # "writer":Ljava/io/FileWriter;
    :cond_33
    :goto_33
    return-void
.end method

.method public toggleCapsLock(I)V
    .registers 4
    .param p1, "deviceId"  # I

    .line 2310
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$900(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->access$1800(JI)V

    .line 2311
    return-void
.end method
