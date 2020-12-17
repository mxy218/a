.class Lcom/android/server/wm/FlymeDimWindow$1;
.super Landroid/database/ContentObserver;
.source "FlymeDimWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/FlymeDimWindow;-><init>(Lcom/android/server/wm/DisplayContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/FlymeDimWindow;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FlymeDimWindow;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/wm/FlymeDimWindow;
    .param p2, "x0"  # Landroid/os/Handler;

    .line 101
    iput-object p1, p0, Lcom/android/server/wm/FlymeDimWindow$1;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .param p1, "selfChange"  # Z

    .line 104
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow$1;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    invoke-static {v0}, Lcom/android/server/wm/FlymeDimWindow;->access$100(Lcom/android/server/wm/FlymeDimWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "mz_cts_state"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_19

    move v1, v3

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    invoke-static {v0, v1}, Lcom/android/server/wm/FlymeDimWindow;->access$002(Lcom/android/server/wm/FlymeDimWindow;Z)Z

    .line 106
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v0, :cond_3d

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCtsRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/FlymeDimWindow$1;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    invoke-static {v1}, Lcom/android/server/wm/FlymeDimWindow;->access$000(Lcom/android/server/wm/FlymeDimWindow;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeDimWindow"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_3d
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow$1;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    invoke-static {v0}, Lcom/android/server/wm/FlymeDimWindow;->access$000(Lcom/android/server/wm/FlymeDimWindow;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow$1;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    invoke-static {v0}, Lcom/android/server/wm/FlymeDimWindow;->access$200(Lcom/android/server/wm/FlymeDimWindow;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow$1;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    invoke-static {v0}, Lcom/android/server/wm/FlymeDimWindow;->access$200(Lcom/android/server/wm/FlymeDimWindow;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow$1;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    invoke-static {v0}, Lcom/android/server/wm/FlymeDimWindow;->access$300(Lcom/android/server/wm/FlymeDimWindow;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow$1;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    invoke-static {v0, v3}, Lcom/android/server/wm/FlymeDimWindow;->access$400(Lcom/android/server/wm/FlymeDimWindow;Z)V

    goto :goto_83

    .line 116
    :cond_65
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow$1;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    invoke-static {v0}, Lcom/android/server/wm/FlymeDimWindow;->access$500(Lcom/android/server/wm/FlymeDimWindow;)I

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow$1;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    invoke-static {v0}, Lcom/android/server/wm/FlymeDimWindow;->access$300(Lcom/android/server/wm/FlymeDimWindow;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow$1;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    invoke-static {v0, v3}, Lcom/android/server/wm/FlymeDimWindow;->access$302(Lcom/android/server/wm/FlymeDimWindow;Z)Z

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow$1;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    invoke-static {v0}, Lcom/android/server/wm/FlymeDimWindow;->access$200(Lcom/android/server/wm/FlymeDimWindow;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 121
    :cond_83
    :goto_83
    return-void
.end method
