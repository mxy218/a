.class final Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HearingAidDeviceConnectionInfo"
.end annotation


# instance fields
.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mEventSource:Ljava/lang/String;

.field final mMusicDevice:I

.field final mState:I

.field final mSupprNoisy:Z


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V
    .registers 6

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 303
    iput p2, p0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mState:I

    .line 304
    iput-boolean p3, p0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mSupprNoisy:Z

    .line 305
    iput p4, p0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mMusicDevice:I

    .line 306
    iput-object p5, p0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mEventSource:Ljava/lang/String;

    .line 307
    return-void
.end method
