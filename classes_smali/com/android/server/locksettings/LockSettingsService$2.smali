.class Lcom/android/server/locksettings/LockSettingsService$2;
.super Landroid/content/BroadcastReceiver;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/locksettings/LockSettingsService;

    .line 664
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 667
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    .line 669
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 670
    .local v0, "userHandle":I
    if-lez v0, :cond_1b

    .line 671
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/server/locksettings/LockSettingsService;->access$700(Lcom/android/server/locksettings/LockSettingsService;IZ)V

    .line 673
    :cond_1b
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 674
    .local v1, "ks":Landroid/security/KeyStore;
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->access$400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 675
    .local v2, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_2e

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    goto :goto_2f

    :cond_2e
    const/4 v3, -0x1

    .line 676
    .local v3, "parentHandle":I
    :goto_2f
    invoke-virtual {v1, v0, v3}, Landroid/security/KeyStore;->onUserAdded(II)V

    .line 677
    .end local v0  # "userHandle":I
    .end local v1  # "ks":Landroid/security/KeyStore;
    .end local v2  # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v3  # "parentHandle":I
    goto :goto_64

    :cond_33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.USER_STARTING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 678
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 679
    .restart local v0  # "userHandle":I
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    .end local v0  # "userHandle":I
    goto :goto_63

    .line 680
    :cond_4b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 681
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 682
    .restart local v0  # "userHandle":I
    if-lez v0, :cond_64

    .line 683
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1, v0, v2}, Lcom/android/server/locksettings/LockSettingsService;->access$700(Lcom/android/server/locksettings/LockSettingsService;IZ)V

    goto :goto_64

    .line 680
    .end local v0  # "userHandle":I
    :cond_63
    :goto_63
    nop

    .line 686
    :cond_64
    :goto_64
    return-void
.end method
