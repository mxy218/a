.class final Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
.super Ljava/lang/Object;
.source "HdmiMhlLocalDeviceStub.java"


# static fields
.field private static final INFO:Landroid/hardware/hdmi/HdmiDeviceInfo;


# instance fields
.field private final mPortId:I

.field private final mService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 11
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    const/4 v1, -0x1

    const v2, 0xffff

    invoke-direct {v0, v2, v1, v1, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIII)V

    sput-object v0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->INFO:Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 18
    iput p2, p0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->mPortId:I

    .line 19
    return-void
.end method


# virtual methods
.method getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2

    .line 25
    sget-object v0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->INFO:Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object v0
.end method

.method getPortId()I
    .registers 2

    .line 38
    iget v0, p0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->mPortId:I

    return v0
.end method

.method onBusOvercurrentDetected(Z)V
    .registers 2

    .line 32
    return-void
.end method

.method onDeviceRemoved()V
    .registers 1

    .line 22
    return-void
.end method

.method sendKeyEvent(IZ)V
    .registers 3

    .line 45
    return-void
.end method

.method sendStandby()V
    .registers 1

    .line 48
    return-void
.end method

.method setBusMode(I)V
    .registers 2

    .line 29
    return-void
.end method

.method setDeviceStatusChange(II)V
    .registers 3

    .line 35
    return-void
.end method

.method turnOn(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2

    .line 42
    return-void
.end method
