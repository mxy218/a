.class Lcom/android/server/location/GeofenceProxy$1;
.super Lcom/android/server/ServiceWatcher;
.source "GeofenceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GeofenceProxy;-><init>(Landroid/content/Context;IIILandroid/location/IGpsGeofenceHardware;Landroid/location/IFusedGeofenceHardware;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeofenceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeofenceProxy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V
    .registers 17

    .line 85
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/location/GeofenceProxy$1;->this$0:Lcom/android/server/location/GeofenceProxy;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onBind()V
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$1;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$000(Lcom/android/server/location/GeofenceProxy;)Lcom/android/server/ServiceWatcher$BinderRunner;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/GeofenceProxy$1;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)V

    .line 89
    return-void
.end method
