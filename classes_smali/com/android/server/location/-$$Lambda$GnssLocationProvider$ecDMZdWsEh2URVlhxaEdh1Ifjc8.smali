.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssLocationProvider$ecDMZdWsEh2URVlhxaEdh1Ifjc8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$ecDMZdWsEh2URVlhxaEdh1Ifjc8;->f$0:Lcom/android/server/location/GnssLocationProvider;

    return-void
.end method


# virtual methods
.method public final getGnssMetricsAsProtoString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$ecDMZdWsEh2URVlhxaEdh1Ifjc8;->f$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider;->lambda$getGnssMetricsProvider$9$GnssLocationProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
