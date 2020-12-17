.class Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$1;
.super Landroid/database/ContentObserver;
.source "FlymeSecreteModeDataManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;


# direct methods
.method constructor <init>(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;Landroid/os/Handler;)V
    .registers 3

    .line 47
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$1;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    const-string p1, "mz_private_mode_running"

    .line 50
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 52
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$1;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

    invoke-static {p0}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->access$000(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)V

    :cond_11
    return-void
.end method
