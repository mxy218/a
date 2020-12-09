.class Lcom/android/server/webkit/WebViewUpdateService$1;
.super Landroid/content/BroadcastReceiver;
.source "WebViewUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/webkit/WebViewUpdateService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 69
    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_b6

    :cond_18
    goto :goto_4b

    :sswitch_19
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v5

    goto :goto_4c

    :sswitch_23
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v2

    goto :goto_4c

    :sswitch_2d
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v6

    goto :goto_4c

    :sswitch_37
    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v4

    goto :goto_4c

    :sswitch_41
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v3

    goto :goto_4c

    :goto_4b
    const/4 v0, -0x1

    :goto_4c
    const-string v1, "android.intent.extra.REPLACING"

    if-eqz v0, :cond_9b

    if-eq v0, v6, :cond_87

    if-eq v0, v5, :cond_6d

    if-eq v0, v4, :cond_63

    if-eq v0, v3, :cond_59

    goto :goto_b4

    .line 99
    :cond_59
    iget-object p2, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->handleUserRemoved(I)V

    goto :goto_b4

    .line 96
    :cond_63
    iget-object p2, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->handleNewUser(I)V

    .line 97
    goto :goto_b4

    .line 91
    :cond_6d
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->access$000(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_82

    .line 93
    goto :goto_83

    :cond_82
    move v5, v6

    .line 91
    :goto_83
    invoke-virtual {v0, v2, v5, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->packageStateChanged(Ljava/lang/String;II)V

    .line 94
    goto :goto_b4

    .line 85
    :cond_87
    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->entirePackageChanged(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 86
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->access$000(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v2, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->packageStateChanged(Ljava/lang/String;II)V

    goto :goto_b4

    .line 78
    :cond_9b
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a6

    return-void

    .line 79
    :cond_a6
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->access$000(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v4, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->packageStateChanged(Ljava/lang/String;II)V

    .line 81
    nop

    .line 102
    :cond_b4
    :goto_b4
    return-void

    nop

    :sswitch_data_b6
    .sparse-switch
        -0x7ad942ef -> :sswitch_41
        -0x2d021ace -> :sswitch_37
        0xa480416 -> :sswitch_2d
        0x1f50b9c2 -> :sswitch_23
        0x5c1076e2 -> :sswitch_19
    .end sparse-switch
.end method
