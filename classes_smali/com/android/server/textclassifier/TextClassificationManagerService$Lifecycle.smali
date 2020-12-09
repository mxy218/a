.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private final mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/textclassifier/TextClassificationManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 77
    return-void
.end method

.method private processAnyPendingWork(I)V
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$100(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 103
    :try_start_7
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v1, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$200(Lcom/android/server/textclassifier/TextClassificationManagerService;I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->access$300(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Z

    .line 104
    monitor-exit v0

    .line 105
    return-void

    .line 104
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p1
.end method


# virtual methods
.method public onStart()V
    .registers 4

    .line 82
    :try_start_0
    const-string/jumbo v0, "textclassification"

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    .line 87
    goto :goto_11

    .line 83
    :catchall_9
    move-exception v0

    .line 86
    const-string v1, "TextClassificationManagerService"

    const-string v2, "Could not start the TextClassificationManagerService."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    :goto_11
    return-void
.end method

.method public onStartUser(I)V
    .registers 2

    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->processAnyPendingWork(I)V

    .line 93
    return-void
.end method

.method public onStopUser(I)V
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$100(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 110
    :try_start_7
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->peekUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_1b

    .line 112
    iget-object v1, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;->cleanupService()V

    .line 113
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iget-object v1, v1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 115
    :cond_1b
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public onUnlockUser(I)V
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->processAnyPendingWork(I)V

    .line 99
    return-void
.end method
