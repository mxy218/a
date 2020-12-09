.class Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;
.super Ljava/lang/Object;
.source "GeofenceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeofenceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeofenceProxyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeofenceProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/location/GeofenceProxy;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GeofenceProxy;Lcom/android/server/location/GeofenceProxy$1;)V
    .registers 3

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;-><init>(Lcom/android/server/location/GeofenceProxy;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 113
    invoke-static {p2}, Landroid/hardware/location/IGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardware;

    move-result-object p1

    .line 116
    :try_start_4
    iget-object p2, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {p2}, Lcom/android/server/location/GeofenceProxy;->access$200(Lcom/android/server/location/GeofenceProxy;)Landroid/location/IGpsGeofenceHardware;

    move-result-object p2

    if-eqz p2, :cond_15

    .line 117
    iget-object p2, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {p2}, Lcom/android/server/location/GeofenceProxy;->access$200(Lcom/android/server/location/GeofenceProxy;)Landroid/location/IGpsGeofenceHardware;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/hardware/location/IGeofenceHardware;->setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V

    .line 119
    :cond_15
    iget-object p2, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {p2}, Lcom/android/server/location/GeofenceProxy;->access$300(Lcom/android/server/location/GeofenceProxy;)Landroid/location/IFusedGeofenceHardware;

    move-result-object p2

    if-eqz p2, :cond_26

    .line 120
    iget-object p2, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {p2}, Lcom/android/server/location/GeofenceProxy;->access$300(Lcom/android/server/location/GeofenceProxy;)Landroid/location/IFusedGeofenceHardware;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/hardware/location/IGeofenceHardware;->setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V

    .line 123
    :cond_26
    iget-object p2, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {p2, p1}, Lcom/android/server/location/GeofenceProxy;->access$402(Lcom/android/server/location/GeofenceProxy;Landroid/hardware/location/IGeofenceHardware;)Landroid/hardware/location/IGeofenceHardware;

    .line 124
    iget-object p1, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {p1}, Lcom/android/server/location/GeofenceProxy;->access$500(Lcom/android/server/location/GeofenceProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {p2}, Lcom/android/server/location/GeofenceProxy;->access$000(Lcom/android/server/location/GeofenceProxy;)Lcom/android/server/ServiceWatcher$BinderRunner;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3a} :catch_3b

    .line 127
    goto :goto_41

    .line 125
    :catch_3b
    move-exception p1

    .line 126
    const-string p2, "GeofenceProxy"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    :goto_41
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 132
    iget-object p1, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/location/GeofenceProxy;->access$402(Lcom/android/server/location/GeofenceProxy;Landroid/hardware/location/IGeofenceHardware;)Landroid/hardware/location/IGeofenceHardware;

    .line 133
    iget-object p1, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {p1}, Lcom/android/server/location/GeofenceProxy;->access$500(Lcom/android/server/location/GeofenceProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$000(Lcom/android/server/location/GeofenceProxy;)Lcom/android/server/ServiceWatcher$BinderRunner;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)V

    .line 134
    return-void
.end method
