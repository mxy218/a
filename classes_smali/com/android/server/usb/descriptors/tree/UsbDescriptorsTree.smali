.class public final Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;
.super Ljava/lang/Object;
.source "UsbDescriptorsTree.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDescriptorsTree"


# instance fields
.field private mConfigNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

.field private mDeviceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

.field private mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addACInterface(Lcom/android/server/usb/descriptors/UsbACInterface;)V
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    new-instance v1, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;

    invoke-direct {v1, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;-><init>(Lcom/android/server/usb/descriptors/UsbACInterface;)V

    invoke-virtual {v0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->addACInterfaceNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;)V

    .line 94
    return-void
.end method

.method private addConfigDescriptor(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V
    .registers 3

    .line 70
    new-instance v0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    invoke-direct {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;-><init>(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mConfigNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    .line 71
    iget-object p1, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mDeviceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mConfigNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;->addConfigDescriptorNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;)V

    .line 72
    return-void
.end method

.method private addDeviceDescriptor(Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;)V
    .registers 3

    .line 63
    new-instance v0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

    invoke-direct {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;-><init>(Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mDeviceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

    .line 64
    return-void
.end method

.method private addEndpointDescriptor(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V
    .registers 4

    .line 86
    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    new-instance v1, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;

    invoke-direct {v1, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;-><init>(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V

    invoke-virtual {v0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->addEndpointNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;)V

    .line 87
    return-void
.end method

.method private addInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V
    .registers 3

    .line 78
    new-instance v0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    invoke-direct {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;-><init>(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    .line 79
    iget-object p1, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mConfigNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;->addInterfaceNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;)V

    .line 80
    return-void
.end method


# virtual methods
.method public parse(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V
    .registers 6

    .line 102
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptors()Ljava/util/ArrayList;

    move-result-object p1

    .line 104
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 105
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 106
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3e

    const/4 v3, 0x2

    if-eq v2, v3, :cond_38

    const/4 v3, 0x4

    if-eq v2, v3, :cond_32

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2c

    const/16 v3, 0x24

    if-eq v2, v3, :cond_26

    goto :goto_44

    .line 130
    :cond_26
    check-cast v1, Lcom/android/server/usb/descriptors/UsbACInterface;

    invoke-direct {p0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addACInterface(Lcom/android/server/usb/descriptors/UsbACInterface;)V

    .line 131
    goto :goto_44

    .line 123
    :cond_2c
    check-cast v1, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    invoke-direct {p0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addEndpointDescriptor(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V

    .line 124
    goto :goto_44

    .line 119
    :cond_32
    check-cast v1, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-direct {p0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V

    .line 120
    goto :goto_44

    .line 115
    :cond_38
    check-cast v1, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    invoke-direct {p0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addConfigDescriptor(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V

    .line 116
    goto :goto_44

    .line 111
    :cond_3e
    check-cast v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    invoke-direct {p0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addDeviceDescriptor(Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;)V

    .line 112
    nop

    .line 104
    :goto_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 137
    :cond_47
    return-void
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mDeviceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 144
    return-void
.end method
