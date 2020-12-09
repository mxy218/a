.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssLocationProvider$tSQEyDq2VWZVa1jo9aOO8Z8P9R0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/DeviceIdleController$StationaryListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$tSQEyDq2VWZVa1jo9aOO8Z8P9R0;->f$0:Lcom/android/server/location/GnssLocationProvider;

    return-void
.end method


# virtual methods
.method public final onDeviceStationaryChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$tSQEyDq2VWZVa1jo9aOO8Z8P9R0;->f$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssLocationProvider;->lambda$new$0$GnssLocationProvider(Z)V

    return-void
.end method
