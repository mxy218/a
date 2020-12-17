.class Lcom/meizu/settings/security/FlymeGuestModeSettings$4;
.super Ljava/lang/Object;
.source "FlymeGuestModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeGuestModeSettings;->showWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V
    .registers 2

    .line 382
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$4;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 385
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$4;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$200(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setGuestModeEnalbed(Z)V

    .line 386
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$4;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$1000(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V

    .line 387
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$4;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    const-string p1, "2"

    invoke-static {p0, p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$1100(Lcom/meizu/settings/security/FlymeGuestModeSettings;Ljava/lang/String;)V

    return-void
.end method
