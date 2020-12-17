.class Lcom/meizu/settings/account/FlymeAccountSettings$1;
.super Ljava/lang/Object;
.source "FlymeAccountSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/account/FlymeAccountSettings;->addOnAccountsUpdatedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/account/FlymeAccountSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/account/FlymeAccountSettings;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings$1;->this$0:Lcom/meizu/settings/account/FlymeAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 3

    .line 115
    iget-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings$1;->this$0:Lcom/meizu/settings/account/FlymeAccountSettings;

    invoke-static {p1}, Lcom/meizu/settings/account/FlymeAccountSettings;->access$000(Lcom/meizu/settings/account/FlymeAccountSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->isFlymeAccountLogined(Landroid/content/Context;)Z

    move-result p1

    .line 116
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings$1;->this$0:Lcom/meizu/settings/account/FlymeAccountSettings;

    invoke-static {v0}, Lcom/meizu/settings/account/FlymeAccountSettings;->access$100(Lcom/meizu/settings/account/FlymeAccountSettings;)Z

    move-result v0

    if-eq v0, p1, :cond_2e

    .line 117
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings$1;->this$0:Lcom/meizu/settings/account/FlymeAccountSettings;

    invoke-static {v0, p1}, Lcom/meizu/settings/account/FlymeAccountSettings;->access$102(Lcom/meizu/settings/account/FlymeAccountSettings;Z)Z

    .line 118
    iget-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings$1;->this$0:Lcom/meizu/settings/account/FlymeAccountSettings;

    invoke-static {p1}, Lcom/meizu/settings/account/FlymeAccountSettings;->access$100(Lcom/meizu/settings/account/FlymeAccountSettings;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 119
    iget-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings$1;->this$0:Lcom/meizu/settings/account/FlymeAccountSettings;

    invoke-static {p1}, Lcom/meizu/settings/account/FlymeAccountSettings;->access$200(Lcom/meizu/settings/account/FlymeAccountSettings;)Lcom/meizu/settings/utils/FlymeAccountHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSettings$1;->this$0:Lcom/meizu/settings/account/FlymeAccountSettings;

    invoke-static {p0}, Lcom/meizu/settings/account/FlymeAccountSettings;->access$000(Lcom/meizu/settings/account/FlymeAccountSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->startFlymeDataSyncActivity(Landroid/content/Context;)V

    :cond_2e
    return-void
.end method
