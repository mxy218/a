.class Lcom/android/server/power/PowerManagerService$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDisplayState:I

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 2757
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2758
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/power/PowerManagerService$1;->mDisplayState:I

    return-void
.end method


# virtual methods
.method public acquireSuspendBlocker()V
    .registers 2

    .line 2818
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2400(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 2819
    return-void
.end method

.method public onDisplayStateChange(I)V
    .registers 5

    .line 2793
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2794
    :try_start_7
    iget v1, p0, Lcom/android/server/power/PowerManagerService$1;->mDisplayState:I

    if-eq v1, p1, :cond_4e

    .line 2795
    iput p1, p0, Lcom/android/server/power/PowerManagerService$1;->mDisplayState:I

    .line 2796
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_34

    .line 2797
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 2798
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1, v1}, Lcom/android/server/power/PowerManagerService;->access$2000(Lcom/android/server/power/PowerManagerService;Z)V

    .line 2800
    :cond_1e
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$2100(Lcom/android/server/power/PowerManagerService;)Z

    move-result p1

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2801
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$2200(Lcom/android/server/power/PowerManagerService;)Z

    move-result p1

    if-nez p1, :cond_4e

    .line 2802
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1, v2}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;Z)V

    goto :goto_4e

    .line 2805
    :cond_34
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$2200(Lcom/android/server/power/PowerManagerService;)Z

    move-result p1

    if-nez p1, :cond_41

    .line 2806
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1, v1}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;Z)V

    .line 2808
    :cond_41
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Z

    move-result p1

    if-nez p1, :cond_4e

    .line 2809
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1, v2}, Lcom/android/server/power/PowerManagerService;->access$2000(Lcom/android/server/power/PowerManagerService;Z)V

    .line 2813
    :cond_4e
    :goto_4e
    monitor-exit v0

    .line 2814
    return-void

    .line 2813
    :catchall_50
    move-exception p1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_50

    throw p1
.end method

.method public onProximityNegative()V
    .registers 10

    .line 2779
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2780
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$1702(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 2781
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$1576(Lcom/android/server/power/PowerManagerService;I)I

    .line 2782
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    invoke-static/range {v3 .. v8}, Lcom/android/server/power/PowerManagerService;->access$1800(Lcom/android/server/power/PowerManagerService;JIII)Z

    .line 2784
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1600(Lcom/android/server/power/PowerManagerService;)V

    .line 2785
    monitor-exit v0

    .line 2786
    return-void

    .line 2785
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public onProximityPositive()V
    .registers 4

    .line 2770
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2771
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$1702(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 2772
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$1576(Lcom/android/server/power/PowerManagerService;I)I

    .line 2773
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1600(Lcom/android/server/power/PowerManagerService;)V

    .line 2774
    monitor-exit v0

    .line 2775
    return-void

    .line 2774
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public onStateChanged()V
    .registers 4

    .line 2762
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2763
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$1576(Lcom/android/server/power/PowerManagerService;I)I

    .line 2764
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1600(Lcom/android/server/power/PowerManagerService;)V

    .line 2765
    monitor-exit v0

    .line 2766
    return-void

    .line 2765
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public releaseSuspendBlocker()V
    .registers 2

    .line 2823
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2400(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 2824
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2828
    monitor-enter p0

    .line 2829
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerManagerService$1;->mDisplayState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 2830
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method
