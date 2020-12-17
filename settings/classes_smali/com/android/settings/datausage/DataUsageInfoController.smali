.class public Lcom/android/settings/datausage/DataUsageInfoController;
.super Ljava/lang/Object;
.source "DataUsageInfoController.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSummaryLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J
    .registers 6

    .line 46
    iget-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_a

    .line 48
    iget-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .line 50
    :cond_a
    iget-wide p0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    cmp-long v2, p0, v0

    if-lez v2, :cond_11

    goto :goto_12

    :cond_11
    move-wide p0, v0

    :goto_12
    return-wide p0
.end method

.method public updateDataLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;Landroid/net/NetworkPolicy;)V
    .registers 7

    if-eqz p1, :cond_17

    if-nez p2, :cond_5

    goto :goto_17

    .line 32
    :cond_5
    iget-wide v0, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_f

    .line 33
    iput-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .line 35
    :cond_f
    iget-wide v0, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_17

    .line 36
    iput-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    :cond_17
    :goto_17
    return-void
.end method
