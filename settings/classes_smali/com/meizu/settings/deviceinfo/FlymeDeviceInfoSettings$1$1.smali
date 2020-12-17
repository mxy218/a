.class Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1$1;
.super Ljava/lang/Object;
.source "FlymeDeviceInfoSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1;->onBindViewFinished(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1$1;->this$1:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 191
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1$1;->this$1:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1;

    iget-object p1, p1, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->access$200(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1$1;->this$1:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->access$100(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    return-void
.end method
