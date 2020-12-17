.class public Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;
.super Ljava/lang/Object;
.source "FilteredCountryTimeZones.java"


# instance fields
.field private final mCountryTimeZones:Llibcore/timezone/CountryTimeZones;

.field private final mTimeZoneIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llibcore/timezone/CountryTimeZones;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mCountryTimeZones:Llibcore/timezone/CountryTimeZones;

    .line 49
    invoke-virtual {p1}, Llibcore/timezone/CountryTimeZones;->getTimeZoneMappings()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$ZNz2Mv2nKX1oBkvEJWubr7tgzck;->INSTANCE:Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$ZNz2Mv2nKX1oBkvEJWubr7tgzck;

    .line 50
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$FsMOOJ1705oUaAkdAvlcbIu0Itk;->INSTANCE:Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$FsMOOJ1705oUaAkdAvlcbIu0Itk;

    .line 53
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 54
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 55
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mTimeZoneIds:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$new$0(Llibcore/timezone/CountryTimeZones$TimeZoneMapping;)Z
    .registers 5

    .line 51
    iget-boolean v0, p0, Llibcore/timezone/CountryTimeZones$TimeZoneMapping;->showInPicker:Z

    if-eqz v0, :cond_17

    iget-object p0, p0, Llibcore/timezone/CountryTimeZones$TimeZoneMapping;->notUsedAfter:Ljava/lang/Long;

    if-eqz p0, :cond_15

    .line 52
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x16806b5bc00L

    cmp-long p0, v0, v2

    if-ltz p0, :cond_17

    :cond_15
    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method static synthetic lambda$new$1(Llibcore/timezone/CountryTimeZones$TimeZoneMapping;)Ljava/lang/String;
    .registers 1

    .line 53
    iget-object p0, p0, Llibcore/timezone/CountryTimeZones$TimeZoneMapping;->timeZoneId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getRegionId()Ljava/lang/String;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mCountryTimeZones:Llibcore/timezone/CountryTimeZones;

    invoke-virtual {p0}, Llibcore/timezone/CountryTimeZones;->getCountryIso()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->normalizeRegionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimeZoneIds()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mTimeZoneIds:Ljava/util/List;

    return-object p0
.end method
