.class Lcom/android/server/policy/gamemode/GameModeControllerImpl$3;
.super Landroid/content/BroadcastReceiver;
.source "GameModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/gamemode/GameModeControllerImpl;->registerAlphaMeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/gamemode/GameModeControllerImpl;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    .line 178
    iput-object p1, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$3;->this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "on Receive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameModeControllerImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v1, "ACTION_ALPHAME_BOOT_BROADCAST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 184
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$3;->this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    iget-object v2, v2, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->mAlphaReceiver:Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    invoke-virtual {v1, v2}, Lcom/meizu/common/alphame/AlphaMe;->registerActionReceiver(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)V

    .line 186
    :cond_2e
    return-void
.end method
