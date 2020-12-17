.class abstract Lcom/android/server/hdmi/HdmiCecLocalDevice;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;,
        Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    }
.end annotation


# static fields
.field private static final DEVICE_CLEANUP_TIMEOUT:I = 0x1388

.field private static final FOLLOWER_SAFETY_TIMEOUT:I = 0x226

.field private static final MSG_DISABLE_DEVICE_TIMEOUT:I = 0x1

.field private static final MSG_USER_CONTROL_RELEASE_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HdmiCecLocalDevice"


# instance fields
.field private final mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveRoutingPath:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field protected mAddress:I

.field protected final mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

.field protected mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field protected final mDeviceType:I

.field private final mHandler:Landroid/os/Handler;

.field protected mLastKeyRepeatCount:I

.field protected mLastKeycode:I

.field protected final mLock:Ljava/lang/Object;

.field protected mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

.field protected mPreferredAddress:I

.field protected final mService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method protected constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 4
    .param p1, "service"  # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "deviceType"  # I

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    .line 141
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecMessageCache;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    .line 174
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 175
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    .line 176
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    .line 177
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 48
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleDisableDeviceTimeout()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/hdmi/HdmiCecLocalDevice;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 48
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .registers 3
    .param p0, "service"  # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "deviceType"  # I

    .line 182
    if-eqz p1, :cond_16

    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    const/4 v0, 0x5

    if-eq p1, v0, :cond_a

    .line 190
    const/4 v0, 0x0

    return-object v0

    .line 188
    :cond_a
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    return-object v0

    .line 186
    :cond_10
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    return-object v0

    .line 184
    :cond_16
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    return-object v0
.end method

.method private dispatchMessageToAction(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 7
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 349
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 350
    const/4 v0, 0x0

    .line 352
    .local v0, "processed":Z
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 354
    .local v2, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v3

    .line 355
    .local v3, "result":Z
    if-nez v0, :cond_26

    if-eqz v3, :cond_24

    goto :goto_26

    :cond_24
    const/4 v4, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v4, 0x1

    :goto_27
    move v0, v4

    .line 356
    .end local v2  # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .end local v3  # "result":Z
    goto :goto_f

    .line 357
    :cond_29
    return v0
.end method

.method private handleDisableDeviceTimeout()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 969
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 973
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 974
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/hdmi/HdmiCecFeatureAction;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 975
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 976
    .local v1, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 977
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 978
    .end local v1  # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    goto :goto_9

    .line 979
    :cond_1d
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    if-eqz v1, :cond_24

    .line 980
    invoke-interface {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 982
    :cond_24
    return-void
.end method

.method static injectKeyEvent(JIII)V
    .registers 18
    .param p0, "time"  # J
    .param p2, "action"  # I
    .param p3, "keycode"  # I
    .param p4, "repeat"  # I

    .line 576
    nop

    .line 577
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const v11, 0x2000001

    const/4 v12, 0x0

    move-wide v0, p0

    move-wide v2, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    .line 589
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    .line 590
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 591
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    .line 592
    return-void
.end method

.method static isPowerOffOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p0, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 603
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 604
    .local v0, "params":[B
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x44

    if-ne v1, v3, :cond_1a

    aget-byte v1, v0, v2

    const/16 v3, 0x6c

    if-eq v1, v3, :cond_19

    aget-byte v1, v0, v2

    const/16 v3, 0x6b

    if-ne v1, v3, :cond_1a

    :cond_19
    const/4 v2, 0x1

    :cond_1a
    return v2
.end method

.method static isPowerOnOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p0, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 595
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 596
    .local v0, "params":[B
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x44

    if-ne v1, v3, :cond_20

    aget-byte v1, v0, v2

    const/16 v3, 0x40

    if-eq v1, v3, :cond_1f

    aget-byte v1, v0, v2

    const/16 v3, 0x6d

    if-eq v1, v3, :cond_1f

    aget-byte v1, v0, v2

    const/16 v3, 0x6b

    if-ne v1, v3, :cond_20

    :cond_1f
    const/4 v2, 0x1

    :cond_20
    return v2
.end method


# virtual methods
.method addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .registers 4
    .param p1, "action"  # Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 746
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 747
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandby()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isAddressAllocated()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_1d

    .line 752
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->start()Z

    .line 753
    return-void

    .line 749
    :cond_1d
    :goto_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not ready to start action. Queued for deferred start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdmiCecLocalDevice"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void
.end method

.method protected assertRunOnServiceThread()V
    .registers 3

    .line 841
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_d

    .line 844
    return-void

    .line 842
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should run on service thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canGoToStandby()Z
    .registers 2

    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method protected checkIfPendingActionsCleared()V
    .registers 3

    .line 832
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    if-eqz v0, :cond_14

    .line 833
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .line 835
    .local v0, "callback":Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .line 836
    invoke-interface {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 838
    .end local v0  # "callback":Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;
    :cond_14
    return-void
.end method

.method clearAddress()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 740
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 741
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    .line 742
    return-void
.end method

.method protected disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .registers 7
    .param p1, "initiatedByCec"  # Z
    .param p2, "originalCallback"  # Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .line 955
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;

    invoke-direct {v0, p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .line 963
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    .line 964
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 963
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 965
    return-void
.end method

.method dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 240
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    .line 241
    .local v0, "dest":I
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    if-eq v0, v1, :cond_11

    const/16 v1, 0xf

    if-eq v0, v1, :cond_11

    .line 242
    const/4 v1, 0x0

    return v1

    .line 245
    :cond_11
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageCache;->cacheMessage(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    return v1
.end method

.method protected dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeviceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPreferredAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPreferredAddress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeviceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "mActiveRoutingPath: 0x%04x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1102
    return-void
.end method

.method protected findAudioReceiverAddress()I
    .registers 3

    .line 1070
    const-string v0, "HdmiCecLocalDevice"

    const-string v1, "findAudioReceiverAddress is not implemented"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const/4 v0, -0x1

    return v0
.end method

.method protected findKeyReceiverAddress()I
    .registers 3

    .line 1059
    const-string v0, "HdmiCecLocalDevice"

    const-string v1, "findKeyReceiverAddress is not implemented"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/4 v0, -0x1

    return v0
.end method

.method getActions(Ljava/lang/Class;)Ljava/util/List;
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 782
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 783
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 784
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 785
    .local v2, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 786
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 787
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 789
    :cond_2f
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    .end local v2  # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :cond_32
    goto :goto_d

    .line 792
    :cond_33
    return-object v0
.end method

.method getActivePath()I
    .registers 3

    .line 884
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 885
    :try_start_3
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    monitor-exit v0

    return v1

    .line 886
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected getActivePathOnSwitchFromActivePortId(I)I
    .registers 6
    .param p1, "activePortId"  # I
        .annotation build Lcom/android/server/hdmi/Constants$LocalActivePort;
        .end annotation
    .end param

    .line 1114
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    .line 1115
    .local v0, "myPhysicalAddress":I
    shl-int/lit8 v1, p1, 0x8

    .line 1117
    .local v1, "finalMask":I
    const/16 v2, 0xf00

    .local v2, "mask":I
    :goto_a
    const/16 v3, 0xf

    if-le v2, v3, :cond_18

    .line 1118
    and-int v3, v0, v2

    if-nez v3, :cond_13

    .line 1119
    goto :goto_18

    .line 1121
    :cond_13
    shr-int/lit8 v1, v1, 0x4

    .line 1117
    shr-int/lit8 v2, v2, 0x4

    goto :goto_a

    .line 1124
    :cond_18
    :goto_18
    or-int v3, v1, v0

    return v3
.end method

.method getActivePortId()I
    .registers 4

    .line 901
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 902
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 903
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .registers 2

    .line 867
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    return-object v0
.end method

.method getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 924
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 925
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    return-object v0
.end method

.method getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 719
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    monitor-exit v0

    return-object v1

    .line 720
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getPortId(I)I
    .registers 3
    .param p1, "physicalAddress"  # I

    .line 919
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v0

    return v0
.end method

.method protected abstract getPreferredAddress()I
.end method

.method final getService()Lcom/android/server/hdmi/HdmiControlService;
    .registers 2

    .line 857
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    return-object v0
.end method

.method getType()I
    .registers 2

    .line 713
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    return v0
.end method

.method protected handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method final handleAddressAllocated(II)V
    .registers 3
    .param p1, "logicalAddress"  # I
    .param p2, "reason"  # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 706
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 707
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPreferredAddress:I

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    .line 708
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onAddressAllocated(II)V

    .line 709
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setPreferredAddress(I)V

    .line 710
    return-void
.end method

.method protected handleGetCecVersion(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 384
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 385
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v0

    .line 386
    .local v0, "version":I
    nop

    .line 388
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    .line 387
    invoke-static {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCecVersion(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 389
    .local v1, "cecMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 390
    const/4 v2, 0x1

    return v2
.end method

.method protected handleGetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 410
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only TV can handle <Get Menu Language>:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdmiCecLocalDevice"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method protected handleGiveAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method protected handleGiveDevicePowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 622
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    .line 624
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getPowerStatus()I

    move-result v3

    .line 623
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPowerStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 622
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 625
    const/4 v0, 0x1

    return v0
.end method

.method protected handleGiveDeviceVendorId(Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)Z
    .registers 5
    .param p1, "callback"  # Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 374
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 375
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v0

    .line 376
    .local v0, "vendorId":I
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    .line 377
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 378
    .local v1, "cecMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 379
    const/4 v2, 0x1

    return v2
.end method

.method protected handleGiveOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 426
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 429
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    .line 431
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 430
    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetOsdNameCommand(IILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 432
    .local v0, "cecMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    if-eqz v0, :cond_1b

    .line 433
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_37

    .line 435
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to build <Get Osd Name>:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HdmiCecLocalDevice"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_37
    const/4 v1, 0x1

    return v1
.end method

.method protected handleGivePhysicalAddress(Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)Z
    .registers 5
    .param p1, "callback"  # Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 362
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 364
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    .line 365
    .local v0, "physicalAddress":I
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    .line 366
    invoke-static {v1, v0, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 368
    .local v1, "cecMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 369
    const/4 v2, 0x1

    return v2
.end method

.method protected handleGiveSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 461
    const/4 v0, 0x0

    return v0
.end method

.method protected handleImageViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 614
    const/4 v0, 0x0

    return v0
.end method

.method protected handleInactiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method protected handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method protected handleMenuRequest(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 630
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    .line 632
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    .line 631
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 630
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 633
    const/4 v0, 0x1

    return v0
.end method

.method protected handleMenuStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 637
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 701
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 684
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 685
    const/4 v0, 0x1

    return v0
.end method

.method protected handleReportArcInitiate(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method protected handleReportArcTermination(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 493
    const/4 v0, 0x0

    return v0
.end method

.method protected handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method protected handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method protected handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 693
    const/4 v0, 0x0

    return v0
.end method

.method protected handleReportShortAudioDescriptor(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRequestArcInitiate(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRequestArcTermination(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRequestShortAudioDescriptor(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 418
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only Playback device can handle <Set Menu Language>:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdmiCecLocalDevice"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 678
    const/4 v0, 0x1

    return v0
.end method

.method protected handleSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 618
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method protected handleStandby(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 514
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 516
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 517
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isProhibitMode()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 518
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 519
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    .line 520
    const/4 v0, 0x1

    return v0

    .line 522
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSystemAudioModeRequest(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 469
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method protected handleTerminateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method protected handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 610
    const/4 v0, 0x0

    return v0
.end method

.method protected handleTimerClearedStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 689
    const/4 v0, 0x0

    return v0
.end method

.method protected handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 697
    const/4 v0, 0x0

    return v0
.end method

.method protected handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 12
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 527
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 528
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 529
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOffOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 530
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    .line 531
    return v2

    .line 532
    :cond_1e
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOnOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 533
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 534
    return v2

    .line 537
    :cond_32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 538
    .local v3, "downTime":J
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 539
    .local v0, "params":[B
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecKeycode;->cecKeycodeAndParamsToAndroidKey([B)I

    move-result v5

    .line 540
    .local v5, "keycode":I
    const/4 v6, 0x0

    .line 541
    .local v6, "keyRepeatCount":I
    iget v7, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-eq v7, v8, :cond_4f

    .line 542
    if-ne v5, v7, :cond_4c

    .line 543
    iget v7, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    add-int/lit8 v6, v7, 0x1

    goto :goto_4f

    .line 545
    :cond_4c
    invoke-static {v3, v4, v2, v7, v9}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->injectKeyEvent(JIII)V

    .line 548
    :cond_4f
    :goto_4f
    iput v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    .line 549
    iput v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    .line 551
    if-eq v5, v8, :cond_64

    .line 552
    invoke-static {v3, v4, v9, v5, v6}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->injectKeyEvent(JIII)V

    .line 553
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    .line 554
    invoke-static {v7, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v8, 0x226

    .line 553
    invoke-virtual {v7, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 556
    return v2

    .line 558
    :cond_64
    return v9
.end method

.method protected handleUserControlReleased()Z
    .registers 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 563
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 564
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 565
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    .line 566
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    .line 567
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 568
    .local v3, "upTime":J
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->injectKeyEvent(JIII)V

    .line 569
    iput v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    .line 570
    return v5

    .line 572
    .end local v3  # "upTime":J
    :cond_1e
    return v0
.end method

.method protected handleVendorCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 8
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 641
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    .line 643
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    .line 644
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v3

    .line 645
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v4

    .line 641
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnReceived(III[BZ)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    .line 649
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 651
    :cond_1d
    return v1
.end method

.method protected handleVendorCommandWithId(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 11
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 655
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v6

    .line 656
    .local v6, "params":[B
    invoke-static {v6}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    move-result v7

    .line 657
    .local v7, "vendorId":I
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v0

    const/4 v8, 0x1

    if-ne v7, v0, :cond_2b

    .line 658
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    .line 659
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v3

    const/4 v5, 0x1

    .line 658
    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnReceived(III[BZ)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 660
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, v8}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_4c

    .line 662
    :cond_2b
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    const-string v1, "HdmiCecLocalDevice"

    const/16 v2, 0xf

    if-eq v0, v2, :cond_47

    .line 663
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    if-eq v0, v2, :cond_47

    .line 664
    const-string v0, "Wrong direct vendor command. Replying with <Feature Abort>"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_4c

    .line 667
    :cond_47
    const-string v0, "Wrong broadcast vendor command. Ignoring"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_4c
    :goto_4c
    return v8
.end method

.method hasAction(Ljava/lang/Class;)Z
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 770
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 771
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 772
    .local v1, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 773
    const/4 v0, 0x1

    return v0

    .line 775
    .end local v1  # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :cond_21
    goto :goto_9

    .line 776
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method init()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 197
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getPreferredAddress()I

    move-result v0

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPreferredAddress:I

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .line 199
    return-void
.end method

.method invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .registers 6
    .param p1, "callback"  # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p2, "result"  # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1076
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1077
    if-nez p1, :cond_6

    .line 1078
    return-void

    .line 1081
    :cond_6
    :try_start_6
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1084
    goto :goto_21

    .line 1082
    :catch_a
    move-exception v0

    .line 1083
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoking callback failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HdmiCecLocalDevice"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method

.method isAddressOf(I)Z
    .registers 3
    .param p1, "addr"  # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 733
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 734
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    if-ne p1, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method final isConnectedToArcPort(I)Z
    .registers 3
    .param p1, "path"  # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 862
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 863
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->isConnectedToArcPort(I)Z

    move-result v0

    return v0
.end method

.method protected isInputReady(I)Z
    .registers 3
    .param p1, "deviceId"  # I

    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onAddressAllocated(II)V
.end method

.method onHotplug(IZ)V
    .registers 3
    .param p1, "portId"  # I
    .param p2, "connected"  # Z

    .line 854
    return-void
.end method

.method protected final onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 251
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 252
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dispatchMessageToAction(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 253
    const/4 v0, 0x1

    return v0

    .line 255
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_132

    const/16 v1, 0xa

    if-eq v0, v1, :cond_12d

    const/16 v1, 0xd

    if-eq v0, v1, :cond_128

    const/16 v1, 0xf

    if-eq v0, v1, :cond_123

    const/16 v1, 0x32

    if-eq v0, v1, :cond_11e

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_119

    const/16 v1, 0x89

    if-eq v0, v1, :cond_114

    const/16 v1, 0x9d

    if-eq v0, v1, :cond_10f

    const/16 v1, 0x35

    if-eq v0, v1, :cond_10a

    const/16 v1, 0x36

    if-eq v0, v1, :cond_105

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_100

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_fb

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_f6

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_f1

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_ec

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_e7

    packed-switch v0, :pswitch_data_138

    packed-switch v0, :pswitch_data_146

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_150

    packed-switch v0, :pswitch_data_162

    packed-switch v0, :pswitch_data_172

    .line 343
    const/4 v0, 0x0

    return v0

    .line 287
    :pswitch_60  #0xc5
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTerminateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 283
    :pswitch_65  #0xc4
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRequestArcTermination(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 281
    :pswitch_6a  #0xc3
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRequestArcInitiate(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 291
    :pswitch_6f  #0xc2
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportArcTermination(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 289
    :pswitch_74  #0xc1
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportArcInitiate(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 285
    :pswitch_79  #0xc0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 263
    :pswitch_7e  #0x91
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 333
    :pswitch_83  #0x90
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 317
    :pswitch_88  #0x8f
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveDevicePowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 321
    :pswitch_8d  #0x8e
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleMenuStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 319
    :pswitch_92  #0x8d
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleMenuRequest(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 271
    :pswitch_97  #0x8c
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveDeviceVendorId(Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)Z

    move-result v0

    return v0

    .line 315
    :pswitch_9c  #0x86
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 261
    :pswitch_a1  #0x85
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 275
    :pswitch_a6  #0x84
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 267
    :pswitch_ab  #0x83
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGivePhysicalAddress(Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)Z

    move-result v0

    return v0

    .line 257
    :pswitch_b0  #0x82
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 279
    :pswitch_b5  #0x81
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 277
    :pswitch_ba  #0x80
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 295
    :pswitch_bf  #0x72
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 301
    :pswitch_c4  #0x71
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 293
    :pswitch_c9  #0x70
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSystemAudioModeRequest(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 327
    :pswitch_ce  #0x47
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 269
    :pswitch_d3  #0x46
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 313
    :pswitch_d8  #0x45
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleUserControlReleased()Z

    move-result v0

    return v0

    .line 311
    :pswitch_dd  #0x44
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 331
    :pswitch_e2  #0x43
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTimerClearedStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 339
    :cond_e7
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRequestShortAudioDescriptor(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 341
    :cond_ec
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportShortAudioDescriptor(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 325
    :cond_f1
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleVendorCommandWithId(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 273
    :cond_f6
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGetCecVersion(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 297
    :cond_fb
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 299
    :cond_100
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 305
    :cond_105
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleStandby(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 335
    :cond_10a
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 259
    :cond_10f
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleInactiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 323
    :cond_114
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleVendorCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 303
    :cond_119
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 265
    :cond_11e
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 329
    :cond_123
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 307
    :cond_128
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 337
    :cond_12d
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 309
    :cond_132
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleImageViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_138
    .packed-switch 0x43
        :pswitch_e2  #00000043
        :pswitch_dd  #00000044
        :pswitch_d8  #00000045
        :pswitch_d3  #00000046
        :pswitch_ce  #00000047
    .end packed-switch

    :pswitch_data_146
    .packed-switch 0x70
        :pswitch_c9  #00000070
        :pswitch_c4  #00000071
        :pswitch_bf  #00000072
    .end packed-switch

    :pswitch_data_150
    .packed-switch 0x80
        :pswitch_ba  #00000080
        :pswitch_b5  #00000081
        :pswitch_b0  #00000082
        :pswitch_ab  #00000083
        :pswitch_a6  #00000084
        :pswitch_a1  #00000085
        :pswitch_9c  #00000086
    .end packed-switch

    :pswitch_data_162
    .packed-switch 0x8c
        :pswitch_97  #0000008c
        :pswitch_92  #0000008d
        :pswitch_8d  #0000008e
        :pswitch_88  #0000008f
        :pswitch_83  #00000090
        :pswitch_7e  #00000091
    .end packed-switch

    :pswitch_data_172
    .packed-switch 0xc0
        :pswitch_79  #000000c0
        :pswitch_74  #000000c1
        :pswitch_6f  #000000c2
        :pswitch_6a  #000000c3
        :pswitch_65  #000000c4
        :pswitch_60  #000000c5
    .end packed-switch
.end method

.method protected onStandby(ZI)V
    .registers 3
    .param p1, "initiatedByCec"  # Z
    .param p2, "standbyAction"  # I

    .line 942
    return-void
.end method

.method pathToPortId(I)I
    .registers 3
    .param p1, "newPath"  # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 930
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 931
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v0

    return v0
.end method

.method removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .registers 3
    .param p1, "action"  # Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 802
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 803
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 804
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 805
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->checkIfPendingActionsCleared()V

    .line 806
    return-void
.end method

.method removeAction(Ljava/lang/Class;)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 811
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 812
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 813
    return-void
.end method

.method removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .registers 6
    .param p2, "exception"  # Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ")V"
        }
    .end annotation

    .line 819
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 820
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 821
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/hdmi/HdmiCecFeatureAction;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 822
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 823
    .local v1, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    if-eq v1, p2, :cond_28

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 824
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 825
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 827
    .end local v1  # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :cond_28
    goto :goto_9

    .line 828
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->checkIfPendingActionsCleared()V

    .line 829
    return-void
.end method

.method protected sendKeyEvent(IZ)V
    .registers 8
    .param p1, "keyCode"  # I
    .param p2, "isPressed"  # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 994
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 995
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->isSupportedKeycode(I)Z

    move-result v0

    const-string v1, "HdmiCecLocalDevice"

    if-nez v0, :cond_20

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return-void

    .line 999
    :cond_20
    const-class v0, Lcom/android/server/hdmi/SendKeyAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1000
    .local v0, "action":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/SendKeyAction;>;"
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->findKeyReceiverAddress()I

    move-result v2

    .line 1001
    .local v2, "logicalAddress":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4e

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    if-ne v2, v3, :cond_32

    goto :goto_4e

    .line 1011
    :cond_32
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_43

    .line 1012
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/SendKeyAction;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/hdmi/SendKeyAction;->processKeyEvent(IZ)V

    goto :goto_72

    .line 1013
    :cond_43
    if-eqz p2, :cond_72

    .line 1014
    new-instance v1, Lcom/android/server/hdmi/SendKeyAction;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/hdmi/SendKeyAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_72

    .line 1003
    :cond_4e
    :goto_4e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discard key event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pressed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", receiverAddr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_72
    :goto_72
    return-void
.end method

.method protected sendStandby(I)V
    .registers 2
    .param p1, "deviceId"  # I

    .line 674
    return-void
.end method

.method sendUserControlPressedAndReleased(II)V
    .registers 5
    .param p1, "targetAddress"  # I
    .param p2, "cecKeycode"  # I

    .line 1088
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    .line 1089
    invoke-static {v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 1088
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1090
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    .line 1091
    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 1090
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1092
    return-void
.end method

.method protected sendVolumeKeyEvent(IZ)V
    .registers 8
    .param p1, "keyCode"  # I
    .param p2, "isPressed"  # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1028
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1029
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->isVolumeKeycode(I)Z

    move-result v0

    const-string v1, "HdmiCecLocalDevice"

    if-nez v0, :cond_20

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a volume key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    return-void

    .line 1033
    :cond_20
    const-class v0, Lcom/android/server/hdmi/SendKeyAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1034
    .local v0, "action":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/SendKeyAction;>;"
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->findAudioReceiverAddress()I

    move-result v2

    .line 1035
    .local v2, "logicalAddress":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4e

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    if-ne v2, v3, :cond_32

    goto :goto_4e

    .line 1045
    :cond_32
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_43

    .line 1046
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/SendKeyAction;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/hdmi/SendKeyAction;->processKeyEvent(IZ)V

    goto :goto_72

    .line 1047
    :cond_43
    if-eqz p2, :cond_72

    .line 1048
    new-instance v1, Lcom/android/server/hdmi/SendKeyAction;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/hdmi/SendKeyAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_72

    .line 1037
    :cond_4e
    :goto_4e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discard volume key event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pressed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", receiverAddr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_72
    :goto_72
    return-void
.end method

.method setActivePath(I)V
    .registers 4
    .param p1, "path"  # I

    .line 890
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 891
    :try_start_3
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    .line 892
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    .line 893
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->pathToPortId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->setActivePortId(I)V

    .line 894
    return-void

    .line 892
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method setActivePortId(I)V
    .registers 3
    .param p1, "portId"  # I

    .line 914
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    .line 915
    return-void
.end method

.method setActiveSource(II)V
    .registers 5
    .param p1, "logicalAddress"  # I
    .param p2, "physicalAddress"  # I

    .line 879
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->setActiveSource(II)V

    .line 880
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->setLastInputForMhl(I)V

    .line 881
    return-void
.end method

.method setActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 4
    .param p1, "info"  # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 875
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActiveSource(II)V

    .line 876
    return-void
.end method

.method setActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V
    .registers 4
    .param p1, "newActive"  # Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 871
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    iget v1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActiveSource(II)V

    .line 872
    return-void
.end method

.method setAutoDeviceOff(Z)V
    .registers 2
    .param p1, "enabled"  # Z

    .line 846
    return-void
.end method

.method setDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 4
    .param p1, "info"  # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 725
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 726
    :try_start_3
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 727
    monitor-exit v0

    .line 728
    return-void

    .line 727
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected abstract setPreferredAddress(I)V
.end method

.method startQueuedActions()V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 757
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 759
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 760
    .local v1, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->started()Z

    move-result v2

    if-nez v2, :cond_39

    .line 761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting queued action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HdmiCecLocalDevice"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->start()Z

    .line 764
    .end local v1  # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :cond_39
    goto :goto_e

    .line 765
    :cond_3a
    return-void
.end method
