.class Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$3;
.super Landroid/database/ContentObserver;
.source "GameModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Landroid/os/Handler;)V
    .registers 3

    .line 161
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$3;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    .line 164
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$3;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    .line 165
    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->access$500(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "mz_game_mode_dnd"

    const/4 v2, -0x2

    .line 164
    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_17

    move p1, v0

    goto :goto_18

    :cond_17
    move p1, v1

    .line 168
    :goto_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGameModeDNDEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameModeControllerImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$3;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    invoke-static {v2, p1}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->access$600(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Z)V

    .line 170
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$3;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    .line 171
    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->access$500(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$3;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    .line 173
    invoke-static {v2}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->access$500(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const-string v4, "mz_game_mode_disable_mback"

    .line 170
    invoke-static {p1, v4, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v0, :cond_50

    goto :goto_51

    :cond_50
    move v0, v1

    .line 174
    :goto_51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBackDisable = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$3;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    invoke-static {p0, v0}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->access$700(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Z)V

    return-void
.end method
