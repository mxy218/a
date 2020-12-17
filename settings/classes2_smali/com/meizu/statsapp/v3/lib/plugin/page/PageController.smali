.class public Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;
.super Ljava/lang/Object;
.source "PageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/statsapp/v3/lib/plugin/page/PageController$Page;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "PageController"


# instance fields
.field private MAX_PAGE_COUNT:I

.field private PAGE_TIME_OUT:J

.field private context:Landroid/content/Context;

.field pages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/meizu/statsapp/v3/lib/plugin/page/PageController$Page;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;->pages:Ljava/util/LinkedList;

    const-wide/32 v0, 0x2932e00

    .line 15
    iput-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;->PAGE_TIME_OUT:J

    const/16 v0, 0x64

    .line 16
    iput v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;->MAX_PAGE_COUNT:I

    .line 21
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;->context:Landroid/content/Context;

    .line 22
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;->TAG:Ljava/lang/String;

    const-string p1, "PageController init"

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized startPage(Ljava/lang/String;)V
    .registers 11

    monitor-enter p0

    .line 31
    :try_start_1
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController$Page;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController$Page;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;Ljava/lang/String;JJ)V

    .line 33
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;->pages:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 34
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;->pages:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;->MAX_PAGE_COUNT:I

    sub-int/2addr p1, v0

    if-lez p1, :cond_58

    .line 36
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ON_PAGE_STOP, too many pages in stack, delete pages "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_4e
    if-ge v0, p1, :cond_58

    .line 38
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;->pages:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_55
    .catchall {:try_start_1 .. :try_end_55} :catchall_5a

    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 41
    :cond_58
    monitor-exit p0

    return-void

    :catchall_5a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopPage(Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/page/PageController$Page;
    .registers 8

    monitor-enter p0

    .line 49
    :try_start_1
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;->pages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 51
    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController$Page;

    .line 54
    iget-wide v4, v3, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController$Page;->elapse:J

    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    iget-wide v4, p0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;->PAGE_TIME_OUT:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_1d

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 56
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#2_remove invalid page who\'s duration > 12 hours:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 59
    :cond_54
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;->pages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 61
    :cond_5b
    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController$Page;

    .line 63
    iget-object v3, v2, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController$Page;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    if-nez v1, :cond_89

    .line 66
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopPage, first found page: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_9f

    .line 68
    :cond_89
    sget-object v3, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopPage, found repeated page: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_9f
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_a2
    .catchall {:try_start_1 .. :try_end_a2} :catchall_a5

    goto :goto_5b

    .line 73
    :cond_a3
    monitor-exit p0

    return-object v1

    :catchall_a5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
