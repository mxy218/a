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

    .line 694
    iput-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput-object p2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    .line 696
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCreatorPid:I

    .line 697
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    .line 698
    return-void
.end method

.method private requestScoState(II)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "BtHelper.this"
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$200(Lcom/android/server/audio/BtHelper;)V

    .line 792
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper$ScoClient;->totalCount()I

    move-result v0

    .line 793
    const-string v1, ", scoAudioMode="

    const/4 v2, 0x1

    const-string v3, "AS.BtHelper"

    if-eqz v0, :cond_34

    .line 794
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestScoState: state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", clientCount="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return v2

    .line 798
    :cond_34
    const/16 v0, 0xc

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne p1, v0, :cond_1c2

    .line 801
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 804
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->getModeOwnerPid()I

    move-result p1

    .line 805
    if-eqz p1, :cond_77

    iget v8, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCreatorPid:I

    if-eq p1, v8, :cond_77

    .line 806
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestScoState: audio mode is not NORMAL and modeOwnerPid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " != creatorPid "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCreatorPid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v7}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 809
    return v7

    .line 811
    :cond_77
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;)I

    move-result p1

    if-eqz p1, :cond_bd

    if-eq p1, v5, :cond_b1

    if-eq p1, v4, :cond_aa

    .line 865
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestScoState: failed to connect in state "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 866
    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 865
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v7}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 868
    return v7

    .line 858
    :cond_aa
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v2}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    .line 859
    goto/16 :goto_27a

    .line 861
    :cond_b1
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v6}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    .line 862
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v2}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 863
    goto/16 :goto_27a

    .line 813
    :cond_bd
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, p2}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 814
    const/4 p1, -0x1

    if-ne p2, p1, :cond_113

    .line 815
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v7}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 816
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_113

    .line 817
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 818
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bluetooth_sco_channel_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 820
    invoke-static {v4}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 817
    invoke-static {p2, v1, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 822
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result p1

    if-gt p1, v0, :cond_10e

    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result p1

    if-gez p1, :cond_113

    .line 823
    :cond_10e
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v7}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 827
    :cond_113
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p1

    if-nez p1, :cond_14b

    .line 828
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$800(Lcom/android/server/audio/BtHelper;)Z

    move-result p1

    if-eqz p1, :cond_12a

    .line 829
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v2}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    goto/16 :goto_27a

    .line 831
    :cond_12a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "requestScoState: getBluetoothHeadset failed during connection, mScoAudioMode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 832
    invoke-static {p2}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 831
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v7}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 835
    return v7

    .line 839
    :cond_14b
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_174

    .line 840
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "requestScoState: no active device while connecting, mScoAudioMode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 841
    invoke-static {p2}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 840
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v7}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 844
    return v7

    .line 846
    :cond_174
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 847
    invoke-static {p2}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v0

    .line 846
    invoke-static {p1, p2, v0}, Lcom/android/server/audio/BtHelper;->access$900(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    if-eqz p1, :cond_193

    .line 848
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v6}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    goto/16 :goto_27a

    .line 850
    :cond_193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "requestScoState: connect to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p2}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " failed, mScoAudioMode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 851
    invoke-static {p2}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 850
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v7}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 854
    return v7

    .line 871
    :cond_1c2
    const/16 v0, 0xa

    if-ne p1, v0, :cond_27a

    .line 872
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;)I

    move-result p1

    if-eq p1, v2, :cond_26f

    if-eq p1, v6, :cond_1f7

    .line 907
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestScoState: failed to disconnect in state "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 908
    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 907
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v7}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 910
    return v7

    .line 874
    :cond_1f7
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p1

    if-nez p1, :cond_233

    .line 875
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$800(Lcom/android/server/audio/BtHelper;)Z

    move-result p1

    if-eqz p1, :cond_20d

    .line 876
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v5}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    goto :goto_27b

    .line 878
    :cond_20d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "requestScoState: getBluetoothHeadset failed during disconnection, mScoAudioMode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 879
    invoke-static {p2}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 878
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v7}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    .line 881
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v7}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 883
    return v7

    .line 887
    :cond_233
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_246

    .line 888
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v7}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    .line 889
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v7}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 891
    goto :goto_27b

    .line 893
    :cond_246
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 894
    invoke-static {p2}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v0

    .line 893
    invoke-static {p1, p2, v0}, Lcom/android/server/audio/BtHelper;->access$1000(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    if-eqz p1, :cond_264

    .line 895
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v4}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    goto :goto_27b

    .line 897
    :cond_264
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v7}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    .line 898
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v7}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 901
    goto :goto_27b

    .line 903
    :cond_26f
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v7}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    .line 904
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1, v7}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 905
    goto :goto_27b

    .line 871
    :cond_27a
    :goto_27a
    nop

    .line 913
    :goto_27b
    return v2
.end method

.method private totalCount()I
    .registers 4

    .line 780
    nop

    .line 781
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$100(Lcom/android/server/audio/BtHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/BtHelper$ScoClient;

    .line 782
    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper$ScoClient;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 783
    goto :goto_c

    .line 784
    :cond_1e
    return v1
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 704
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioDeviceBroker;->postScoClientDied(Ljava/lang/Object;)V

    .line 705
    return-void
.end method

.method clearCount(Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "BtHelper.this"
        }
    .end annotation

    .line 753
    iget v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 755
    :try_start_5
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_a
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_a} :catch_b

    .line 759
    goto :goto_29

    .line 756
    :catch_b
    move-exception v0

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearCount() mStartcount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " != 0 but not registered to binder"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AS.BtHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_29
    :goto_29
    iput v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    .line 762
    if-eqz p1, :cond_32

    .line 763
    const/16 p1, 0xa

    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/BtHelper$ScoClient;->requestScoState(II)Z

    .line 765
    :cond_32
    return-void
.end method

.method decCount()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "BtHelper.this"
        }
    .end annotation

    .line 732
    iget v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    const-string v1, "AS.BtHelper"

    if-nez v0, :cond_c

    .line 733
    const-string v0, "ScoClient.decCount() already 0"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 735
    :cond_c
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    .line 736
    iget v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    const/4 v2, 0x0

    if-nez v0, :cond_21

    .line 738
    :try_start_15
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1a
    .catch Ljava/util/NoSuchElementException; {:try_start_15 .. :try_end_1a} :catch_1b

    .line 741
    goto :goto_21

    .line 739
    :catch_1b
    move-exception v0

    .line 740
    const-string v0, "decCount() going to 0 but not registered to binder"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_21
    :goto_21
    const/16 v0, 0xa

    invoke-direct {p0, v0, v2}, Lcom/android/server/audio/BtHelper$ScoClient;->requestScoState(II)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 744
    const-string v0, "Request sco disconnected with scoAudioMode(0) failed"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_2e
    :goto_2e
    return-void
.end method

.method getBinder()Landroid/os/IBinder;
    .registers 2

    .line 772
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method getCount()I
    .registers 2

    .line 768
    iget v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    return v0
.end method

.method getPid()I
    .registers 2

    .line 776
    iget v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCreatorPid:I

    return v0
.end method

.method incCount(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "BtHelper.this"
        }
    .end annotation

    .line 711
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/BtHelper$ScoClient;->requestScoState(II)Z

    move-result v0

    const-string v1, "AS.BtHelper"

    if-nez v0, :cond_24

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request sco connected with scoAudioMode("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") failed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return-void

    .line 716
    :cond_24
    iget p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    if-nez p1, :cond_4b

    .line 718
    :try_start_28
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2e} :catch_2f

    .line 723
    goto :goto_4b

    .line 719
    :catch_2f
    move-exception p1

    .line 721
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ScoClient  incCount() could not link to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " binder death"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_4b
    :goto_4b
    iget p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    .line 726
    return-void
.end method
