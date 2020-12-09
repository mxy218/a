.class Lcom/android/server/usb/UsbMidiDevice$2;
.super Ljava/lang/Thread;
.source "UsbMidiDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbMidiDevice;->openLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMidiDevice;

.field final synthetic val$outputReceivers:[Landroid/media/midi/MidiReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;[Landroid/media/midi/MidiReceiver;)V
    .registers 4

    .line 210
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    iput-object p3, p0, Lcom/android/server/usb/UsbMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 213
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 217
    :goto_4
    :try_start_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 218
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$000(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_7f
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_f} :catch_75

    .line 219
    :try_start_f
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$100(Lcom/android/server/usb/UsbMidiDevice;)Z

    move-result v1

    if-nez v1, :cond_1a

    monitor-exit v9

    goto/16 :goto_88

    .line 222
    :cond_1a
    const/4 v10, 0x0

    move v11, v10

    :goto_1c
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$500(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v1

    array-length v1, v1

    if-ge v11, v1, :cond_66

    .line 223
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$500(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v1

    aget-object v1, v1, v11

    .line 224
    iget-short v2, v1, Landroid/system/StructPollfd;->revents:S

    sget v3, Landroid/system/OsConstants;->POLLERR:I

    sget v4, Landroid/system/OsConstants;->POLLHUP:I

    or-int/2addr v3, v4

    and-int/2addr v2, v3

    if-eqz v2, :cond_38

    .line 226
    goto :goto_66

    .line 227
    :cond_38
    iget-short v2, v1, Landroid/system/StructPollfd;->revents:S

    sget v3, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_63

    .line 229
    iput-short v10, v1, Landroid/system/StructPollfd;->revents:S

    .line 231
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$600(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v11, v1, :cond_4d

    .line 233
    goto :goto_66

    .line 236
    :cond_4d
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$600(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;

    move-result-object v1

    aget-object v1, v1, v11

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 237
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    aget-object v1, v1, v11

    const/4 v3, 0x0

    move-object v2, v0

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 222
    :cond_63
    add-int/lit8 v11, v11, 0x1

    goto :goto_1c

    .line 240
    :cond_66
    :goto_66
    monitor-exit v9
    :try_end_67
    .catchall {:try_start_f .. :try_end_67} :catchall_72

    .line 243
    :try_start_67
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$500(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_71} :catch_7f
    .catch Landroid/system/ErrnoException; {:try_start_67 .. :try_end_71} :catch_75

    .line 244
    goto :goto_4

    .line 240
    :catchall_72
    move-exception v0

    :try_start_73
    monitor-exit v9
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    :try_start_74
    throw v0
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_75} :catch_7f
    .catch Landroid/system/ErrnoException; {:try_start_74 .. :try_end_75} :catch_75

    .line 247
    :catch_75
    move-exception v0

    .line 248
    const-string v0, "UsbMidiDevice"

    const-string/jumbo v1, "reader thread exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 245
    :catch_7f
    move-exception v0

    .line 246
    const-string v0, "UsbMidiDevice"

    const-string/jumbo v1, "reader thread exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_88
    nop

    .line 250
    :goto_89
    const-string v0, "UsbMidiDevice"

    const-string v1, "input thread exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method
