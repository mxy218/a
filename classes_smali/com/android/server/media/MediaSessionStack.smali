.class Lcom/android/server/media/MediaSessionStack;
.super Ljava/lang/Object;
.source "MediaSessionStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;
    }
.end annotation


# static fields
.field private static final ALWAYS_PRIORITY_STATES:[I

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MediaSessionStack"

.field private static final TRANSITION_PRIORITY_STATES:[I


# instance fields
.field private final mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

.field private final mCachedActiveLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

.field private mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

.field private final mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

.field private final mSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/server/media/MediaSessionStack;->ALWAYS_PRIORITY_STATES:[I

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    return-void

    nop

    :array_16
    .array-data 4
        0x4
        0x5
        0x9
        0xa
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x8
        0x3
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/media/AudioPlayerStateMonitor;Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;)V
    .registers 4
    .param p1, "monitor"  # Lcom/android/server/media/AudioPlayerStateMonitor;
    .param p2, "listener"  # Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 97
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 98
    iput-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    .line 99
    return-void
.end method

.method private clearCache(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 403
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 406
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 407
    return-void
.end method

.method private containsState(I[I)Z
    .registers 5
    .param p1, "state"  # I
    .param p2, "states"  # [I

    .line 393
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_d

    .line 394
    aget v1, p2, v0

    if-ne v1, p1, :cond_a

    .line 395
    const/4 v1, 0x1

    return v1

    .line 393
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 398
    .end local v0  # "i":I
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecord;
    .registers 8
    .param p1, "uid"  # I

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord;

    .line 236
    .local v2, "session":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v3

    if-ne p1, v3, :cond_33

    .line 237
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 238
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    move-result v4

    if-ne v3, v4, :cond_30

    .line 241
    return-object v2

    .line 243
    :cond_30
    if-nez v0, :cond_33

    .line 246
    move-object v0, v2

    .line 249
    .end local v2  # "session":Lcom/android/server/media/MediaSessionRecord;
    :cond_33
    goto :goto_7

    .line 250
    :cond_34
    return-object v0
.end method

.method private shouldUpdatePriority(II)Z
    .registers 5
    .param p1, "oldState"  # I
    .param p2, "newState"  # I

    .line 382
    sget-object v0, Lcom/android/server/media/MediaSessionStack;->ALWAYS_PRIORITY_STATES:[I

    invoke-direct {p0, p2, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 383
    return v1

    .line 385
    :cond_a
    sget-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    invoke-direct {p0, p1, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    .line 386
    invoke-direct {p0, p2, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 387
    return v1

    .line 389
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 4
    .param p1, "newMediaButtonSession"  # Lcom/android/server/media/MediaSessionRecord;

    .line 280
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    .line 281
    .local v0, "oldMediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    .line 282
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    invoke-interface {v1, v0, p1}, Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;->onMediaButtonSessionChanged(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord;)V

    .line 284
    return-void
.end method


# virtual methods
.method public addSession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3
    .param p1, "record"  # Lcom/android/server/media/MediaSessionRecord;

    .line 107
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    .line 114
    return-void
.end method

.method public contains(Lcom/android/server/media/MediaSessionRecord;)Z
    .registers 3
    .param p1, "record"  # Lcom/android/server/media/MediaSessionRecord;

    .line 136
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v0

    .line 318
    .local v0, "sortedSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 319
    .local v1, "count":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Media button session is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Sessions Stack - have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sessions:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "indent":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_51
    if-ge v3, v1, :cond_62

    .line 323
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaSessionRecord;

    .line 324
    .local v4, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v4, p1, v2}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 322
    .end local v4  # "record":Lcom/android/server/media/MediaSessionRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    .line 327
    .end local v3  # "i":I
    :cond_62
    return-void
.end method

.method public getActiveSessions(I)Ljava/util/ArrayList;
    .registers 4
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 263
    .local v0, "cachedActiveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    if-nez v0, :cond_14

    .line 264
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    :cond_14
    return-object v0
.end method

.method public getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecord;
    .registers 8
    .param p1, "userId"  # I

    .line 303
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v0

    .line 305
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 306
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1d

    .line 307
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    .line 308
    .local v3, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->getPlaybackType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1a

    .line 309
    return-object v3

    .line 306
    .end local v3  # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 312
    .end local v2  # "i":I
    :cond_1d
    const/4 v2, 0x0

    return-object v2
.end method

.method public getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecord;
    .registers 6

    .line 287
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v0, :cond_5

    .line 288
    return-object v0

    .line 290
    :cond_5
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v0

    .line 291
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 292
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_24

    .line 293
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    .line 294
    .local v3, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 295
    iput-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 296
    return-object v3

    .line 292
    .end local v3  # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 299
    .end local v2  # "i":I
    :cond_24
    const/4 v2, 0x0

    return-object v2
.end method

.method public getMediaButtonSession()Lcom/android/server/media/MediaSessionRecord;
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    return-object v0
.end method

.method public getMediaSessionRecord(Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;
    .registers 6
    .param p1, "sessionToken"  # Landroid/media/session/MediaSession$Token;

    .line 146
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    .line 147
    .local v1, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/session/MediaSession$Token;->getBinder()Landroid/media/session/ISessionController;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 148
    return-object v1

    .line 150
    .end local v1  # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_21
    goto :goto_6

    .line 151
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriorityList(ZI)Ljava/util/ArrayList;
    .registers 13
    .param p1, "activeOnly"  # Z
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    const/4 v1, 0x0

    .line 346
    .local v1, "lastPlaybackActiveIndex":I
    const/4 v2, 0x0

    .line 348
    .local v2, "lastActiveIndex":I
    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 349
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v3, :cond_9d

    .line 350
    iget-object v5, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaSessionRecord;

    .line 352
    .local v5, "session":Lcom/android/server/media/MediaSessionRecord;
    const/4 v6, -0x1

    if-eq p2, v6, :cond_23

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v6

    if-eq p2, v6, :cond_23

    .line 354
    goto/16 :goto_99

    .line 357
    :cond_23
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v6

    if-nez v6, :cond_2f

    .line 358
    if-nez p1, :cond_99

    .line 361
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_99

    .line 366
    :cond_2f
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive()Z

    move-result v6

    const-string v7, " "

    const-string v8, "MediaSessionStack"

    if-nez v6, :cond_6f

    iget-object v6, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    move-result v6

    if-eqz v6, :cond_46

    goto :goto_6f

    .line 372
    :cond_46
    sget-boolean v6, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    if-eqz v6, :cond_68

    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LastActiveIndex: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_68
    add-int/lit8 v6, v2, 0x1

    .end local v2  # "lastActiveIndex":I
    .local v6, "lastActiveIndex":I
    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v2, v6

    goto :goto_99

    .line 367
    .end local v6  # "lastActiveIndex":I
    .restart local v2  # "lastActiveIndex":I
    :cond_6f
    :goto_6f
    sget-boolean v6, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    if-eqz v6, :cond_91

    .line 368
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PlaybackActiveIndex: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_91
    add-int/lit8 v6, v1, 0x1

    .end local v1  # "lastPlaybackActiveIndex":I
    .local v6, "lastPlaybackActiveIndex":I
    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 370
    add-int/lit8 v2, v2, 0x1

    move v1, v6

    .line 349
    .end local v5  # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v6  # "lastPlaybackActiveIndex":I
    .restart local v1  # "lastPlaybackActiveIndex":I
    :cond_99
    :goto_99
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e

    .line 378
    .end local v4  # "i":I
    :cond_9d
    return-object v0
.end method

.method public onPlaystateChanged(Lcom/android/server/media/MediaSessionRecord;II)Z
    .registers 7
    .param p1, "record"  # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "oldState"  # I
    .param p3, "newState"  # I

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "updateSessions":Z
    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionStack;->shouldUpdatePriority(II)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 165
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 167
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 168
    const/4 v0, 0x1

    goto :goto_24

    .line 169
    :cond_1b
    invoke-static {p3}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 171
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 178
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    if-ne v1, v2, :cond_43

    .line 179
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    .line 180
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    .line 181
    .local v1, "newMediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    if-eq v1, v2, :cond_43

    .line 182
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 185
    .end local v1  # "newMediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    :cond_43
    return v0
.end method

.method public onSessionStateChange(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3
    .param p1, "record"  # Lcom/android/server/media/MediaSessionRecord;

    .line 196
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 197
    return-void
.end method

.method public removeSession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3
    .param p1, "record"  # Lcom/android/server/media/MediaSessionRecord;

    .line 122
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    if-ne v0, p1, :cond_d

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 129
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 130
    return-void
.end method

.method public updateMediaButtonSessionIfNeeded()V
    .registers 6

    .line 206
    sget-boolean v0, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateMediaButtonSessionIfNeeded, callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionStack"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_20
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    invoke-virtual {v0}, Lcom/android/server/media/AudioPlayerStateMonitor;->getSortedAudioPlaybackClientUids()Landroid/util/IntArray;

    move-result-object v0

    .line 210
    .local v0, "audioPlaybackUids":Landroid/util/IntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 211
    nop

    .line 212
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    .line 213
    .local v2, "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    if-eqz v2, :cond_49

    .line 215
    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/media/AudioPlayerStateMonitor;->cleanUpAudioPlaybackUids(I)V

    .line 216
    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    if-eq v3, v2, :cond_48

    .line 217
    invoke-direct {p0, v2}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 219
    :cond_48
    return-void

    .line 210
    .end local v2  # "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 222
    .end local v1  # "i":I
    :cond_4c
    return-void
.end method
