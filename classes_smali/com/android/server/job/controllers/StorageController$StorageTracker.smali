.class public final Lcom/android/server/job/controllers/StorageController$StorageTracker;
.super Landroid/content/BroadcastReceiver;
.source "StorageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/StorageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StorageTracker"
.end annotation


# instance fields
.field private mLastStorageSeq:I

.field private mStorageLow:Z

.field final synthetic this$0:Lcom/android/server/job/controllers/StorageController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/StorageController;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->this$0:Lcom/android/server/job/controllers/StorageController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 103
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mLastStorageSeq:I

    .line 106
    return-void
.end method


# virtual methods
.method public getSeq()I
    .registers 2

    .line 123
    iget v0, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mLastStorageSeq:I

    return v0
.end method

.method public isStorageNotLow()Z
    .registers 2

    .line 119
    iget-boolean v0, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mStorageLow:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 128
    invoke-virtual {p0, p2}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->onReceiveInternal(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public onReceiveInternal(Landroid/content/Intent;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 133
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 134
    iget v1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mLastStorageSeq:I

    const-string/jumbo v2, "seq"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mLastStorageSeq:I

    .line 136
    const-string p1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "JobScheduler.Storage"

    if-eqz p1, :cond_42

    .line 137
    invoke-static {}, Lcom/android/server/job/controllers/StorageController;->access$000()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Available storage too low to do work. @ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 139
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_39
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mStorageLow:Z

    .line 142
    iget-object p1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->this$0:Lcom/android/server/job/controllers/StorageController;

    invoke-static {p1}, Lcom/android/server/job/controllers/StorageController;->access$100(Lcom/android/server/job/controllers/StorageController;)V

    goto :goto_72

    .line 143
    :cond_42
    const-string p1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 144
    invoke-static {}, Lcom/android/server/job/controllers/StorageController;->access$000()Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Available storage high enough to do work. @ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 146
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_6a
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mStorageLow:Z

    .line 149
    iget-object p1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->this$0:Lcom/android/server/job/controllers/StorageController;

    invoke-static {p1}, Lcom/android/server/job/controllers/StorageController;->access$100(Lcom/android/server/job/controllers/StorageController;)V

    .line 151
    :cond_72
    :goto_72
    return-void
.end method

.method public startTracking()V
    .registers 3

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->this$0:Lcom/android/server/job/controllers/StorageController;

    iget-object v1, v1, Lcom/android/server/job/controllers/StorageController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    return-void
.end method
