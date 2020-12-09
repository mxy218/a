.class final Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NativeWrapperImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecController$1;)V
    .registers 2

    .line 729
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public nativeAddLogicalAddress(JI)I
    .registers 4

    .line 744
    invoke-static {p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->access$1100(JI)I

    move-result p1

    return p1
.end method

.method public nativeClearLogicalAddress(J)V
    .registers 3

    .line 749
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->access$1200(J)V

    .line 750
    return-void
.end method

.method public nativeEnableAudioReturnChannel(JIZ)V
    .registers 5

    .line 784
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/hdmi/HdmiCecController;->access$1900(JIZ)V

    .line 785
    return-void
.end method

.method public nativeGetPhysicalAddress(J)I
    .registers 3

    .line 754
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->access$1300(J)I

    move-result p1

    return p1
.end method

.method public nativeGetPortInfos(J)[Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 3

    .line 769
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->access$1600(J)[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object p1

    return-object p1
.end method

.method public nativeGetVendorId(J)I
    .registers 3

    .line 764
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->access$1500(J)I

    move-result p1

    return p1
.end method

.method public nativeGetVersion(J)I
    .registers 3

    .line 759
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->access$1400(J)I

    move-result p1

    return p1
.end method

.method public nativeInit(Lcom/android/server/hdmi/HdmiCecController;Landroid/os/MessageQueue;)J
    .registers 3

    .line 733
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->access$900(Lcom/android/server/hdmi/HdmiCecController;Landroid/os/MessageQueue;)J

    move-result-wide p1

    return-wide p1
.end method

.method public nativeIsConnected(JI)Z
    .registers 4

    .line 789
    invoke-static {p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->access$2000(JI)Z

    move-result p1

    return p1
.end method

.method public nativeSendCecCommand(JII[B)I
    .registers 6

    .line 739
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/hdmi/HdmiCecController;->access$1000(JII[B)I

    move-result p1

    return p1
.end method

.method public nativeSetLanguage(JLjava/lang/String;)V
    .registers 4

    .line 779
    invoke-static {p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->access$1800(JLjava/lang/String;)V

    .line 780
    return-void
.end method

.method public nativeSetOption(JIZ)V
    .registers 5

    .line 774
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/hdmi/HdmiCecController;->access$1700(JIZ)V

    .line 775
    return-void
.end method
