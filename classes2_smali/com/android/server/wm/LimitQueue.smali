.class Lcom/android/server/wm/LimitQueue;
.super Ljava/lang/Object;
.source "AnimatorFrameInfo.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Queue<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private limit:I

.field private queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "limit"  # I

    .line 180
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    .line 181
    iput p1, p0, Lcom/android/server/wm/LimitQueue;->limit:I

    .line 182
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 216
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 246
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 2

    .line 251
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 252
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"  # Ljava/lang/Object;

    .line 256
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 261
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 221
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .registers 3

    .line 207
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 208
    .local v0, "arr":[Ljava/lang/Object;
    array-length v1, v0

    if-lez v1, :cond_f

    .line 209
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1

    .line 211
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLimit()I
    .registers 2

    .line 203
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    iget v0, p0, Lcom/android/server/wm/LimitQueue;->limit:I

    return v0
.end method

.method public getQueue()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 199
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 231
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 267
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 186
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/LimitQueue;->limit:I

    if-lt v0, v1, :cond_f

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 190
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 226
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 195
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 241
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"  # Ljava/lang/Object;

    .line 272
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 277
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 282
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 236
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 288
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 294
    .local p0, "this":Lcom/android/server/wm/LimitQueue;, "Lcom/android/server/wm/LimitQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/android/server/wm/LimitQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
