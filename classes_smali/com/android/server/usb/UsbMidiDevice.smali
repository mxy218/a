.class public final Lcom/android/server/usb/UsbMidiDevice;
.super Ljava/lang/Object;
.source "UsbMidiDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x200

.field private static final TAG:Ljava/lang/String; = "UsbMidiDevice"


# instance fields
.field private final mAlsaCard:I

.field private final mAlsaDevice:I

.field private final mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field private mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

.field private mFileDescriptors:[Ljava/io/FileDescriptor;

.field private final mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

.field private mInputStreams:[Ljava/io/FileInputStream;

.field private mIsOpen:Z

.field private final mLock:Ljava/lang/Object;

.field private mOutputStreams:[Ljava/io/FileOutputStream;

.field private mPipeFD:I

.field private mPollFDs:[Landroid/system/StructPollfd;

.field private mServer:Landroid/media/midi/MidiDeviceServer;

.field private final mSubdeviceCount:I


# direct methods
.method private constructor <init>(III)V
    .registers 6

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mPipeFD:I

    .line 77
    new-instance v0, Lcom/android/server/usb/UsbMidiDevice$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbMidiDevice$1;-><init>(Lcom/android/server/usb/UsbMidiDevice;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    .line 160
    iput p1, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaCard:I

    .line 161
    iput p2, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaDevice:I

    .line 162
    iput p3, p0, Lcom/android/server/usb/UsbMidiDevice;->mSubdeviceCount:I

    .line 165
    nop

    .line 166
    new-array p1, p3, [Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    .line 167
    const/4 p1, 0x0

    :goto_20
    if-ge p1, p3, :cond_2f

    .line 168
    iget-object p2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    new-instance v0, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;-><init>(Lcom/android/server/usb/UsbMidiDevice;Lcom/android/server/usb/UsbMidiDevice$1;)V

    aput-object v0, p2, p1

    .line 167
    add-int/lit8 p1, p1, 0x1

    goto :goto_20

    .line 170
    :cond_2f
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbMidiDevice;)Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbMidiDevice;)Z
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->openLocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbMidiDevice;)V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->closeLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    return-object p0
.end method

.method private closeLocked()V
    .registers 6

    .line 320
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_19

    .line 321
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    .line 322
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/midi/MidiEventScheduler;->close()V

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 324
    :cond_19
    iput-object v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    .line 326
    move v1, v0

    :goto_1c
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    array-length v4, v2

    if-ge v1, v4, :cond_29

    .line 327
    aget-object v2, v2, v1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 329
    :cond_29
    iput-object v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    .line 331
    move v1, v0

    :goto_2c
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    array-length v4, v2

    if-ge v1, v4, :cond_39

    .line 332
    aget-object v2, v2, v1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 334
    :cond_39
    iput-object v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    .line 337
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbMidiDevice;->nativeClose([Ljava/io/FileDescriptor;)V

    .line 338
    iput-object v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    .line 340
    iput-boolean v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    .line 341
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Bundle;II)Lcom/android/server/usb/UsbMidiDevice;
    .registers 8

    .line 144
    invoke-static {p2, p3}, Lcom/android/server/usb/UsbMidiDevice;->nativeGetSubdeviceCount(II)I

    move-result v0

    .line 145
    const/4 v1, 0x0

    const-string v2, "UsbMidiDevice"

    if-gtz v0, :cond_10

    .line 146
    const-string/jumbo p0, "nativeGetSubdeviceCount failed"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-object v1

    .line 150
    :cond_10
    new-instance v3, Lcom/android/server/usb/UsbMidiDevice;

    invoke-direct {v3, p2, p3, v0}, Lcom/android/server/usb/UsbMidiDevice;-><init>(III)V

    .line 151
    invoke-direct {v3, p0, p1}, Lcom/android/server/usb/UsbMidiDevice;->register(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p0

    if-nez p0, :cond_24

    .line 152
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 153
    const-string p0, "createDeviceServer failed"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-object v1

    .line 156
    :cond_24
    return-object v3
.end method

.method private native nativeClose([Ljava/io/FileDescriptor;)V
.end method

.method private static native nativeGetSubdeviceCount(II)I
.end method

.method private native nativeOpen(III)[Ljava/io/FileDescriptor;
.end method

.method private openLocked()Z
    .registers 13

    .line 174
    iget v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaCard:I

    iget v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaDevice:I

    iget v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mSubdeviceCount:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/usb/UsbMidiDevice;->nativeOpen(III)[Ljava/io/FileDescriptor;

    move-result-object v0

    .line 175
    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 176
    const-string v0, "UsbMidiDevice"

    const-string/jumbo v2, "nativeOpen failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return v1

    .line 180
    :cond_16
    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    .line 181
    array-length v2, v0

    .line 184
    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 186
    new-array v5, v2, [Landroid/system/StructPollfd;

    iput-object v5, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    .line 187
    new-array v5, v2, [Ljava/io/FileInputStream;

    iput-object v5, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    .line 188
    move v5, v1

    :goto_25
    if-ge v5, v2, :cond_45

    .line 189
    aget-object v6, v0, v5

    .line 190
    new-instance v7, Landroid/system/StructPollfd;

    invoke-direct {v7}, Landroid/system/StructPollfd;-><init>()V

    .line 191
    iput-object v6, v7, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 192
    sget v8, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v8, v8

    iput-short v8, v7, Landroid/system/StructPollfd;->events:S

    .line 193
    iget-object v8, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    aput-object v7, v8, v5

    .line 194
    iget-object v7, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v8, v7, v5

    .line 188
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 197
    :cond_45
    new-array v2, v3, [Ljava/io/FileOutputStream;

    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    .line 198
    new-array v2, v3, [Lcom/android/internal/midi/MidiEventScheduler;

    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    .line 199
    move v2, v1

    :goto_4e
    if-ge v2, v3, :cond_72

    .line 200
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    aget-object v7, v0, v2

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v6, v5, v2

    .line 202
    new-instance v5, Lcom/android/internal/midi/MidiEventScheduler;

    invoke-direct {v5}, Lcom/android/internal/midi/MidiEventScheduler;-><init>()V

    .line 203
    iget-object v6, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aput-object v5, v6, v2

    .line 204
    iget-object v6, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    aget-object v6, v6, v2

    invoke-virtual {v5}, Lcom/android/internal/midi/MidiEventScheduler;->getReceiver()Landroid/media/midi/MidiReceiver;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 207
    :cond_72
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;

    move-result-object v0

    .line 210
    new-instance v2, Lcom/android/server/usb/UsbMidiDevice$2;

    const-string v5, "UsbMidiDevice input thread"

    invoke-direct {v2, p0, v5, v0}, Lcom/android/server/usb/UsbMidiDevice$2;-><init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;[Landroid/media/midi/MidiReceiver;)V

    .line 252
    invoke-virtual {v2}, Lcom/android/server/usb/UsbMidiDevice$2;->start()V

    .line 255
    nop

    :goto_83
    if-ge v1, v3, :cond_ad

    .line 256
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aget-object v9, v0, v1

    .line 257
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    aget-object v10, v0, v1

    .line 258
    nop

    .line 260
    new-instance v0, Lcom/android/server/usb/UsbMidiDevice$3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsbMidiDevice output thread "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v0

    move-object v7, p0

    move v11, v1

    invoke-direct/range {v6 .. v11}, Lcom/android/server/usb/UsbMidiDevice$3;-><init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;Ljava/io/FileOutputStream;I)V

    .line 283
    invoke-virtual {v0}, Lcom/android/server/usb/UsbMidiDevice$3;->start()V

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    .line 286
    :cond_ad
    iput-boolean v4, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    .line 287
    return v4
.end method

.method private register(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 11

    .line 291
    const-string v0, "midi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/media/midi/MidiManager;

    .line 292
    const/4 p1, 0x0

    if-nez v0, :cond_14

    .line 293
    const-string p2, "UsbMidiDevice"

    const-string v0, "No MidiManager in UsbMidiDevice.create()"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return p1

    .line 297
    :cond_14
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    iget v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mSubdeviceCount:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/server/usb/UsbMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    move-object v5, p2

    invoke-virtual/range {v0 .. v7}, Landroid/media/midi/MidiManager;->createDeviceServer([Landroid/media/midi/MidiReceiver;I[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;ILandroid/media/midi/MidiDeviceServer$Callback;)Landroid/media/midi/MidiDeviceServer;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    .line 299
    iget-object p2, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-nez p2, :cond_29

    .line 300
    return p1

    .line 303
    :cond_29
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    if-eqz v1, :cond_a

    .line 310
    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->closeLocked()V

    .line 312
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_13

    .line 314
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-eqz v0, :cond_12

    .line 315
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 317
    :cond_12
    return-void

    .line 312
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public dump(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 8

    .line 348
    invoke-virtual {p2, p3, p4, p5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p3

    .line 350
    const-string p5, "device_address"

    const-wide v0, 0x10900000003L

    invoke-virtual {p2, p5, v0, v1, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 351
    iget p1, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaCard:I

    const-string p5, "card"

    const-wide v0, 0x10500000001L

    invoke-virtual {p2, p5, v0, v1, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 352
    iget p1, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaDevice:I

    const-string p5, "device"

    const-wide v0, 0x10500000002L

    invoke-virtual {p2, p5, v0, v1, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 354
    invoke-virtual {p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 355
    return-void
.end method
