.class Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$PendingAction;
.super Ljava/lang/Object;
.source "FlymeSecretsControlHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingAction"
.end annotation


# instance fields
.field public ActionArgs:Ljava/lang/Object;

.field public ActionType:I

.field final synthetic this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$PendingAction;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$1;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$PendingAction;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)V

    return-void
.end method
