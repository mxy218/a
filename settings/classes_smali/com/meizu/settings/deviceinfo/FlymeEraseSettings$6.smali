.class Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$6;
.super Ljava/lang/Object;
.source "FlymeEraseSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->showResetDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)V
    .registers 2

    .line 597
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$6;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 600
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$6;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$600(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)V

    .line 601
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$6;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const v4, 0x7f1211b8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/meizu/settings/utils/MzUtils;->showLoadingDialog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IZLandroid/content/DialogInterface$OnCancelListener;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$1002(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;Lcom/meizu/common/app/LoadingDialog;)Lcom/meizu/common/app/LoadingDialog;

    return-void
.end method
