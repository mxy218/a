.class Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
.super Ljava/lang/Object;
.source "BtHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/BtHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BluetoothA2dpDeviceInfo"
.end annotation


# instance fields
.field private final mBtDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mCodec:I

.field private final mVolume:I


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    .line 122
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    .line 123
    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    .line 127
    iput p2, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mVolume:I

    .line 128
    iput p3, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mCodec:I

    .line 129
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBtDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getCodec()I
    .registers 2

    .line 140
    iget v0, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mCodec:I

    return v0
.end method

.method public getVolume()I
    .registers 2

    .line 136
    iget v0, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mVolume:I

    return v0
.end method
