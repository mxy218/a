.class Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$3;
.super Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;
.source "FlymeSecretAppsPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;->showDialog(Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;

.field final synthetic val$l:Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;


# direct methods
.method constructor <init>(Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;)V
    .registers 3

    .line 152
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;

    iput-object p2, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$3;->val$l:Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;

    invoke-direct {p0}, Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 154
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 155
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$3;->val$l:Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;

    if-eqz p0, :cond_b

    const/4 p1, 0x1

    .line 156
    invoke-interface {p0, p1}, Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;->onMzAppsPickConfirm(Z)V

    :cond_b
    return-void
.end method
