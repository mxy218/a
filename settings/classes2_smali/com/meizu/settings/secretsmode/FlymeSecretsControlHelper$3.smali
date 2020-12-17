.class Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$3;
.super Ljava/lang/Object;
.source "FlymeSecretsControlHelper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;


# direct methods
.method constructor <init>(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$504(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)I

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied, reconnect count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {v1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$500(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymePrivateControlHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$500(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_30

    .line 157
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$600(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)V

    :cond_30
    return-void
.end method
