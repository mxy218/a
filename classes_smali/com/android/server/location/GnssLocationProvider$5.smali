.class Lcom/android/server/location/GnssLocationProvider$5;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 2

    .line 691
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$5;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 694
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider$5;->getSendingUserId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_12

    .line 695
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider$5;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/location/GnssLocationProvider;->access$1002(Lcom/android/server/location/GnssLocationProvider;Z)Z

    .line 696
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider$5;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider;->access$1100(Lcom/android/server/location/GnssLocationProvider;)V

    .line 698
    :cond_12
    return-void
.end method
