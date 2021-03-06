.class public Lcom/android/systemui/pip/phone/PipMediaController;
.super Ljava/lang/Object;
.source "PipMediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;
    }
.end annotation


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaController:Landroid/media/session/MediaController;

.field private final mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mNextAction:Landroid/app/RemoteAction;

.field private mPauseAction:Landroid/app/RemoteAction;

.field private mPlayAction:Landroid/app/RemoteAction;

.field private mPlayPauseActionReceiver:Landroid/content/BroadcastReceiver;

.field private final mPlaybackChangedListener:Landroid/media/session/MediaController$Callback;

.field private mPrevAction:Landroid/app/RemoteAction;

.field private final mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .registers 5

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/android/systemui/pip/phone/PipMediaController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMediaController$1;-><init>(Lcom/android/systemui/pip/phone/PipMediaController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlayPauseActionReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    new-instance v0, Lcom/android/systemui/pip/phone/PipMediaController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMediaController$2;-><init>(Lcom/android/systemui/pip/phone/PipMediaController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlaybackChangedListener:Landroid/media/session/MediaController$Callback;

    .line 102
    new-instance v0, Lcom/android/systemui/pip/phone/PipMediaController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMediaController$3;-><init>(Lcom/android/systemui/pip/phone/PipMediaController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    .line 113
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mActivityManager:Landroid/app/IActivityManager;

    .line 115
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.systemui.pip.phone.PLAY"

    .line 116
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.systemui.pip.phone.PAUSE"

    .line 117
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.systemui.pip.phone.NEXT"

    .line 118
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.systemui.pip.phone.PREV"

    .line 119
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlayPauseActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->createMediaActions()V

    const-string p2, "media_session"

    .line 124
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 127
    const-class p1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 128
    new-instance p2, Lcom/android/systemui/pip/phone/-$$Lambda$PipMediaController$neOVZxIcmRkhimcM6huwsIEiXEw;

    invoke-direct {p2, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMediaController$neOVZxIcmRkhimcM6huwsIEiXEw;-><init>(Lcom/android/systemui/pip/phone/PipMediaController;)V

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/phone/PipMediaController;)Landroid/media/session/MediaController;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/phone/PipMediaController;)V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->notifyActionsChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/phone/PipMediaController;Ljava/util/List;)V
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMediaController;->resolveActiveMediaController(Ljava/util/List;)V

    return-void
.end method

.method private createMediaActions()V
    .registers 9

    .line 193
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->pip_pause:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v1, Landroid/app/RemoteAction;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$drawable;->ic_pause_white:I

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.systemui.pip.phone.PAUSE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x8000000

    const/4 v6, 0x0

    .line 196
    invoke-static {v3, v6, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v1, v2, v0, v0, v3}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPauseAction:Landroid/app/RemoteAction;

    .line 199
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->pip_play:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v1, Landroid/app/RemoteAction;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$drawable;->ic_play_arrow_white:I

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.android.systemui.pip.phone.PLAY"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-static {v3, v6, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v1, v2, v0, v0, v3}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlayAction:Landroid/app/RemoteAction;

    .line 205
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->pip_skip_to_next:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v1, Landroid/app/RemoteAction;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$drawable;->ic_skip_next_white:I

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.android.systemui.pip.phone.NEXT"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-static {v3, v6, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v1, v2, v0, v0, v3}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    .line 211
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->pip_skip_to_prev:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Landroid/app/RemoteAction;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$drawable;->ic_skip_previous_white:I

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.android.systemui.pip.phone.PREV"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-static {v3, v6, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v1, v2, v0, v0, v3}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    return-void
.end method

.method private getMediaActions()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_71

    .line 167
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    .line 169
    invoke-static {v1}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v1

    .line 170
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v2

    .line 173
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    const-wide/16 v5, 0x10

    and-long/2addr v5, v2

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_37

    move v5, v6

    goto :goto_38

    :cond_37
    move v5, v9

    :goto_38
    invoke-virtual {v4, v5}, Landroid/app/RemoteAction;->setEnabled(Z)V

    .line 174
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_4f

    const-wide/16 v4, 0x4

    and-long/2addr v4, v2

    cmp-long v4, v4, v7

    if-eqz v4, :cond_4f

    .line 178
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlayAction:Landroid/app/RemoteAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :cond_4f
    if-eqz v1, :cond_5d

    const-wide/16 v4, 0x2

    and-long/2addr v4, v2

    cmp-long v1, v4, v7

    if-eqz v1, :cond_5d

    .line 180
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPauseAction:Landroid/app/RemoteAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_5d
    :goto_5d
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    const-wide/16 v4, 0x20

    and-long/2addr v2, v4

    cmp-long v2, v2, v7

    if-eqz v2, :cond_67

    goto :goto_68

    :cond_67
    move v6, v9

    :goto_68
    invoke-virtual {v1, v6}, Landroid/app/RemoteAction;->setEnabled(Z)V

    .line 185
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 164
    :cond_71
    :goto_71
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method static synthetic lambda$notifyActionsChanged$1(Ljava/util/List;Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V
    .registers 2

    .line 271
    invoke-interface {p1, p0}, Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;->onMediaActionsChanged(Ljava/util/List;)V

    return-void
.end method

.method private notifyActionsChanged()V
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->getMediaActions()Ljava/util/List;

    move-result-object v0

    .line 271
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMediaController$PGZH9Rcf3EMC5cibv13aaStfc2E;

    invoke-direct {v1, v0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMediaController$PGZH9Rcf3EMC5cibv13aaStfc2E;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_16
    return-void
.end method

.method private registerSessionListenerForCurrentUser()V
    .registers 4

    .line 222
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-virtual {v0, p0, v1, v2, v1}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V

    return-void
.end method

.method private resolveActiveMediaController(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_32

    .line 232
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mActivityManager:Landroid/app/IActivityManager;

    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipUtils;->getTopPinnedActivity(Landroid/content/Context;Landroid/app/IActivityManager;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    if-eqz v0, :cond_32

    const/4 v1, 0x0

    .line 235
    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 236
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    .line 237
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 238
    invoke-direct {p0, v2}, Lcom/android/systemui/pip/phone/PipMediaController;->setActiveMediaController(Landroid/media/session/MediaController;)V

    return-void

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_32
    const/4 p1, 0x0

    .line 244
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMediaController;->setActiveMediaController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method private setActiveMediaController(Landroid/media/session/MediaController;)V
    .registers 4

    .line 251
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eq p1, v0, :cond_17

    if-eqz v0, :cond_b

    .line 253
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlaybackChangedListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 255
    :cond_b
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p1, :cond_14

    .line 257
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlaybackChangedListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 259
    :cond_14
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->notifyActionsChanged()V

    :cond_17
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 146
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->getMediaActions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;->onMediaActionsChanged(Ljava/util/List;)V

    :cond_14
    return-void
.end method

.method public synthetic lambda$new$0$PipMediaController(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 4

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->registerSessionListenerForCurrentUser()V

    return-void
.end method

.method public onActivityPinned()V
    .registers 4

    .line 137
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMediaController;->resolveActiveMediaController(Ljava/util/List;)V

    return-void
.end method

.method public removeListener(Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V
    .registers 3

    .line 155
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;->onMediaActionsChanged(Ljava/util/List;)V

    .line 156
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
