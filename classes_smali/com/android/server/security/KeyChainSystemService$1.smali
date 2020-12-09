.class Lcom/android/server/security/KeyChainSystemService$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyChainSystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/KeyChainSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/security/KeyChainSystemService;


# direct methods
.method constructor <init>(Lcom/android/server/security/KeyChainSystemService;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/android/server/security/KeyChainSystemService$1;->this$0:Lcom/android/server/security/KeyChainSystemService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 76
    return-void

    .line 80
    :cond_7
    :try_start_7
    new-instance p1, Landroid/content/Intent;

    const-class v0, Landroid/security/IKeyChainService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/android/server/security/KeyChainSystemService$1;->this$0:Lcom/android/server/security/KeyChainSystemService;

    .line 82
    invoke-virtual {v0}, Lcom/android/server/security/KeyChainSystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 83
    if-nez v0, :cond_24

    .line 84
    return-void

    .line 86
    :cond_24
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object p2, p0, Lcom/android/server/security/KeyChainSystemService$1;->this$0:Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {p0}, Lcom/android/server/security/KeyChainSystemService$1;->getSendingUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/android/server/security/KeyChainSystemService;->access$000(Lcom/android/server/security/KeyChainSystemService;Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_3b} :catch_3c

    .line 91
    goto :goto_44

    .line 89
    :catch_3c
    move-exception p1

    .line 90
    const-string p2, "KeyChainSystemService"

    const-string v0, "Unable to forward package removed broadcast to KeyChain"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    :goto_44
    return-void
.end method
