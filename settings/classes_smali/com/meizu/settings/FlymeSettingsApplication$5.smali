.class Lcom/meizu/settings/FlymeSettingsApplication$5;
.super Landroid/database/ContentObserver;
.source "FlymeSettingsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/FlymeSettingsApplication;->registerDeviceProvisionedObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/FlymeSettingsApplication;

.field final synthetic val$deviceProvisioned:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/meizu/settings/FlymeSettingsApplication;Landroid/os/Handler;Landroid/net/Uri;)V
    .registers 4

    .line 185
    iput-object p1, p0, Lcom/meizu/settings/FlymeSettingsApplication$5;->this$0:Lcom/meizu/settings/FlymeSettingsApplication;

    iput-object p3, p0, Lcom/meizu/settings/FlymeSettingsApplication$5;->val$deviceProvisioned:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 188
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 190
    iget-object p1, p0, Lcom/meizu/settings/FlymeSettingsApplication$5;->val$deviceProvisioned:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 191
    iget-object p0, p0, Lcom/meizu/settings/FlymeSettingsApplication$5;->this$0:Lcom/meizu/settings/FlymeSettingsApplication;

    invoke-static {p0}, Lcom/meizu/settings/FlymeSettingsApplication;->access$200(Lcom/meizu/settings/FlymeSettingsApplication;)V

    :cond_10
    return-void
.end method
