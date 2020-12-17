.class public Lcom/meizu/settings/search/DatabaseIndexingManager$IndexingTask;
.super Landroid/os/AsyncTask;
.source "DatabaseIndexingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/search/DatabaseIndexingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IndexingTask"
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
.field mCallback:Lcom/meizu/settings/search/IndexingCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mIndexStartTime:J

.field final synthetic this$0:Lcom/meizu/settings/search/DatabaseIndexingManager;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/search/DatabaseIndexingManager;Lcom/meizu/settings/search/IndexingCallback;)V
    .registers 3

    .line 1348
    iput-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$IndexingTask;->this$0:Lcom/meizu/settings/search/DatabaseIndexingManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1349
    iput-object p2, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$IndexingTask;->mCallback:Lcom/meizu/settings/search/IndexingCallback;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1342
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$IndexingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 2

    .line 1360
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$IndexingTask;->this$0:Lcom/meizu/settings/search/DatabaseIndexingManager;

    invoke-virtual {p0}, Lcom/meizu/settings/search/DatabaseIndexingManager;->performIndexing()V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1342
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$IndexingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3

    .line 1366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1368
    iget-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$IndexingTask;->this$0:Lcom/meizu/settings/search/DatabaseIndexingManager;

    iget-object p1, p1, Lcom/meizu/settings/search/DatabaseIndexingManager;->mIsIndexingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1369
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$IndexingTask;->mCallback:Lcom/meizu/settings/search/IndexingCallback;

    if-eqz p0, :cond_12

    .line 1370
    invoke-interface {p0}, Lcom/meizu/settings/search/IndexingCallback;->onIndexingFinished()V

    :cond_12
    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .line 1354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$IndexingTask;->mIndexStartTime:J

    .line 1355
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$IndexingTask;->this$0:Lcom/meizu/settings/search/DatabaseIndexingManager;

    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mIsIndexingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
