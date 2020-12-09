.class Lcom/android/server/location/GnssLocationProvider$6;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V
    .registers 3

    .line 704
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 707
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider;->access$1100(Lcom/android/server/location/GnssLocationProvider;)V

    .line 708
    return-void
.end method
