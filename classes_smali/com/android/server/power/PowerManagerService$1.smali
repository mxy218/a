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
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/power/PowerManagerService;

    .line 2907
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2908
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService$1;->mDisplayState:I

    return-void
.end method


# virtual methods
.method public acquireSuspendBlocker()V
    .registers 2

    .line 2975
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 2976
    return-void
.end method

.method public onDisplayStateChange(I)V
    .registers 6
    .param p1, "state"  # I

    .line 2951
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2952
    :try_start_7
    iget v1, p0, Lcom/android/server/power/PowerManagerService$1;->mDisplayState:I

    if-eq v1, p1, :cond_46

    .line 2953
    iput p1, p0, Lcom/android/server/power/PowerManagerService$1;->mDisplayState:I

    .line 2954
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2c

    .line 2955
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$2100(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 2956
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, v1}, Lcom/android/server/power/PowerManagerService;->access$2200(Lcom/android/server/power/PowerManagerService;Z)V

    .line 2958
    :cond_1e
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 2959
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$2400(Lcom/android/server/power/PowerManagerService;Z)V

    goto :goto_46

    .line 2962
    :cond_2c
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 2963
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, v1}, Lcom/android/server/power/PowerManagerService;->access$2400(Lcom/android/server/power/PowerManagerService;Z)V

    .line 2965
    :cond_39
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2100(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 2966
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$2200(Lcom/android/server/power/PowerManagerService;Z)V

    .line 2970
    :cond_46
    :goto_46
    monitor-exit v0

    .line 2971
    return-void

    .line 2970
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public onProximityNegative()V
    .registers 19

    .line 2929
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2930
    :try_start_9
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/server/power/PowerManagerService;->access$1702(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 2931
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lcom/android/server/power/PowerManagerService;->access$1576(Lcom/android/server/power/PowerManagerService;I)I

    .line 2932
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    invoke-static/range {v4 .. v9}, Lcom/android/server/power/PowerManagerService;->access$1800(Lcom/android/server/power/PowerManagerService;JIII)Z

    .line 2935
    iget-object v10, v1, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v13, 0x1

    const-string v14, "android.server.power:POWER"

    const/16 v15, 0x3e8

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2939
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x3e8

    .line 2935
    invoke-static/range {v10 .. v17}, Lcom/android/server/power/PowerManagerService;->access$2000(Lcom/android/server/power/PowerManagerService;JILjava/lang/String;ILjava/lang/String;I)Z

    .line 2942
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1600(Lcom/android/server/power/PowerManagerService;)V

    .line 2943
    monitor-exit v2

    .line 2944
    return-void

    .line 2943
    :catchall_44
    move-exception v0

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_44

    throw v0
.end method

.method public onProximityPositive()V
    .registers 4

    .line 2920
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2921
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$1702(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 2922
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$1576(Lcom/android/server/power/PowerManagerService;I)I

    .line 2923
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1600(Lcom/android/server/power/PowerManagerService;)V

    .line 2924
    monitor-exit v0

    .line 2925
    return-void

    .line 2924
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public onStateChanged()V
    .registers 4

    .line 2912
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2913
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$1576(Lcom/android/server/power/PowerManagerService;I)I

    .line 2914
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1600(Lcom/android/server/power/PowerManagerService;)V

    .line 2915
    monitor-exit v0

    .line 2916
    return-void

    .line 2915
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public releaseSuspendBlocker()V
    .registers 2

    .line 2980
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 2981
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2985
    monitor-enter p0

    .line 2986
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

    .line 2987
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method
