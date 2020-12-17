.class public Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;
.super Ljava/lang/Object;
.source "GameModeControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/GameModeController;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private ACTION_SCENE_CHANGED:Ljava/lang/String;

.field private SCENE_GAME:Ljava/lang/String;

.field private final mAlphaMeBootReceiver:Landroid/content/BroadcastReceiver;

.field private final mAlphaReceiver:Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mGameMode:Z

.field private mGameModeDNDEnable:Z

.field private mGameModeDisableMback:Z

.field private mGameModeObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameMode:Z

    const-string v1, "SCENE_CHANGED"

    .line 33
    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->ACTION_SCENE_CHANGED:Ljava/lang/String;

    const-string v1, "game"

    .line 34
    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->SCENE_GAME:Ljava/lang/String;

    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDNDEnable:Z

    .line 36
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDisableMback:Z

    .line 44
    new-instance v1, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mAlphaMeBootReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    new-instance v1, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$2;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->ACTION_SCENE_CHANGED:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$2;-><init>(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mAlphaReceiver:Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    .line 160
    new-instance v1, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$3;-><init>(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeObserver:Landroid/database/ContentObserver;

    .line 40
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mContext:Landroid/content/Context;

    .line 41
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->registerAlphaMeReceiver()V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->ACTION_SCENE_CHANGED:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->SCENE_GAME:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameMode:Z

    return p0
.end method

.method static synthetic access$302(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Z)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->notifyGameModeChanged(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)Landroid/content/Context;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Z)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->notifyGameModeDNDChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Z)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->notifyGameModeMbackChange(Z)V

    return-void
.end method

.method private notifyGameModeChanged(Z)V
    .registers 4

    .line 128
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameMode:Z

    if-eq v0, p1, :cond_1e

    .line 129
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameMode:Z

    .line 130
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;

    .line 131
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameMode:Z

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;->onGameModeChanged(Z)V

    goto :goto_c

    :cond_1e
    return-void
.end method

.method private notifyGameModeDNDChanged(Z)V
    .registers 4

    .line 137
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDNDEnable:Z

    if-eq v0, p1, :cond_1e

    .line 138
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDNDEnable:Z

    .line 139
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;

    .line 140
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDNDEnable:Z

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;->onGameModeDNDChanged(Z)V

    goto :goto_c

    :cond_1e
    return-void
.end method

.method private notifyGameModeMbackChange(Z)V
    .registers 4

    .line 146
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDisableMback:Z

    if-eq v0, p1, :cond_1e

    .line 147
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDisableMback:Z

    .line 148
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;

    .line 149
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDisableMback:Z

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;->onGameModeMbackChange(Z)V

    goto :goto_c

    :cond_1e
    return-void
.end method

.method private registerAlphaMeReceiver()V
    .registers 2

    .line 194
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v0

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mAlphaReceiver:Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    invoke-virtual {v0, p0}, Lcom/meizu/common/alphame/AlphaMe;->registerActionReceiver(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)V

    return-void
.end method

.method private registerSettingsObserver(Landroid/content/Context;)V
    .registers 6

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_game_mode_dnd"

    .line 181
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 180
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "mz_game_mode_disable_mback"

    .line 184
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeObserver:Landroid/database/ContentObserver;

    .line 183
    invoke-virtual {p1, v0, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private sendUpdates(Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;)V
    .registers 3

    .line 202
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameMode:Z

    invoke-interface {p1, v0}, Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;->onGameModeChanged(Z)V

    .line 203
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDNDEnable:Z

    invoke-interface {p1, p0}, Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;->onGameModeDNDChanged(Z)V

    return-void
.end method

.method private unRegisterAlphaMeReceiver()V
    .registers 2

    .line 198
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v0

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mAlphaReceiver:Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    invoke-virtual {v0, p0}, Lcom/meizu/common/alphame/AlphaMe;->unregisterActionReceiver(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)V

    return-void
.end method

.method private unRegisterSettingsObserver(Landroid/content/Context;)V
    .registers 2

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public addGameModeControllerCallback(Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;)V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->sendUpdates(Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;)V

    return-void
.end method

.method public isDNDEnableAndInGameMode()Z
    .registers 3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDNDEnableAndInGameMode: mGameMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; mGameModeDNDEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDNDEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameModeControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameMode:Z

    if-eqz v0, :cond_2c

    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDNDEnable:Z

    if-eqz p0, :cond_2c

    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    return p0
.end method

.method public isGameMode()Z
    .registers 1

    .line 88
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameMode:Z

    return p0
.end method

.method public isGameModeDisableBottomSlide()Z
    .registers 5

    .line 208
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mContext:Landroid/content/Context;

    .line 209
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x1

    const-string v3, "mz_game_mode"

    .line 208
    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_1f

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mContext:Landroid/content/Context;

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mz_game_mode_disable_bottom_slide"

    .line 212
    invoke-static {p0, v0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    return v2
.end method

.method public isGameModeDisableMback()Z
    .registers 1

    .line 220
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDisableMback:Z

    return p0
.end method

.method public registerAlphaMeBootReceiver()V
    .registers 3

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "ACTION_ALPHAME_BOOT_BROADCAST"

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mAlphaMeBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public removeGameModeControllerCallback(Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;)V
    .registers 2

    .line 111
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setListening(Z)V
    .registers 4

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setListening: listening = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameModeControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_24

    .line 118
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->registerSettingsObserver(Landroid/content/Context;)V

    .line 119
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->registerAlphaMeReceiver()V

    .line 120
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->registerAlphaMeBootReceiver()V

    goto :goto_2c

    .line 122
    :cond_24
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->unRegisterSettingsObserver(Landroid/content/Context;)V

    .line 123
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->unRegisterAlphaMeReceiver()V

    :goto_2c
    return-void
.end method
