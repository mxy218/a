.class final Lcom/android/server/hdmi/DelayedMessageBuffer;
.super Ljava/lang/Object;
.source "DelayedMessageBuffer.java"


# instance fields
.field private final mBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiCecMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 3
    .param p1, "device"  # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    .line 33
    iput-object p1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 34
    return-void
.end method

.method private removeActiveSource()V
    .registers 5

    .line 69
    iget-object v0, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 71
    .local v1, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    const/16 v3, 0x82

    if-ne v2, v3, :cond_1d

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 74
    .end local v1  # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_1d
    goto :goto_6

    .line 75
    .end local v0  # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    :cond_1e
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 5
    .param p1, "message"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 43
    const/4 v0, 0x1

    .line 49
    .local v0, "buffered":Z
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    const/16 v2, 0x72

    if-eq v1, v2, :cond_1c

    const/16 v2, 0x82

    if-eq v1, v2, :cond_13

    const/16 v2, 0xc0

    if-eq v1, v2, :cond_1c

    .line 59
    const/4 v0, 0x0

    goto :goto_22

    .line 51
    :cond_13
    invoke-direct {p0}, Lcom/android/server/hdmi/DelayedMessageBuffer;->removeActiveSource()V

    .line 52
    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    goto :goto_22

    .line 56
    :cond_1c
    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    nop

    .line 62
    :goto_22
    if-eqz v0, :cond_3b

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffering message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :cond_3b
    return-void
.end method

.method isBuffered(I)Z
    .registers 5
    .param p1, "opcode"  # I

    .line 78
    iget-object v0, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 79
    .local v1, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    if-ne v2, p1, :cond_1a

    .line 80
    const/4 v0, 0x1

    return v0

    .line 82
    .end local v1  # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_1a
    goto :goto_6

    .line 83
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method processActiveSource(I)V
    .registers 7
    .param p1, "address"  # I

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    .local v0, "copiedBuffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 140
    .local v2, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v3

    const/16 v4, 0x82

    if-ne v3, v4, :cond_47

    .line 141
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-ne v3, p1, :cond_47

    .line 142
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4c

    .line 145
    :cond_47
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v2  # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :goto_4c
    goto :goto_10

    .line 148
    :cond_4d
    return-void
.end method

.method processAllMessages()V
    .registers 6

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 89
    .local v0, "copiedBuffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 91
    .local v2, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    .end local v2  # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    goto :goto_10

    .line 94
    :cond_39
    return-void
.end method

.method processMessagesForDevice(I)V
    .registers 8
    .param p1, "address"  # I

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    .local v0, "copiedBuffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking message for address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 111
    .local v3, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v4

    if-eq v4, p1, :cond_3f

    .line 112
    iget-object v4, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    goto :goto_27

    .line 115
    :cond_3f
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v4

    const/16 v5, 0x82

    if-ne v4, v5, :cond_59

    iget-object v4, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 116
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isInputReady(I)Z

    move-result v4

    if-nez v4, :cond_59

    .line 117
    iget-object v4, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    goto :goto_27

    .line 120
    :cond_59
    iget-object v4, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v4, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Processing message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    .end local v3  # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    goto :goto_27

    .line 123
    :cond_75
    return-void
.end method
