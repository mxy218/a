.class Lcom/android/server/audio/AudioService$7;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/AudioService;->MzCreateLoopServerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/audio/AudioService;

    .line 8950
    iput-object p1, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 8955
    const-string v0, "af.kill.process"

    const/16 v1, -0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 8959
    :goto_7
    :try_start_7
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$11200()I

    move-result v1
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_b} :catch_127
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_122

    const-string v2, "AS.AudioService"

    const v3, 0x1b7740

    const-string v4, ""

    if-lt v1, v3, :cond_b9

    .line 8960
    :try_start_14
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$11220(I)I

    .line 8961
    const-string v1, "MzCreateServerLoopThread: [DATA_REPORT] report StreamDeviceVolume data to cloud !"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8962
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8963
    .local v1, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "music_headset"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v6

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8964
    const-string/jumbo v3, "music_speaker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v6

    aget-object v6, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8965
    const-string/jumbo v3, "notification_speaker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v6

    const/4 v8, 0x5

    aget-object v6, v6, v8

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8966
    const-string/jumbo v3, "ring_speaker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8967
    iget-object v3, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->getInstance(Landroid/content/Context;)Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    move-result-object v3

    const-string v5, "StreamDeviceVolume"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v1}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onOsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 8969
    .end local v1  # "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b9
    const/16 v1, 0x2710

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$11212(I)I

    .line 8973
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8974
    .local v1, "pidStrings":Ljava/lang/String;
    if-eqz v1, :cond_11c

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11c

    .line 8975
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 8976
    .local v3, "pid":I
    if-lez v3, :cond_11c

    .line 8977
    iget-object v4, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v3}, Lcom/android/server/audio/AudioService;->access$11300(Lcom/android/server/audio/AudioService;I)Ljava/lang/String;

    move-result-object v4

    .line 8978
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v4, :cond_117

    const-string v5, "com.tencent.mm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_117

    .line 8979
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TRACKS_KILLER] Try to kill porcess ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") to free audioflinger tracks!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8980
    iget-object v2, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v2

    const-string v5, "activity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 8982
    :cond_117
    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 8986
    .end local v3  # "pid":I
    .end local v4  # "packageName":Ljava/lang/String;
    :cond_11c
    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_121
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_121} :catch_127
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_121} :catch_122

    .end local v1  # "pidStrings":Ljava/lang/String;
    goto :goto_12b

    .line 8990
    :catch_122
    move-exception v1

    .line 8992
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1  # "ex":Ljava/lang/Exception;
    goto :goto_12b

    .line 8987
    :catch_127
    move-exception v1

    .line 8989
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 8993
    .end local v1  # "e":Ljava/lang/InterruptedException;
    :goto_12b
    goto/16 :goto_7
.end method
