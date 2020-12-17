.class Lcom/meizu/settings/FlymeSettingsApplication$7;
.super Landroid/content/BroadcastReceiver;
.source "FlymeSettingsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/FlymeSettingsApplication;->registerThemeChangeReceiver()V
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

    .line 220
    iput-object p1, p0, Lcom/meizu/settings/FlymeSettingsApplication$7;->this$0:Lcom/meizu/settings/FlymeSettingsApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 223
    iget-object p1, p0, Lcom/meizu/settings/FlymeSettingsApplication$7;->this$0:Lcom/meizu/settings/FlymeSettingsApplication;

    invoke-static {p1}, Lcom/meizu/settings/FlymeSettingsApplication;->access$300(Lcom/meizu/settings/FlymeSettingsApplication;)Lcom/meizu/settings/FlymeSettingsApplication$OnThemeChangedListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 224
    iget-object p1, p0, Lcom/meizu/settings/FlymeSettingsApplication$7;->this$0:Lcom/meizu/settings/FlymeSettingsApplication;

    invoke-static {p1}, Lcom/meizu/settings/FlymeSettingsApplication;->access$300(Lcom/meizu/settings/FlymeSettingsApplication;)Lcom/meizu/settings/FlymeSettingsApplication$OnThemeChangedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/meizu/settings/FlymeSettingsApplication$OnThemeChangedListener;->onThemeChanged()V

    .line 226
    :cond_11
    iget-object p0, p0, Lcom/meizu/settings/FlymeSettingsApplication$7;->this$0:Lcom/meizu/settings/FlymeSettingsApplication;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/meizu/settings/FlymeSettingsApplication;->access$402(Lcom/meizu/settings/FlymeSettingsApplication;Z)Z

    return-void
.end method
