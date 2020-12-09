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

    .line 673
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 676
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, 0x0

    if-eqz p1, :cond_33

    .line 678
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 679
    if-lez p1, :cond_1b

    .line 680
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->access$700(Lcom/android/server/locksettings/LockSettingsService;IZ)V

    .line 682
    :cond_1b
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p2

    .line 683
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 684
    if-eqz v0, :cond_2e

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_2f

    :cond_2e
    const/4 v0, -0x1

    .line 685
    :goto_2f
    invoke-virtual {p2, p1, v0}, Landroid/security/KeyStore;->onUserAdded(II)V

    .line 686
    goto :goto_64

    :cond_33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.action.USER_STARTING"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 687
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 688
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object p2, p2, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    goto :goto_63

    .line 689
    :cond_4b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 690
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 691
    if-lez p1, :cond_64

    .line 692
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p2, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->access$700(Lcom/android/server/locksettings/LockSettingsService;IZ)V

    goto :goto_64

    .line 689
    :cond_63
    :goto_63
    nop

    .line 695
    :cond_64
    :goto_64
    return-void
.end method
