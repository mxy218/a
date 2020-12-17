.class Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$8;
.super Ljava/lang/Object;
.source "FlymeNetworkAccessLicenseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->showNetworkUnavaiableDialog()V
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

    .line 402
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$8;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    .line 405
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$8;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$100(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)Landroid/app/Activity;

    move-result-object v0

    const-class p0, Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 406
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 405
    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    return-void
.end method
