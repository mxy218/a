.class Lcom/android/server/net/NetworkPolicyManagerService$6;
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

    .line 953
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 958
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 959
    const/4 v0, -0x1

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 960
    if-ne p2, v0, :cond_e

    return-void

    .line 962
    :cond_e
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 965
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$500()Z

    move-result p1

    if-eqz p1, :cond_32

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_PACKAGE_ADDED for uid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_32
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter p1

    .line 967
    :try_start_37
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$600(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 968
    monitor-exit p1

    goto :goto_41

    :catchall_3e
    move-exception p2

    monitor-exit p1
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_3e

    throw p2

    .line 970
    :cond_41
    :goto_41
    return-void
.end method
