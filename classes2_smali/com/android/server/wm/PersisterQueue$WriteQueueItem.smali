.class interface abstract Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
.super Ljava/lang/Object;
.source "PersisterQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PersisterQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "WriteQueueItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/server/wm/PersisterQueue$WriteQueueItem<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public matches(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 257
    const/4 p1, 0x0

    return p1
.end method

.method public abstract process()V
.end method

.method public updateFrom(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 254
    return-void
.end method
