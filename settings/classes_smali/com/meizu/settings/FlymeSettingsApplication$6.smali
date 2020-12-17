.class Lcom/meizu/settings/FlymeSettingsApplication$6;
.super Ljava/lang/Object;
.source "FlymeSettingsApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/FlymeSettingsApplication;->checkIsPasswordNeedEnable()V
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

    .line 198
    iput-object p1, p0, Lcom/meizu/settings/FlymeSettingsApplication$6;->this$0:Lcom/meizu/settings/FlymeSettingsApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "FlymeSettingsApplication"

    const-string v1, "handleSetupScreenPassword.."

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :try_start_7
    iget-object p0, p0, Lcom/meizu/settings/FlymeSettingsApplication$6;->this$0:Lcom/meizu/settings/FlymeSettingsApplication;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p0

    .line 204
    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->hasPassword()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 205
    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isScreenLockEnabled()Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "enable lock screen"

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 207
    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setScreenLockEnable(Z)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception p0

    .line 210
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2b
    :goto_2b
    return-void
.end method
