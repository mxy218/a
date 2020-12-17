.class Lcom/meizu/settings/FlymeSettingsApplication$8;
.super Landroid/content/BroadcastReceiver;
.source "FlymeSettingsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/FlymeSettingsApplication;->registerNetworkStateChangeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/FlymeSettingsApplication;


# direct methods
.method constructor <init>(Lcom/meizu/settings/FlymeSettingsApplication;)V
    .registers 2

    .line 245
    iput-object p1, p0, Lcom/meizu/settings/FlymeSettingsApplication$8;->this$0:Lcom/meizu/settings/FlymeSettingsApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 248
    iget-object p0, p0, Lcom/meizu/settings/FlymeSettingsApplication$8;->this$0:Lcom/meizu/settings/FlymeSettingsApplication;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->refreshRAngleAppListFromNetwork()V

    return-void
.end method
