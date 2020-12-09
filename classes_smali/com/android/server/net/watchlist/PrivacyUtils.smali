.class Lcom/android/server/net/watchlist/PrivacyUtils;
.super Ljava/lang/Object;
.source "PrivacyUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final ENCODER_ID_PREFIX:Ljava/lang/String; = "watchlist_encoder:"

.field private static final PROB_F:D = 0.469

.field private static final PROB_P:D = 0.28

.field private static final PROB_Q:D = 1.0

.field private static final TAG:Ljava/lang/String; = "PrivacyUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static createDpEncodedReportMap(Z[BLjava/util/List;Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)Ljava/util/Map;
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[B",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 92
    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_3a

    .line 93
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 95
    if-eqz p0, :cond_1a

    .line 96
    invoke-static {p1, v4}, Lcom/android/server/net/watchlist/PrivacyUtils;->createSecureDPEncoder([BLjava/lang/String;)Landroid/privacy/DifferentialPrivacyEncoder;

    move-result-object v5

    goto :goto_1e

    .line 97
    :cond_1a
    invoke-static {v4}, Lcom/android/server/net/watchlist/PrivacyUtils;->createInsecureDPEncoderForTest(Ljava/lang/String;)Landroid/privacy/DifferentialPrivacyEncoder;

    move-result-object v5

    .line 98
    :goto_1e
    iget-object v6, p3, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->appDigestList:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 101
    invoke-interface {v5, v6}, Landroid/privacy/DifferentialPrivacyEncoder;->encodeBoolean(Z)[B

    move-result-object v5

    aget-byte v5, v5, v2

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2f

    goto :goto_30

    :cond_2f
    move v6, v2

    .line 103
    :goto_30
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 105
    :cond_3a
    return-object v1
.end method

.method static createInsecureDPEncoderForTest(Ljava/lang/String;)Landroid/privacy/DifferentialPrivacyEncoder;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 58
    invoke-static {p0}, Lcom/android/server/net/watchlist/PrivacyUtils;->createLongitudinalReportingConfig(Ljava/lang/String;)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    move-result-object p0

    .line 59
    invoke-static {p0}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->createInsecureEncoderForTest(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;

    move-result-object p0

    return-object p0
.end method

.method private static createLongitudinalReportingConfig(Ljava/lang/String;)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;
    .registers 10

    .line 79
    new-instance v8, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "watchlist_encoder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide v2, 0x3fde04189374bc6aL  # 0.469

    const-wide v4, 0x3fd1eb851eb851ecL  # 0.28

    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;-><init>(Ljava/lang/String;DDD)V

    return-object v8
.end method

.method static createSecureDPEncoder([BLjava/lang/String;)Landroid/privacy/DifferentialPrivacyEncoder;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 71
    invoke-static {p1}, Lcom/android/server/net/watchlist/PrivacyUtils;->createLongitudinalReportingConfig(Ljava/lang/String;)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    move-result-object p1

    .line 72
    invoke-static {p1, p0}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->createEncoder(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;[B)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;

    move-result-object p0

    return-object p0
.end method
