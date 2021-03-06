.class final Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;
.super Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
.source "RootActivityContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RootActivityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SleepTokenImpl"
.end annotation


# instance fields
.field private final mAcquireTime:J

.field private final mDisplayId:I

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wm/RootActivityContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RootActivityContainer;Ljava/lang/String;I)V
    .registers 6
    .param p2, "tag"  # Ljava/lang/String;
    .param p3, "displayId"  # I

    .line 2439
    iput-object p1, p0, Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;->this$0:Lcom/android/server/wm/RootActivityContainer;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;-><init>()V

    .line 2440
    iput-object p2, p0, Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;->mTag:Ljava/lang/String;

    .line 2441
    iput p3, p0, Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;->mDisplayId:I

    .line 2442
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;->mAcquireTime:J

    .line 2443
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;

    .line 2434
    iget v0, p0, Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;->mDisplayId:I

    return v0
.end method


# virtual methods
.method public release()V
    .registers 3

    .line 2447
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;->this$0:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2448
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;->this$0:Lcom/android/server/wm/RootActivityContainer;

    invoke-static {v1, p0}, Lcom/android/server/wm/RootActivityContainer;->access$100(Lcom/android/server/wm/RootActivityContainer;Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;)V

    .line 2449
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2450
    return-void

    .line 2449
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 2454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", acquire at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;->mAcquireTime:J

    .line 2455
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2454
    return-object v0
.end method
