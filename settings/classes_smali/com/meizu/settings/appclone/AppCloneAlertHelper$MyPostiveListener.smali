.class public Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;
.super Ljava/lang/Object;
.source "AppCloneAlertHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/appclone/AppCloneAlertHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyPostiveListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFrom:Ljava/lang/String;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;->init(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4

    .line 82
    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 84
    iput-object p3, p0, Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;->mFrom:Ljava/lang/String;

    return-void
.end method

.method private markDoNotAlert()V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "app_clone_already_alert_keys"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 90
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;->mFrom:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2e

    .line 92
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;->mFrom:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_2e
    iget-object v2, p0, Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 95
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "markDoNotAlert from = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppCloneAlertHelper"

    invoke-static {v0, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    if-eqz p1, :cond_5

    .line 77
    invoke-direct {p0}, Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;->markDoNotAlert()V

    :cond_5
    return-void
.end method
