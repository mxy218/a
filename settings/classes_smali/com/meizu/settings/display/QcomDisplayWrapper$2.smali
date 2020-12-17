.class Lcom/meizu/settings/display/QcomDisplayWrapper$2;
.super Ljava/lang/Object;
.source "QcomDisplayWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$colorinterface:Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/QcomDisplayWrapper;Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;)V
    .registers 3

    .line 131
    iput-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$2;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    iput-object p2, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$2;->val$colorinterface:Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$2;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-static {v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->access$000(Lcom/meizu/settings/display/QcomDisplayWrapper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$2;->val$colorinterface:Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->connect(Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 136
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$2;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const-string p0, "QcomDisplayWrapper"

    const-string v0, "Connection failed"

    .line 137
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void
.end method
