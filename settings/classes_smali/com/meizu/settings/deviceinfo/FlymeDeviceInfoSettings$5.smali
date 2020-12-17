.class Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$5;
.super Ljava/lang/Object;
.source "FlymeDeviceInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->enterDeviceName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$5;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 353
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$5;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    .line 354
    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->access$900(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$5;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    .line 356
    invoke-static {p2}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->access$1000(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 357
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, "meizu_device_name"

    .line 354
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 359
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$5;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    .line 360
    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->access$900(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 362
    iget-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$5;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    invoke-static {p2}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->access$300(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;

    move-result-object p2

    const v0, 0x7f0a0559

    if-nez p1, :cond_38

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_39

    :cond_38
    move-object v1, p1

    :goto_39
    invoke-virtual {p2, v0, v1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->setItemViewText(ILjava/lang/String;)V

    .line 363
    new-instance p2, Landroid/content/Intent;

    const-string v0, "meizu.intent.action.ACTION_MEIZU_DEVICE_NAME_CHANGE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "name"

    .line 365
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$5;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->access$500(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_51
    return-void
.end method
