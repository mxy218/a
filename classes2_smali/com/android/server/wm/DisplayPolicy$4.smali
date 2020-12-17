.class Lcom/android/server/wm/DisplayPolicy$4;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 3831
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$4;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 3834
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$4;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1100(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3835
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$4;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$1400(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_17

    .line 3837
    monitor-exit v0

    return-void

    .line 3839
    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$4;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->access$2402(Lcom/android/server/wm/DisplayPolicy;J)J

    .line 3840
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$4;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget v1, v1, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$2500(I)Z

    move-result v1

    if-nez v1, :cond_33

    .line 3841
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$4;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$2600(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/BarController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/BarController;->showTransient()V

    .line 3843
    :cond_33
    monitor-exit v0

    .line 3844
    return-void

    .line 3843
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw v1
.end method
