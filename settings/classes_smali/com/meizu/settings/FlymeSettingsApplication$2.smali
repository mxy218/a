.class Lcom/meizu/settings/FlymeSettingsApplication$2;
.super Landroid/database/ContentObserver;
.source "FlymeSettingsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/FlymeSettingsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/FlymeSettingsApplication;


# direct methods
.method constructor <init>(Lcom/meizu/settings/FlymeSettingsApplication;Landroid/os/Handler;)V
    .registers 3

    .line 54
    iput-object p1, p0, Lcom/meizu/settings/FlymeSettingsApplication$2;->this$0:Lcom/meizu/settings/FlymeSettingsApplication;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 58
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string p1, "mz_current_power_mode"

    .line 60
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 61
    iget-object p0, p0, Lcom/meizu/settings/FlymeSettingsApplication$2;->this$0:Lcom/meizu/settings/FlymeSettingsApplication;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "meizu.intent.action.UPDATE_ACCESSIBILITY_PAGE_INDEX"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1b
    return-void
.end method
