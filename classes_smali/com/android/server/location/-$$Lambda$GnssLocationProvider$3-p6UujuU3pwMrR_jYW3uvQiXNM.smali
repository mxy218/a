.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssLocationProvider$3-p6UujuU3pwMrR_jYW3uvQiXNM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssLocationProvider;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssLocationProvider;ILandroid/location/Location;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$3-p6UujuU3pwMrR_jYW3uvQiXNM;->f$0:Lcom/android/server/location/GnssLocationProvider;

    iput p2, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$3-p6UujuU3pwMrR_jYW3uvQiXNM;->f$1:I

    iput-object p3, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$3-p6UujuU3pwMrR_jYW3uvQiXNM;->f$2:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$3-p6UujuU3pwMrR_jYW3uvQiXNM;->f$0:Lcom/android/server/location/GnssLocationProvider;

    iget v1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$3-p6UujuU3pwMrR_jYW3uvQiXNM;->f$1:I

    iget-object v2, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$3-p6UujuU3pwMrR_jYW3uvQiXNM;->f$2:Landroid/location/Location;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->lambda$reportGeofenceStatus$11$GnssLocationProvider(ILandroid/location/Location;)V

    return-void
.end method
