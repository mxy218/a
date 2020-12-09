.class Lcom/android/server/UiModeManagerService$4;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V
    .registers 4

    .line 214
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object p1, p1, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 215
    :try_start_5
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v0

    if-nez v0, :cond_21

    .line 216
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$400(Lcom/android/server/UiModeManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 217
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_21

    .line 219
    :cond_1c
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$500(Lcom/android/server/UiModeManagerService;)V

    .line 222
    :cond_21
    :goto_21
    monitor-exit p1

    .line 223
    return-void

    .line 222
    :catchall_23
    move-exception v0

    monitor-exit p1
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v0
.end method
