.class Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$5;
.super Ljava/lang/Object;
.source "FlymeSecretAppsPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 169
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$5;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;

    iput-object p2, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$5;->val$l:Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    .line 173
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$5;->val$l:Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;

    if-eqz p0, :cond_8

    const/4 p1, 0x0

    .line 174
    invoke-interface {p0, p1}, Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;->onMzAppsPickConfirm(Z)V

    :cond_8
    return-void
.end method
