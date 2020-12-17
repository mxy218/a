.class Lcom/meizu/settings/account/FlymeAddAccountSettings$1;
.super Ljava/lang/Object;
.source "FlymeAddAccountSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/account/FlymeAddAccountSettings;->showLoadingDialog()V
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

    .line 36
    iput-object p1, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings$1;->this$0:Lcom/meizu/settings/account/FlymeAddAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    .line 39
    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings$1;->this$0:Lcom/meizu/settings/account/FlymeAddAccountSettings;

    invoke-static {p0}, Lcom/meizu/settings/account/FlymeAddAccountSettings;->access$000(Lcom/meizu/settings/account/FlymeAddAccountSettings;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
