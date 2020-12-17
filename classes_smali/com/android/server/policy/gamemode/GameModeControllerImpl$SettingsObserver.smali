.class final Lcom/android/server/policy/gamemode/GameModeControllerImpl$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "GameModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/gamemode/GameModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/gamemode/GameModeControllerImpl;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"  # Landroid/os/Handler;

    .line 50
    iput-object p1, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$SettingsObserver;->this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    .line 51
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 52
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 56
    iget-object v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$SettingsObserver;->this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    iget-object v0, v0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->URI_FLYME_LOCK_SCREEN_BRIGHTNESS:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 57
    iget-object v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$SettingsObserver;->this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->access$100(Lcom/android/server/policy/gamemode/GameModeControllerImpl;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->access$002(Lcom/android/server/policy/gamemode/GameModeControllerImpl;Z)Z

    goto :goto_43

    .line 58
    :cond_14
    iget-object v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$SettingsObserver;->this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    iget-object v0, v0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->URI_DISABLE_TOP_SLIDE:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 59
    iget-object v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$SettingsObserver;->this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->access$300(Lcom/android/server/policy/gamemode/GameModeControllerImpl;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->access$202(Lcom/android/server/policy/gamemode/GameModeControllerImpl;Z)Z

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable status bar changed in setting, mStatusBarDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$SettingsObserver;->this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    .line 61
    invoke-static {v1}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->access$200(Lcom/android/server/policy/gamemode/GameModeControllerImpl;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v1, "GameModeControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_43
    :goto_43
    return-void
.end method
