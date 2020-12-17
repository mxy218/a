.class public Lcom/meizu/statsrpk/RpkPageController;
.super Ljava/lang/Object;
.source "RpkPageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/statsrpk/RpkPageController$Page;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "RpkPageController"


# instance fields
.field private final MAX_PAGE_COUNT:I

.field private final PAGE_TIME_OUT:J

.field private cleanSessionId:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mRpkInstance:Lcom/meizu/statsrpk/RpkInstanceImpl;

.field pages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/meizu/statsrpk/RpkPageController$Page;",
            ">;"
        }
    .end annotation
.end field

.field private sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/statsrpk/RpkPageController;->pages:Ljava/util/LinkedList;

    const-wide/32 v0, 0x2932e00

    .line 20
    iput-wide v0, p0, Lcom/meizu/statsrpk/RpkPageController;->PAGE_TIME_OUT:J

    const/16 v0, 0x64

    .line 21
    iput v0, p0, Lcom/meizu/statsrpk/RpkPageController;->MAX_PAGE_COUNT:I

    .line 108
    new-instance v0, Lcom/meizu/statsrpk/RpkPageController$1;

    invoke-direct {v0, p0}, Lcom/meizu/statsrpk/RpkPageController$1;-><init>(Lcom/meizu/statsrpk/RpkPageController;)V

    iput-object v0, p0, Lcom/meizu/statsrpk/RpkPageController;->cleanSessionId:Ljava/lang/Runnable;

    .line 28
    iput-object p1, p0, Lcom/meizu/statsrpk/RpkPageController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 17
    sget-object v0, Lcom/meizu/statsrpk/RpkPageController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/statsrpk/RpkPageController;)Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/meizu/statsrpk/RpkPageController;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/meizu/statsrpk/RpkPageController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/meizu/statsrpk/RpkPageController;->sessionId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getOrGenerateSessionId()Ljava/lang/String;
    .registers 4

    .line 36
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkPageController;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_2c

    .line 37
    monitor-enter p0

    .line 38
    :try_start_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsrpk/RpkPageController;->sessionId:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/meizu/statsrpk/RpkPageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generate a sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/statsrpk/RpkPageController;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    monitor-exit p0

    goto :goto_2c

    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw v0

    .line 42
    :cond_2c
    :goto_2c
    iget-object p0, p0, Lcom/meizu/statsrpk/RpkPageController;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method public init(Lcom/meizu/statsrpk/RpkInstanceImpl;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/meizu/statsrpk/RpkPageController;->mRpkInstance:Lcom/meizu/statsrpk/RpkInstanceImpl;

    return-void
.end method

.method public declared-synchronized startPage(Ljava/lang/String;)V
    .registers 11

    monitor-enter p0

    .line 51
    :try_start_1
    sget-object v0, Lcom/meizu/statsrpk/RpkPageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    iget-object v1, p0, Lcom/meizu/statsrpk/RpkPageController;->cleanSessionId:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    new-instance v0, Lcom/meizu/statsrpk/RpkPageController$Page;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/meizu/statsrpk/RpkPageController$Page;-><init>(Lcom/meizu/statsrpk/RpkPageController;Ljava/lang/String;JJ)V

    .line 55
    iget-object p1, p0, Lcom/meizu/statsrpk/RpkPageController;->pages:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 56
    iget-object p1, p0, Lcom/meizu/statsrpk/RpkPageController;->pages:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x64

    if-lez p1, :cond_66

    .line 58
    sget-object v0, Lcom/meizu/statsrpk/RpkPageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ON_PAGE_STOP, too many pages in stack, delete pages "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_5c
    if-ge v0, p1, :cond_66

    .line 60
    iget-object v1, p0, Lcom/meizu/statsrpk/RpkPageController;->pages:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_68

    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 63
    :cond_66
    monitor-exit p0

    return-void

    :catchall_68
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopPage(Ljava/lang/String;)V
    .registers 14

    monitor-enter p0

    .line 71
    :try_start_1
    sget-object v0, Lcom/meizu/statsrpk/RpkPageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopPage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkPageController;->pages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 73
    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/statsrpk/RpkPageController$Page;

    .line 77
    invoke-static {v3}, Lcom/meizu/statsrpk/RpkPageController$Page;->access$000(Lcom/meizu/statsrpk/RpkPageController$Page;)J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v4, 0x2932e00

    cmp-long v1, v1, v4

    if-lez v1, :cond_1e

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 79
    sget-object v1, Lcom/meizu/statsrpk/RpkPageController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove invalid page who\'s duration > 12 hours:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 82
    :cond_5b
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkPageController;->pages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 84
    :cond_62
    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/meizu/statsrpk/RpkPageController$Page;

    .line 88
    invoke-static {v11}, Lcom/meizu/statsrpk/RpkPageController$Page;->access$100(Lcom/meizu/statsrpk/RpkPageController$Page;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    if-nez v1, :cond_af

    .line 90
    invoke-static {v11}, Lcom/meizu/statsrpk/RpkPageController$Page;->access$200(Lcom/meizu/statsrpk/RpkPageController$Page;)J

    move-result-wide v5

    .line 92
    invoke-static {v11}, Lcom/meizu/statsrpk/RpkPageController$Page;->access$000(Lcom/meizu/statsrpk/RpkPageController$Page;)J

    move-result-wide v9

    sub-long v9, v2, v9

    .line 93
    iget-object v1, p0, Lcom/meizu/statsrpk/RpkPageController;->mRpkInstance:Lcom/meizu/statsrpk/RpkInstanceImpl;

    invoke-virtual {v1}, Lcom/meizu/statsrpk/RpkInstanceImpl;->getRpkTracker()Lcom/meizu/statsrpk/RpkTracker;

    move-result-object v3

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/meizu/statsrpk/RpkTracker;->trackPage(Ljava/lang/String;JJJ)V

    .line 94
    sget-object v1, Lcom/meizu/statsrpk/RpkPageController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create a page event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_c5

    .line 97
    :cond_af
    sget-object v2, Lcom/meizu/statsrpk/RpkPageController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found repeated page: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_c5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_62

    .line 102
    :cond_c9
    iget-object p1, p0, Lcom/meizu/statsrpk/RpkPageController;->pages:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-gtz p1, :cond_e1

    .line 103
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 104
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkPageController;->cleanSessionId:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_e1
    .catchall {:try_start_1 .. :try_end_e1} :catchall_e3

    .line 106
    :cond_e1
    monitor-exit p0

    return-void

    :catchall_e3
    move-exception p1

    monitor-exit p0

    throw p1
.end method
