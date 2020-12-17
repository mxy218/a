.class Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2$1;
.super Ljava/lang/Object;
.source "FlymeEraseSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2;)V
    .registers 2

    .line 290
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2$1;->this$1:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 293
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2$1;->this$1:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2;

    iget-object v0, v0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$600(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)V

    .line 294
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2$1;->this$1:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 v0, 0x0

    const v1, 0x7f121196

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/meizu/settings/utils/MzUtils;->showFlymeToast(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method
