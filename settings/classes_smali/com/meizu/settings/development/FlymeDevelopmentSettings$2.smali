.class Lcom/meizu/settings/development/FlymeDevelopmentSettings$2;
.super Ljava/lang/Object;
.source "FlymeDevelopmentSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/development/FlymeDevelopmentSettings;->showCopyFingerprintDataToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/development/FlymeDevelopmentSettings;

.field final synthetic val$msgId:I


# direct methods
.method constructor <init>(Lcom/meizu/settings/development/FlymeDevelopmentSettings;I)V
    .registers 3

    .line 295
    iput-object p1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings$2;->this$0:Lcom/meizu/settings/development/FlymeDevelopmentSettings;

    iput p2, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings$2;->val$msgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 298
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings$2;->this$0:Lcom/meizu/settings/development/FlymeDevelopmentSettings;

    invoke-static {v0}, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->access$200(Lcom/meizu/settings/development/FlymeDevelopmentSettings;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 299
    iget-object v0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings$2;->this$0:Lcom/meizu/settings/development/FlymeDevelopmentSettings;

    invoke-static {v0}, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->access$300(Lcom/meizu/settings/development/FlymeDevelopmentSettings;)Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings$2;->val$msgId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, p0, v2}, Lcom/meizu/settings/utils/MzUtils;->showFlymeToast(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method
