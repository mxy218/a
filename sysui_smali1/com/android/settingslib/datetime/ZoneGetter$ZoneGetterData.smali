.class public final Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;
.super Ljava/lang/Object;
.source "ZoneGetter.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# virtual methods
.method public lookupTimeZoneIdsByCountry(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 390
    invoke-static {}, Llibcore/timezone/TimeZoneFinder;->getInstance()Llibcore/timezone/TimeZoneFinder;

    move-result-object p0

    invoke-virtual {p0, p1}, Llibcore/timezone/TimeZoneFinder;->lookupTimeZoneIdsByCountry(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
