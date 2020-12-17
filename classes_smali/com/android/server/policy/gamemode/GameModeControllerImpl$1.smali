.class Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;
.super Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;
.source "GameModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/gamemode/GameModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiLocked:Z

.field final synthetic this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/gamemode/GameModeControllerImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/policy/gamemode/GameModeControllerImpl;
    .param p2, "x0"  # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;->this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    invoke-direct {p0, p2}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceiver(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 13
    .param p1, "action"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/Object;

    .line 72
    const-string v0, "SCENE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 73
    iget-object v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;->this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->access$400(Lcom/android/server/policy/gamemode/GameModeControllerImpl;)Z

    move-result v0

    .line 74
    .local v0, "isGameMode":Z
    iget-object v1, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;->this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    invoke-static {v1}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->access$500(Lcom/android/server/policy/gamemode/GameModeControllerImpl;)Z

    move-result v1

    if-eq v1, v0, :cond_20

    .line 75
    iget-object v1, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;->this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    invoke-static {v1, v0}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->access$600(Lcom/android/server/policy/gamemode/GameModeControllerImpl;Z)V

    .line 76
    iget-object v1, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;->this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    invoke-static {v1, v0}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->access$502(Lcom/android/server/policy/gamemode/GameModeControllerImpl;Z)Z

    .line 78
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowManager policy onReceiver SCENE_CHANGED mGameMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;->this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    invoke-static {v2}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->access$500(Lcom/android/server/policy/gamemode/GameModeControllerImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameModeControllerImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    move-object v1, p2

    check-cast v1, [Ljava/lang/String;

    .line 80
    .local v1, "result":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;->this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    invoke-static {v3}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->access$500(Lcom/android/server/policy/gamemode/GameModeControllerImpl;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_cb

    .line 81
    if-eqz v1, :cond_e0

    array-length v3, v1

    if-lt v3, v4, :cond_e0

    .line 82
    const/4 v3, 0x0

    .line 83
    .local v3, "wifiStatus":Z
    iget-object v6, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;->this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    invoke-static {v6}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->access$700(Lcom/android/server/policy/gamemode/GameModeControllerImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x1

    const-string/jumbo v8, "mz_game_mode_accelerate"

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_65

    move v6, v7

    goto :goto_66

    :cond_65
    move v6, v5

    .line 85
    .local v6, "accelerate":Z
    :goto_66
    if-eqz v6, :cond_6d

    .line 86
    iget-object v8, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;->this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    invoke-static {v8, v1, v7}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->access$800(Lcom/android/server/policy/gamemode/GameModeControllerImpl;[Ljava/lang/String;I)V

    .line 88
    :cond_6d
    array-length v8, v1

    const/4 v9, 0x3

    if-lt v8, v9, :cond_a3

    .line 89
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_7a

    move v5, v7

    :cond_7a
    move v3, v5

    .line 90
    if-eqz v3, :cond_a3

    .line 91
    iget-object v4, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v4, :cond_98

    .line 92
    iget-object v4, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;->this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    .line 93
    invoke-static {v4}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->access$700(Lcom/android/server/policy/gamemode/GameModeControllerImpl;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 94
    const-string v5, "AlphaMe"

    invoke-virtual {v4, v9, v5}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 96
    :cond_98
    iget-boolean v4, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;->mWifiLocked:Z

    if-nez v4, :cond_a3

    .line 97
    iget-object v4, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 98
    iput-boolean v7, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;->mWifiLocked:Z

    .line 102
    :cond_a3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wifiStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", accelerate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mWifiLocked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;->mWifiLocked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v3  # "wifiStatus":Z
    .end local v6  # "accelerate":Z
    goto :goto_e0

    .line 105
    :cond_cb
    if-eqz v1, :cond_d5

    array-length v2, v1

    if-lt v2, v4, :cond_d5

    .line 106
    iget-object v2, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;->this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    invoke-static {v2, v1, v5}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->access$800(Lcom/android/server/policy/gamemode/GameModeControllerImpl;[Ljava/lang/String;I)V

    .line 108
    :cond_d5
    iget-boolean v2, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;->mWifiLocked:Z

    if-eqz v2, :cond_e0

    .line 109
    iget-object v2, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 110
    iput-boolean v5, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$1;->mWifiLocked:Z

    .line 114
    .end local v0  # "isGameMode":Z
    .end local v1  # "result":[Ljava/lang/String;
    :cond_e0
    :goto_e0
    return-void
.end method
