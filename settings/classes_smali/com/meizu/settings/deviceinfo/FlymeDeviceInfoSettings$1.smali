.class Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1;
.super Ljava/lang/Object;
.source "FlymeDeviceInfoSettings.java"

# interfaces
.implements Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference$OnBindViewFinishedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->initDevicePreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewFinished(Landroid/view/View;)V
    .registers 4

    .line 186
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->access$000(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)V

    .line 188
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->access$300(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;

    move-result-object p1

    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1$1;-><init>(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1;)V

    const v1, 0x7f0a02ca

    invoke-virtual {p1, v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->setItemViewOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 195
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->access$400(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)V

    return-void
.end method
