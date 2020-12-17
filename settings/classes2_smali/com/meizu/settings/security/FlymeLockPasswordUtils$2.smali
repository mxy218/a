.class Lcom/meizu/settings/security/FlymeLockPasswordUtils$2;
.super Ljava/lang/Object;
.source "FlymeLockPasswordUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeLockPasswordUtils;->createGuestUserIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeLockPasswordUtils;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeLockPasswordUtils;)V
    .registers 2

    .line 779
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$2;->this$0:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 782
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$2;->this$0:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->access$200(Lcom/meizu/settings/security/FlymeLockPasswordUtils;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x1

    .line 783
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 784
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 785
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_17

    return-void

    .line 790
    :cond_2a
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$2;->this$0:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-static {v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->access$200(Lcom/meizu/settings/security/FlymeLockPasswordUtils;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "Guest"

    invoke-virtual {v0, v2, v3}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    .line 791
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 792
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 793
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 794
    new-instance v1, Landroid/os/UserHandle;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 795
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$2;->this$0:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getGuestRestrictions(Landroid/os/UserManager;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_5f
    const-string p0, "FlymeLockPasswordUtils"

    const-string v0, "create guest user"

    .line 799
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
