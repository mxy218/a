.class Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$9;
.super Ljava/lang/Object;
.source "FlymeNetworkAccessLicenseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->showQueryAuthenticitySuccessDialog(Ljava/lang/String;)V
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

    .line 428
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$9;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 431
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$9;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$300(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 432
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$9;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$600(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V

    :cond_d
    return-void
.end method
