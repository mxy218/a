.class Lcom/android/server/notification/NotificationManagerService$Archive;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Archive"
.end annotation


# instance fields
.field final mBuffer:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field final mBufferSize:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferSize:I

    .line 492
    new-instance p1, Ljava/util/ArrayDeque;

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferSize:I

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/ArrayDeque;

    .line 493
    return-void
.end method


# virtual methods
.method public descendingIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getArray(I)[Landroid/service/notification/StatusBarNotification;
    .registers 7

    .line 521
    if-nez p1, :cond_4

    iget p1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferSize:I

    .line 522
    :cond_4
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/ArrayDeque;

    .line 523
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [Landroid/service/notification/StatusBarNotification;

    .line 524
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 525
    const/4 v2, 0x0

    .line 526
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    if-ge v2, p1, :cond_29

    .line 527
    add-int/lit8 v3, v2, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/StatusBarNotification;

    aput-object v4, v0, v2

    move v2, v3

    goto :goto_15

    .line 529
    :cond_29
    return-object v0
.end method

.method public record(Landroid/service/notification/StatusBarNotification;)V
    .registers 4

    .line 506
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferSize:I

    if-ne v0, v1, :cond_f

    .line 507
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 513
    :cond_f
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 514
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    .line 498
    const-string v2, "Archive ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 500
    const-string v2, " notification"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    const-string v1, ")"

    goto :goto_21

    :cond_1e
    const-string/jumbo v1, "s)"

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
