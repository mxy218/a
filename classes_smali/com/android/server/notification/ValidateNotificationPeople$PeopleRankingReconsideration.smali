.class Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
.super Lcom/android/server/notification/RankingReconsideration;
.source "ValidateNotificationPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ValidateNotificationPeople;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeopleRankingReconsideration"
.end annotation


# static fields
.field private static final LOOKUP_TIME:J = 0x3e8L


# instance fields
.field private mContactAffinity:F

.field private mContactInWhiteList:Z

.field private final mContext:Landroid/content/Context;

.field private final mPendingLookups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecord:Lcom/android/server/notification/NotificationRecord;

.field final synthetic this$0:Lcom/android/server/notification/ValidateNotificationPeople;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;)V
    .registers 7
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "key"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 552
    .local p4, "pendingLookups":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 553
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/notification/RankingReconsideration;-><init>(Ljava/lang/String;J)V

    .line 546
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    .line 549
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactInWhiteList:Z

    .line 554
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    .line 555
    iput-object p4, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPendingLookups:Ljava/util/LinkedList;

    .line 556
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;Lcom/android/server/notification/ValidateNotificationPeople$1;)V
    .registers 6
    .param p1, "x0"  # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p2, "x1"  # Landroid/content/Context;
    .param p3, "x2"  # Ljava/lang/String;
    .param p4, "x3"  # Ljava/util/LinkedList;
    .param p5, "x4"  # Lcom/android/server/notification/ValidateNotificationPeople$1;

    .line 540
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;)V

    return-void
.end method


# virtual methods
.method public applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p1, "operand"  # Lcom/android/server/notification/NotificationRecord;

    .line 614
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v0

    .line 615
    .local v0, "affinityBound":F
    iget v1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setContactAffinity(F)V

    .line 616
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "final affinity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ValidateNoPeople"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_2d
    return-void
.end method

.method public getContactAffinity()F
    .registers 2

    .line 620
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    return v0
.end method

.method public isContactInWhiteList()Z
    .registers 2

    .line 629
    iget-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactInWhiteList:Z

    return v0
.end method

.method public setRecord(Lcom/android/server/notification/NotificationRecord;)V
    .registers 2
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 624
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    .line 625
    return-void
.end method

.method public work()V
    .registers 12

    .line 560
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Executing: validation for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValidateNoPeople"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 562
    .local v0, "timeStartMs":J
    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPendingLookups:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_192

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 563
    .local v3, "handle":Ljava/lang/String;
    const/4 v6, 0x0

    .line 564
    .local v6, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 565
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "tel"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_72

    .line 566
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v8

    if-eqz v8, :cond_64

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checking telephone URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ValidateNoPeople"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_64
    iget-object v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v9, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/server/notification/ValidateNotificationPeople;->access$600(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v6

    goto/16 :goto_103

    .line 568
    :cond_72
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "mailto"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a8

    .line 569
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v8

    if-eqz v8, :cond_9b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checking mailto URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ValidateNoPeople"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_9b
    iget-object v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v9, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/server/notification/ValidateNotificationPeople;->access$700(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v6

    goto :goto_103

    .line 571
    :cond_a8
    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d9

    .line 572
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v8

    if-eqz v8, :cond_d0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checking lookup URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ValidateNoPeople"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_d0
    iget-object v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v9, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-static {v8, v9, v7}, Lcom/android/server/notification/ValidateNotificationPeople;->access$800(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v6

    goto :goto_103

    .line 575
    :cond_d9
    new-instance v8, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    invoke-direct {v8}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;-><init>()V

    move-object v6, v8

    .line 576
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "name"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_103

    .line 577
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unsupported URI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ValidateNoPeople"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_103
    :goto_103
    if-eqz v6, :cond_182

    .line 581
    iget-object v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {v8}, Lcom/android/server/notification/ValidateNotificationPeople;->access$300(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;

    move-result-object v8

    monitor-enter v8

    .line 582
    :try_start_10c
    iget-object v9, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v10, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getUserId()I

    move-result v10

    invoke-static {v9, v10, v3}, Lcom/android/server/notification/ValidateNotificationPeople;->access$900(Lcom/android/server/notification/ValidateNotificationPeople;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 583
    .local v9, "cacheKey":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {v10}, Lcom/android/server/notification/ValidateNotificationPeople;->access$300(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;

    move-result-object v10

    invoke-virtual {v10, v9, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    nop

    .end local v9  # "cacheKey":Ljava/lang/String;
    monitor-exit v8
    :try_end_123
    .catchall {:try_start_10c .. :try_end_123} :catchall_17f

    .line 585
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v8

    if-eqz v8, :cond_144

    .line 586
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "lookup contactAffinity is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ValidateNoPeople"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_144
    iget v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    invoke-virtual {v6}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    .line 590
    iget-boolean v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactInWhiteList:Z

    if-nez v8, :cond_15d

    .line 591
    invoke-virtual {v6}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isContactInWhiteList()Z

    move-result v8

    if-eqz v8, :cond_15b

    goto :goto_15d

    :cond_15b
    move v4, v5

    goto :goto_15e

    :cond_15d
    :goto_15d
    nop

    :goto_15e
    iput-boolean v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactInWhiteList:Z

    .line 592
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v4

    if-eqz v4, :cond_190

    .line 593
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PeopleRankingReconsideration work mContactInWhiteList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactInWhiteList:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ValidateNoPeople"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_190

    .line 584
    :catchall_17f
    move-exception v2

    :try_start_180
    monitor-exit v8
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_17f

    throw v2

    .line 598
    :cond_182
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v4

    if-eqz v4, :cond_190

    const-string v4, "ValidateNoPeople"

    const-string/jumbo v5, "lookupResult is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    .end local v3  # "handle":Ljava/lang/String;
    .end local v6  # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .end local v7  # "uri":Landroid/net/Uri;
    :cond_190
    :goto_190
    goto/16 :goto_28

    .line 601
    :cond_192
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1b9

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Validation finished in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ValidateNoPeople"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_1b9
    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    if-eqz v2, :cond_1dc

    .line 607
    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {v2}, Lcom/android/server/notification/ValidateNotificationPeople;->access$1000(Lcom/android/server/notification/ValidateNotificationPeople;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    iget v6, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1ce

    move v6, v4

    goto :goto_1cf

    :cond_1ce
    move v6, v5

    :goto_1cf
    iget v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    const/high16 v8, 0x3f800000  # 1.0f

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1d8

    goto :goto_1d9

    :cond_1d8
    move v4, v5

    :goto_1d9
    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/notification/NotificationUsageStats;->registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V

    .line 610
    :cond_1dc
    return-void
.end method
