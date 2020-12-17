.class Lcom/android/server/inputmethod/GameModeControllerImpl;
.super Ljava/lang/Object;
.source "GameModeControllerImpl.java"

# interfaces
.implements Lcom/android/server/inputmethod/GameModeController;


# static fields
.field private static final TAG:Ljava/lang/String; = "GMCI"


# instance fields
.field private final ACTION_SCENE_CHANGED:Ljava/lang/String;

.field private final SCENE_GAME:Ljava/lang/String;

.field private final mAlphaReceiver:Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/inputmethod/GameModeController$GameModeControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mGameKeyboardEnable:Z

.field private final mGameModeKeyboardObserver:Landroid/database/ContentObserver;

.field private mGameModeReceiverRegister:Z

.field private mIsGameScene:Z

.field private mShouldUseGameKeyboard:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mIsGameScene:Z

    .line 24
    iput-boolean v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mGameKeyboardEnable:Z

    .line 25
    iput-boolean v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mShouldUseGameKeyboard:Z

    .line 26
    const-string v1, "SCENE_CHANGED"

    iput-object v1, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->ACTION_SCENE_CHANGED:Ljava/lang/String;

    .line 27
    const-string v2, "game"

    iput-object v2, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->SCENE_GAME:Ljava/lang/String;

    .line 28
    iput-boolean v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mGameModeReceiverRegister:Z

    .line 35
    new-instance v2, Lcom/android/server/inputmethod/GameModeControllerImpl$1;

    invoke-direct {v2, p0, v1}, Lcom/android/server/inputmethod/GameModeControllerImpl$1;-><init>(Lcom/android/server/inputmethod/GameModeControllerImpl;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mAlphaReceiver:Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    .line 114
    new-instance v1, Lcom/android/server/inputmethod/GameModeControllerImpl$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/inputmethod/GameModeControllerImpl$2;-><init>(Lcom/android/server/inputmethod/GameModeControllerImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mGameModeKeyboardObserver:Landroid/database/ContentObserver;

    .line 31
    iput-object p1, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/android/server/inputmethod/GameModeControllerImpl;->getGameModeGameKeyboard()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_38

    move v0, v2

    :cond_38
    iput-boolean v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mGameKeyboardEnable:Z

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/inputmethod/GameModeControllerImpl;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/GameModeControllerImpl;

    .line 17
    iget-boolean v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mIsGameScene:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/inputmethod/GameModeControllerImpl;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/GameModeControllerImpl;
    .param p1, "x1"  # Z

    .line 17
    iput-boolean p1, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mIsGameScene:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/inputmethod/GameModeControllerImpl;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/GameModeControllerImpl;
    .param p1, "x1"  # Z

    .line 17
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/GameModeControllerImpl;->notifyGameSceneChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/inputmethod/GameModeControllerImpl;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/GameModeControllerImpl;

    .line 17
    invoke-direct {p0}, Lcom/android/server/inputmethod/GameModeControllerImpl;->getGameModeGameKeyboard()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/inputmethod/GameModeControllerImpl;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/GameModeControllerImpl;

    .line 17
    iget-boolean v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mGameKeyboardEnable:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/inputmethod/GameModeControllerImpl;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/GameModeControllerImpl;
    .param p1, "x1"  # Z

    .line 17
    iput-boolean p1, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mGameKeyboardEnable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/inputmethod/GameModeControllerImpl;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/GameModeControllerImpl;
    .param p1, "x1"  # Z

    .line 17
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/GameModeControllerImpl;->notifyGameKeyboardEnableChanged(Z)V

    return-void
.end method

.method private getGameModeGameKeyboard()I
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mz_game_mode_game_keyboard"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private notifyGameKeyboardEnableChanged(Z)V
    .registers 6
    .param p1, "enable"  # Z

    .line 95
    if-eqz p1, :cond_8

    iget-boolean v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mIsGameScene:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 96
    .local v0, "shouldUseGameKeyboard":Z
    :goto_9
    iget-boolean v1, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mShouldUseGameKeyboard:Z

    if-eq v0, v1, :cond_40

    .line 97
    iput-boolean v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mShouldUseGameKeyboard:Z

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mShouldUseGameKeyboard changed mShouldUseGameKeyboard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mShouldUseGameKeyboard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMCI"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/GameModeController$GameModeControllerCallback;

    .line 100
    .local v2, "callback":Lcom/android/server/inputmethod/GameModeController$GameModeControllerCallback;
    iget-boolean v3, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mShouldUseGameKeyboard:Z

    invoke-interface {v2, v3}, Lcom/android/server/inputmethod/GameModeController$GameModeControllerCallback;->onShouldUseGameKeyboardChanged(Z)V

    .line 101
    .end local v2  # "callback":Lcom/android/server/inputmethod/GameModeController$GameModeControllerCallback;
    goto :goto_2e

    .line 103
    :cond_40
    return-void
.end method

.method private notifyGameSceneChanged(Z)V
    .registers 6
    .param p1, "on"  # Z

    .line 84
    iget-boolean v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mGameKeyboardEnable:Z

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 85
    .local v0, "shouldUseGameKeyboard":Z
    :goto_9
    iget-boolean v1, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mShouldUseGameKeyboard:Z

    if-eq v0, v1, :cond_40

    .line 86
    iput-boolean v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mShouldUseGameKeyboard:Z

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mShouldUseGameKeyboard changed mShouldUseGameKeyboard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mShouldUseGameKeyboard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMCI"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/GameModeController$GameModeControllerCallback;

    .line 89
    .local v2, "callback":Lcom/android/server/inputmethod/GameModeController$GameModeControllerCallback;
    iget-boolean v3, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mShouldUseGameKeyboard:Z

    invoke-interface {v2, v3}, Lcom/android/server/inputmethod/GameModeController$GameModeControllerCallback;->onShouldUseGameKeyboardChanged(Z)V

    .line 90
    .end local v2  # "callback":Lcom/android/server/inputmethod/GameModeController$GameModeControllerCallback;
    goto :goto_2e

    .line 92
    :cond_40
    return-void
.end method

.method private registerAlphaMeReceiver()V
    .registers 3

    .line 139
    iget-boolean v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mGameModeReceiverRegister:Z

    if-nez v0, :cond_10

    .line 140
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mAlphaReceiver:Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    invoke-virtual {v0, v1}, Lcom/meizu/common/alphame/AlphaMe;->registerActionReceiver(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mGameModeReceiverRegister:Z

    .line 143
    :cond_10
    return-void
.end method

.method private registerSettingsObserver(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 129
    const-string/jumbo v1, "mz_game_mode_game_keyboard"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mGameModeKeyboardObserver:Landroid/database/ContentObserver;

    .line 128
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 131
    return-void
.end method

.method private unRegisterAlphaMeReceiver()V
    .registers 3

    .line 146
    iget-boolean v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mGameModeReceiverRegister:Z

    if-eqz v0, :cond_10

    .line 147
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mAlphaReceiver:Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    invoke-virtual {v0, v1}, Lcom/meizu/common/alphame/AlphaMe;->unregisterActionReceiver(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mGameModeReceiverRegister:Z

    .line 150
    :cond_10
    return-void
.end method

.method private unRegisterSettingsObserver(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mGameModeKeyboardObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 136
    return-void
.end method


# virtual methods
.method public addGameModeControllerCallback(Lcom/android/server/inputmethod/GameModeController$GameModeControllerCallback;)V
    .registers 3
    .param p1, "callback"  # Lcom/android/server/inputmethod/GameModeController$GameModeControllerCallback;

    .line 65
    iget-object v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public isGameScene()Z
    .registers 4

    .line 60
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getScene"

    invoke-virtual {v0, v2, v1}, Lcom/meizu/common/alphame/AlphaMe;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "game"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeGameModeControllerCallback(Lcom/android/server/inputmethod/GameModeController$GameModeControllerCallback;)V
    .registers 3
    .param p1, "callback"  # Lcom/android/server/inputmethod/GameModeController$GameModeControllerCallback;

    .line 70
    iget-object v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public setListening(Z)V
    .registers 3
    .param p1, "listening"  # Z

    .line 74
    if-eqz p1, :cond_b

    .line 75
    iget-object v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/GameModeControllerImpl;->registerSettingsObserver(Landroid/content/Context;)V

    .line 76
    invoke-direct {p0}, Lcom/android/server/inputmethod/GameModeControllerImpl;->registerAlphaMeReceiver()V

    goto :goto_13

    .line 78
    :cond_b
    iget-object v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/GameModeControllerImpl;->unRegisterSettingsObserver(Landroid/content/Context;)V

    .line 79
    invoke-direct {p0}, Lcom/android/server/inputmethod/GameModeControllerImpl;->unRegisterAlphaMeReceiver()V

    .line 81
    :goto_13
    return-void
.end method

.method public shouldUseGameKeyboard()Z
    .registers 2

    .line 107
    invoke-virtual {p0}, Lcom/android/server/inputmethod/GameModeControllerImpl;->isGameScene()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl;->mGameKeyboardEnable:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
