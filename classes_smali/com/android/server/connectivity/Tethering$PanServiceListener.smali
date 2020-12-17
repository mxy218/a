.class final Lcom/android/server/connectivity/Tethering$PanServiceListener;
.super Ljava/lang/Object;
.source "Tethering.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .registers 2

    .line 2144
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$PanServiceListener;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/connectivity/Tethering;
    .param p2, "x1"  # Lcom/android/server/connectivity/Tethering$1;

    .line 2144
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$PanServiceListener;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 5
    .param p1, "profile"  # I
    .param p2, "proxy"  # Landroid/bluetooth/BluetoothProfile;

    .line 2148
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPAN Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$PanServiceListener;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    iput-object v1, v0, Lcom/android/server/connectivity/Tethering;->mPanService:Landroid/bluetooth/BluetoothPan;

    .line 2150
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 4
    .param p1, "profile"  # I

    .line 2153
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPAN Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$PanServiceListener;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/connectivity/Tethering;->mPanService:Landroid/bluetooth/BluetoothPan;

    .line 2155
    return-void
.end method
