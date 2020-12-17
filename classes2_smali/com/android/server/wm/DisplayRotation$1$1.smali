.class Lcom/android/server/wm/DisplayRotation$1$1;
.super Landroid/content/BroadcastReceiver;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DisplayRotation$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/DisplayRotation$1;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayRotation$1;)V
    .registers 2
    .param p1, "this$1"  # Lcom/android/server/wm/DisplayRotation$1;

    .line 195
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$1$1;->this$1:Lcom/android/server/wm/DisplayRotation$1;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "action":Ljava/lang/String;
    const-string v1, "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 199
    const/4 v1, 0x0

    const-string v2, "state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 200
    .local v2, "state":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 201
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation$1$1;->this$1:Lcom/android/server/wm/DisplayRotation$1;

    iget-object v4, v4, Lcom/android/server/wm/DisplayRotation$1;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v4, v3}, Lcom/android/server/wm/DisplayRotation;->access$002(Lcom/android/server/wm/DisplayRotation;Z)Z

    goto :goto_25

    .line 203
    :cond_1e
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation$1$1;->this$1:Lcom/android/server/wm/DisplayRotation$1;

    iget-object v4, v4, Lcom/android/server/wm/DisplayRotation$1;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v4, v1}, Lcom/android/server/wm/DisplayRotation;->access$002(Lcom/android/server/wm/DisplayRotation;Z)Z

    .line 205
    :goto_25
    const/4 v4, -0x1

    const-string v5, "wfd_UIBC_rot"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 206
    .local v5, "rotation":I
    if-eqz v5, :cond_56

    if-eq v5, v3, :cond_4e

    const/4 v6, 0x2

    if-eq v5, v6, :cond_46

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3e

    .line 220
    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation$1$1;->this$1:Lcom/android/server/wm/DisplayRotation$1;

    iget-object v6, v6, Lcom/android/server/wm/DisplayRotation$1;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v6, v4}, Lcom/android/server/wm/DisplayRotation;->access$102(Lcom/android/server/wm/DisplayRotation;I)I

    goto :goto_5e

    .line 217
    :cond_3e
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation$1$1;->this$1:Lcom/android/server/wm/DisplayRotation$1;

    iget-object v4, v4, Lcom/android/server/wm/DisplayRotation$1;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v4, v6}, Lcom/android/server/wm/DisplayRotation;->access$102(Lcom/android/server/wm/DisplayRotation;I)I

    .line 218
    goto :goto_5e

    .line 214
    :cond_46
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation$1$1;->this$1:Lcom/android/server/wm/DisplayRotation$1;

    iget-object v4, v4, Lcom/android/server/wm/DisplayRotation$1;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v4, v6}, Lcom/android/server/wm/DisplayRotation;->access$102(Lcom/android/server/wm/DisplayRotation;I)I

    .line 215
    goto :goto_5e

    .line 211
    :cond_4e
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation$1$1;->this$1:Lcom/android/server/wm/DisplayRotation$1;

    iget-object v4, v4, Lcom/android/server/wm/DisplayRotation$1;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v4, v3}, Lcom/android/server/wm/DisplayRotation;->access$102(Lcom/android/server/wm/DisplayRotation;I)I

    .line 212
    goto :goto_5e

    .line 208
    :cond_56
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation$1$1;->this$1:Lcom/android/server/wm/DisplayRotation$1;

    iget-object v4, v4, Lcom/android/server/wm/DisplayRotation$1;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v4, v1}, Lcom/android/server/wm/DisplayRotation;->access$102(Lcom/android/server/wm/DisplayRotation;I)I

    .line 209
    nop

    .line 222
    :goto_5e
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation$1$1;->this$1:Lcom/android/server/wm/DisplayRotation$1;

    iget-object v4, v4, Lcom/android/server/wm/DisplayRotation$1;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v4}, Lcom/android/server/wm/DisplayRotation;->access$200(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 225
    .end local v2  # "state":I
    .end local v5  # "rotation":I
    :cond_69
    return-void
.end method
