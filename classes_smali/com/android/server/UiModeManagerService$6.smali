.class Lcom/android/server/UiModeManagerService$6;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "UiModeManagerService.java"


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

    .line 241
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .registers 4

    .line 244
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_5
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1, p1}, Lcom/android/server/UiModeManagerService;->access$702(Lcom/android/server/UiModeManagerService;Z)Z

    .line 246
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean p1, p1, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz p1, :cond_16

    .line 247
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 249
    :cond_16
    monitor-exit v0

    .line 250
    return-void

    .line 249
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw p1
.end method
