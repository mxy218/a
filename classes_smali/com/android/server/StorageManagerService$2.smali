.class Lcom/android/server/StorageManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/StorageManagerService;

    .line 759
    iput-object p1, p0, Lcom/android/server/StorageManagerService$2;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 762
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "meizu.intent.action.AUTO_INSTALL_SUCCESSFUL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "/data/app/autoVerify/"

    const-string v3, "StorageManagerService"

    if-eqz v1, :cond_25

    .line 764
    const-string v1, "AUTO_INSTALL_SUCCESSFUL !!"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 766
    .local v1, "verifyDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_51

    .line 767
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    goto :goto_51

    .line 769
    .end local v1  # "verifyDir":Ljava/io/File;
    :cond_25
    const-string/jumbo v1, "meizu.intent.action.HOME_LAUNCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 770
    const-string v1, "HOME_LAUNCHED_SUCCESSFUL !!"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 772
    .restart local v1  # "verifyDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_52

    .line 773
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 774
    iget-object v2, p0, Lcom/android/server/StorageManagerService$2;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$2400(Lcom/android/server/StorageManagerService;)V

    goto :goto_52

    .line 769
    .end local v1  # "verifyDir":Ljava/io/File;
    :cond_51
    :goto_51
    nop

    .line 778
    :cond_52
    :goto_52
    return-void
.end method
