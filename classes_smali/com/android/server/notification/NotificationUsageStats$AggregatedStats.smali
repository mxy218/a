.class Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AggregatedStats"
.end annotation


# instance fields
.field public alertRate:Lcom/android/server/notification/AlertRateLimiter;

.field public enqueueRate:Lcom/android/server/notification/RateEstimator;

.field public finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

.field public final key:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mCreated:J

.field public mLastAccessTime:J

.field private mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

.field public noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

.field public numAlertViolations:I

.field public numAutoCancel:I

.field public numBlocked:I

.field public numEnqueuedByApp:I

.field public numForegroundService:I

.field public numInterrupt:I

.field public numOngoing:I

.field public numPeopleCacheHit:I

.field public numPeopleCacheMiss:I

.field public numPostedByApp:I

.field public numPrivate:I

.field public numQuotaViolations:I

.field public numRateViolations:I

.field public numRemovedByApp:I

.field public numSecret:I

.field public numSuspendedByAdmin:I

.field public numUndecoratedRemoteViews:I

.field public numUpdatedByApp:I

.field public numWithActions:I

.field public numWithBigPicture:I

.field public numWithBigText:I

.field public numWithInbox:I

.field public numWithInfoText:I

.field public numWithLargeIcon:I

.field public numWithMediaSession:I

.field public numWithStaredPeople:I

.field public numWithSubText:I

.field public numWithText:I

.field public numWithTitle:I

.field public numWithValidPeople:I

.field public quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    .line 421
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mContext:Landroid/content/Context;

    .line 422
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mCreated:J

    .line 423
    new-instance p2, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    const-string/jumbo v0, "note_imp_noisy_"

    invoke-direct {p2, p1, v0}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 424
    new-instance p2, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    const-string/jumbo v0, "note_imp_quiet_"

    invoke-direct {p2, p1, v0}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 425
    new-instance p2, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    const-string/jumbo v0, "note_importance_"

    invoke-direct {p2, p1, v0}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 426
    new-instance p1, Lcom/android/server/notification/RateEstimator;

    invoke-direct {p1}, Lcom/android/server/notification/RateEstimator;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->enqueueRate:Lcom/android/server/notification/RateEstimator;

    .line 427
    new-instance p1, Lcom/android/server/notification/AlertRateLimiter;

    invoke-direct {p1}, Lcom/android/server/notification/AlertRateLimiter;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->alertRate:Lcom/android/server/notification/AlertRateLimiter;

    .line 428
    return-void
.end method

.method private maybePut(Lorg/json/JSONObject;Ljava/lang/String;F)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 738
    float-to-double v0, p3

    const-wide/16 v2, 0x0

    cmpl-double p3, v0, v2

    if-lez p3, :cond_a

    .line 739
    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 741
    :cond_a
    return-void
.end method

.method private maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 732
    if-lez p3, :cond_5

    .line 733
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 735
    :cond_5
    return-void
.end method

.method private toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AggregatedStats{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 620
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    const-string v2, "key=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    const-string/jumbo v2, "numEnqueuedByApp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    const-string/jumbo v3, "numPostedByApp="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    const-string/jumbo v3, "numUpdatedByApp="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    const-string/jumbo v3, "numRemovedByApp="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    const-string/jumbo v3, "numPeopleCacheHit="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    const-string/jumbo v3, "numWithStaredPeople="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    const-string/jumbo v3, "numWithValidPeople="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const-string/jumbo v3, "numPeopleCacheMiss="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    const-string/jumbo v3, "numBlocked="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    const-string/jumbo v3, "numSuspendedByAdmin="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const-string/jumbo v3, "numWithActions="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    const-string/jumbo v3, "numPrivate="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    const-string/jumbo v3, "numSecret="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    const-string/jumbo v3, "numInterrupt="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    const-string/jumbo v3, "numWithBigText="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    const-string/jumbo v2, "numWithBigPicture="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    const-string/jumbo v3, "numForegroundService="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    const-string/jumbo v3, "numOngoing="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    const-string/jumbo v3, "numAutoCancel="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const-string/jumbo v3, "numWithLargeIcon="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    const-string/jumbo v3, "numWithInbox="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    const-string/jumbo v3, "numWithMediaSession="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    const-string/jumbo v3, "numWithTitle="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    const-string/jumbo v3, "numWithText="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    const-string/jumbo v3, "numWithSubText="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    const-string/jumbo v3, "numWithInfoText="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    const-string/jumbo v3, "numRateViolations="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    const-string/jumbo v3, "numAlertViolations="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    const-string/jumbo v3, "numQuotaViolations="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    const-string/jumbo v1, "numUndecorateRVs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUndecoratedRemoteViews:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public countApiUse(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5

    .line 438
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 439
    iget-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_e

    .line 440
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    .line 443
    :cond_e
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_1a

    .line 444
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    .line 447
    :cond_1a
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_26

    .line 448
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    .line 451
    :cond_26
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_32

    .line 452
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    .line 455
    :cond_32
    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_46

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_46

    iget-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v1, :cond_46

    iget-object v1, v0, Landroid/app/Notification;->vibrate:[J

    if-eqz v1, :cond_4c

    .line 458
    :cond_46
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    .line 461
    :cond_4c
    iget v1, v0, Landroid/app/Notification;->visibility:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5b

    if-eqz v1, :cond_54

    goto :goto_61

    .line 463
    :cond_54
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    .line 464
    goto :goto_61

    .line 466
    :cond_5b
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    .line 470
    :goto_61
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-boolean v1, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    if-eqz v1, :cond_71

    .line 471
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->increment(I)V

    goto :goto_7a

    .line 473
    :cond_71
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->increment(I)V

    .line 475
    :goto_7a
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->increment(I)V

    .line 477
    iget-object p1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 478
    const-string v1, "android.bigText"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 479
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    .line 481
    :cond_97
    const-string v1, "android.picture"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 482
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    .line 484
    :cond_a5
    const-string v1, "android.largeIcon"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 485
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    .line 487
    :cond_b3
    const-string v1, "android.textLines"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 488
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    .line 490
    :cond_c1
    const-string v1, "android.mediaSession"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 491
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    .line 493
    :cond_cf
    const-string v1, "android.title"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e9

    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 494
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e9

    .line 495
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    .line 497
    :cond_e9
    const-string v1, "android.text"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 498
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_103

    .line 499
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    .line 501
    :cond_103
    const-string v1, "android.subText"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11d

    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 502
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11d

    .line 503
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    .line 505
    :cond_11d
    const-string v1, "android.infoText"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_137

    iget-object p1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 506
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_137

    .line 507
    iget p1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    .line 509
    :cond_137
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 587
    invoke-direct {p0, p2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public dumpJson()Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 690
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->getPrevious()Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 691
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 692
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    const-string v3, "key"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 693
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mCreated:J

    sub-long/2addr v2, v4

    const-string v4, "duration"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 694
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    const-string/jumbo v3, "numEnqueuedByApp"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 695
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    const-string/jumbo v3, "numPostedByApp"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 696
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    const-string/jumbo v3, "numUpdatedByApp"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 697
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    const-string/jumbo v3, "numRemovedByApp"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 698
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    const-string/jumbo v3, "numPeopleCacheHit"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 699
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    const-string/jumbo v3, "numPeopleCacheMiss"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 700
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    const-string/jumbo v3, "numWithStaredPeople"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 701
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    const-string/jumbo v3, "numWithValidPeople"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 702
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    const-string/jumbo v3, "numBlocked"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 703
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    const-string/jumbo v3, "numSuspendedByAdmin"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 704
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    const-string/jumbo v3, "numWithActions"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 705
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    const-string/jumbo v3, "numPrivate"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 706
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    const-string/jumbo v3, "numSecret"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 707
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    const-string/jumbo v3, "numInterrupt"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 708
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    const-string/jumbo v3, "numWithBigText"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 709
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    const-string/jumbo v3, "numWithBigPicture"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 710
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    const-string/jumbo v3, "numForegroundService"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 711
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    const-string/jumbo v3, "numOngoing"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 712
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    const-string/jumbo v3, "numAutoCancel"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 713
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    const-string/jumbo v3, "numWithLargeIcon"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 714
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    const-string/jumbo v3, "numWithInbox"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 715
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    const-string/jumbo v3, "numWithMediaSession"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 716
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    const-string/jumbo v3, "numWithTitle"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 717
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    const-string/jumbo v3, "numWithText"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 718
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    const-string/jumbo v3, "numWithSubText"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 719
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    const-string/jumbo v3, "numWithInfoText"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 720
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    const-string/jumbo v3, "numRateViolations"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 721
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    const-string/jumbo v3, "numQuotaLViolations"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 722
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->getEnqueueRate()F

    move-result v2

    const-string/jumbo v3, "notificationEnqueueRate"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;F)V

    .line 723
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    const-string/jumbo v3, "numAlertViolations"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 724
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybePut(Lorg/json/JSONObject;Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 725
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybePut(Lorg/json/JSONObject;Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 726
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v0, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybePut(Lorg/json/JSONObject;Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 728
    return-object v1
.end method

.method public emit()V
    .registers 4

    .line 512
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->getPrevious()Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 513
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_enqueued"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 514
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_post"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 515
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_update"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 516
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_remove"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 517
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_with_people"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 518
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_with_stars"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 519
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "people_cache_hit"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 520
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "people_cache_miss"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 521
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_blocked"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 522
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_suspended"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 523
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_with_actions"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 524
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_private"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 525
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_secret"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 526
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_interupt"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 527
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_big_text"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 528
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_big_pic"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 529
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_fg"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 530
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_ongoing"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 531
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_auto"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 532
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_large_icon"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 533
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_inbox"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 534
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_media"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 535
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_title"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 536
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_text"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 537
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_sub_text"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 538
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_info_text"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 539
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_over_rate"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 540
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_over_alert_rate"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 541
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_over_quota"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 542
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 543
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 544
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 546
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    .line 547
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    .line 548
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    .line 549
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    .line 550
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    .line 551
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    .line 552
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    .line 553
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    .line 554
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    .line 555
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    .line 556
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    .line 557
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    .line 558
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    .line 559
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    .line 560
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    .line 561
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    .line 562
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    .line 563
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    .line 564
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    .line 565
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    .line 566
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    .line 567
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    .line 568
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    .line 569
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    .line 570
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    .line 571
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    .line 572
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    .line 573
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    .line 574
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    .line 575
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 576
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 577
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v0, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 578
    return-void
.end method

.method public getEnqueueRate()F
    .registers 3

    .line 597
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->getEnqueueRate(J)F

    move-result v0

    return v0
.end method

.method public getEnqueueRate(J)F
    .registers 4

    .line 601
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->enqueueRate:Lcom/android/server/notification/RateEstimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/RateEstimator;->getRate(J)F

    move-result p1

    return p1
.end method

.method public getPrevious()Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .registers 4

    .line 431
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    if-nez v0, :cond_f

    .line 432
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 434
    :cond_f
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    return-object v0
.end method

.method public isAlertRateLimited()Z
    .registers 4

    .line 609
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->alertRate:Lcom/android/server/notification/AlertRateLimiter;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/AlertRateLimiter;->shouldRateLimitAlert(J)Z

    move-result v0

    .line 610
    if-eqz v0, :cond_12

    .line 611
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    .line 613
    :cond_12
    return v0
.end method

.method maybeCount(Ljava/lang/String;I)V
    .registers 4

    .line 581
    if-lez p2, :cond_7

    .line 582
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 584
    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 592
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateInterarrivalEstimate(J)V
    .registers 4

    .line 605
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->enqueueRate:Lcom/android/server/notification/RateEstimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/RateEstimator;->update(J)F

    .line 606
    return-void
.end method
