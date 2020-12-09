.class Lcom/android/server/net/NetworkPolicyManagerService$11;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .line 1061
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1067
    const-string p1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkTemplate;

    .line 1068
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1069
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/16 v0, 0x22

    invoke-virtual {p2, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V

    goto :goto_2f

    .line 1070
    :cond_1c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.android.server.net.action.SNOOZE_RAPID"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 1071
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/16 v0, 0x2d

    invoke-virtual {p2, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V

    .line 1073
    :cond_2f
    :goto_2f
    return-void
.end method
