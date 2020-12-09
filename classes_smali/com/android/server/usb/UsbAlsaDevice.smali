.class public final Lcom/android/server/usb/UsbAlsaDevice;
.super Ljava/lang/Object;
.source "UsbAlsaDevice.java"


# static fields
.field protected static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbAlsaDevice"


# instance fields
.field private mAudioService:Landroid/media/IAudioService;

.field private final mCardNum:I

.field private final mDeviceAddress:Ljava/lang/String;

.field private mDeviceDescription:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private final mDeviceNum:I

.field private final mHasInput:Z

.field private final mHasOutput:Z

.field private mInputState:I

.field private final mIsInputHeadset:Z

.field private final mIsOutputHeadset:Z

.field private mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

.field private mOutputState:I

.field private mSelected:Z


# direct methods
.method public constructor <init>(Landroid/media/IAudioService;IILjava/lang/String;ZZZZ)V
    .registers 10

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mSelected:Z

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceDescription:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    .line 58
    iput p2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    .line 59
    iput p3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    .line 60
    iput-object p4, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    .line 61
    iput-boolean p5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    .line 62
    iput-boolean p6, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    .line 63
    iput-boolean p7, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    .line 64
    iput-boolean p8, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    .line 65
    return-void
.end method

.method private declared-synchronized isInputJackConnected()Z
    .registers 2

    monitor-enter p0

    .line 132
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-nez v0, :cond_8

    .line 133
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 135
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->isInputJackConnected()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    .line 131
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isOutputJackConnected()Z
    .registers 2

    monitor-enter p0

    .line 142
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-nez v0, :cond_8

    .line 143
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 145
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->isOutputJackConnected()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    .line 141
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startJackDetect()V
    .registers 2

    monitor-enter p0

    .line 151
    :try_start_1
    invoke-static {p0}, Lcom/android/server/usb/UsbAlsaJackDetector;->startJackDetect(Lcom/android/server/usb/UsbAlsaDevice;)Lcom/android/server/usb/UsbAlsaJackDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 152
    monitor-exit p0

    return-void

    .line 150
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopJackDetect()V
    .registers 2

    monitor-enter p0

    .line 156
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

    if-eqz v0, :cond_a

    .line 157
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->pleaseStop()V

    .line 159
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 160
    monitor-exit p0

    return-void

    .line 155
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 8

    monitor-enter p0

    .line 248
    :try_start_1
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 250
    const-string p4, "card"

    const-wide v0, 0x10500000001L

    iget v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 251
    const-string p4, "device"

    const-wide v0, 0x10500000002L

    iget v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 252
    const-string/jumbo p4, "name"

    const-wide v0, 0x10900000003L

    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 253
    const-string p4, "has_output"

    const-wide v0, 0x10800000004L

    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 254
    const-string p4, "has_input"

    const-wide v0, 0x10800000005L

    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 255
    const-string p4, "address"

    const-wide v0, 0x10900000006L

    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 257
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_53

    .line 258
    monitor-exit p0

    return-void

    .line 247
    :catchall_53
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 279
    instance-of v0, p1, Lcom/android/server/usb/UsbAlsaDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 280
    return v1

    .line 282
    :cond_6
    check-cast p1, Lcom/android/server/usb/UsbAlsaDevice;

    .line 283
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    iget v2, p1, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    if-ne v0, v2, :cond_2d

    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    iget v2, p1, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    if-ne v0, v2, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    iget-boolean v2, p1, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    if-ne v0, v2, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    iget-boolean v2, p1, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    if-ne v0, v2, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    iget-boolean v2, p1, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    if-ne v0, v2, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    iget-boolean p1, p1, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    if-ne v0, p1, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    return v1
.end method

.method public getAlsaCardDeviceString()Ljava/lang/String;
    .registers 3

    .line 92
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    if-ltz v0, :cond_e

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    if-gez v1, :cond_9

    goto :goto_e

    .line 97
    :cond_9
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->makeAlsaAddressString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_e
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid alsa card or device alsaCard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " alsaDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbAlsaDevice"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCardNum()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    return v0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized getDeviceName()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 266
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeviceNum()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    return v0
.end method

.method public hasInput()Z
    .registers 2

    .line 111
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    return v0
.end method

.method public hasOutput()Z
    .registers 2

    .line 104
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 297
    nop

    .line 298
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 299
    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    add-int/2addr v0, v2

    .line 300
    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 301
    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 302
    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 303
    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 305
    return v0
.end method

.method public isInputHeadset()Z
    .registers 2

    .line 118
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    return v0
.end method

.method public isOutputHeadset()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    return v0
.end method

.method declared-synchronized setDeviceNameAndDescription(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 270
    :try_start_1
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 271
    iput-object p2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceDescription:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 272
    monitor-exit p0

    return-void

    .line 269
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()V
    .registers 3

    monitor-enter p0

    .line 164
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mSelected:Z

    .line 165
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mInputState:I

    .line 166
    iput v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mOutputState:I

    .line 167
    invoke-direct {p0}, Lcom/android/server/usb/UsbAlsaDevice;->startJackDetect()V

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(Z)V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 169
    monitor-exit p0

    return-void

    .line 163
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 2

    monitor-enter p0

    .line 173
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbAlsaDevice;->stopJackDetect()V

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(Z)V

    .line 175
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mSelected:Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 176
    monitor-exit p0

    return-void

    .line 172
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized toShortString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 262
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[card:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-object v0

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 237
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbAlsaDevice: [card: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasOutput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasInput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_43

    monitor-exit p0

    return-object v0

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateWiredDeviceConnectionState(Z)V
    .registers 11

    monitor-enter p0

    .line 182
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mSelected:Z

    if-nez v0, :cond_f

    .line 183
    const-string p1, "UsbAlsaDevice"

    const-string/jumbo v0, "updateWiredDeviceConnectionState on unselected AlsaDevice!"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_a5

    .line 184
    monitor-exit p0

    return-void

    .line 186
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->getAlsaCardDeviceString()Ljava/lang/String;

    move-result-object v6
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_a5

    .line 187
    if-nez v6, :cond_17

    .line 188
    monitor-exit p0

    return-void

    .line 192
    :cond_17
    :try_start_17
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_59

    .line 193
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    if-eqz v0, :cond_25

    .line 194
    const/high16 v0, 0x4000000

    move v1, v0

    goto :goto_28

    .line 195
    :cond_25
    const/16 v0, 0x4000

    move v1, v0

    .line 201
    :goto_28
    invoke-direct {p0}, Lcom/android/server/usb/UsbAlsaDevice;->isOutputJackConnected()Z

    move-result v0

    .line 202
    const-string v2, "UsbAlsaDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OUTPUT JACK connected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-eqz p1, :cond_48

    if-eqz v0, :cond_48

    move v2, v7

    goto :goto_49

    :cond_48
    move v2, v8

    .line 204
    :goto_49
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mOutputState:I

    if-eq v2, v0, :cond_59

    .line 205
    iput v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mOutputState:I

    .line 206
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    iget-object v4, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    const-string v5, "UsbAlsaDevice"

    move-object v3, v6

    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_59
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    if-eqz v0, :cond_9a

    .line 214
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    if-eqz v0, :cond_65

    const/high16 v0, -0x7e000000

    move v1, v0

    goto :goto_69

    .line 215
    :cond_65
    const v0, -0x7ffff000

    move v1, v0

    .line 216
    :goto_69
    invoke-direct {p0}, Lcom/android/server/usb/UsbAlsaDevice;->isInputJackConnected()Z

    move-result v0

    .line 217
    const-string v2, "UsbAlsaDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INPUT JACK connected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-eqz p1, :cond_89

    if-eqz v0, :cond_89

    move v2, v7

    goto :goto_8a

    :cond_89
    move v2, v8

    .line 219
    :goto_8a
    iget p1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mInputState:I

    if-eq v2, p1, :cond_9a

    .line 220
    iput v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mInputState:I

    .line 221
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    iget-object v4, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    const-string v5, "UsbAlsaDevice"

    move-object v3, v6

    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_9a} :catch_9b
    .catchall {:try_start_17 .. :try_end_9a} :catchall_a5

    .line 228
    :cond_9a
    goto :goto_a3

    .line 226
    :catch_9b
    move-exception p1

    .line 227
    :try_start_9c
    const-string p1, "UsbAlsaDevice"

    const-string v0, "RemoteException in setWiredDeviceConnectionState"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catchall {:try_start_9c .. :try_end_a3} :catchall_a5

    .line 229
    :goto_a3
    monitor-exit p0

    return-void

    .line 181
    :catchall_a5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
