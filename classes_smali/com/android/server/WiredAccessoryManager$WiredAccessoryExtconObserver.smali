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

    .line 725
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Lcom/android/server/ExtconStateObserver;-><init>()V

    .line 726
    const-string p1, ".*audio.*"

    invoke-static {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getExtconInfos(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->mExtconInfos:Ljava/util/List;

    .line 728
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;)V
    .registers 1

    .line 722
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->init()V

    return-void
.end method

.method private init()V
    .registers 8

    .line 731
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->mExtconInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 732
    const/4 v2, 0x0

    .line 734
    :try_start_13
    invoke-virtual {p0, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->parseStateFromFile(Lcom/android/server/ExtconUEventObserver$ExtconInfo;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_19} :catch_3e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_1b

    .line 744
    move-object v2, v3

    goto :goto_5c

    .line 738
    :catch_1b
    move-exception v3

    .line 740
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {v1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getStatePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " while attempting to determine initial state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 739
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c

    .line 735
    :catch_3e
    move-exception v3

    .line 736
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

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

    .line 744
    nop

    .line 745
    :goto_5c
    if-eqz v2, :cond_65

    .line 746
    invoke-virtual {v1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->updateState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;Landroid/util/Pair;)V

    .line 749
    :cond_65
    invoke-virtual {p0, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->startObserving(Lcom/android/server/ExtconUEventObserver$ExtconInfo;)V

    .line 750
    goto :goto_6

    .line 752
    :cond_69
    return-void
.end method


# virtual methods
.method public parseState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;)Landroid/util/Pair;
    .registers 6
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

    .line 761
    const/4 p1, 0x2

    new-array v0, p1, [I

    fill-array-data v0, :array_32

    .line 764
    const-string v1, "HEADPHONE"

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/WiredAccessoryManager;->access$1000([IILjava/lang/String;Ljava/lang/String;)V

    .line 765
    const/4 p1, 0x1

    const-string v1, "MICROPHONE"

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/WiredAccessoryManager;->access$1000([IILjava/lang/String;Ljava/lang/String;)V

    .line 766
    const/16 v1, 0x10

    const-string v2, "HDMI"

    invoke-static {v0, v1, p2, v2}, Lcom/android/server/WiredAccessoryManager;->access$1000([IILjava/lang/String;Ljava/lang/String;)V

    .line 767
    const/16 v1, 0x20

    const-string v2, "LINE-OUT"

    invoke-static {v0, v1, p2, v2}, Lcom/android/server/WiredAccessoryManager;->access$1000([IILjava/lang/String;Ljava/lang/String;)V

    .line 769
    const/4 p2, 0x0

    aget p2, v0, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    nop

    :array_32
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public bridge synthetic parseState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 722
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->parseState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public uEventCount()I
    .registers 2

    .line 755
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->mExtconInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public updateState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;Landroid/util/Pair;)V
    .registers 9
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

    .line 775
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {p1}, Lcom/android/server/WiredAccessoryManager;->access$400(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 776
    :try_start_7
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 777
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 778
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    const-string v2, ""

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v3}, Lcom/android/server/WiredAccessoryManager;->access$800(Lcom/android/server/WiredAccessoryManager;)I

    move-result v3

    not-int v4, p3

    and-int/2addr v4, v0

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p3, v0

    or-int/2addr p3, v3

    invoke-static {v1, p2, v2, p3}, Lcom/android/server/WiredAccessoryManager;->access$900(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 779
    monitor-exit p1

    return-void

    .line 780
    :catchall_2c
    move-exception p2

    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_2c

    throw p2
.end method

.method public bridge synthetic updateState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 722
    check-cast p3, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->updateState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method
