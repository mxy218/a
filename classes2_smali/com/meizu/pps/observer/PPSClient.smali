.class public Lcom/meizu/pps/observer/PPSClient;
.super Ljava/lang/Object;
.source "PPSClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/pps/observer/PPSClient$EventHandler;
    }
.end annotation


# static fields
.field private static final DATA_COLLECT_EVENT:I = 0x3

.field public static final DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"

.field private static final MAX_UNHANDLED_EVENT_COUNT:I = 0x80

.field private static final MSG_BINDSERVICE:I = 0x1

.field private static final MSG_EVENT:I = 0x0

.field private static final MSG_SETUP_END:I = 0x2

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.meizu.pps"

.field private static final PROCESS_EVENT:I = 0x0

.field private static final SERVICE_NAME:Ljava/lang/String; = "com.meizu.pps.SystemEventService"

.field private static final SETUP_END:Ljava/lang/String; = "com.meizu.setup.END"

.field private static final SYSTEM_EVENT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "PPSServer"

.field private static final U_EVENT:I = 0x2


# instance fields
.field private isDeviceProvisioned:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDelayedEventCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mEventHanler:Landroid/os/Handler;

.field private mEventListener:Lcom/meizu/common/pps/event/IEventCallback;

.field private final mLock:Ljava/lang/Object;

.field private mPid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "looper"  # Landroid/os/Looper;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mDelayedEventCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/pps/observer/PPSClient;->mPid:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/pps/observer/PPSClient;->isDeviceProvisioned:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mLock:Ljava/lang/Object;

    .line 73
    iput-object p1, p0, Lcom/meizu/pps/observer/PPSClient;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/meizu/pps/observer/PPSClient$EventHandler;

    invoke-direct {v0, p0, p2}, Lcom/meizu/pps/observer/PPSClient$EventHandler;-><init>(Lcom/meizu/pps/observer/PPSClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mEventHanler:Landroid/os/Handler;

    .line 75
    return-void
.end method

.method static synthetic access$002(Lcom/meizu/pps/observer/PPSClient;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/meizu/pps/observer/PPSClient;
    .param p1, "x1"  # Z

    .line 47
    iput-boolean p1, p0, Lcom/meizu/pps/observer/PPSClient;->isDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/pps/observer/PPSClient;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/meizu/pps/observer/PPSClient;

    .line 47
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mEventHanler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/pps/observer/PPSClient;IILcom/meizu/common/pps/event/Args;)V
    .registers 4
    .param p0, "x0"  # Lcom/meizu/pps/observer/PPSClient;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # Lcom/meizu/common/pps/event/Args;

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/pps/observer/PPSClient;->handleEvent(IILcom/meizu/common/pps/event/Args;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/pps/observer/PPSClient;)V
    .registers 1
    .param p0, "x0"  # Lcom/meizu/pps/observer/PPSClient;

    .line 47
    invoke-direct {p0}, Lcom/meizu/pps/observer/PPSClient;->bindService()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/pps/observer/PPSClient;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"  # Lcom/meizu/pps/observer/PPSClient;

    .line 47
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/pps/observer/PPSClient;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/meizu/pps/observer/PPSClient;

    .line 47
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindService()V
    .registers 5

    .line 154
    monitor-enter p0

    .line 155
    :try_start_1
    invoke-direct {p0}, Lcom/meizu/pps/observer/PPSClient;->isBinded()Z

    move-result v0

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/meizu/pps/observer/PPSClient;->isDeviceProvisioned:Z

    if-eqz v0, :cond_32

    .line 156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.meizu.pps"

    const-string v3, "com.meizu.pps.SystemEventService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_3b

    .line 159
    :try_start_1c
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSClient;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v0, p0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_27
    .catchall {:try_start_1c .. :try_end_26} :catchall_3b

    .line 162
    goto :goto_31

    .line 160
    :catch_27
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/Exception;
    :try_start_28
    const-string v2, "PPSServer"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v0  # "intent":Landroid/content/Intent;
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_31
    goto :goto_39

    .line 164
    :cond_32
    const-string v0, "PPSServer"

    const-string v1, "It is binded already"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_39
    monitor-exit p0

    .line 167
    return-void

    .line 166
    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_28 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method private handleEvent(IILcom/meizu/common/pps/event/Args;)V
    .registers 16
    .param p1, "type"  # I
    .param p2, "event"  # I
    .param p3, "args"  # Lcom/meizu/common/pps/event/Args;

    .line 247
    if-eqz p3, :cond_123

    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mEventListener:Lcom/meizu/common/pps/event/IEventCallback;

    if-nez v0, :cond_8

    goto/16 :goto_123

    .line 249
    :cond_8
    const/4 v1, 0x4

    const/16 v2, 0x7547

    const/16 v3, 0x80

    const/4 v4, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez p1, :cond_1d

    .line 250
    :try_start_14
    invoke-interface {v0, p2, p3}, Lcom/meizu/common/pps/event/IEventCallback;->onProcessEvent(ILcom/meizu/common/pps/event/Args;)V

    goto :goto_2e

    .line 262
    :catchall_18
    move-exception v0

    goto/16 :goto_d8

    .line 259
    :catch_1b
    move-exception v0

    goto :goto_7c

    .line 251
    :cond_1d
    if-ne p1, v8, :cond_23

    .line 252
    invoke-interface {v0, p2, p3}, Lcom/meizu/common/pps/event/IEventCallback;->onSystemEvent(ILcom/meizu/common/pps/event/Args;)V

    goto :goto_2e

    .line 253
    :cond_23
    if-ne p1, v7, :cond_29

    .line 254
    invoke-interface {v0, p2, p3}, Lcom/meizu/common/pps/event/IEventCallback;->onUEvent(ILcom/meizu/common/pps/event/Args;)V

    goto :goto_2e

    .line 255
    :cond_29
    if-ne p1, v5, :cond_2e

    .line 256
    invoke-interface {v0, p2, p3}, Lcom/meizu/common/pps/event/IEventCallback;->onDataCollectEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 258
    :cond_2e
    :goto_2e
    invoke-static {p3}, Lcom/meizu/common/pps/event/ArgsFactory;->recycle(Lcom/meizu/common/pps/event/Args;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_31} :catch_1b
    .catchall {:try_start_14 .. :try_end_31} :catchall_18

    .line 262
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mDelayedEventCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 265
    .local v0, "eventNum":I
    const/4 v4, -0x1

    .line 266
    .local v4, "pid":I
    iget-object v9, p0, Lcom/meizu/pps/observer/PPSClient;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 267
    :try_start_3b
    iget v10, p0, Lcom/meizu/pps/observer/PPSClient;->mPid:I

    move v4, v10

    .line 268
    monitor-exit v9
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_79

    .line 270
    if-le v0, v3, :cond_78

    if-lez v4, :cond_78

    .line 271
    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 272
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    const-string v3, "com.meizu.pps"

    aput-object v3, v1, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    const-string v3, "maybe hang"

    aput-object v3, v1, v5

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 273
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    :goto_6d
    const-string v2, "unhandled event count %d kill %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PPSServer"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v0  # "eventNum":I
    .end local v4  # "pid":I
    :cond_78
    goto :goto_d4

    .line 268
    .restart local v0  # "eventNum":I
    .restart local v4  # "pid":I
    :catchall_79
    move-exception v1

    :try_start_7a
    monitor-exit v9
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v1

    .line 260
    .end local v4  # "pid":I
    .local v0, "e":Ljava/lang/Exception;
    :goto_7c
    :try_start_7c
    const-string v9, "PPSServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handle event fail : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_7c .. :try_end_96} :catchall_18

    .line 262
    nop

    .end local v0  # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mDelayedEventCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 265
    .local v0, "eventNum":I
    const/4 v4, -0x1

    .line 266
    .restart local v4  # "pid":I
    iget-object v9, p0, Lcom/meizu/pps/observer/PPSClient;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 267
    :try_start_a1
    iget v10, p0, Lcom/meizu/pps/observer/PPSClient;->mPid:I

    move v4, v10

    .line 268
    monitor-exit v9
    :try_end_a5
    .catchall {:try_start_a1 .. :try_end_a5} :catchall_d5

    .line 270
    if-le v0, v3, :cond_78

    if-lez v4, :cond_78

    .line 271
    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 272
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    const-string v3, "com.meizu.pps"

    aput-object v3, v1, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    const-string v3, "maybe hang"

    aput-object v3, v1, v5

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 273
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    goto :goto_6d

    .line 276
    .end local v0  # "eventNum":I
    .end local v4  # "pid":I
    :goto_d4
    return-void

    .line 268
    .restart local v0  # "eventNum":I
    .restart local v4  # "pid":I
    :catchall_d5
    move-exception v1

    :try_start_d6
    monitor-exit v9
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw v1

    .line 262
    .end local v0  # "eventNum":I
    .end local v4  # "pid":I
    :goto_d8
    iget-object v9, p0, Lcom/meizu/pps/observer/PPSClient;->mDelayedEventCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    .line 265
    .local v4, "eventNum":I
    const/4 v9, -0x1

    .line 266
    .local v9, "pid":I
    iget-object v10, p0, Lcom/meizu/pps/observer/PPSClient;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 267
    :try_start_e2
    iget v11, p0, Lcom/meizu/pps/observer/PPSClient;->mPid:I

    move v9, v11

    .line 268
    monitor-exit v10
    :try_end_e6
    .catchall {:try_start_e2 .. :try_end_e6} :catchall_120

    .line 270
    if-le v4, v3, :cond_11f

    if-lez v9, :cond_11f

    .line 271
    invoke-static {v9}, Landroid/os/Process;->killProcess(I)V

    .line 272
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    const-string v3, "com.meizu.pps"

    aput-object v3, v1, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    const-string v3, "maybe hang"

    aput-object v3, v1, v5

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 273
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "unhandled event count %d kill %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PPSServer"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v4  # "eventNum":I
    .end local v9  # "pid":I
    :cond_11f
    throw v0

    .line 268
    .restart local v4  # "eventNum":I
    .restart local v9  # "pid":I
    :catchall_120
    move-exception v0

    :try_start_121
    monitor-exit v10
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_120

    throw v0

    .line 247
    .end local v4  # "eventNum":I
    .end local v9  # "pid":I
    :cond_123
    :goto_123
    return-void
.end method

.method private isBinded()Z
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mEventListener:Lcom/meizu/common/pps/event/IEventCallback;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    invoke-interface {v0}, Lcom/meizu/common/pps/event/IEventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    :goto_e
    return v0
.end method

.method private isConnectedLocked()Z
    .registers 2

    .line 183
    iget v0, p0, Lcom/meizu/pps/observer/PPSClient;->mPid:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public bindServiceIfNeeded()V
    .registers 5

    .line 147
    invoke-virtual {p0}, Lcom/meizu/pps/observer/PPSClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 148
    :cond_7
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mEventHanler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 149
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mEventHanler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 151
    :cond_17
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "args"  # [Ljava/lang/String;

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mEventListener:Lcom/meizu/common/pps/event/IEventCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mEventListener:Lcom/meizu/common/pps/event/IEventCallback;

    invoke-interface {v0, p1, p2}, Lcom/meizu/common/pps/event/IEventCallback;->dumpData(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 191
    :cond_9
    goto :goto_25

    .line 189
    :catch_a
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpData fail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PPSServer"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_25
    return-void
.end method

.method public getWorkingList(I)Ljava/util/List;
    .registers 6
    .param p1, "type"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v0, "workingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_5
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSClient;->mEventListener:Lcom/meizu/common/pps/event/IEventCallback;

    if-eqz v1, :cond_10

    .line 198
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSClient;->mEventListener:Lcom/meizu/common/pps/event/IEventCallback;

    invoke-interface {v1, p1}, Lcom/meizu/common/pps/event/IEventCallback;->getWorkingList(I)Ljava/util/List;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_11

    move-object v0, v1

    .line 202
    :cond_10
    goto :goto_2c

    .line 200
    :catch_11
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWorkingList fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PPSServer"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_2c
    return-object v0
.end method

.method public isConnected()Z
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_3
    invoke-direct {p0}, Lcom/meizu/pps/observer/PPSClient;->isConnectedLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 178
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public isSensorFastest(I)Z
    .registers 6
    .param p1, "uid"  # I

    .line 207
    const/4 v0, 0x1

    .line 209
    .local v0, "isSensorFastest":Z
    :try_start_1
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSClient;->mEventListener:Lcom/meizu/common/pps/event/IEventCallback;

    if-eqz v1, :cond_c

    .line 210
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSClient;->mEventListener:Lcom/meizu/common/pps/event/IEventCallback;

    invoke-interface {v1, p1}, Lcom/meizu/common/pps/event/IEventCallback;->isSensorFastest(I)Z

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v1

    .line 214
    :cond_c
    goto :goto_28

    .line 212
    :catch_d
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSensorFastest fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PPSServer"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_28
    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "listener"  # Landroid/os/IBinder;

    .line 99
    monitor-enter p0

    .line 100
    :try_start_1
    invoke-static {p2}, Lcom/meizu/common/pps/event/IEventCallbackNative;->asInterface(Landroid/os/IBinder;)Lcom/meizu/common/pps/event/IEventCallback;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7e

    .line 102
    .local v0, "l":Lcom/meizu/common/pps/event/IEventCallback;
    :try_start_5
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v1

    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_61
    .catchall {:try_start_5 .. :try_end_a} :catchall_7e

    .line 103
    :try_start_a
    new-instance v2, Lcom/meizu/common/pps/event/DoInitArgs;

    invoke-direct {v2}, Lcom/meizu/common/pps/event/DoInitArgs;-><init>()V

    .line 104
    .local v2, "args":Lcom/meizu/common/pps/event/DoInitArgs;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v2, Lcom/meizu/common/pps/event/DoInitArgs;->mExtra:Landroid/os/Bundle;

    .line 105
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/meizu/pps/observer/PPSProcessManager;->fillProcesses(Lcom/meizu/common/pps/event/DoInitArgs;)V

    .line 106
    iget-object v3, v2, Lcom/meizu/common/pps/event/DoInitArgs;->mExtra:Landroid/os/Bundle;

    invoke-static {v3}, Lcom/meizu/pps/observer/PPSAppTypeManager;->fillAppList(Landroid/os/Bundle;)V

    .line 107
    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lcom/meizu/common/pps/event/IEventCallback;->onSystemEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 108
    iget-object v4, p0, Lcom/meizu/pps/observer/PPSClient;->mEventHanler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object v3, p0, Lcom/meizu/pps/observer/PPSClient;->mEventHanler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    iput-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mEventListener:Lcom/meizu/common/pps/event/IEventCallback;

    .line 113
    iget-object v3, p0, Lcom/meizu/pps/observer/PPSClient;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_36
    .catchall {:try_start_a .. :try_end_36} :catchall_5e

    .line 114
    :try_start_36
    invoke-interface {v0}, Lcom/meizu/common/pps/event/IEventCallback;->myPid()I

    move-result v4

    iput v4, p0, Lcom/meizu/pps/observer/PPSClient;->mPid:I

    .line 115
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_5b

    .line 117
    :try_start_3d
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 118
    const-string v3, "PPSServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/meizu/pps/observer/PPSClient;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    nop

    .end local v2  # "args":Lcom/meizu/common/pps/event/DoInitArgs;
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_3d .. :try_end_5a} :catchall_5e

    .line 122
    goto :goto_7c

    .line 115
    .restart local v2  # "args":Lcom/meizu/common/pps/event/DoInitArgs;
    :catchall_5b
    move-exception v4

    :try_start_5c
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    .end local v0  # "l":Lcom/meizu/common/pps/event/IEventCallback;
    .end local p0  # "this":Lcom/meizu/pps/observer/PPSClient;
    .end local p1  # "name":Landroid/content/ComponentName;
    .end local p2  # "listener":Landroid/os/IBinder;
    :try_start_5d
    throw v4

    .line 119
    .end local v2  # "args":Lcom/meizu/common/pps/event/DoInitArgs;
    .restart local v0  # "l":Lcom/meizu/common/pps/event/IEventCallback;
    .restart local p0  # "this":Lcom/meizu/pps/observer/PPSClient;
    .restart local p1  # "name":Landroid/content/ComponentName;
    .restart local p2  # "listener":Landroid/os/IBinder;
    :catchall_5e
    move-exception v2

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_5e

    .end local p0  # "this":Lcom/meizu/pps/observer/PPSClient;
    .end local p1  # "name":Landroid/content/ComponentName;
    .end local p2  # "listener":Landroid/os/IBinder;
    :try_start_60
    throw v2
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_61} :catch_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_7e

    .line 120
    .restart local p0  # "this":Lcom/meizu/pps/observer/PPSClient;
    .restart local p1  # "name":Landroid/content/ComponentName;
    .restart local p2  # "listener":Landroid/os/IBinder;
    :catch_61
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    :try_start_62
    const-string v2, "PPSServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v0  # "l":Lcom/meizu/common/pps/event/IEventCallback;
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_7c
    monitor-exit p0

    .line 124
    return-void

    .line 123
    :catchall_7e
    move-exception v0

    monitor-exit p0
    :try_end_80
    .catchall {:try_start_62 .. :try_end_80} :catchall_7e

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"  # Landroid/content/ComponentName;

    .line 128
    monitor-enter p0

    .line 129
    :try_start_1
    invoke-direct {p0}, Lcom/meizu/pps/observer/PPSClient;->isConnectedLocked()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 132
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_32

    .line 133
    const/4 v1, -0x1

    :try_start_b
    iput v1, p0, Lcom/meizu/pps/observer/PPSClient;->mPid:I

    .line 134
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_2d

    .line 136
    const/4 v0, 0x0

    :try_start_f
    iput-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mEventListener:Lcom/meizu/common/pps/event/IEventCallback;

    .line 137
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mDelayedEventCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 138
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mEventHanler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mEventHanler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    invoke-virtual {p0}, Lcom/meizu/pps/observer/PPSClient;->bindServiceIfNeeded()V

    .line 141
    const-string v0, "PPSServer"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_32

    goto :goto_30

    .line 134
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    .end local p0  # "this":Lcom/meizu/pps/observer/PPSClient;
    .end local p1  # "name":Landroid/content/ComponentName;
    :try_start_2f
    throw v1

    .line 143
    .restart local p0  # "this":Lcom/meizu/pps/observer/PPSClient;
    .restart local p1  # "name":Landroid/content/ComponentName;
    :cond_30
    :goto_30
    monitor-exit p0

    .line 144
    return-void

    .line 143
    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_32

    throw v0
.end method

.method public scheduleDataCollectEvent(ILcom/meizu/common/pps/event/Args;)V
    .registers 6
    .param p1, "event"  # I
    .param p2, "args"  # Lcom/meizu/common/pps/event/Args;

    .line 240
    invoke-virtual {p0}, Lcom/meizu/pps/observer/PPSClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 241
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mDelayedEventCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 242
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mEventHanler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 244
    :cond_17
    return-void
.end method

.method public scheduleProcessEvent(ILcom/meizu/common/pps/event/Args;)V
    .registers 5
    .param p1, "event"  # I
    .param p2, "args"  # Lcom/meizu/common/pps/event/Args;

    .line 219
    invoke-virtual {p0}, Lcom/meizu/pps/observer/PPSClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 220
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mDelayedEventCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 221
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mEventHanler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 223
    :cond_16
    return-void
.end method

.method public scheduleSystemEvent(ILcom/meizu/common/pps/event/Args;)V
    .registers 6
    .param p1, "event"  # I
    .param p2, "args"  # Lcom/meizu/common/pps/event/Args;

    .line 226
    invoke-virtual {p0}, Lcom/meizu/pps/observer/PPSClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 227
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mDelayedEventCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 228
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mEventHanler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 230
    :cond_16
    return-void
.end method

.method public scheduleUEvent(ILcom/meizu/common/pps/event/Args;)V
    .registers 6
    .param p1, "event"  # I
    .param p2, "args"  # Lcom/meizu/common/pps/event/Args;

    .line 233
    invoke-virtual {p0}, Lcom/meizu/pps/observer/PPSClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 234
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mDelayedEventCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 235
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mEventHanler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 237
    :cond_17
    return-void
.end method

.method public systemReady()V
    .registers 5

    .line 78
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    move v1, v2

    :cond_11
    iput-boolean v1, p0, Lcom/meizu/pps/observer/PPSClient;->isDeviceProvisioned:Z

    .line 79
    iget-boolean v0, p0, Lcom/meizu/pps/observer/PPSClient;->isDeviceProvisioned:Z

    if-nez v0, :cond_2d

    .line 81
    new-instance v0, Lcom/meizu/pps/observer/PPSClient$1;

    invoke-direct {v0, p0}, Lcom/meizu/pps/observer/PPSClient$1;-><init>(Lcom/meizu/pps/observer/PPSClient;)V

    iput-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/pps/observer/PPSClient;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.meizu.setup.END"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_30

    .line 93
    :cond_2d
    invoke-direct {p0}, Lcom/meizu/pps/observer/PPSClient;->bindService()V

    .line 95
    :goto_30
    return-void
.end method
