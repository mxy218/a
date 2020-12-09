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
    .registers 3

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 395
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 398
    iget-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 399
    return-void
.end method

.method private containsState(I[I)Z
    .registers 6

    .line 385
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_e

    .line 386
    aget v2, p2, v1

    if-ne v2, p1, :cond_b

    .line 387
    const/4 p1, 0x1

    return p1

    .line 385
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 390
    :cond_e
    return v0
.end method

.method private findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecord;
    .registers 8

    .line 230
    nop

    .line 231
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord;

    .line 232
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v3

    if-ne p1, v3, :cond_34

    .line 233
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 234
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    move-result v4

    if-ne v3, v4, :cond_31

    .line 237
    return-object v2

    .line 239
    :cond_31
    if-nez v1, :cond_34

    .line 242
    move-object v1, v2

    .line 245
    :cond_34
    goto :goto_8

    .line 246
    :cond_35
    return-object v1
.end method

.method private shouldUpdatePriority(II)Z
    .registers 5

    .line 374
    sget-object v0, Lcom/android/server/media/MediaSessionStack;->ALWAYS_PRIORITY_STATES:[I

    invoke-direct {p0, p2, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 375
    return v1

    .line 377
    :cond_a
    sget-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    invoke-direct {p0, p1, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result p1

    if-nez p1, :cond_1b

    sget-object p1, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    .line 378
    invoke-direct {p0, p2, p1}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 379
    return v1

    .line 381
    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method private updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 4

    .line 276
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    .line 277
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    .line 278
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    invoke-interface {v1, v0, p1}, Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;->onMediaButtonSessionChanged(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord;)V

    .line 280
    return-void
.end method


# virtual methods
.method public addSession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    .line 114
    return-void
.end method

.method public contains(Lcom/android/server/media/MediaSessionRecord;)Z
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 312
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v1

    .line 314
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Media button session is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Sessions Stack - have "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sessions:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 318
    nop

    :goto_51
    if-ge v0, v2, :cond_62

    .line 319
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    .line 320
    invoke-virtual {v3, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 323
    :cond_62
    return-void
.end method

.method public getActiveSessions(I)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 259
    if-nez v0, :cond_14

    .line 260
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    :cond_14
    return-object v0
.end method

.method public getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecord;
    .registers 7

    .line 299
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object p1

    .line 301
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 302
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1d

    .line 303
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord;

    .line 304
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getPlaybackType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1a

    .line 305
    return-object v2

    .line 302
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 308
    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecord;
    .registers 6

    .line 283
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v0, :cond_5

    .line 284
    return-object v0

    .line 286
    :cond_5
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 288
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_24

    .line 289
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    .line 290
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 291
    iput-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 292
    return-object v3

    .line 288
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 295
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaButtonSession()Lcom/android/server/media/MediaSessionRecord;
    .registers 2

    .line 272
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    return-object v0
.end method

.method public getMediaSessionRecord(Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;
    .registers 6

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
    :cond_21
    goto :goto_6

    .line 151
    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPriorityList(ZI)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    nop

    .line 342
    nop

    .line 344
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 345
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_10
    if-ge v2, v1, :cond_48

    .line 346
    iget-object v5, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaSessionRecord;

    .line 348
    const/4 v6, -0x1

    if-eq p2, v6, :cond_24

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v6

    if-eq p2, v6, :cond_24

    .line 350
    goto :goto_45

    .line 353
    :cond_24
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v6

    if-nez v6, :cond_30

    .line 354
    if-nez p1, :cond_45

    .line 357
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 362
    :cond_30
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 363
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 364
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_45

    .line 366
    :cond_3f
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v3, v6

    .line 345
    :cond_45
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 370
    :cond_48
    return-object v0
.end method

.method public onPlaystateChanged(Lcom/android/server/media/MediaSessionRecord;II)V
    .registers 4

    .line 162
    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionStack;->shouldUpdatePriority(II)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 163
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 164
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p2, p3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 165
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    goto :goto_22

    .line 166
    :cond_19
    invoke-static {p3}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result p2

    if-nez p2, :cond_22

    .line 168
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 175
    :cond_22
    :goto_22
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    if-eqz p2, :cond_41

    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result p1

    if-ne p2, p1, :cond_41

    .line 176
    iget-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    .line 177
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p1

    .line 178
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    if-eq p1, p2, :cond_41

    .line 179
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 182
    :cond_41
    return-void
.end method

.method public onSessionStateChange(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 2

    .line 192
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 193
    return-void
.end method

.method public removeSession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3

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

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 130
    return-void
.end method

.method public updateMediaButtonSessionIfNeeded()V
    .registers 4

    .line 202
    sget-boolean v0, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 203
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

    .line 205
    :cond_20
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    invoke-virtual {v0}, Lcom/android/server/media/AudioPlayerStateMonitor;->getSortedAudioPlaybackClientUids()Landroid/util/IntArray;

    move-result-object v0

    .line 206
    const/4 v1, 0x0

    :goto_27
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 207
    nop

    .line 208
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    .line 209
    if-eqz v2, :cond_49

    .line 211
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/media/AudioPlayerStateMonitor;->cleanUpAudioPlaybackUids(I)V

    .line 212
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    if-eq v0, v2, :cond_48

    .line 213
    invoke-direct {p0, v2}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 215
    :cond_48
    return-void

    .line 206
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 218
    :cond_4c
    return-void
.end method
