.class Lcom/android/server/GuestModeHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "GuestModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GuestModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GuestModeHelper;


# direct methods
.method constructor <init>(Lcom/android/server/GuestModeHelper;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/GuestModeHelper;

    .line 60
    iput-object p1, p0, Lcom/android/server/GuestModeHelper$1;->this$0:Lcom/android/server/GuestModeHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 64
    const-string v0, "GuestModeHelper"

    if-eqz p2, :cond_4e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_4e

    .line 68
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "action":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive intent action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 73
    iget-object v0, p0, Lcom/android/server/GuestModeHelper$1;->this$0:Lcom/android/server/GuestModeHelper;

    invoke-static {v0}, Lcom/android/server/GuestModeHelper;->access$000(Lcom/android/server/GuestModeHelper;)V

    goto :goto_4d

    .line 74
    :cond_32
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 75
    iget-object v0, p0, Lcom/android/server/GuestModeHelper$1;->this$0:Lcom/android/server/GuestModeHelper;

    invoke-static {v0, p2}, Lcom/android/server/GuestModeHelper;->access$100(Lcom/android/server/GuestModeHelper;Landroid/content/Intent;)V

    goto :goto_4d

    .line 76
    :cond_40
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 77
    iget-object v0, p0, Lcom/android/server/GuestModeHelper$1;->this$0:Lcom/android/server/GuestModeHelper;

    invoke-static {v0, p2}, Lcom/android/server/GuestModeHelper;->access$200(Lcom/android/server/GuestModeHelper;Landroid/content/Intent;)V

    .line 79
    :cond_4d
    :goto_4d
    return-void

    .line 65
    .end local v1  # "action":Ljava/lang/String;
    :cond_4e
    :goto_4e
    const-string/jumbo v1, "onReceive intent invalid"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method
