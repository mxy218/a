.class final Lcom/android/server/hdmi/HdmiCecController;
.super Ljava/lang/Object;
.source "HdmiCecController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;,
        Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;,
        Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;,
        Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;
    }
.end annotation


# static fields
.field private static final EMPTY_BODY:[B

.field private static final MAX_CEC_MESSAGE_HISTORY:I = 0xc8

.field private static final NUM_LOGICAL_ADDRESS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "HdmiCecController"


# instance fields
.field private mControlHandler:Landroid/os/Handler;

.field private mIoHandler:Landroid/os/Handler;

.field private final mLocalDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mNativePtr:J

.field private final mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

.field private final mNeverAssignLogicalAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteDeviceAddressPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/hdmi/HdmiControlService;

.field private final mSystemAudioAddressPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    sput-object v0, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    return-void
.end method

.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;)V
    .registers 5

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$1;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mRemoteDeviceAddressPredicate:Ljava/util/function/Predicate;

    .line 91
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$2;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$2;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mSystemAudioAddressPredicate:Ljava/util/function/Predicate;

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    .line 115
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 128
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 129
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 130
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo p1, "ro.hdmi.property_hdmi_cec_never_assign_logical_addresses"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->getIntList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNeverAssignLogicalAddresses:Ljava/util/List;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/HdmiCecController;I)Z
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->isAllocatedLocalDeviceAddress(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(JII[B)I
    .registers 5

    .line 58
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/hdmi/HdmiCecController;->nativeSendCecCommand(JII[B)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(JI)I
    .registers 3

    .line 58
    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->nativeAddLogicalAddress(JI)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(J)V
    .registers 2

    .line 58
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->nativeClearLogicalAddress(J)V

    return-void
.end method

.method static synthetic access$1300(J)I
    .registers 2

    .line 58
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->nativeGetPhysicalAddress(J)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(J)I
    .registers 2

    .line 58
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->nativeGetVersion(J)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(J)I
    .registers 2

    .line 58
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->nativeGetVendorId(J)I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(J)[Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 2

    .line 58
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->nativeGetPortInfos(J)[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(JIZ)V
    .registers 4

    .line 58
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->nativeSetOption(JIZ)V

    return-void
.end method

.method static synthetic access$1800(JLjava/lang/String;)V
    .registers 3

    .line 58
    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->nativeSetLanguage(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(JIZ)V
    .registers 4

    .line 58
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->nativeEnableAudioReturnChannel(JIZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .registers 4

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->handleAllocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    return-void
.end method

.method static synthetic access$2000(JI)Z
    .registers 3

    .line 58
    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->nativeIsConnected(JI)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/hdmi/HdmiCecController;III)Z
    .registers 4

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->sendPollMessage(III)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/hdmi/HdmiCecController;ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V
    .registers 6

    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(I[B)[B
    .registers 2

    .line 58
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->buildBody(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/hdmi/HdmiCecController;)J
    .registers 3

    .line 58
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/hdmi/HdmiCecController;)Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/hdmi/HdmiCecController;Landroid/os/MessageQueue;)J
    .registers 2

    .line 58
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->nativeInit(Lcom/android/server/hdmi/HdmiCecController;Landroid/os/MessageQueue;)J

    move-result-wide p0

    return-wide p0
.end method

.method private addMessageToHistory(ZLcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 675
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 676
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;-><init>(Lcom/android/server/hdmi/HdmiCecController;ZLcom/android/server/hdmi/HdmiCecMessage;)V

    .line 677
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 678
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 679
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 681
    :cond_1a
    return-void
.end method

.method private assertRunOnIoThread()V
    .registers 3

    .line 537
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_d

    .line 540
    return-void

    .line 538
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should run on io thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertRunOnServiceThread()V
    .registers 3

    .line 543
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_d

    .line 546
    return-void

    .line 544
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should run on service thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static buildBody(I[B)[B
    .registers 5

    .line 256
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 257
    int-to-byte p0, p0

    const/4 v2, 0x0

    aput-byte p0, v0, v2

    .line 258
    array-length p0, p1

    invoke-static {p1, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    return-object v0
.end method

.method static create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;
    .registers 3

    .line 145
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;-><init>(Lcom/android/server/hdmi/HdmiCecController$1;)V

    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object p0

    return-object p0
.end method

.method static createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;)Lcom/android/server/hdmi/HdmiCecController;
    .registers 5

    .line 153
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecController;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;)V

    .line 154
    nop

    .line 155
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeInit(Lcom/android/server/hdmi/HdmiCecController;Landroid/os/MessageQueue;)J

    move-result-wide p0

    .line 156
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-nez v1, :cond_1b

    .line 157
    nop

    .line 158
    const/4 p0, 0x0

    return-object p0

    .line 161
    :cond_1b
    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->init(J)V

    .line 162
    return-object v0
.end method

.method private handleAllocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .registers 14
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$IoThreadOnly;
    .end annotation

    .line 206
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnIoThread()V

    .line 207
    nop

    .line 210
    const/16 v0, 0x10

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne p2, v1, :cond_19

    .line 211
    move v3, v2

    :goto_c
    if-ge v3, v0, :cond_19

    .line 212
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v4

    if-ne p1, v4, :cond_16

    .line 213
    nop

    .line 214
    goto :goto_1a

    .line 211
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 219
    :cond_19
    move v3, p2

    :goto_1a
    nop

    .line 221
    move v4, v2

    :goto_1c
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ge v4, v0, :cond_50

    .line 222
    add-int v7, v3, v4

    rem-int/2addr v7, v0

    .line 223
    if-eq v7, v1, :cond_4d

    .line 224
    invoke-static {v7}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v8

    if-ne p1, v8, :cond_4d

    iget-object v8, p0, Lcom/android/server/hdmi/HdmiCecController;->mNeverAssignLogicalAddresses:Ljava/util/List;

    .line 225
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4d

    .line 226
    nop

    .line 227
    move v8, v2

    :goto_39
    if-ge v8, v5, :cond_47

    .line 228
    invoke-direct {p0, v7, v7, v6}, Lcom/android/server/hdmi/HdmiCecController;->sendPollMessage(III)Z

    move-result v9

    if-eqz v9, :cond_44

    .line 229
    nop

    .line 230
    move v8, v6

    goto :goto_48

    .line 227
    :cond_44
    add-int/lit8 v8, v8, 0x1

    goto :goto_39

    :cond_47
    move v8, v2

    .line 235
    :goto_48
    if-nez v8, :cond_4d

    .line 236
    nop

    .line 237
    move v1, v7

    goto :goto_50

    .line 221
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 242
    :cond_50
    :goto_50
    nop

    .line 243
    new-array v0, v5, [Ljava/lang/Object;

    .line 244
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v6

    const/4 p2, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, p2

    .line 243
    const-string p2, "New logical address for device [%d]: [preferred:%d, assigned:%d]"

    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    if-eqz p3, :cond_75

    .line 246
    new-instance p2, Lcom/android/server/hdmi/HdmiCecController$4;

    invoke-direct {p2, p0, p3, p1, v1}, Lcom/android/server/hdmi/HdmiCecController$4;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;II)V

    invoke-direct {p0, p2}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 253
    :cond_75
    return-void
.end method

.method private handleHotplug(IZ)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 668
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 669
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Hotplug event:[port:%d, connected:%b]"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->onHotplug(IZ)V

    .line 671
    return-void
.end method

.method private handleIncomingCecCommand(II[B)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 656
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 657
    invoke-static {p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->of(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    .line 658
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[R]:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecController;->addMessageToHistory(ZLcom/android/server/hdmi/HdmiCecMessage;)V

    .line 660
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->onReceiveCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 661
    return-void
.end method

.method private init(J)V
    .registers 5

    .line 166
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getIoLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    .line 167
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    .line 168
    iput-wide p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    .line 169
    return-void
.end method

.method private isAcceptableAddress(I)Z
    .registers 3

    .line 574
    const/16 v0, 0xf

    if-ne p1, v0, :cond_6

    .line 575
    const/4 p1, 0x1

    return p1

    .line 577
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->isAllocatedLocalDeviceAddress(I)Z

    move-result p1

    return p1
.end method

.method private isAllocatedLocalDeviceAddress(I)Z
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 475
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 476
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 477
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isAddressOf(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 478
    const/4 p1, 0x1

    return p1

    .line 476
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 481
    :cond_20
    return v0
.end method

.method private static native nativeAddLogicalAddress(JI)I
.end method

.method private static native nativeClearLogicalAddress(J)V
.end method

.method private static native nativeEnableAudioReturnChannel(JIZ)V
.end method

.method private static native nativeGetPhysicalAddress(J)I
.end method

.method private static native nativeGetPortInfos(J)[Landroid/hardware/hdmi/HdmiPortInfo;
.end method

.method private static native nativeGetVendorId(J)I
.end method

.method private static native nativeGetVersion(J)I
.end method

.method private static native nativeInit(Lcom/android/server/hdmi/HdmiCecController;Landroid/os/MessageQueue;)J
.end method

.method private static native nativeIsConnected(JI)Z
.end method

.method private static native nativeSendCecCommand(JII[B)I
.end method

.method private static native nativeSetLanguage(JLjava/lang/String;)V
.end method

.method private static native nativeSetOption(JIZ)V
.end method

.method private onReceiveCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 582
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 583
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->isAcceptableAddress(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 584
    return-void

    .line 587
    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 588
    return-void
.end method

.method private pickPollCandidates(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 439
    and-int/lit8 v0, p1, 0x3

    .line 440
    nop

    .line 441
    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    .line 447
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mRemoteDeviceAddressPredicate:Ljava/util/function/Predicate;

    goto :goto_c

    .line 443
    :cond_9
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mSystemAudioAddressPredicate:Ljava/util/function/Predicate;

    .line 444
    nop

    .line 451
    :goto_c
    const/high16 v1, 0x30000

    and-int/2addr p1, v1

    .line 452
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 453
    const/high16 v2, 0x10000

    const/16 v3, 0xe

    if-eq p1, v2, :cond_31

    .line 463
    nop

    :goto_1b
    if-ltz v3, :cond_49

    .line 464
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 465
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_2e
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 455
    :cond_31
    const/4 p1, 0x0

    :goto_32
    if-gt p1, v3, :cond_48

    .line 456
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 457
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_45
    add-int/lit8 p1, p1, 0x1

    goto :goto_32

    .line 460
    :cond_48
    nop

    .line 470
    :cond_49
    return-object v1
.end method

.method private runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V
    .registers 15
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 488
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 489
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 490
    if-eqz p4, :cond_1d

    .line 491
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "[P]:AllocatedAddress=%s"

    invoke-static {p2, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    invoke-interface {p4, p5}, Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;->onPollingFinished(Ljava/util/List;)V

    .line 494
    :cond_1d
    return-void

    .line 497
    :cond_1e
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    .line 500
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$5;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v5, p3

    move-object v6, p5

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/hdmi/HdmiCecController$5;-><init>(Lcom/android/server/hdmi/HdmiCecController;ILjava/lang/Integer;ILjava/util/List;Ljava/util/List;Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;)V

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 515
    return-void
.end method

.method private runOnIoThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 552
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 553
    return-void
.end method

.method private runOnServiceThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 556
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 557
    return-void
.end method

.method private sendPollMessage(III)Z
    .registers 12
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$IoThreadOnly;
    .end annotation

    .line 519
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnIoThread()V

    .line 520
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, p3, :cond_37

    .line 522
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v3, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    sget-object v7, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    .line 523
    move v5, p1

    move v6, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSendCecCommand(JII[B)I

    move-result v2

    .line 525
    const/4 v3, 0x1

    if-nez v2, :cond_17

    .line 526
    return v3

    .line 527
    :cond_17
    if-eq v2, v3, :cond_34

    .line 529
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 530
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    .line 529
    const-string v2, "Failed to send a polling message(%d->%d) with return code %d"

    invoke-static {v2, v4}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 533
    :cond_37
    return v0
.end method


# virtual methods
.method addLocalDevice(ILcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 173
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 174
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    return-void
.end method

.method addLogicalAddress(I)I
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 290
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 291
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 292
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-interface {v0, v1, v2, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeAddLogicalAddress(JI)I

    move-result p1

    return p1

    .line 294
    :cond_12
    const/4 p1, 0x2

    return p1
.end method

.method allocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 193
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 195
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController$3;-><init>(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method clearLocalDevices()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 314
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 315
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 316
    return-void
.end method

.method clearLogicalAddress()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 305
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 306
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 307
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->clearAddress()V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 309
    :cond_1a
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeClearLogicalAddress(J)V

    .line 310
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    .line 684
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HdmiCecLocalDevice #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 687
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 688
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 690
    :cond_3c
    const-string v0, "CEC message history:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 692
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 693
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;

    .line 694
    invoke-virtual {v2, p1, v0}, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 695
    goto :goto_52

    .line 696
    :cond_62
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 697
    return-void
.end method

.method enableAudioReturnChannel(IZ)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 389
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 390
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeEnableAudioReturnChannel(JIZ)V

    .line 391
    return-void
.end method

.method flush(Ljava/lang/Runnable;)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 561
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 562
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecController$6;-><init>(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 570
    return-void
.end method

.method getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .registers 3

    .line 275
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    return-object p1
.end method

.method getLocalDeviceList()Ljava/util/List;
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation

    .line 434
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 435
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getPhysicalAddress()I
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 328
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 329
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetPhysicalAddress(J)I

    move-result v0

    return v0
.end method

.method getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 4

    .line 264
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetPortInfos(J)[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    return-object v0
.end method

.method getVendorId()I
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 350
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 351
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetVendorId(J)I

    move-result v0

    return v0
.end method

.method getVersion()I
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 339
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 340
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetVersion(J)I

    move-result v0

    return v0
.end method

.method isConnected(I)Z
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 401
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 402
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-interface {v0, v1, v2, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeIsConnected(JI)Z

    move-result p1

    return p1
.end method

.method maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 592
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 594
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    .line 595
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    .line 596
    const/16 v2, 0xf

    if-eq v0, v2, :cond_22

    if-ne v1, v2, :cond_12

    goto :goto_22

    .line 601
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result p1

    .line 602
    if-nez p1, :cond_19

    .line 603
    return-void

    .line 605
    :cond_19
    nop

    .line 606
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    .line 605
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 607
    return-void

    .line 599
    :cond_22
    :goto_22
    return-void
.end method

.method pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V
    .registers 11
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 419
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 422
    invoke-direct {p0, p3}, Lcom/android/server/hdmi/HdmiCecController;->pickPollCandidates(I)Ljava/util/List;

    move-result-object v2

    .line 423
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 424
    move-object v0, p0

    move v1, p2

    move v3, p4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V

    .line 425
    return-void
.end method

.method sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 611
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 612
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 613
    return-void
.end method

.method sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 618
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 619
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->addMessageToHistory(ZLcom/android/server/hdmi/HdmiCecMessage;)V

    .line 620
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$7;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 649
    return-void
.end method

.method setLanguage(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 374
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 375
    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 376
    return-void

    .line 378
    :cond_a
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-interface {v0, v1, v2, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSetLanguage(JLjava/lang/String;)V

    .line 379
    return-void
.end method

.method setOption(IZ)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 362
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 363
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "setOption: [flag:%d, enabled:%b]"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSetOption(JIZ)V

    .line 365
    return-void
.end method
