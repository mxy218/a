.class Lcom/android/server/location/GnssLocationProvider$4;
.super Lcom/android/server/location/GnssNavigationMessageProvider;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 675
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0, p2, p3}, Lcom/android/server/location/GnssNavigationMessageProvider;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected isGpsEnabled()Z
    .registers 2

    .line 678
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$900(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v0

    return v0
.end method
