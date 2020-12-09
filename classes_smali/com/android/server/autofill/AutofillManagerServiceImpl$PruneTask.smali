.class Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;
.super Landroid/os/AsyncTask;
.source "AutofillManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PruneTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .registers 2

    .line 1496
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/AutofillManagerServiceImpl$1;)V
    .registers 3

    .line 1496
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1496
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 9

    .line 1503
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$200(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1504
    :try_start_7
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$300(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1505
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 1507
    const/4 v2, 0x0

    move v3, v2

    :goto_18
    if-ge v3, v0, :cond_32

    .line 1508
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$300(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/autofill/Session;

    .line 1510
    iget v5, v4, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v4}, Lcom/android/server/autofill/Session;->getActivityTokenLocked()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1507
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1512
    :cond_32
    monitor-exit p1
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_e1

    .line 1514
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    .line 1517
    move v3, v0

    move v0, v2

    :goto_39
    if-ge v0, v3, :cond_5a

    .line 1520
    :try_start_3b
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-interface {p1, v4}, Landroid/app/IActivityTaskManager;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 1521
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_4a} :catch_4f

    .line 1522
    add-int/lit8 v0, v0, -0x1

    .line 1523
    add-int/lit8 v3, v3, -0x1

    .line 1527
    :cond_4e
    goto :goto_57

    .line 1525
    :catch_4f
    move-exception v4

    .line 1526
    const-string v5, "AutofillManagerServiceImpl"

    const-string v6, "Cannot figure out if activity is finished"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1517
    :goto_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 1530
    :cond_5a
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$400(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1531
    nop

    :goto_62
    if-ge v2, v3, :cond_db

    .line 1532
    :try_start_64
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$300(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/autofill/Session;

    .line 1534
    if-eqz p1, :cond_d8

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 1535
    invoke-virtual {p1}, Lcom/android/server/autofill/Session;->getActivityTokenLocked()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_d8

    .line 1536
    invoke-virtual {p1}, Lcom/android/server/autofill/Session;->isSavingLocked()Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 1537
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_d8

    .line 1538
    const-string v4, "AutofillManagerServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is saving"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8

    .line 1541
    :cond_a8
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_d5

    .line 1542
    const-string v4, "AutofillManagerServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prune session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    invoke-virtual {p1}, Lcom/android/server/autofill/Session;->getActivityTokenLocked()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1542
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :cond_d5
    invoke-virtual {p1}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 1531
    :cond_d8
    :goto_d8
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 1549
    :cond_db
    monitor-exit v0

    .line 1551
    const/4 p1, 0x0

    return-object p1

    .line 1549
    :catchall_de
    move-exception p1

    monitor-exit v0
    :try_end_e0
    .catchall {:try_start_64 .. :try_end_e0} :catchall_de

    throw p1

    .line 1512
    :catchall_e1
    move-exception v0

    :try_start_e2
    monitor-exit p1
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    throw v0
.end method
