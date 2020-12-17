.class Lcom/meizu/settings/security/FlymeScreenPasscodeSettings$2;
.super Ljava/lang/Object;
.source "FlymeScreenPasscodeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->disablePassword(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;

.field final synthetic val$disableLockScreen:Z


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;Z)V
    .registers 3

    .line 295
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings$2;->this$0:Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;

    iput-boolean p2, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings$2;->val$disableLockScreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 298
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings$2;->this$0:Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->access$100(Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 299
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings$2;->this$0:Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->access$200(Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;)V

    .line 301
    :cond_d
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings$2;->this$0:Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->access$300(Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 303
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings$2;->this$0:Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;

    iget-boolean p0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings$2;->val$disableLockScreen:Z

    invoke-static {p1, p0}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->access$400(Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;Z)V

    goto :goto_24

    .line 305
    :cond_1d
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings$2;->this$0:Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;

    iget-boolean p0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings$2;->val$disableLockScreen:Z

    invoke-static {p1, p0}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->access$000(Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;Z)V

    :goto_24
    return-void
.end method
