.class Lcom/meizu/settings/applications/MzAppLaunchSettings$1;
.super Ljava/lang/Object;
.source "MzAppLaunchSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/applications/MzAppLaunchSettings;->showResetAutoLinksDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/MzAppLaunchSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/MzAppLaunchSettings;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings$1;->this$0:Lcom/meizu/settings/applications/MzAppLaunchSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 231
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings$1;->this$0:Lcom/meizu/settings/applications/MzAppLaunchSettings;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppLaunchSettings;->access$000(Lcom/meizu/settings/applications/MzAppLaunchSettings;)Landroid/hardware/usb/IUsbManager;

    move-result-object p1

    if-eqz p1, :cond_5a

    .line 232
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings$1;->this$0:Lcom/meizu/settings/applications/MzAppLaunchSettings;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppLaunchSettings;->access$200(Lcom/meizu/settings/applications/MzAppLaunchSettings;)Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings$1;->this$0:Lcom/meizu/settings/applications/MzAppLaunchSettings;

    invoke-static {p2}, Lcom/meizu/settings/applications/MzAppLaunchSettings;->access$100(Lcom/meizu/settings/applications/MzAppLaunchSettings;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 234
    :try_start_17
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings$1;->this$0:Lcom/meizu/settings/applications/MzAppLaunchSettings;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppLaunchSettings;->access$000(Lcom/meizu/settings/applications/MzAppLaunchSettings;)Landroid/hardware/usb/IUsbManager;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings$1;->this$0:Lcom/meizu/settings/applications/MzAppLaunchSettings;

    invoke-static {p2}, Lcom/meizu/settings/applications/MzAppLaunchSettings;->access$100(Lcom/meizu/settings/applications/MzAppLaunchSettings;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings$1;->this$0:Lcom/meizu/settings/applications/MzAppLaunchSettings;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppLaunchSettings;->access$300(Lcom/meizu/settings/applications/MzAppLaunchSettings;)I

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2c} :catch_2d

    goto :goto_35

    :catch_2d
    move-exception p1

    const-string p2, "MzAppLaunchSettings"

    const-string v0, "mUsbManager.clearDefaults"

    .line 236
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    :goto_35
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings$1;->this$0:Lcom/meizu/settings/applications/MzAppLaunchSettings;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppLaunchSettings;->access$400(Lcom/meizu/settings/applications/MzAppLaunchSettings;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings$1;->this$0:Lcom/meizu/settings/applications/MzAppLaunchSettings;

    invoke-static {p2}, Lcom/meizu/settings/applications/MzAppLaunchSettings;->access$100(Lcom/meizu/settings/applications/MzAppLaunchSettings;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 239
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings$1;->this$0:Lcom/meizu/settings/applications/MzAppLaunchSettings;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppLaunchSettings;->access$500(Lcom/meizu/settings/applications/MzAppLaunchSettings;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 240
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings$1;->this$0:Lcom/meizu/settings/applications/MzAppLaunchSettings;

    invoke-static {p0}, Lcom/meizu/settings/applications/MzAppLaunchSettings;->access$500(Lcom/meizu/settings/applications/MzAppLaunchSettings;)Landroid/preference/Preference;

    move-result-object p0

    const p1, 0x7f120f12

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_5a
    return-void
.end method
