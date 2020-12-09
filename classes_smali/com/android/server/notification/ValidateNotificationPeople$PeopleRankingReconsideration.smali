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

    .line 478
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 479
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/notification/RankingReconsideration;-><init>(Ljava/lang/String;J)V

    .line 474
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    .line 480
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    .line 481
    iput-object p4, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPendingLookups:Ljava/util/LinkedList;

    .line 482
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;Lcom/android/server/notification/ValidateNotificationPeople$1;)V
    .registers 6

    .line 468
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;)V

    return-void
.end method


# virtual methods
.method public applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4

    .line 532
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v0

    .line 533
    iget v1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setContactAffinity(F)V

    .line 534
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "final affinity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ValidateNoPeople"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_2d
    return-void
.end method

.method public getContactAffinity()F
    .registers 2

    .line 538
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    return v0
.end method

.method public setRecord(Lcom/android/server/notification/NotificationRecord;)V
    .registers 2

    .line 542
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    .line 543
    return-void
.end method

.method public work()V
    .registers 9

    .line 486
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

    .line 487
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 488
    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPendingLookups:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 489
    nop

    .line 490
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 491
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "tel"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 492
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v5

    if-eqz v5, :cond_62

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checking telephone URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ValidateNoPeople"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_62
    iget-object v5, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v6, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/android/server/notification/ValidateNotificationPeople;->access$600(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v4

    goto/16 :goto_100

    .line 494
    :cond_70
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mailto"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 495
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v5

    if-eqz v5, :cond_98

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checking mailto URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ValidateNoPeople"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_98
    iget-object v5, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v6, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/android/server/notification/ValidateNotificationPeople;->access$700(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v4

    goto :goto_100

    .line 497
    :cond_a5
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 498
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v5

    if-eqz v5, :cond_cd

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checking lookup URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ValidateNoPeople"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_cd
    iget-object v5, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v6, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v4}, Lcom/android/server/notification/ValidateNotificationPeople;->access$800(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v4

    goto :goto_100

    .line 501
    :cond_d6
    new-instance v5, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    invoke-direct {v5}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;-><init>()V

    .line 502
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "name"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ff

    .line 503
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unsupported URI "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ValidateNoPeople"

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_ff
    move-object v4, v5

    :goto_100
    if-eqz v4, :cond_14f

    .line 507
    iget-object v5, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {v5}, Lcom/android/server/notification/ValidateNotificationPeople;->access$300(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;

    move-result-object v5

    monitor-enter v5

    .line 508
    :try_start_109
    iget-object v6, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-static {v6, v7, v3}, Lcom/android/server/notification/ValidateNotificationPeople;->access$900(Lcom/android/server/notification/ValidateNotificationPeople;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 509
    iget-object v6, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {v6}, Lcom/android/server/notification/ValidateNotificationPeople;->access$300(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    monitor-exit v5
    :try_end_11f
    .catchall {:try_start_109 .. :try_end_11f} :catchall_14c

    .line 511
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v3

    if-eqz v3, :cond_13f

    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lookup contactAffinity is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ValidateNoPeople"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_13f
    iget v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    invoke-virtual {v4}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    goto :goto_15c

    .line 510
    :catchall_14c
    move-exception v0

    :try_start_14d
    monitor-exit v5
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_14c

    throw v0

    .line 516
    :cond_14f
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v3

    if-eqz v3, :cond_15c

    const-string v3, "ValidateNoPeople"

    const-string v4, "lookupResult is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_15c
    :goto_15c
    goto/16 :goto_28

    .line 519
    :cond_15e
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v2

    if-eqz v2, :cond_185

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Validation finished in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValidateNoPeople"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_185
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    if-eqz v0, :cond_1aa

    .line 525
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {v0}, Lcom/android/server/notification/ValidateNotificationPeople;->access$1000(Lcom/android/server/notification/ValidateNotificationPeople;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    iget v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_19c

    move v2, v3

    goto :goto_19d

    :cond_19c
    move v2, v4

    :goto_19d
    iget v5, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    const/high16 v6, 0x3f800000  # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1a6

    goto :goto_1a7

    :cond_1a6
    move v3, v4

    :goto_1a7
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/notification/NotificationUsageStats;->registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V

    .line 528
    :cond_1aa
    return-void
.end method
