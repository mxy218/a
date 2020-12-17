.class Lcom/meizu/settings/security/FlymeLockPasswordUtils$3;
.super Ljava/lang/Object;
.source "FlymeLockPasswordUtils.java"

# interfaces
.implements Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeLockPasswordUtils;->createBusinessStateChangeListenner(Landroid/app/Fragment;)Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

.field final synthetic val$fragment:Landroid/app/Fragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeLockPasswordUtils;Landroid/app/Fragment;)V
    .registers 3

    .line 918
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$3;->this$0:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$3;->val$fragment:Landroid/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAccountNotLogin(Landroid/os/Bundle;)V
    .registers 3

    .line 927
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$3;->this$0:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$3;->val$fragment:Landroid/app/Fragment;

    invoke-static {v0, p1, p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->access$300(Lcom/meizu/settings/security/FlymeLockPasswordUtils;Landroid/os/Bundle;Landroid/app/Fragment;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 3

    .line 922
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$3;->this$0:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$3;->val$fragment:Landroid/app/Fragment;

    invoke-static {v0, p1, p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->access$300(Lcom/meizu/settings/security/FlymeLockPasswordUtils;Landroid/os/Bundle;Landroid/app/Fragment;)V

    return-void
.end method
