.class Lcom/meizu/settings/security/FlymeSecuritySettings$2;
.super Ljava/lang/Object;
.source "FlymeSecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeSecuritySettings;->showUnificationConfirmationDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeSecuritySettings;

.field final synthetic val$compliant:Z


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeSecuritySettings;Z)V
    .registers 3

    .line 318
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings$2;->this$0:Lcom/meizu/settings/security/FlymeSecuritySettings;

    iput-boolean p2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings$2;->val$compliant:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 321
    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings$2;->val$compliant:Z

    if-eqz p1, :cond_28

    .line 322
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings$2;->this$0:Lcom/meizu/settings/security/FlymeSecuritySettings;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeSecuritySettings;->access$100(Lcom/meizu/settings/security/FlymeSecuritySettings;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isScreenLockEnabled()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 323
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings$2;->this$0:Lcom/meizu/settings/security/FlymeSecuritySettings;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->access$200(Lcom/meizu/settings/security/FlymeSecuritySettings;)V

    goto :goto_2d

    .line 324
    :cond_16
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings$2;->this$0:Lcom/meizu/settings/security/FlymeSecuritySettings;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeSecuritySettings;->access$300(Lcom/meizu/settings/security/FlymeSecuritySettings;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isScreenLockEnabled()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 325
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings$2;->this$0:Lcom/meizu/settings/security/FlymeSecuritySettings;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->access$400(Lcom/meizu/settings/security/FlymeSecuritySettings;)V

    goto :goto_2d

    .line 328
    :cond_28
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings$2;->this$0:Lcom/meizu/settings/security/FlymeSecuritySettings;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->access$500(Lcom/meizu/settings/security/FlymeSecuritySettings;)V

    :cond_2d
    :goto_2d
    return-void
.end method
