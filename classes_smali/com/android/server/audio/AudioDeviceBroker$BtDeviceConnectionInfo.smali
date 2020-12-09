.class final Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BtDeviceConnectionInfo"
.end annotation


# instance fields
.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mProfile:I

.field final mState:I

.field final mSupprNoisy:Z

.field final mVolume:I


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .registers 6

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 240
    iput p2, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mState:I

    .line 241
    iput p3, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mProfile:I

    .line 242
    iput-boolean p4, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mSupprNoisy:Z

    .line 243
    iput p5, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mVolume:I

    .line 244
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
