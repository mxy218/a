.class final Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
.super Ljava/lang/Object;
.source "PlaybackActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DuckedApp"
.end annotation


# instance fields
.field private final mDuckedPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUid:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "uid"  # I

    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mDuckedPlayers:Ljava/util/ArrayList;

    .line 704
    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mUid:I

    .line 705
    return-void
.end method


# virtual methods
.method addDuck(Landroid/media/AudioPlaybackConfiguration;Z)V
    .registers 8
    .param p1, "apc"  # Landroid/media/AudioPlaybackConfiguration;
    .param p2, "skipRamp"  # Z

    .line 719
    const-string v0, "AudioService.PlaybackActivityMonitor"

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 720
    .local v1, "piid":I
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mDuckedPlayers:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 722
    return-void

    .line 725
    :cond_1c
    :try_start_1c
    invoke-static {}, Lcom/android/server/audio/PlaybackActivityMonitor;->access$100()Lcom/android/server/audio/AudioEventLogger;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;

    invoke-direct {v3, p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;-><init>(Landroid/media/AudioPlaybackConfiguration;Z)V

    invoke-virtual {v3, v0}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 726
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v2

    .line 727
    invoke-static {}, Lcom/android/server/audio/PlaybackActivityMonitor;->access$200()Landroid/media/VolumeShaper$Configuration;

    move-result-object v3

    .line 728
    if-eqz p2, :cond_3b

    invoke-static {}, Lcom/android/server/audio/PlaybackActivityMonitor;->access$300()Landroid/media/VolumeShaper$Operation;

    move-result-object v4

    goto :goto_3f

    :cond_3b
    invoke-static {}, Lcom/android/server/audio/PlaybackActivityMonitor;->access$400()Landroid/media/VolumeShaper$Operation;

    move-result-object v4

    .line 726
    :goto_3f
    invoke-virtual {v2, v3, v4}, Landroid/media/PlayerProxy;->applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V

    .line 729
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mDuckedPlayers:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_4b} :catch_4c

    .line 732
    goto :goto_6b

    .line 730
    :catch_4c
    move-exception v2

    .line 731
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error ducking player piid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 733
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_6b
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " piids:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mDuckedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 710
    .local v1, "piid":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 711
    .end local v1  # "piid":I
    goto :goto_21

    .line 712
    :cond_46
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method removeReleased(Landroid/media/AudioPlaybackConfiguration;)V
    .registers 5
    .param p1, "apc"  # Landroid/media/AudioPlaybackConfiguration;

    .line 760
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mDuckedPlayers:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 761
    return-void
.end method

.method removeUnduckAll(Ljava/util/HashMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 736
    .local p1, "players":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/media/AudioPlaybackConfiguration;>;"
    const-string v0, "AudioService.PlaybackActivityMonitor"

    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mDuckedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 737
    .local v2, "piid":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    .line 738
    .local v3, "apc":Landroid/media/AudioPlaybackConfiguration;
    if-eqz v3, :cond_73

    .line 740
    :try_start_24
    invoke-static {}, Lcom/android/server/audio/PlaybackActivityMonitor;->access$100()Lcom/android/server/audio/AudioEventLogger;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unducking piid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 741
    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v5

    .line 740
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 742
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v4

    .line 743
    invoke-static {}, Lcom/android/server/audio/PlaybackActivityMonitor;->access$500()Landroid/media/VolumeShaper$Configuration;

    move-result-object v5

    sget-object v6, Landroid/media/VolumeShaper$Operation;->REVERSE:Landroid/media/VolumeShaper$Operation;

    .line 742
    invoke-virtual {v4, v5, v6}, Landroid/media/PlayerProxy;->applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_53} :catch_54

    .line 747
    goto :goto_73

    .line 745
    :catch_54
    move-exception v4

    .line 746
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error unducking player piid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 755
    .end local v2  # "piid":I
    .end local v3  # "apc":Landroid/media/AudioPlaybackConfiguration;
    .end local v4  # "e":Ljava/lang/Exception;
    :cond_73
    :goto_73
    goto :goto_8

    .line 756
    :cond_74
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mDuckedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 757
    return-void
.end method
