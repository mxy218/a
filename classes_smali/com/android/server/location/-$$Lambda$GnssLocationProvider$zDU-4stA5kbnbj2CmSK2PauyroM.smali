.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssLocationProvider$zDU-4stA5kbnbj2CmSK2PauyroM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/location/LocationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;Ljava/lang/String;Landroid/location/LocationManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$zDU-4stA5kbnbj2CmSK2PauyroM;->f$0:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    iput-object p2, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$zDU-4stA5kbnbj2CmSK2PauyroM;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$zDU-4stA5kbnbj2CmSK2PauyroM;->f$2:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$zDU-4stA5kbnbj2CmSK2PauyroM;->f$0:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    iget-object v1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$zDU-4stA5kbnbj2CmSK2PauyroM;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$zDU-4stA5kbnbj2CmSK2PauyroM;->f$2:Landroid/location/LocationManager;

    invoke-static {v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->lambda$handleRequestLocation$2(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;Ljava/lang/String;Landroid/location/LocationManager;)V

    return-void
.end method
