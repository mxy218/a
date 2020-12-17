.class public final Lcom/android/server/policy/gamemode/GameModeControllerImpl;
.super Ljava/lang/Object;
.source "GameModeControllerImpl.java"

# interfaces
.implements Lcom/android/server/policy/gamemode/GameModeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/gamemode/GameModeControllerImpl$SettingsObserver;
    }
.end annotation


# static fields
.field public static final MZ_GAME_MODE_ACCELERATE:Ljava/lang/String; = "mz_game_mode_accelerate"

.field private static final TAG:Ljava/lang/String; = "GameModeControllerImpl"

.field private static sInstance:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private final ACTION_ALPHAME_BOOT_BROADCAST:Ljava/lang/String;

.field private final ACTION_SCENE_CHANGED:Ljava/lang/String;

.field private final SCENE_GAME:Ljava/lang/String;

.field final URI_DISABLE_TOP_SLIDE:Landroid/net/Uri;

.field final URI_FLYME_LOCK_SCREEN_BRIGHTNESS:Landroid/net/Uri;

.field mAlphaReceiver:Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/policy/gamemode/GameModeController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mGameMode:Z

.field private mGameModeReceiverRegister:Z

.field private mScreenBrightnessLocked:Z

.field private mSettingsObserver:Lcom/android/server/policy/gamemode/GameModeControllerImpl$SettingsObserver;

.field private mStatusBarDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mGameMode:Z

    .line 36
    const-string v1, "SCENE_CHANGED"

    iput-object v1, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->ACTION_SCENE_CHANGED:Ljava/lang/String;

    .line 37
    const-string v2, "game"

    iput-object v2, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->SCENE_GAME:Ljava/lang/String;

    .line 39
    iput-boolean v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mGameModeReceiverRegister:Z

    .line 40
    const-string v0, "ACTION_ALPHAME_BOOT_BROADCAST"

    iput-object v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->ACTION_ALPHAME_BOOT_BROADCAST:Ljava/lang/String;

    .line 43
    const-string v0, "flyme_lock_screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->URI_FLYME_LOCK_SCREEN_BRIGHTNESS:Landroid/net/Uri;

    .line 44
    const-string/jumbo v0, "mz_game_mode_disable_top_slide"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->URI_DISABLE_TOP_SLIDE:Landroid/net/Uri;

    .line 66
    new-instance v0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;-><init>(Lcom/android/server/policy/gamemode/GameModeControllerImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mAlphaReceiver:Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    .line 118
    iput-object p1, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mContext:Landroid/content/Context;

    .line 119
    invoke-direct {p0}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->isGameModeInner()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mGameMode:Z

    .line 120
    new-instance v0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/gamemode/GameModeControllerImpl$SettingsObserver;-><init>(Lcom/android/server/policy/gamemode/GameModeControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mSettingsObserver:Lcom/android/server/policy/gamemode/GameModeControllerImpl$SettingsObserver;

    .line 122
    iget-object v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/gamemode/GameModeControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/gamemode/GameModeControllerImpl$2;-><init>(Lcom/android/server/policy/gamemode/GameModeControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/policy/gamemode/GameModeControllerImpl;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/gamemode/GameModeControllerImpl;
    .param p1, "x1"  # Z

    .line 29
    iput-boolean p1, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mScreenBrightnessLocked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/gamemode/GameModeControllerImpl;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    .line 29
    invoke-direct {p0}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->getScreenBrightnessLockedSettings()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/gamemode/GameModeControllerImpl;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    .line 29
    iget-boolean v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mStatusBarDisabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/policy/gamemode/GameModeControllerImpl;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/gamemode/GameModeControllerImpl;
    .param p1, "x1"  # Z

    .line 29
    iput-boolean p1, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mStatusBarDisabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/gamemode/GameModeControllerImpl;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    .line 29
    invoke-direct {p0}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->getDisableStatusBarSetting()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/gamemode/GameModeControllerImpl;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    .line 29
    invoke-direct {p0}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->isGameModeInner()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/gamemode/GameModeControllerImpl;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    .line 29
    iget-boolean v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mGameMode:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/policy/gamemode/GameModeControllerImpl;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/gamemode/GameModeControllerImpl;
    .param p1, "x1"  # Z

    .line 29
    iput-boolean p1, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mGameMode:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/policy/gamemode/GameModeControllerImpl;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/gamemode/GameModeControllerImpl;
    .param p1, "x1"  # Z

    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->notifyGameSceneChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/policy/gamemode/GameModeControllerImpl;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    .line 29
    iget-object v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/gamemode/GameModeControllerImpl;[Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/policy/gamemode/GameModeControllerImpl;
    .param p1, "x1"  # [Ljava/lang/String;
    .param p2, "x2"  # I

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->handle_GameNormal_Scene_Val([Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/policy/gamemode/GameModeControllerImpl;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    .line 29
    invoke-direct {p0}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->registerAlphaMeReceiver()V

    return-void
.end method

.method private getDisableStatusBarSetting()Z
    .registers 4

    .line 227
    iget-object v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "mz_game_mode_disable_top_slide"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    move v1, v2

    :cond_12
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/policy/gamemode/GameModeController;
    .registers 3
    .param p0, "context"  # Landroid/content/Context;

    .line 133
    sget-object v0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_3
    sget-object v1, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->sInstance:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    if-nez v1, :cond_e

    .line 135
    new-instance v1, Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    invoke-direct {v1, p0}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->sInstance:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    .line 138
    :cond_e
    sget-object v1, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->sInstance:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    monitor-exit v0

    return-object v1

    .line 139
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private getScreenBrightnessLockedSettings()Z
    .registers 5

    .line 222
    iget-object v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "flyme_lock_screen_brightness"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method private handle_GameNormal_Scene_Val([Ljava/lang/String;I)V
    .registers 12
    .param p1, "result"  # [Ljava/lang/String;
    .param p2, "flag"  # I

    .line 201
    const/4 v0, 0x1

    aget-object v1, p1, v0

    const-string v2, "com.tencent.mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "GameNormal"

    const v3, 0x1000017

    if-eqz v1, :cond_6b

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":appbrand"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "wechat_small_game_pkgN":Ljava/lang/String;
    new-instance v4, Landroid/scene/Scene;

    invoke-direct {v4, v3, v2, v1, p2}, Landroid/scene/Scene;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    move-object v2, v4

    .line 204
    .local v2, "gamenormal":Landroid/scene/Scene;
    array-length v3, p1

    const/4 v4, 0x3

    if-le v3, v4, :cond_63

    aget-object v3, p1, v4

    if-eqz v3, :cond_63

    .line 205
    aget-object v3, p1, v4

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string/jumbo v6, "wechat_small_game_name"

    const-string/jumbo v7, "wechat_small_game_id"

    if-eqz v3, :cond_59

    .line 206
    aget-object v3, p1, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    aget-object v3, v3, v8

    invoke-virtual {v2, v7, v3}, Landroid/scene/Scene;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/scene/Scene;

    .line 207
    aget-object v3, p1, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v0

    invoke-virtual {v2, v6, v0}, Landroid/scene/Scene;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/scene/Scene;

    goto :goto_63

    .line 209
    :cond_59
    aget-object v0, p1, v4

    invoke-virtual {v2, v7, v0}, Landroid/scene/Scene;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/scene/Scene;

    .line 210
    aget-object v0, p1, v4

    invoke-virtual {v2, v6, v0}, Landroid/scene/Scene;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/scene/Scene;

    .line 213
    :cond_63
    :goto_63
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/scene/SceneClient;->notifyScene(Landroid/scene/Scene;)V

    .line 214
    .end local v1  # "wechat_small_game_pkgN":Ljava/lang/String;
    goto :goto_7a

    .line 215
    .end local v2  # "gamenormal":Landroid/scene/Scene;
    :cond_6b
    new-instance v1, Landroid/scene/Scene;

    aget-object v0, p1, v0

    invoke-direct {v1, v3, v2, v0, p2}, Landroid/scene/Scene;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    move-object v2, v1

    .line 216
    .restart local v2  # "gamenormal":Landroid/scene/Scene;
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/scene/SceneClient;->notifyScene(Landroid/scene/Scene;)V

    .line 218
    :goto_7a
    return-void
.end method

.method private isGameModeInner()Z
    .registers 4

    .line 148
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

.method private notifyGameSceneChanged(Z)V
    .registers 4
    .param p1, "isGameMode"  # Z

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 170
    iget-object v1, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/gamemode/GameModeController$Callback;

    invoke-interface {v1, p1}, Lcom/android/server/policy/gamemode/GameModeController$Callback;->onChanged(Z)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 172
    .end local v0  # "i":I
    :cond_17
    return-void
.end method

.method private registerAlphaMeReceiver()V
    .registers 7

    .line 175
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mAlphaReceiver:Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    invoke-virtual {v0, v1}, Lcom/meizu/common/alphame/AlphaMe;->registerActionReceiver(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)V

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "ACTION_ALPHAME_BOOT_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/policy/gamemode/GameModeControllerImpl$3;

    invoke-direct {v2, p0}, Lcom/android/server/policy/gamemode/GameModeControllerImpl$3;-><init>(Lcom/android/server/policy/gamemode/GameModeControllerImpl;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    invoke-direct {p0}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->getScreenBrightnessLockedSettings()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mScreenBrightnessLocked:Z

    .line 189
    invoke-direct {p0}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->getDisableStatusBarSetting()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mStatusBarDisabled:Z

    .line 190
    iget-object v1, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->URI_FLYME_LOCK_SCREEN_BRIGHTNESS:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mSettingsObserver:Lcom/android/server/policy/gamemode/GameModeControllerImpl$SettingsObserver;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 193
    iget-object v1, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->URI_DISABLE_TOP_SLIDE:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mSettingsObserver:Lcom/android/server/policy/gamemode/GameModeControllerImpl$SettingsObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 196
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/server/policy/gamemode/GameModeController$Callback;)V
    .registers 3
    .param p1, "callback"  # Lcom/android/server/policy/gamemode/GameModeController$Callback;

    .line 153
    monitor-enter p0

    .line 154
    if-eqz p1, :cond_d

    .line 155
    :try_start_3
    iget-object v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-boolean v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mGameMode:Z

    invoke-interface {p1, v0}, Lcom/android/server/policy/gamemode/GameModeController$Callback;->onChanged(Z)V

    .line 158
    :cond_d
    monitor-exit p0

    .line 159
    return-void

    .line 158
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "pw"  # Ljava/io/PrintWriter;

    .line 242
    const-string v0, " mGameMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    iget-boolean v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mGameMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 244
    const-string v0, " mScreenBrightnessLocked="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    iget-boolean v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mScreenBrightnessLocked:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 246
    const-string v0, " mStatusBarDisabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    iget-boolean v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mStatusBarDisabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 248
    return-void
.end method

.method public isGameMode()Z
    .registers 2

    .line 144
    iget-boolean v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mGameMode:Z

    return v0
.end method

.method public isScreenBrightnessLocked()Z
    .registers 2

    .line 233
    iget-boolean v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mScreenBrightnessLocked:Z

    return v0
.end method

.method public isStatusBarDisabled()Z
    .registers 2

    .line 238
    iget-boolean v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mStatusBarDisabled:Z

    return v0
.end method

.method public removeCallback(Lcom/android/server/policy/gamemode/GameModeController$Callback;)V
    .registers 3
    .param p1, "callback"  # Lcom/android/server/policy/gamemode/GameModeController$Callback;

    .line 163
    monitor-enter p0

    .line 164
    :try_start_1
    iget-object v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 165
    monitor-exit p0

    .line 166
    return-void

    .line 165
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method
