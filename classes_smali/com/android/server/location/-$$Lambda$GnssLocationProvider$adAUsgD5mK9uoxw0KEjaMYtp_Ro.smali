.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssLocationProvider$adAUsgD5mK9uoxw0KEjaMYtp_Ro;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssLocationProvider;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssLocationProvider;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$adAUsgD5mK9uoxw0KEjaMYtp_Ro;->f$0:Lcom/android/server/location/GnssLocationProvider;

    iput p2, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$adAUsgD5mK9uoxw0KEjaMYtp_Ro;->f$1:I

    iput p3, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$adAUsgD5mK9uoxw0KEjaMYtp_Ro;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$adAUsgD5mK9uoxw0KEjaMYtp_Ro;->f$0:Lcom/android/server/location/GnssLocationProvider;

    iget v1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$adAUsgD5mK9uoxw0KEjaMYtp_Ro;->f$1:I

    iget v2, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$adAUsgD5mK9uoxw0KEjaMYtp_Ro;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->lambda$reportGeofenceRemoveStatus$13$GnssLocationProvider(II)V

    return-void
.end method
