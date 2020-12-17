.class Lcom/meizu/settings/display/QcomDisplayWrapper$1;
.super Ljava/lang/Object;
.source "QcomDisplayWrapper.java"

# interfaces
.implements Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/QcomDisplayWrapper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/QcomDisplayWrapper;Landroid/content/Context;)V
    .registers 3

    .line 80
    iput-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$1;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    iput-object p2, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$1;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-static {v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->access$400(Lcom/meizu/settings/display/QcomDisplayWrapper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/display/QcomDisplayWrapper$1$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/display/QcomDisplayWrapper$1$1;-><init>(Lcom/meizu/settings/display/QcomDisplayWrapper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
