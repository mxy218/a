.class Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;
.super Landroid/os/Handler;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerHandler"
.end annotation


# static fields
.field private static final HARDWARE_DEVICE_ADDED:I = 0x2

.field private static final HARDWARE_DEVICE_REMOVED:I = 0x3

.field private static final HDMI_DEVICE_ADDED:I = 0x4

.field private static final HDMI_DEVICE_REMOVED:I = 0x5

.field private static final HDMI_DEVICE_UPDATED:I = 0x6

.field private static final STATE_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .registers 2

    .line 1124
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$1;)V
    .registers 3

    .line 1124
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1134
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_9e

    .line 1176
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9c

    .line 1162
    :pswitch_1f  #0x6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1164
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->access$1000(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1165
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$2200(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1166
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_51

    .line 1167
    if-eqz v1, :cond_47

    .line 1168
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->access$2100(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHdmiDeviceUpdated(Ljava/lang/String;Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto :goto_9c

    .line 1170
    :cond_47
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->access$900()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Could not resolve input ID matching the device info; ignoring."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    goto :goto_9c

    .line 1166
    :catchall_51
    move-exception p1

    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p1

    .line 1157
    :pswitch_54  #0x5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1158
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->access$2100(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 1159
    goto :goto_9c

    .line 1152
    :pswitch_62  #0x4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1153
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->access$2100(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 1154
    goto :goto_9c

    .line 1147
    :pswitch_70  #0x3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/tv/TvInputHardwareInfo;

    .line 1148
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->access$2100(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHardwareDeviceRemoved(Landroid/media/tv/TvInputHardwareInfo;)V

    .line 1149
    goto :goto_9c

    .line 1142
    :pswitch_7e  #0x2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/tv/TvInputHardwareInfo;

    .line 1143
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->access$2100(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHardwareDeviceAdded(Landroid/media/tv/TvInputHardwareInfo;)V

    .line 1144
    goto :goto_9c

    .line 1136
    :pswitch_8c  #0x1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1137
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1138
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$2100(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onStateChanged(Ljava/lang/String;I)V

    .line 1139
    nop

    .line 1180
    :goto_9c
    return-void

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_8c  #00000001
        :pswitch_7e  #00000002
        :pswitch_70  #00000003
        :pswitch_62  #00000004
        :pswitch_54  #00000005
        :pswitch_1f  #00000006
    .end packed-switch
.end method
