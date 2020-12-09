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

    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mDuckedPlayers:Ljava/util/ArrayList;

    .line 786
    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mUid:I

    .line 787
    return-void
.end method


# virtual methods
.method addDuck(Landroid/media/AudioPlaybackConfiguration;Z)V
    .registers 7

    .line 801
    const-string v0, "AudioService.PlaybackActivityMonitor"

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 802
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mDuckedPlayers:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 804
    return-void

    .line 807
    :cond_1c
    :try_start_1c
    invoke-static {}, Lcom/android/server/audio/PlaybackActivityMonitor;->access$100()Lcom/android/server/audio/AudioEventLogger;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;

    invoke-direct {v3, p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;-><init>(Landroid/media/AudioPlaybackConfiguration;Z)V

    invoke-virtual {v3, v0}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 808
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object p1

    .line 809
    invoke-static {}, Lcom/android/server/audio/PlaybackActivityMonitor;->access$200()Landroid/media/VolumeShaper$Configuration;

    move-result-object v2

    .line 810
    if-eqz p2, :cond_3b

    invoke-static {}, Lcom/android/server/audio/PlaybackActivityMonitor;->access$300()Landroid/media/VolumeShaper$Operation;

    move-result-object p2

    goto :goto_3f

    :cond_3b
    invoke-static {}, Lcom/android/server/audio/PlaybackActivityMonitor;->access$400()Landroid/media/VolumeShaper$Operation;

    move-result-object p2

    .line 808
    :goto_3f
    invoke-virtual {p1, v2, p2}, Landroid/media/PlayerProxy;->applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V

    .line 811
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mDuckedPlayers:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_4b} :catch_4c

    .line 814
    goto :goto_6b

    .line 812
    :catch_4c
    move-exception p1

    .line 813
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error ducking player piid:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mUid:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    :goto_6b
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 6

    .line 790
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

    .line 791
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

    .line 792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 793
    goto :goto_21

    .line 794
    :cond_46
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method removeReleased(Landroid/media/AudioPlaybackConfiguration;)V
    .registers 4

    .line 842
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mDuckedPlayers:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result p1

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 843
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

    .line 818
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

    .line 819
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    .line 820
    if-eqz v3, :cond_73

    .line 822
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

    .line 823
    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v5

    .line 822
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 824
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v3

    .line 825
    invoke-static {}, Lcom/android/server/audio/PlaybackActivityMonitor;->access$500()Landroid/media/VolumeShaper$Configuration;

    move-result-object v4

    sget-object v5, Landroid/media/VolumeShaper$Operation;->REVERSE:Landroid/media/VolumeShaper$Operation;

    .line 824
    invoke-virtual {v3, v4, v5}, Landroid/media/PlayerProxy;->applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_53} :catch_54

    .line 829
    goto :goto_73

    .line 827
    :catch_54
    move-exception v3

    .line 828
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error unducking player piid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mUid:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 837
    :cond_73
    :goto_73
    goto :goto_8

    .line 838
    :cond_74
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mDuckedPlayers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 839
    return-void
.end method
