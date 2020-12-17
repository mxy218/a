.class Lcom/android/server/audio/BtHelper$ScoClient;
.super Ljava/lang/Object;
.source "BtHelper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/BtHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mCreatorPid:I

.field private mStartcount:I

.field final synthetic this$0:Lcom/android/server/audio/BtHelper;


# direct methods
.method constructor <init>(Lcom/android/server/audio/BtHelper;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "cb"  # Landroid/os/IBinder;

    .line 837
    iput-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    iput-object p2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    .line 839
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCreatorPid:I

    .line 840
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    .line 841
    return-void
.end method

.method private requestScoState(II)Z
    .registers 14
    .param p1, "state"  # I
    .param p2, "scoAudioMode"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "BtHelper.this"
        }
    .end annotation

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In requestScoState(), state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scoAudioMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$200(Lcom/android/server/audio/BtHelper;)V

    .line 961
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper$ScoClient;->totalCount()I

    move-result v0

    .line 962
    .local v0, "clientCount":I
    const-string v2, ", scoAudioMode="

    const/4 v3, 0x1

    if-eqz v0, :cond_50

    .line 963
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestScoState: state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", clientCount="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    return v3

    .line 967
    :cond_50
    const/16 v4, 0xc

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-ne p1, v4, :cond_1dd

    .line 970
    iget-object v4, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    const/4 v9, 0x2

    invoke-static {v4, v9}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 973
    iget-object v4, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v4}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->getModeOwnerPid()I

    move-result v4

    .line 974
    .local v4, "modeOwnerPid":I
    if-eqz v4, :cond_93

    iget v10, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCreatorPid:I

    if-eq v4, v10, :cond_93

    .line 975
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestScoState: audio mode is not NORMAL and modeOwnerPid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " != creatorPid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCreatorPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 978
    return v8

    .line 980
    :cond_93
    iget-object v10, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v10}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;)I

    move-result v10

    if-eqz v10, :cond_d8

    if-eq v10, v6, :cond_cd

    if-eq v10, v5, :cond_c6

    .line 1034
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestScoState: failed to connect in state "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1035
    invoke-static {v5}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1034
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 1037
    return v8

    .line 1027
    :cond_c6
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v3}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    .line 1028
    goto/16 :goto_295

    .line 1030
    :cond_cd
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v7}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    .line 1031
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v3}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 1032
    return v8

    .line 982
    :cond_d8
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2, p2}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 983
    const/4 v2, -0x1

    if-ne p2, v2, :cond_12e

    .line 984
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2, v8}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 985
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_12e

    .line 986
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 987
    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceBroker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bluetooth_sco_channel_"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 989
    invoke-static {v10}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 986
    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 991
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v2

    if-gt v2, v9, :cond_129

    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v2

    if-gez v2, :cond_12e

    .line 992
    :cond_129
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2, v8}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 996
    :cond_12e
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    if-nez v2, :cond_166

    .line 997
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$800(Lcom/android/server/audio/BtHelper;)Z

    move-result v2

    if-eqz v2, :cond_145

    .line 998
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v3}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    goto/16 :goto_295

    .line 1000
    :cond_145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestScoState: getBluetoothHeadset failed during connection, mScoAudioMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1001
    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1000
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 1004
    return v8

    .line 1008
    :cond_166
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_18f

    .line 1009
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestScoState: no active device while connecting, mScoAudioMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1010
    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1009
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 1013
    return v8

    .line 1015
    :cond_18f
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1016
    invoke-static {v5}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v6}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v6

    .line 1015
    invoke-static {v2, v5, v6}, Lcom/android/server/audio/BtHelper;->access$900(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2

    if-eqz v2, :cond_1ae

    .line 1017
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v7}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    goto/16 :goto_295

    .line 1019
    :cond_1ae
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestScoState: connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " failed, mScoAudioMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1020
    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1019
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 1023
    return v8

    .line 1040
    .end local v4  # "modeOwnerPid":I
    :cond_1dd
    const/16 v4, 0xa

    if-ne p1, v4, :cond_295

    .line 1041
    iget-object v4, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v4}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;)I

    move-result v4

    if-eq v4, v3, :cond_28a

    if-eq v4, v7, :cond_212

    .line 1076
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestScoState: failed to disconnect in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1077
    invoke-static {v4}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1076
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 1079
    return v8

    .line 1043
    :cond_212
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    if-nez v2, :cond_24e

    .line 1044
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$800(Lcom/android/server/audio/BtHelper;)Z

    move-result v2

    if-eqz v2, :cond_228

    .line 1045
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v6}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    goto :goto_296

    .line 1047
    :cond_228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestScoState: getBluetoothHeadset failed during disconnection, mScoAudioMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1048
    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1047
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    .line 1050
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 1052
    return v8

    .line 1056
    :cond_24e
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_261

    .line 1057
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    .line 1058
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 1060
    goto :goto_296

    .line 1062
    :cond_261
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1063
    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v4}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v4

    .line 1062
    invoke-static {v1, v2, v4}, Lcom/android/server/audio/BtHelper;->access$1000(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    if-eqz v1, :cond_27f

    .line 1064
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v5}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    goto :goto_296

    .line 1066
    :cond_27f
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    .line 1067
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 1070
    goto :goto_296

    .line 1072
    :cond_28a
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    .line 1073
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 1074
    goto :goto_296

    .line 1040
    :cond_295
    :goto_295
    nop

    .line 1082
    :goto_296
    return v3
.end method

.method private totalCount()I
    .registers 5

    .line 942
    const/4 v0, 0x0

    .line 943
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->access$100(Lcom/android/server/audio/BtHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/BtHelper$ScoClient;

    .line 944
    .local v2, "mScoClient":Lcom/android/server/audio/BtHelper$ScoClient;
    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper$ScoClient;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 945
    .end local v2  # "mScoClient":Lcom/android/server/audio/BtHelper$ScoClient;
    goto :goto_b

    .line 947
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In totalCount(), count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.BtHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    return v0
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 847
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioDeviceBroker;->postScoClientDied(Ljava/lang/Object;)V

    .line 848
    return-void
.end method

.method clearCount(Z)V
    .registers 7
    .param p1, "stopSco"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "BtHelper.this"
        }
    .end annotation

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In clearCount(), stopSco: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mStartcount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    const/4 v2, 0x0

    if-eqz v0, :cond_47

    .line 917
    :try_start_25
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2a
    .catch Ljava/util/NoSuchElementException; {:try_start_25 .. :try_end_2a} :catch_2b

    .line 921
    goto :goto_47

    .line 918
    :catch_2b
    move-exception v0

    .line 919
    .local v0, "e":Ljava/util/NoSuchElementException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCount() mStartcount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " != 0 but not registered to binder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    .end local v0  # "e":Ljava/util/NoSuchElementException;
    :cond_47
    :goto_47
    iput v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    .line 924
    if-eqz p1, :cond_50

    .line 925
    const/16 v0, 0xa

    invoke-direct {p0, v0, v2}, Lcom/android/server/audio/BtHelper$ScoClient;->requestScoState(II)Z

    .line 927
    :cond_50
    return-void
.end method

.method decCount()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "BtHelper.this"
        }
    .end annotation

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In decCount(), mStartcount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    if-nez v0, :cond_22

    .line 891
    const-string v0, "ScoClient.decCount() already 0"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 893
    :cond_22
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    .line 894
    iget v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    const/4 v2, 0x0

    if-nez v0, :cond_37

    .line 896
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_30
    .catch Ljava/util/NoSuchElementException; {:try_start_2b .. :try_end_30} :catch_31

    .line 899
    goto :goto_37

    .line 897
    :catch_31
    move-exception v0

    .line 898
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v3, "decCount() going to 0 but not registered to binder"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    .end local v0  # "e":Ljava/util/NoSuchElementException;
    :cond_37
    :goto_37
    const/16 v0, 0xa

    invoke-direct {p0, v0, v2}, Lcom/android/server/audio/BtHelper$ScoClient;->requestScoState(II)Z

    move-result v0

    if-nez v0, :cond_44

    .line 902
    const-string v0, "Request sco disconnected with scoAudioMode(0) failed"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_44
    :goto_44
    return-void
.end method

.method getBinder()Landroid/os/IBinder;
    .registers 2

    .line 934
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method getCount()I
    .registers 2

    .line 930
    iget v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    return v0
.end method

.method getPid()I
    .registers 2

    .line 938
    iget v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCreatorPid:I

    return v0
.end method

.method incCount(I)V
    .registers 6
    .param p1, "scoAudioMode"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "BtHelper.this"
        }
    .end annotation

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In incCount(), mStartcount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/BtHelper$ScoClient;->requestScoState(II)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request sco connected with scoAudioMode("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    return-void

    .line 860
    :cond_3a
    iget v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    if-nez v0, :cond_61

    .line 862
    :try_start_3e
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_44} :catch_45

    .line 866
    goto :goto_61

    .line 863
    :catch_45
    move-exception v0

    .line 865
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScoClient incCount() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_61
    :goto_61
    iget v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_78

    .line 874
    const-string/jumbo v0, "mStartcount is 1, calling setBluetoothScoOn(true)in system context"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    const-string v1, "BtHelper.incCount"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    goto :goto_83

    .line 877
    :cond_78
    if-nez v0, :cond_83

    .line 878
    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    .line 879
    const-string/jumbo v0, "mStartcount is 0, incrementing by 1"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_83
    :goto_83
    return-void
.end method
