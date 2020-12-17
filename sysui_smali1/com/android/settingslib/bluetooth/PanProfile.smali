.class public Lcom/android/settingslib/bluetooth/PanProfile;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/PanProfile$PanServiceListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceRoleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsProfileReady:Z

.field private mService:Landroid/bluetooth/BluetoothPan;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    .line 79
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/bluetooth/PanProfile$PanServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/PanProfile$PanServiceListener;-><init>(Lcom/android/settingslib/bluetooth/PanProfile;Lcom/android/settingslib/bluetooth/PanProfile$1;)V

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 82
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settingslib/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settingslib/bluetooth/PanProfile;Z)Z
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public accessProfileEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5

    .line 95
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 96
    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 99
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_10

    .line 102
    :cond_22
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothPan;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    .line 106
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 107
    :cond_6
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method protected finalize()V
    .registers 5

    const-string v0, "PanProfile"

    const-string v1, "finalize()"

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-eqz v1, :cond_1f

    .line 214
    :try_start_b
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 215
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_1f

    :catchall_19
    move-exception p0

    const-string v1, "Error cleaning up PAN proxy"

    .line 217
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    :goto_1f
    return-void
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .registers 2

    .line 111
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 114
    :cond_6
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getProfileId()I
    .registers 1

    const/4 p0, 0x5

    return p0
.end method

.method public isAutoConnectable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 200
    :cond_4
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mContext:Landroid/content/Context;

    const-string v1, "pan_connection_role"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 202
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    return v0

    .line 205
    :cond_17
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_23

    goto :goto_24

    :cond_23
    move p1, v0

    :goto_24
    return p1
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/PanProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method setLocalRole(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "pan_connection_role"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 179
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/PanProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1f

    .line 182
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_28

    :cond_1f
    if-nez p0, :cond_2b

    .line 184
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    :goto_28
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2b
    return-void
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 3

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "PAN"

    return-object p0
.end method
