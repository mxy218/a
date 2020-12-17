.class public abstract Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
.super Ljava/lang/Object;
.source "AbstractConnPool.java"

# interfaces
.implements Lorg/apache/http/impl/conn/tsccm/RefQueueHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

.field protected volatile isShutDown:Z

.field protected issuedConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;

.field protected numConnections:I

.field protected final poolLock:Ljava/util/concurrent/locks/Lock;

.field protected refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private refWorker:Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->log:Lorg/apache/commons/logging/Log;

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->issuedConnections:Ljava/util/Set;

    .line 107
    new-instance v0, Lorg/apache/http/impl/conn/IdleConnectionHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/IdleConnectionHandler;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

    .line 110
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method


# virtual methods
.method protected closeConnection(Lorg/apache/http/conn/OperatedClientConnection;)V
    .registers 3

    if-eqz p1, :cond_e

    .line 325
    :try_start_2
    invoke-interface {p1}, Lorg/apache/http/HttpConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p1

    .line 327
    iget-object p0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->log:Lorg/apache/commons/logging/Log;

    const-string v0, "I/O error closing connection"

    invoke-interface {p0, v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_e
    :goto_e
    return-void
.end method

.method public enableConnectionGC()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->refQueue:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_54

    .line 131
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 133
    :try_start_9
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->numConnections:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_4d

    if-gtz v0, :cond_45

    .line 137
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 140
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->refQueue:Ljava/lang/ref/ReferenceQueue;

    .line 141
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p0}, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;-><init>(Ljava/lang/ref/ReferenceQueue;Lorg/apache/http/impl/conn/tsccm/RefQueueHandler;)V

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->refWorker:Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;

    .line 142
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->refWorker:Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RefQueueWorker@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 134
    :cond_45
    :try_start_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Pool already in use."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v0

    .line 137
    iget-object p0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 129
    :cond_54
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Connection GC already enabled."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V
.end method

.method protected abstract handleLostEntry(Lorg/apache/http/conn/routing/HttpRoute;)V
.end method

.method public handleReference(Ljava/lang/ref/Reference;)V
    .registers 5

    .line 202
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 205
    :try_start_5
    instance-of v0, p1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;

    if-eqz v0, :cond_38

    .line 209
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->issuedConnections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 211
    check-cast p1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;

    .line 212
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object p1

    .line 213
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 214
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection garbage collected. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 216
    :cond_35
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->handleLostEntry(Lorg/apache/http/conn/routing/HttpRoute;)V
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_3e

    .line 221
    :cond_38
    iget-object p0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_3e
    move-exception p1

    iget-object p0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public abstract requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;
.end method

.method public shutdown()V
    .registers 3

    .line 284
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 287
    :try_start_5
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->isShutDown:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_4b

    if-eqz v0, :cond_f

    .line 312
    iget-object p0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 291
    :cond_f
    :try_start_f
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->refWorker:Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;

    if-eqz v0, :cond_18

    .line 292
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->refWorker:Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->shutdown()V

    .line 295
    :cond_18
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->issuedConnections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 296
    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;

    .line 298
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 299
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    if-eqz v1, :cond_1e

    .line 301
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->closeConnection(Lorg/apache/http/conn/OperatedClientConnection;)V

    goto :goto_1e

    .line 307
    :cond_3d
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/IdleConnectionHandler;->removeAll()V

    const/4 v0, 0x1

    .line 309
    iput-boolean v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->isShutDown:Z
    :try_end_45
    .catchall {:try_start_f .. :try_end_45} :catchall_4b

    .line 312
    iget-object p0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_4b
    move-exception v0

    iget-object p0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
