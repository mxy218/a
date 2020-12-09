.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssLocationProvider$EdWkocFV52YPVPhXR-8dHVOO94k;
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

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$EdWkocFV52YPVPhXR-8dHVOO94k;->f$0:Lcom/android/server/location/GnssLocationProvider;

    iput p2, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$EdWkocFV52YPVPhXR-8dHVOO94k;->f$1:I

    iput p3, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$EdWkocFV52YPVPhXR-8dHVOO94k;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$EdWkocFV52YPVPhXR-8dHVOO94k;->f$0:Lcom/android/server/location/GnssLocationProvider;

    iget v1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$EdWkocFV52YPVPhXR-8dHVOO94k;->f$1:I

    iget v2, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$EdWkocFV52YPVPhXR-8dHVOO94k;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->lambda$reportGeofenceResumeStatus$15$GnssLocationProvider(II)V

    return-void
.end method
