.class Lcom/meizu/settings/account/FlymeAddAccountSettings$3;
.super Ljava/lang/Object;
.source "FlymeAddAccountSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/account/FlymeAddAccountSettings;->showUnsupportDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/account/FlymeAddAccountSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/account/FlymeAddAccountSettings;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings$3;->this$0:Lcom/meizu/settings/account/FlymeAddAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 64
    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings$3;->this$0:Lcom/meizu/settings/account/FlymeAddAccountSettings;

    invoke-static {p0}, Lcom/meizu/settings/account/FlymeAddAccountSettings;->access$000(Lcom/meizu/settings/account/FlymeAddAccountSettings;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
