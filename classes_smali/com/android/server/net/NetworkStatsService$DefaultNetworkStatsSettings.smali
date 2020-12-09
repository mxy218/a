.class Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultNetworkStatsSettings"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1814
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->mResolver:Landroid/content/ContentResolver;

    .line 1816
    return-void
.end method

.method private getGlobalBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 1822
    nop

    .line 1823
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method private getGlobalLong(Ljava/lang/String;J)J
    .registers 5

    .line 1819
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public getAugmentEnabled()Z
    .registers 3

    .line 1840
    const-string/jumbo v0, "netstats_augment_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .registers 9

    .line 1844
    new-instance v7, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    const-string/jumbo v0, "netstats_dev_bucket_duration"

    const-wide/32 v1, 0x36ee80

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1845
    const-string/jumbo v0, "netstats_dev_rotate_age"

    const-wide/32 v3, 0x4d3f6400

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1846
    const-string/jumbo v0, "netstats_dev_delete_age"

    const-wide v5, 0x1cf7c5800L

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;-><init>(JJJ)V

    .line 1844
    return-object v7
.end method

.method public getDevPersistBytes(J)J
    .registers 4

    .line 1866
    const-string/jumbo v0, "netstats_dev_persist_bytes"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getGlobalAlertBytes(J)J
    .registers 4

    .line 1832
    const-string/jumbo v0, "netstats_global_alert_bytes"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPollInterval()J
    .registers 4

    .line 1828
    const-string/jumbo v0, "netstats_poll_interval"

    const-wide/32 v1, 0x1b7740

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSampleEnabled()Z
    .registers 3

    .line 1836
    const-string/jumbo v0, "netstats_sample_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUidConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .registers 9

    .line 1854
    new-instance v7, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    const-string/jumbo v0, "netstats_uid_bucket_duration"

    const-wide/32 v1, 0x6ddd00

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1855
    const-string/jumbo v0, "netstats_uid_rotate_age"

    const-wide/32 v3, 0x4d3f6400

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1856
    const-string/jumbo v0, "netstats_uid_delete_age"

    const-wide v5, 0x1cf7c5800L

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;-><init>(JJJ)V

    .line 1854
    return-object v7
.end method

.method public getUidPersistBytes(J)J
    .registers 4

    .line 1874
    const-string/jumbo v0, "netstats_uid_persist_bytes"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getUidTagConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .registers 9

    .line 1860
    new-instance v7, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    const-string/jumbo v0, "netstats_uid_tag_bucket_duration"

    const-wide/32 v1, 0x6ddd00

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1861
    const-string/jumbo v0, "netstats_uid_tag_rotate_age"

    const-wide/32 v3, 0x19bfcc00

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1862
    const-string/jumbo v0, "netstats_uid_tag_delete_age"

    const-wide/32 v5, 0x4d3f6400

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;-><init>(JJJ)V

    .line 1860
    return-object v7
.end method

.method public getUidTagPersistBytes(J)J
    .registers 4

    .line 1878
    const-string/jumbo v0, "netstats_uid_tag_persist_bytes"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getXtConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .registers 2

    .line 1850
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v0

    return-object v0
.end method

.method public getXtPersistBytes(J)J
    .registers 3

    .line 1870
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getDevPersistBytes(J)J

    move-result-wide p1

    return-wide p1
.end method
