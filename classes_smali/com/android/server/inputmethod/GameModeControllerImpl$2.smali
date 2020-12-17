.class Lcom/android/server/inputmethod/GameModeControllerImpl$2;
.super Landroid/database/ContentObserver;
.source "GameModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/GameModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/GameModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/GameModeControllerImpl;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/inputmethod/GameModeControllerImpl;
    .param p2, "x0"  # Landroid/os/Handler;

    .line 115
    iput-object p1, p0, Lcom/android/server/inputmethod/GameModeControllerImpl$2;->this$0:Lcom/android/server/inputmethod/GameModeControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"  # Z

    .line 118
    iget-object v0, p0, Lcom/android/server/inputmethod/GameModeControllerImpl$2;->this$0:Lcom/android/server/inputmethod/GameModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/inputmethod/GameModeControllerImpl;->access$200(Lcom/android/server/inputmethod/GameModeControllerImpl;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    move v0, v1

    .line 119
    .local v0, "gameKeyboardEnable":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "game keyboard enable changed gameKeyboardEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMCI"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/android/server/inputmethod/GameModeControllerImpl$2;->this$0:Lcom/android/server/inputmethod/GameModeControllerImpl;

    invoke-static {v1}, Lcom/android/server/inputmethod/GameModeControllerImpl;->access$300(Lcom/android/server/inputmethod/GameModeControllerImpl;)Z

    move-result v1

    if-eq v0, v1, :cond_38

    .line 121
    iget-object v1, p0, Lcom/android/server/inputmethod/GameModeControllerImpl$2;->this$0:Lcom/android/server/inputmethod/GameModeControllerImpl;

    invoke-static {v1, v0}, Lcom/android/server/inputmethod/GameModeControllerImpl;->access$302(Lcom/android/server/inputmethod/GameModeControllerImpl;Z)Z

    .line 122
    iget-object v1, p0, Lcom/android/server/inputmethod/GameModeControllerImpl$2;->this$0:Lcom/android/server/inputmethod/GameModeControllerImpl;

    invoke-static {v1}, Lcom/android/server/inputmethod/GameModeControllerImpl;->access$300(Lcom/android/server/inputmethod/GameModeControllerImpl;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/GameModeControllerImpl;->access$400(Lcom/android/server/inputmethod/GameModeControllerImpl;Z)V

    .line 124
    :cond_38
    return-void
.end method
