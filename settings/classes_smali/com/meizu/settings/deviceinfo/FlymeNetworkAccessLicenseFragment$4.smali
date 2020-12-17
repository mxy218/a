.class Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$4;
.super Ljava/lang/Object;
.source "FlymeNetworkAccessLicenseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->initViewFromSetupwizard(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 145
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$300(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 146
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$100(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/utils/FlymeNetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 148
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$400(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V

    goto :goto_52

    .line 150
    :cond_1a
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.meizu.setup.action_network"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$100(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "source"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$100(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_52

    .line 155
    :cond_3b
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$100(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/utils/FlymeNetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 156
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$400(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V

    goto :goto_52

    .line 158
    :cond_4d
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$500(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V

    :goto_52
    return-void
.end method
