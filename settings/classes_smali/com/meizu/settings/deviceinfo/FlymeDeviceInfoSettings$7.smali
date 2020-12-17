.class Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$7;
.super Ljava/lang/Object;
.source "FlymeDeviceInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

    .line 378
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$7;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 3

    .line 380
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$7;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->access$1000(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 381
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$7;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->access$500(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    .line 382
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 383
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$7;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->access$1000(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Landroid/widget/EditText;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
