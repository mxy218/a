.class final Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;
.super Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetworkLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 3

    .line 2176
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/location/GnssLocationProvider;
    .param p2, "x1"  # Lcom/android/server/location/GnssLocationProvider$1;

    .line 2176
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"  # Landroid/location/Location;

    .line 2180
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "network"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2181
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0, p1}, Lcom/android/server/location/GnssLocationProvider;->access$2600(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V

    .line 2183
    :cond_12
    return-void
.end method
