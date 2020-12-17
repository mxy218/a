.class Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;
.super Lcom/android/server/ExtconStateObserver;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WiredAccessoryExtconObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/ExtconStateObserver<",
        "Landroid/util/Pair<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mExtconInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ExtconUEventObserver$ExtconInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .registers 2

    .line 824
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Lcom/android/server/ExtconStateObserver;-><init>()V

    .line 825
    const-string p1, ".*audio.*"

    invoke-static {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getExtconInfos(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->mExtconInfos:Ljava/util/List;

    .line 827
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    .line 821
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->init()V

    return-void
.end method

.method private init()V
    .registers 8

    .line 830
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->mExtconInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 831
    .local v1, "extconInfo":Lcom/android/server/ExtconUEventObserver$ExtconInfo;
    const/4 v2, 0x0

    .line 833
    .local v2, "state":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_13
    invoke-virtual {p0, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->parseStateFromFile(Lcom/android/server/ExtconUEventObserver$ExtconInfo;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_19} :catch_3e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_1b

    move-object v2, v3

    .line 843
    :goto_1a
    goto :goto_5c

    .line 837
    :catch_1b
    move-exception v3

    .line 839
    .local v3, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    invoke-virtual {v1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getStatePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " while attempting to determine initial state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 838
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c

    .line 834
    .end local v3  # "e":Ljava/io/IOException;
    :catch_3e
    move-exception v3

    .line 835
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getStatePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not found while attempting to determine initial state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3  # "e":Ljava/io/FileNotFoundException;
    goto :goto_1a

    .line 844
    :goto_5c
    if-eqz v2, :cond_65

    .line 845
    invoke-virtual {v1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->updateState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;Landroid/util/Pair;)V

    .line 847
    :cond_65
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "observing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-virtual {p0, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->startObserving(Lcom/android/server/ExtconUEventObserver$ExtconInfo;)V

    .line 849
    .end local v1  # "extconInfo":Lcom/android/server/ExtconUEventObserver$ExtconInfo;
    .end local v2  # "state":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_6

    .line 851
    :cond_86
    return-void
.end method


# virtual methods
.method public parseState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;)Landroid/util/Pair;
    .registers 9
    .param p1, "extconInfo"  # Lcom/android/server/ExtconUEventObserver$ExtconInfo;
    .param p2, "status"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ExtconUEventObserver$ExtconInfo;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 859
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "status  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_70

    .line 863
    .local v1, "maskAndState":[I
    const-string v2, "HEADPHONE"

    invoke-static {v1, v0, p2, v2}, Lcom/android/server/WiredAccessoryManager;->access$1100([IILjava/lang/String;Ljava/lang/String;)V

    .line 864
    const/4 v0, 0x1

    const-string v2, "MICROPHONE"

    invoke-static {v1, v0, p2, v2}, Lcom/android/server/WiredAccessoryManager;->access$1100([IILjava/lang/String;Ljava/lang/String;)V

    .line 865
    const/16 v2, 0x10

    const-string v3, "HDMI"

    invoke-static {v1, v2, p2, v3}, Lcom/android/server/WiredAccessoryManager;->access$1100([IILjava/lang/String;Ljava/lang/String;)V

    .line 866
    const/16 v2, 0x20

    const-string v3, "LINE-OUT"

    invoke-static {v1, v2, p2, v3}, Lcom/android/server/WiredAccessoryManager;->access$1100([IILjava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mask "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget v5, v1, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " state "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    aget v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    nop

    :array_70
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public bridge synthetic parseState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 821
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->parseState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public uEventCount()I
    .registers 2

    .line 854
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->mExtconInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public updateState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;Landroid/util/Pair;)V
    .registers 12
    .param p1, "extconInfo"  # Lcom/android/server/ExtconUEventObserver$ExtconInfo;
    .param p2, "name"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ExtconUEventObserver$ExtconInfo;",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 874
    .local p3, "maskAndState":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->access$500(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 875
    :try_start_7
    iget-object v1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 876
    .local v1, "mask":I
    iget-object v2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 877
    .local v2, "state":I
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    const-string v4, ""

    iget-object v5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v5}, Lcom/android/server/WiredAccessoryManager;->access$900(Lcom/android/server/WiredAccessoryManager;)I

    move-result v5

    and-int v6, v1, v2

    not-int v7, v2

    and-int/2addr v7, v1

    not-int v7, v7

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    invoke-static {v3, p2, v4, v5}, Lcom/android/server/WiredAccessoryManager;->access$1000(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 878
    monitor-exit v0

    return-void

    .line 879
    .end local v1  # "mask":I
    .end local v2  # "state":I
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public bridge synthetic updateState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 821
    check-cast p3, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->updateState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method
