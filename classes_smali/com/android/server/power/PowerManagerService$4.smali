.class Lcom/android/server/power/PowerManagerService$4;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 4148
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .registers 4

    .line 4151
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;II)V

    .line 4153
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4154
    :try_start_d
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-eq v1, p1, :cond_26

    .line 4155
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/power/PowerManagerService;->setVrModeEnabled(Z)V

    .line 4156
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v1, 0x2000

    invoke-static {p1, v1}, Lcom/android/server/power/PowerManagerService;->access$1576(Lcom/android/server/power/PowerManagerService;I)I

    .line 4157
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$1600(Lcom/android/server/power/PowerManagerService;)V

    .line 4159
    :cond_26
    monitor-exit v0

    .line 4160
    return-void

    .line 4159
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_28

    throw p1
.end method
