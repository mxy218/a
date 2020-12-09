.class final Lcom/android/server/audio/AudioService$SoundPoolCallback;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SoundPoolCallback"
.end annotation


# instance fields
.field mSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mStatus:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 3618
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3621
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mStatus:I

    .line 3622
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mSamples:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .registers 3

    .line 3618
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$SoundPoolCallback;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 5

    .line 3638
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3639
    :try_start_7
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mSamples:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 3640
    if-ltz p2, :cond_18

    .line 3641
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mSamples:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3643
    :cond_18
    if-nez p3, :cond_22

    iget-object p2, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mSamples:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 3644
    :cond_22
    iput p3, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mStatus:I

    .line 3645
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 3647
    :cond_2d
    monitor-exit p1

    .line 3648
    return-void

    .line 3647
    :catchall_2f
    move-exception p2

    monitor-exit p1
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw p2
.end method

.method public setSamples([I)V
    .registers 5

    .line 3629
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 3631
    aget v1, p1, v0

    if-lez v1, :cond_13

    .line 3632
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mSamples:Ljava/util/List;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3629
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3635
    :cond_16
    return-void
.end method

.method public status()I
    .registers 2

    .line 3625
    iget v0, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mStatus:I

    return v0
.end method
