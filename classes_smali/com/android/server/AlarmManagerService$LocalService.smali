.class final Lcom/android/server/AlarmManagerService$LocalService;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Lcom/android/server/AlarmManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    .line 2130
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/AlarmManagerService;
    .param p2, "x1"  # Lcom/android/server/AlarmManagerService$1;

    .line 2130
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$LocalService;-><init>(Lcom/android/server/AlarmManagerService;)V

    return-void
.end method


# virtual methods
.method public isIdling()Z
    .registers 2

    .line 2133
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;)Z

    move-result v0

    return v0
.end method

.method public registerInFlightListener(Lcom/android/server/AlarmManagerInternal$InFlightListener;)V
    .registers 4
    .param p1, "callback"  # Lcom/android/server/AlarmManagerInternal$InFlightListener;

    .line 2145
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2146
    :try_start_5
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1100(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2147
    monitor-exit v0

    .line 2148
    return-void

    .line 2147
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public removeAlarmsForUid(I)V
    .registers 4
    .param p1, "uid"  # I

    .line 2138
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2139
    :try_start_5
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(I)V

    .line 2140
    monitor-exit v0

    .line 2141
    return-void

    .line 2140
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method
