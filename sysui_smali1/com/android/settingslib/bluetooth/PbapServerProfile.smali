.class public Lcom/android/settingslib/bluetooth/PbapServerProfile;
.super Ljava/lang/Object;
.source "PbapServerProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "PBAP Server"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PBAB_CLIENT_UUIDS:[Landroid/os/ParcelUuid;


# instance fields
.field private mIsProfileReady:Z

.field private mService:Landroid/bluetooth/BluetoothPbap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/ParcelUuid;

    .line 47
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->PBAP_PCE:Landroid/os/ParcelUuid;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->PBAB_CLIENT_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/bluetooth/BluetoothPbap;

    new-instance v1, Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;-><init>(Lcom/android/settingslib/bluetooth/PbapServerProfile;Lcom/android/settingslib/bluetooth/PbapServerProfile$1;)V

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/BluetoothPbap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothPbap$ServiceListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/settingslib/bluetooth/PbapServerProfile;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settingslib/bluetooth/PbapServerProfile;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public accessProfileEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    .line 95
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 96
    :cond_6
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothPbap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method protected finalize()V
    .registers 3

    const-string v0, "PbapServerProfile"

    const-string v1, "finalize()"

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    if-eqz v1, :cond_18

    .line 154
    :try_start_b
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPbap;->close()V

    const/4 v1, 0x0

    .line 155
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_12

    goto :goto_18

    :catchall_12
    move-exception p0

    const-string v1, "Error cleaning up PBAP proxy"

    .line 157
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    :goto_18
    return-void
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3

    .line 100
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 103
    :cond_6
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothPbap;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x2

    return p0

    :cond_e
    return v0
.end method

.method public getProfileId()I
    .registers 1

    const/4 p0, 0x6

    return p0
.end method

.method public isAutoConnectable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 3

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "PBAP Server"

    return-object p0
.end method
