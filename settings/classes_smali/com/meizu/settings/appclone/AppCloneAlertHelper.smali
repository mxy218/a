.class public Lcom/meizu/settings/appclone/AppCloneAlertHelper;
.super Ljava/lang/Object;
.source "AppCloneAlertHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;
    }
.end annotation


# static fields
.field private static sAlertHelper:Lcom/meizu/settings/appclone/AppCloneAlertHelper;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/meizu/settings/appclone/AppCloneAlertHelper;
    .registers 2

    .line 25
    sget-object v0, Lcom/meizu/settings/appclone/AppCloneAlertHelper;->sAlertHelper:Lcom/meizu/settings/appclone/AppCloneAlertHelper;

    if-nez v0, :cond_17

    .line 26
    const-class v0, Lcom/meizu/settings/appclone/AppCloneAlertHelper;

    monitor-enter v0

    .line 27
    :try_start_7
    sget-object v1, Lcom/meizu/settings/appclone/AppCloneAlertHelper;->sAlertHelper:Lcom/meizu/settings/appclone/AppCloneAlertHelper;

    if-nez v1, :cond_12

    .line 28
    new-instance v1, Lcom/meizu/settings/appclone/AppCloneAlertHelper;

    invoke-direct {v1}, Lcom/meizu/settings/appclone/AppCloneAlertHelper;-><init>()V

    sput-object v1, Lcom/meizu/settings/appclone/AppCloneAlertHelper;->sAlertHelper:Lcom/meizu/settings/appclone/AppCloneAlertHelper;

    .line 30
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 32
    :cond_17
    :goto_17
    sget-object v0, Lcom/meizu/settings/appclone/AppCloneAlertHelper;->sAlertHelper:Lcom/meizu/settings/appclone/AppCloneAlertHelper;

    return-object v0
.end method


# virtual methods
.method public showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 12

    const-string p0, "AppCloneAlertHelper"

    if-eqz p1, :cond_7e

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_7e

    :cond_b
    const/4 v0, 0x0

    const-string v1, "app_clone_already_alert_keys"

    .line 42
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz p5, :cond_1e

    .line 43
    instance-of v3, p5, Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;

    if-eqz v3, :cond_1e

    .line 45
    move-object v3, p5

    check-cast v3, Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;

    invoke-static {v3, p1, v2, p2}, Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;->access$000(Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :cond_1e
    const-string v3, ""

    .line 47
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "showAlert from = "

    if-eqz v1, :cond_4d

    if-nez p4, :cond_4d

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " already alert"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_4c

    const/4 p0, 0x0

    .line 51
    invoke-interface {p5, p0, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_4c
    return-void

    .line 55
    :cond_4d
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance p0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {p0, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f120c48

    .line 58
    invoke-virtual {p0, p1, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f120c47

    .line 59
    invoke-virtual {p0, p1, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 60
    invoke-virtual {p0, p7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_7e
    :goto_7e
    const-string/jumbo p1, "showAlert from empty"

    .line 39
    invoke-static {p0, p1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
