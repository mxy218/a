.class public Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;
.super Ljava/lang/Object;
.source "LockscreenGestureLogger.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mLegacyMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLogMaker:Landroid/metrics/LogMaker;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public constructor <init>()V
    .registers 5
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/metrics/LogMaker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    .line 39
    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mLogMaker:Landroid/metrics/LogMaker;

    .line 40
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 44
    new-instance v0, Landroid/util/ArrayMap;

    sget-object v2, Lcom/android/systemui/EventLogConstants;->METRICS_GESTURE_TYPE_MAP:[I

    array-length v2, v2

    invoke-direct {v0, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mLegacyMap:Landroid/util/ArrayMap;

    .line 45
    :goto_24
    sget-object v0, Lcom/android/systemui/EventLogConstants;->METRICS_GESTURE_TYPE_MAP:[I

    array-length v2, v0

    if-ge v1, v2, :cond_3b

    .line 46
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mLegacyMap:Landroid/util/ArrayMap;

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_3b
    return-void
.end method

.method private safeLookup(I)I
    .registers 2

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mLegacyMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return p0

    .line 79
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public write(III)V
    .registers 8

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mLogMaker:Landroid/metrics/LogMaker;

    invoke-virtual {v1, p1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x4

    .line 52
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 53
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x33a

    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 54
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x33b

    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->safeLookup(I)I

    move-result p0

    invoke-static {p0, p2, p3}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    return-void
.end method
