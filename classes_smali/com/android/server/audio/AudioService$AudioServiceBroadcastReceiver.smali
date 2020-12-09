.class Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 5728
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .registers 3

    .line 5728
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    .line 5731
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5736
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v1, :cond_48

    .line 5737
    const-string p1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 5740
    if-eq p1, v4, :cond_28

    const/4 p2, 0x2

    if-eq p1, p2, :cond_26

    if-eq p1, v3, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    .line 5755
    goto :goto_2a

    .line 5751
    :cond_20
    const/16 v2, 0x9

    .line 5752
    goto :goto_2a

    .line 5748
    :cond_23
    const/16 v2, 0x8

    .line 5749
    goto :goto_2a

    .line 5745
    :cond_26
    const/4 v2, 0x6

    .line 5746
    goto :goto_2a

    .line 5742
    :cond_28
    const/4 v2, 0x7

    .line 5743
    nop

    .line 5759
    :goto_2a
    if-eq p1, v3, :cond_41

    if-nez p1, :cond_36

    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 5761
    invoke-static {p2}, Lcom/android/server/audio/AudioService;->access$7500(Lcom/android/server/audio/AudioService;)I

    move-result p2

    if-eq p2, v3, :cond_41

    .line 5762
    :cond_36
    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p2

    const-string v0, "ACTION_DOCK_EVENT intent"

    invoke-virtual {p2, v3, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 5765
    :cond_41
    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2, p1}, Lcom/android/server/audio/AudioService;->access$7502(Lcom/android/server/audio/AudioService;I)I

    .line 5766
    goto/16 :goto_19e

    :cond_48
    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_195

    .line 5767
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    goto/16 :goto_195

    .line 5769
    :cond_5a
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 5770
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$7600(Lcom/android/server/audio/AudioService;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 5771
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 5773
    :cond_6d
    const-string/jumbo p1, "screen_state=on"

    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_19e

    .line 5774
    :cond_75
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 5775
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$7600(Lcom/android/server/audio/AudioService;)Z

    move-result p1

    if-eqz p1, :cond_88

    .line 5777
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    .line 5779
    :cond_88
    const-string/jumbo p1, "screen_state=off"

    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_19e

    .line 5780
    :cond_90
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 5781
    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2, p1}, Lcom/android/server/audio/AudioService;->access$7700(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    goto/16 :goto_19e

    .line 5782
    :cond_9f
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 5783
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$7800(Lcom/android/server/audio/AudioService;)Z

    move-result p1

    if-eqz p1, :cond_b8

    .line 5786
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastBecomingNoisy()V

    .line 5788
    :cond_b8
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1, v4}, Lcom/android/server/audio/AudioService;->access$7802(Lcom/android/server/audio/AudioService;Z)Z

    .line 5790
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$7900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    .line 5793
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1, v4}, Lcom/android/server/audio/AudioService;->access$8000(Lcom/android/server/audio/AudioService;Z)V

    .line 5795
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v4

    const/16 v5, 0xa

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 5800
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object p1

    aget-object v9, p1, v3

    const/4 v10, 0x0

    .line 5795
    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_19e

    .line 5801
    :cond_e4
    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v3, "no_record_audio"

    const-string v5, "android.intent.extra.user_handle"

    const/4 v6, -0x1

    if-eqz v1, :cond_10e

    .line 5803
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 5804
    if-ltz p1, :cond_105

    .line 5806
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    .line 5807
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p2}, Lcom/android/server/audio/AudioService;->access$8100(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V

    .line 5809
    :cond_105
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p2

    invoke-virtual {p2, v3, v4, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 5811
    goto/16 :goto_19e

    :cond_10e
    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_123

    .line 5813
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 5814
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p2

    invoke-virtual {p2, v3, v2, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 5816
    goto/16 :goto_19e

    :cond_123
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_143

    .line 5817
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 5818
    const/16 p2, 0xa

    if-eq p1, p2, :cond_139

    const/16 p2, 0xd

    if-ne p1, p2, :cond_19e

    .line 5820
    :cond_139
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->disconnectAllBluetoothProfiles()V

    goto :goto_19e

    .line 5822
    :cond_143
    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18f

    .line 5823
    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    goto :goto_18f

    .line 5825
    :cond_154
    const-string p1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19e

    .line 5826
    const-string p1, "android.intent.extra.changed_uid_list"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p1

    .line 5827
    nop

    .line 5828
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 5829
    if-eqz p2, :cond_18e

    if-eqz p1, :cond_18e

    array-length v0, p2

    array-length v1, p1

    if-eq v0, v1, :cond_172

    goto :goto_18e

    .line 5833
    :cond_172
    nop

    :goto_173
    array-length v0, p1

    if-ge v2, v0, :cond_19e

    .line 5834
    aget-object v0, p2, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18b

    .line 5835
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$7900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    aget-object v1, p2, v2

    aget v3, p1, v2

    invoke-virtual {v0, v1, v3}, Lcom/android/server/audio/MediaFocusControl;->noFocusForSuspendedApp(Ljava/lang/String;I)V

    .line 5833
    :cond_18b
    add-int/lit8 v2, v2, 0x1

    goto :goto_173

    .line 5831
    :cond_18e
    :goto_18e
    return-void

    .line 5824
    :cond_18f
    :goto_18f
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1, p2}, Lcom/android/server/audio/AudioService;->access$8200(Lcom/android/server/audio/AudioService;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_19e

    .line 5768
    :cond_195
    :goto_195
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->receiveBtEvent(Landroid/content/Intent;)V

    .line 5840
    :cond_19e
    :goto_19e
    return-void
.end method
