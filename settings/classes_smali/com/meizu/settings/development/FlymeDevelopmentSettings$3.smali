.class Lcom/meizu/settings/development/FlymeDevelopmentSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "FlymeDevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/development/FlymeDevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/development/FlymeDevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/development/FlymeDevelopmentSettings;)V
    .registers 2

    .line 371
    iput-object p1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings$3;->this$0:Lcom/meizu/settings/development/FlymeDevelopmentSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "MzDevelopmentSettings"

    const-string v0, "mCloseDeveloperOptionReceiver onReceive:"

    .line 374
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_a

    return-void

    .line 378
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "close_developer_option"

    .line 379
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 381
    iget-object p1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings$3;->this$0:Lcom/meizu/settings/development/FlymeDevelopmentSettings;

    invoke-static {p1}, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->access$400(Lcom/meizu/settings/development/FlymeDevelopmentSettings;)Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 383
    iget-object p0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings$3;->this$0:Lcom/meizu/settings/development/FlymeDevelopmentSettings;

    invoke-static {p0}, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->access$400(Lcom/meizu/settings/development/FlymeDevelopmentSettings;)Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->resetPreferenceControllers()V

    :cond_27
    return-void
.end method
