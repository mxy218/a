.class Lcom/android/server/usb/UsbMidiDevice$1;
.super Ljava/lang/Object;
.source "UsbMidiDevice.java"

# interfaces
.implements Landroid/media/midi/MidiDeviceServer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMidiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMidiDevice;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMidiDevice;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 1

    .line 113
    return-void
.end method

.method public onDeviceStatusChanged(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 8

    .line 81
    invoke-virtual {p2}, Landroid/media/midi/MidiDeviceStatus;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    move-result v0

    .line 83
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result p1

    .line 84
    nop

    .line 86
    const/4 v1, 0x0

    move v2, v1

    :goto_f
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1e

    .line 87
    invoke-virtual {p2, v2}, Landroid/media/midi/MidiDeviceStatus;->isInputPortOpen(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 88
    nop

    .line 89
    move v0, v3

    goto :goto_1f

    .line 86
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1e
    move v0, v1

    .line 93
    :goto_1f
    if-nez v0, :cond_30

    .line 94
    nop

    :goto_22
    if-ge v1, p1, :cond_30

    .line 95
    invoke-virtual {p2, v1}, Landroid/media/midi/MidiDeviceStatus;->getOutputPortOpenCount(I)I

    move-result v2

    if-lez v2, :cond_2d

    .line 96
    nop

    .line 97
    move v0, v3

    goto :goto_30

    .line 94
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 102
    :cond_30
    :goto_30
    iget-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {p1}, Lcom/android/server/usb/UsbMidiDevice;->access$000(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 103
    if-eqz v0, :cond_49

    :try_start_39
    iget-object p2, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {p2}, Lcom/android/server/usb/UsbMidiDevice;->access$100(Lcom/android/server/usb/UsbMidiDevice;)Z

    move-result p2

    if-nez p2, :cond_49

    .line 104
    iget-object p2, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {p2}, Lcom/android/server/usb/UsbMidiDevice;->access$200(Lcom/android/server/usb/UsbMidiDevice;)Z

    goto :goto_58

    .line 108
    :catchall_47
    move-exception p2

    goto :goto_5a

    .line 105
    :cond_49
    if-nez v0, :cond_58

    iget-object p2, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {p2}, Lcom/android/server/usb/UsbMidiDevice;->access$100(Lcom/android/server/usb/UsbMidiDevice;)Z

    move-result p2

    if-eqz p2, :cond_58

    .line 106
    iget-object p2, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {p2}, Lcom/android/server/usb/UsbMidiDevice;->access$300(Lcom/android/server/usb/UsbMidiDevice;)V

    .line 108
    :cond_58
    :goto_58
    monitor-exit p1

    .line 109
    return-void

    .line 108
    :goto_5a
    monitor-exit p1
    :try_end_5b
    .catchall {:try_start_39 .. :try_end_5b} :catchall_47

    throw p2
.end method
