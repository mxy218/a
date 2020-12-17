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

    .line 6681
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/audio/AudioService;
    .param p2, "x1"  # Lcom/android/server/audio/AudioService$1;

    .line 6681
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 6684
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6689
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v1, :cond_49

    .line 6690
    const-string v1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 6693
    .local v1, "dockState":I
    if-eq v1, v4, :cond_29

    const/4 v2, 0x2

    if-eq v1, v2, :cond_27

    if-eq v1, v3, :cond_24

    const/4 v2, 0x4

    if-eq v1, v2, :cond_21

    .line 6708
    const/4 v2, 0x0

    .local v2, "config":I
    goto :goto_2b

    .line 6704
    .end local v2  # "config":I
    :cond_21
    const/16 v2, 0x9

    .line 6705
    .restart local v2  # "config":I
    goto :goto_2b

    .line 6701
    .end local v2  # "config":I
    :cond_24
    const/16 v2, 0x8

    .line 6702
    .restart local v2  # "config":I
    goto :goto_2b

    .line 6698
    .end local v2  # "config":I
    :cond_27
    const/4 v2, 0x6

    .line 6699
    .restart local v2  # "config":I
    goto :goto_2b

    .line 6695
    .end local v2  # "config":I
    :cond_29
    const/4 v2, 0x7

    .line 6696
    .restart local v2  # "config":I
    nop

    .line 6712
    :goto_2b
    if-eq v1, v3, :cond_42

    if-nez v1, :cond_37

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6714
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$8400(Lcom/android/server/audio/AudioService;)I

    move-result v4

    if-eq v4, v3, :cond_42

    .line 6715
    :cond_37
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v4

    const-string v5, "ACTION_DOCK_EVENT intent"

    invoke-virtual {v4, v3, v2, v5}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 6718
    :cond_42
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->access$8402(Lcom/android/server/audio/AudioService;I)I

    .line 6719
    .end local v1  # "dockState":I
    .end local v2  # "config":I
    goto/16 :goto_204

    :cond_49
    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1fb

    .line 6720
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    goto/16 :goto_1fb

    .line 6722
    :cond_5b
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 6723
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$8500(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 6726
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x32

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc8

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6735
    :cond_7c
    const-string/jumbo v1, "screen_state=on"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_204

    .line 6736
    :cond_84
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 6737
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$8500(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 6741
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x32

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc8

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6750
    :cond_a5
    const-string/jumbo v1, "screen_state=off"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_204

    .line 6751
    :cond_ad
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 6752
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, p1}, Lcom/android/server/audio/AudioService;->access$8600(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    goto/16 :goto_204

    .line 6753
    :cond_bc
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    .line 6754
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$8700(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 6759
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastBecomingNoisy(I)V

    .line 6762
    :cond_d5
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->access$8702(Lcom/android/server/audio/AudioService;Z)Z

    .line 6764
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$8800(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    .line 6767
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->access$8900(Lcom/android/server/audio/AudioService;Z)V

    .line 6769
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v4

    const/16 v5, 0xa

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6774
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v1

    aget-object v9, v1, v3

    const/4 v10, 0x0

    .line 6769
    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_204

    .line 6775
    :cond_101
    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v3, "no_record_audio"

    const-string v5, "android.intent.extra.user_handle"

    const/4 v6, -0x1

    if-eqz v1, :cond_12b

    .line 6777
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 6778
    .local v1, "userId":I
    if-ltz v1, :cond_122

    .line 6780
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 6781
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v2}, Lcom/android/server/audio/AudioService;->access$9000(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V

    .line 6783
    .end local v2  # "userInfo":Landroid/content/pm/UserInfo;
    :cond_122
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 6785
    .end local v1  # "userId":I
    goto/16 :goto_204

    :cond_12b
    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_140

    .line 6787
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 6788
    .restart local v1  # "userId":I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 6790
    .end local v1  # "userId":I
    goto/16 :goto_204

    :cond_140
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15d

    .line 6791
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 6792
    .local v1, "state":I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_204

    .line 6793
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->disconnectAllBluetoothProfiles()V

    goto/16 :goto_204

    .line 6795
    .end local v1  # "state":I
    :cond_15d
    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f5

    .line 6796
    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16f

    goto/16 :goto_1f5

    .line 6798
    :cond_16f
    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ab

    .line 6799
    const-string v1, "android.intent.extra.changed_uid_list"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 6800
    .local v1, "suspendedUids":[I
    nop

    .line 6801
    const-string v2, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 6802
    .local v2, "suspendedPackages":[Ljava/lang/String;
    if-eqz v2, :cond_1aa

    if-eqz v1, :cond_1aa

    array-length v3, v2

    array-length v4, v1

    if-eq v3, v4, :cond_18d

    goto :goto_1aa

    .line 6806
    :cond_18d
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18e
    array-length v4, v1

    if-ge v3, v4, :cond_1a9

    .line 6807
    aget-object v4, v2, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a6

    .line 6808
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$8800(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v4

    aget-object v5, v2, v3

    aget v6, v1, v3

    invoke-virtual {v4, v5, v6}, Lcom/android/server/audio/MediaFocusControl;->noFocusForSuspendedApp(Ljava/lang/String;I)V

    .line 6806
    :cond_1a6
    add-int/lit8 v3, v3, 0x1

    goto :goto_18e

    .line 6812
    .end local v1  # "suspendedUids":[I
    .end local v2  # "suspendedPackages":[Ljava/lang/String;
    .end local v3  # "i":I
    :cond_1a9
    goto :goto_204

    .line 6804
    .restart local v1  # "suspendedUids":[I
    .restart local v2  # "suspendedPackages":[Ljava/lang/String;
    :cond_1aa
    :goto_1aa
    return-void

    .line 6814
    .end local v1  # "suspendedUids":[I
    .end local v2  # "suspendedPackages":[Ljava/lang/String;
    :cond_1ab
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_204

    .line 6815
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 6816
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_PACKAGE_REMOVED packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6817
    const-string v2, "com.android.musicfx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_204

    .line 6818
    const-string/jumbo v2, "removeResidualEffects"

    invoke-static {v2}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6819
    .local v2, "isRemoved":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_PACKAGE_REMOVED isRemoved = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_204

    .line 6797
    .end local v1  # "packageName":Ljava/lang/String;
    .end local v2  # "isRemoved":Ljava/lang/String;
    :cond_1f5
    :goto_1f5
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, p1, p2}, Lcom/android/server/audio/AudioService;->access$9100(Lcom/android/server/audio/AudioService;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_204

    .line 6721
    :cond_1fb
    :goto_1fb
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->receiveBtEvent(Landroid/content/Intent;)V

    .line 6823
    :cond_204
    :goto_204
    return-void
.end method
