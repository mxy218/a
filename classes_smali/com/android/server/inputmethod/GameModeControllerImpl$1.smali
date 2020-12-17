.class Lcom/android/server/inputmethod/GameModeControllerImpl$1;
.super Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;
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
.method constructor <init>(Lcom/android/server/inputmethod/GameModeControllerImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/inputmethod/GameModeControllerImpl;
    .param p2, "x0"  # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/android/server/inputmethod/GameModeControllerImpl$1;->this$0:Lcom/android/server/inputmethod/GameModeControllerImpl;

    invoke-direct {p0, p2}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceiver(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "action"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/Object;

    .line 40
    const-string v0, "SCENE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 41
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    .line 42
    .local v0, "result":[Ljava/lang/String;
    if-eqz v0, :cond_3f

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3f

    .line 43
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 44
    .local v1, "scene":Ljava/lang/String;
    const-string v2, "game"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 45
    .local v2, "isGameScene":Z
    iget-object v3, p0, Lcom/android/server/inputmethod/GameModeControllerImpl$1;->this$0:Lcom/android/server/inputmethod/GameModeControllerImpl;

    invoke-static {v3}, Lcom/android/server/inputmethod/GameModeControllerImpl;->access$000(Lcom/android/server/inputmethod/GameModeControllerImpl;)Z

    move-result v3

    if-eq v3, v2, :cond_3f

    .line 46
    iget-object v3, p0, Lcom/android/server/inputmethod/GameModeControllerImpl$1;->this$0:Lcom/android/server/inputmethod/GameModeControllerImpl;

    invoke-static {v3, v2}, Lcom/android/server/inputmethod/GameModeControllerImpl;->access$002(Lcom/android/server/inputmethod/GameModeControllerImpl;Z)Z

    .line 47
    const-string v3, "GMCI"

    if-eqz v2, :cond_31

    .line 48
    const-string v4, "enter game mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 50
    :cond_31
    const-string v4, "exit game mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_36
    iget-object v3, p0, Lcom/android/server/inputmethod/GameModeControllerImpl$1;->this$0:Lcom/android/server/inputmethod/GameModeControllerImpl;

    invoke-static {v3}, Lcom/android/server/inputmethod/GameModeControllerImpl;->access$000(Lcom/android/server/inputmethod/GameModeControllerImpl;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/inputmethod/GameModeControllerImpl;->access$100(Lcom/android/server/inputmethod/GameModeControllerImpl;Z)V

    .line 56
    .end local v0  # "result":[Ljava/lang/String;
    .end local v1  # "scene":Ljava/lang/String;
    .end local v2  # "isGameScene":Z
    :cond_3f
    return-void
.end method
