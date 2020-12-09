.class Lcom/android/server/tv/TvInputManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/tv/TvInputManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .registers 2

    .line 247
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 250
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 251
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android.intent.extra.user_handle"

    if-eqz v0, :cond_19

    .line 252
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)V

    goto :goto_2a

    .line 253
    :cond_19
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 254
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/tv/TvInputManagerService;->access$700(Lcom/android/server/tv/TvInputManagerService;I)V

    .line 256
    :cond_2a
    :goto_2a
    return-void
.end method
